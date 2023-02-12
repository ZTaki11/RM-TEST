#include "ArmorDescriptor.h"
#include "NumberMatch.h"

using namespace std;
using namespace cv;

Mat ArmorDescriptor::preprocessing(Mat img,int n)
{
	Mat input=img;
	Mat color;			//颜色分离后的图像
	Mat grayFrame;			//灰度图
	Mat processedFrame;		//最终处理得到的图像	
	vector<Mat> channels;
	Mat element = cv::getStructuringElement(MORPH_ELLIPSE, cv::Size(5, 5));	//卷积核
	cvtColor(input, grayFrame, COLOR_BGR2GRAY);			//输入图的灰度图
	threshold(grayFrame, grayFrame, 110, 255, THRESH_BINARY);		//二值化
	split(input, channels);			//分离通道，用来区分目标颜色
	if (n==1)subtract(channels.at(2),channels.at(0),color);
		else subtract(channels.at(0),channels.at(2),color);
	threshold(color, color,100, 255, THRESH_BINARY);	//对分离通道后的图二值化
	dilate(color, color, element);				//膨胀下
	processedFrame = color & grayFrame;			//得到最终的二值化图像，即灯条图像
	dilate(processedFrame, processedFrame, element);		//膨胀下图像，防止过细

	vector<vector<Point>> Contours;	//轮廓点
	findContours(processedFrame, Contours, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);		//获取轮廓
	vector<ArmorDescriptor> lightInfos;//创建一个灯条类的动态数组
	//筛选灯条
        for (int i = 0; i < Contours.size(); i++) {
            // 求轮廓面积
            double area = contourArea(Contours[i]);
            // 去除较小轮廓&fitEllipse的限制条件
            if (area < 5 || Contours[i].size() <= 1)
                continue;//相当于就是把这段轮廓去除掉
            // 用椭圆拟合区域得到外接矩形（特殊的处理方式：因为灯条是椭圆型的，所以用椭圆去拟合轮廓，再直接获取旋转外接矩形即可）
            RotatedRect Light_Rec = fitEllipse(Contours[i]);
 
            // 长宽比和轮廓面积比限制（由于要考虑灯条的远近都被识别到，所以只需要看比例即可）
            if (Light_Rec.size.width / Light_Rec.size.height > 4)
                continue;
            lightInfos.push_back(ArmorDescriptor(Light_Rec));
        }
        //二重循环多条件匹配灯条
        for (size_t i = 0; i < lightInfos.size(); i++) 
        {
            for (size_t j = i + 1; (j < lightInfos.size()); j++) 
            {
                ArmorDescriptor& leftLight = lightInfos[i];
                ArmorDescriptor& rightLight = lightInfos[j];
                float angleGap_ = abs(leftLight.angle - rightLight.angle);
                //由于灯条长度会因为远近而受到影响，所以按照比值去匹配灯条
                float LenGap_ratio = abs(leftLight.length - rightLight.length) / max(leftLight.length, rightLight.length);
                float dis = pow(pow((leftLight.center.x - rightLight.center.x), 2) + pow((leftLight.center.y - rightLight.center.y), 2), 0.5);
                //均长
                float meanLen = (leftLight.length + rightLight.length) / 2;
                float lengap_ratio = abs(leftLight.length - rightLight.length) / meanLen;
                float yGap = abs(leftLight.center.y - rightLight.center.y);
                float yGap_ratio = yGap / meanLen;
                float xGap = abs(leftLight.center.x - rightLight.center.x);
                float xGap_ratio = xGap / meanLen;
                float ratio = dis / meanLen;
                //匹配不通过的条件
                if (angleGap_ > 15 ||
                    LenGap_ratio > 1.0 ||
                    lengap_ratio > 0.8 ||
                    yGap_ratio > 1.5 ||
                    xGap_ratio > 2.2 ||
                    xGap_ratio < 0.8 ||
                    ratio > 3 ||
                    ratio < 0.8)
                 {
                    continue;
                }
		int resNum=NumberMatch(img);		//检测到灯条后丢去识别数字
		char string[10];
		sprintf(string, "%d", resNum);

                //绘制矩形
                Point center = Point((leftLight.center.x + rightLight.center.x) / 2, (leftLight.center.y + rightLight.center.y) / 2);
		putText(img,string,center,FONT_HERSHEY_SIMPLEX,0.5,Scalar(0,0,255));//(当前帧，内容，坐标，字体，大小，颜色)
                RotatedRect rect = RotatedRect(center, Size(dis, meanLen), (leftLight.angle + rightLight.angle) / 2);
                Point2f vertices[4];
                rect.points(vertices);
                for (int i = 0; i < 4; i++) 
                {
                    line(img, vertices[i], vertices[(i + 1) % 4], Scalar(0, 0, 255), 2.2);
                }
            }

        }
	return img;
}






