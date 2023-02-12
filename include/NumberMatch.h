#include "stdio.h"
#include <iostream>
#include <opencv4/opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>

using namespace std;
using namespace cv;

int getPixelSum(Mat& image);//获取所有像素点和，用于求两图像相减后所得图像的所有像素之和

int imgMatch(Mat& image, int& rate, int& num);//模板匹配函数，两图像做差

int NumberMatch(Mat frontImg);//匹配的主函数部分，负责处理输入的数字图片并裁切出合适的部分
