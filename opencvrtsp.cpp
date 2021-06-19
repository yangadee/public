#include <iostream>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>

int main(int argc, char **argv) {

  cv::VideoCapture capture("rtsp://192.168.0.161:554/live2.sdp");

  if (!capture.isOpened()) {
    // Error
    return 0;
  }

  cv::namedWindow("TEST", CV_MINOR_VERSION);

  cv::Mat frame;

  while (1) {
    if (!capture.read(frame)) {
      // Error
      std::cout << "open fail" << std ::endl;
      return 0;
    }
    // std::cout << "open successful" << std ::endl;
    cv::imshow("TEST", frame);

    cv::waitKey(30);
  }
  return 0;
}
// TO complie
// g++ rtspOpencv.cpp -o testoutput -std=c++11 `pkg-config --cflags --libs
// opencv4`