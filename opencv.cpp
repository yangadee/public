#include <iostream>

#include <opencv2/opencv.hpp>

using namespace cv;

int main( int argc, char** argv )
{
    std::cout << "aa" << std::endl;
 
    std::string img = "AD200.png";
    Mat srcImage = imread(img);
    if (!srcImage.data) {
        waitKey(0);
        return 1;
    }
    imshow("srcImage", srcImage);
    waitKey(0);
    return 0;
}