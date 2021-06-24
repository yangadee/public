# Opencv project
- run makefile to compile:
```
make .
```
or use ming32-make of MinGW-64
```
mingw32-make -f Makefile
```
- **`-f`** is specify <Filename>

> Remember to change the include dir and bin dir in the makefile.

## Note:
- The executable file is dynamical binding, it means that we should install the opencv lib with respect to specific version.
- If you wanna compile via `bash`:

```
g++ -static-libgcc -static-libstdc++ -g opencv.cpp -o opencv.exe -IC:\\opencv\\install\\include -LC:\\opencv\\install\\x64\\mingw\\lib -llibopencv_calib3d411 -llibopencv_core411 -llibopencv_features2d411 -llibopencv_flann411 -llibopencv_highgui411 -llibopencv_imgcodecs411 -llibopencv_imgproc411 -llibopencv_ml411 -llibopencv_objdetect411 -llibopencv_photo411 -llibopencv_stitching411 -llibopencv_video411 -llibopencv_videoio411 
```