CC:= g++
CFLAGS+= -I. -I C:\opencv\OpenCV-MinGW-Build\include
LDFLAGS+= -L C:\opencv\OpenCV-MinGW-Build\x64\mingw\bin
LDFLAGS+= -llibopencv_calib3d411 -llibopencv_core411 
LDFLAGS+= -llibopencv_dnn411 -lopencv_features2d411 
LDFLAGS+= -llibopencv_flann411 -llibopencv_highgui411
LDFLAGS+= -lopencv_imgcodecs411 -llibopencv_imgproc411
LDFLAGS+= -llibopencv_ml411 -llibopencv_objdetect411
LDFLAGS+= -llibopencv_photo411 -llibopencv_stitching411
LDFLAGS+= -llibopencv_video411 -llibopencv_videoio411  
TARGET= opencv
OBJS = opencv.cpp

.PHONY: all
all: ${TARGET}
 ${TARGET}: $(OBJS)
	$(CC) -g -o $(TARGET) $(objs) $(LDFLAGS)
 %.o: %.cpp
	$(CC) -c $^ -o $@ $(CFLAGS)
	
.PHONY: clean
clean:
	rm -rf *.o
