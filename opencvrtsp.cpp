#include <iostream>
#include <string>
#include <opencv2/core.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/imgproc.hpp>

using namespace cv;
using namespace std;
int main(int argc, char **argv)
{
    bool escape = false;

    //   cv::VideoCapture capture("rtsp://192.168.0.161:554/live2.sdp");
    VideoCapture capture("http://192.168.0.162/video1.mjpg");

    //   std::string url = char* argv[1];
    //   cv::VideoCapture capture(argv[1]);
    if (!capture.isOpened())
    {
        // Error
        return 0;
    }
    // print out the fps of cam
    cout << " The frame per second of cam is: " << capture.get(CAP_PROP_FPS) << endl;

    namedWindow("Test gui", CV_MINOR_VERSION);

    Mat frame;

    while (!escape)
    {
        if (!capture.read(frame))
        {
            // Error
            cout << "open fail" << endl;
        }
        putText(frame, "Press Esc to Close", Point(10, 30), FONT_HERSHEY_PLAIN, 2.0, Scalar(0, 0, 255), 2, LINE_AA);
        // std::cout << "open successful" << std ::endl;
        imshow("Test gui", frame);

        if (waitKey(30) == 27)
        {
            cout << "ESC pressed";
            destroyWindow("Test gui");
            escape = true;
        }
    }
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

//where.exe is equivalent to whereis
