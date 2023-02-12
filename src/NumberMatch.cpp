#include "NumberMatch.h"
#include "ArmorDescriptor.h"

using namespace std;
using namespace cv;

//获取所有像素点和，用于求两图像相减后所得图像的所有像素之和
int getPixelSum(Mat& image)
{
	int a = 0;
	for (int row = 0; row < image.rows; row++) 
	{
		uchar* current_pixel = image.ptr<uchar>(row);
		for (int col = 0; col < image.cols; col++) 
		{
			a += *current_pixel++;	//指针遍历像素点反转颜色
		}
	}
	return a;
};

//模板匹配函数，两图像做差
int imgMatch(Mat& image, int& rate, int& num) 
{
	Mat imgSub;
	double min = 10e6;
	num = 0;
	rate = 0;
	for (int i = 1; i <= 5; i++) 
	{
		Mat templatimg = imread("../number/" + std::to_string(i) + ".jpg", IMREAD_GRAYSCALE);
		resize(image, image, Size(30, 40), 0, 0, cv::INTER_LINEAR);	//将两图像大小调至相同
		resize(templatimg, templatimg, Size(30, 40), 0, 0, cv::INTER_LINEAR);
		absdiff(templatimg, image, imgSub);
		rate = getPixelSum(imgSub);
		if (rate < min) 
		{
			min = rate;
			num = i;
		}
	}
	return num;
};

//匹配的主函数部分，负责处理输入的数字图片并裁切出合适的部分
int NumberMatch(Mat frontImg)
{
    int resultNum=0;
    Mat regulatedImg=frontImg;
	
    for(int i=0;i<8;i++)
    {
        Mat dstImage, grayImage, binImage;
        regulatedImg.copyTo(dstImage);  //将读取到的图片，深拷贝为dstImage
        cvtColor(regulatedImg, grayImage, COLOR_BGR2GRAY);                  //转换灰度图
        threshold(grayImage, binImage, 100, 255, cv::THRESH_BINARY);     //转换二值图

	//寻找轮廓
        vector<vector<Point>> contours;  //定义轮廓和层次结构
        vector<Vec4i> hierarchy;
        findContours(binImage, contours, hierarchy, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_NONE); //寻找轮廓
        int z = 0;
        vector<vector<Point>>::iterator It;
        Rect a4rect[15];	//假设最多不会超过15个轮廓
	for (It = contours.begin(); It < contours.end(); It++) 
	{                        //画出包围数字的最小矩形
		a4rect[z].x = (float)boundingRect(*It).tl().x;
		a4rect[z].y = (float)boundingRect(*It).tl().y;
		a4rect[z].width = (float)boundingRect(*It).br().x - (float)boundingRect(*It).tl().x;
		a4rect[z].height = (float)boundingRect(*It).br().y - (float)boundingRect(*It).tl().y;
		if ((a4rect[z].height > 40) && (a4rect[z].width > 30) && (a4rect[z].height < 1000) && (a4rect[z].width < 500)) 
		{
			rectangle(binImage, a4rect[i], Scalar(0, 0, 0), 0, 8, 0);
			z++;//找到一个增加1
		}
	}
	Mat num[15];
	int matchingNum = 0;	//匹配到的数字
	int matchingRate = 0;	//相似率
    	for (int j = 0; j < z; j++) 
	{
		
    		binImage(a4rect[j]).copyTo(num[j]);		//提取包围数字的矩形区域至num[j]
		imgMatch(num[j], matchingRate, matchingNum);	//数字匹配
		if (matchingRate < 400000)resultNum=matchingNum;//匹配率小于一定时则认为是目标数字
	}
    }
    return resultNum;
};

