#include <iostream>
#include <string>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>

int main(int argc, char **argv) {

//   cv::VideoCapture capture("rtsp://192.168.0.161:554/live2.sdp");
//   std::string url = char* argv[1];
  cv::VideoCapture capture(argv[1]);
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

    cv::waitKey(1);
  }
  return 0;
}
// To complie in mingw-64
// g++ c:\Users\ADE\Desktop\vscode\opencvrtsp.cpp\
// -o c:\Users\ADE\Desktop\vscode\opencvrtsp.exe\
// -I C:\opencv\OpenCV-MinGW-Build\include\
// -L C:\opencv\OpenCV-MinGW-Build\x64\mingw\bin \
// -llibopencv_calib3d411 -llibopencv_core411\
// -llibopencv_dnn411 -lopencv_features2d411\
// -llibopencv_flann411 -llibopencv_highgui411\
// -lopencv_imgcodecs411 -llibopencv_imgproc411\
// -llibopencv_ml411 -llibopencv_objdetect411\
// -llibopencv_photo411 -llibopencv_stitching411\
// -llibopencv_video411 -llibopencv_videoio411 

// to execute:
// .\opencvrtsp.exe http://192.168.0.162/video1.mjpg
// or use start-Process to run process in the background
// start-Process .\opencvrtsp.exe http://192.168.0.162/video1.mjpg
