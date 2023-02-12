#include <stdio.h>
#include <stdlib.h>
#include "ArmorDescriptor.h"
#include "NumberMatch.h"
#include <iostream>
#include <string>
#include <vector>
#include <opencv4/opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>

using namespace std;
using namespace cv;

int main()
{
	double t=0;
	char string[10];
	char num[10];
	int n;
	cin >> n;
	VideoCapture cap("../1.mp4");
	//VideoCapture cap(0);
	//视频格式输出
	int frame_width = cap.get(CAP_PROP_FRAME_WIDTH);
	int frame_height = cap.get(CAP_PROP_FRAME_HEIGHT);
	int count = cap.get(CAP_PROP_FRAME_COUNT);
	double fps = cap.get(CAP_PROP_FPS);	//以上4行为以.mp4格式输出所需要的，仅用imshow输出时可注释掉
	VideoWriter writer("../result.mp4", cap.get(CAP_PROP_FOURCC), fps, Size(frame_width, frame_height), true);

	while (1)
	{
		int enemyNum=0;
		ArmorDescriptor detect;		//类实体化
		Mat frame;
		Mat output;
		bool ret = cap.read(frame);
		if (!ret) break;
		output=detect.preprocessing(frame,n);		//进行预处理+标记框的操作

		//求fps
		t=(double)getTickCount();
		t = ((double)getTickCount() - t) / getTickFrequency();
		fps = 1.0 / t;
		fps/=1000000;
		sprintf(string, "%.0f", fps);      // 帧率保留两位小数
		std::string fpsString("FPS:");
		fpsString += string;                    // 在"FPS:"后加入帧率数值字符串
		putText(output,fpsString,Point(5,20),FONT_HERSHEY_SIMPLEX,0.5,Scalar(0,0,255));//(当前帧，内容，坐标，字体，大小，颜色)

		/*imshow("画面", output);
		char c = waitKey(30);
	        if (c == 27)break;			//esc退出*/
		writer.write(frame);		//视频格式输出所用
	}
	writer.release();	//视频格式输出所用
}



			
