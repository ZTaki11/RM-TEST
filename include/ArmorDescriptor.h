#include "stdio.h"
#include <iostream>
#include <opencv4/opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "NumberMatch.h"

using namespace std;
using namespace cv;

class ArmorDescriptor
{	    //在识别以及匹配到灯条的功能中需要用到旋转矩形的长宽偏转角面积中心点坐标等
public:
	float width, length, angle, area;
	cv::Point2f center;   
public:
    ArmorDescriptor() {};
    //让得到的灯条套上一个旋转矩形，以方便之后对角度这个特殊因素作为匹配标准
    ArmorDescriptor(const cv::RotatedRect& light)
    {
        width = light.size.width;
        length = light.size.height;
        center = light.center;
        angle = light.angle;
        area = light.size.area();
    }
    Mat preprocessing(Mat img,int n);
};

//预处理+灯条匹配

