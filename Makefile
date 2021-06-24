CC:= g++
CFLAGS+=-I C:\\opencv\\install\\include
LDFLAGS+=-L C:\\opencv\\install\\x64\\mingw\\lib
LDFLAGS+=-llibopencv_calib3d411 -llibopencv_core411 
LDFLAGS+=-lopencv_features2d411 
LDFLAGS+=-llibopencv_flann411 -llibopencv_highgui411
LDFLAGS+=-lopencv_imgcodecs411 -llibopencv_imgproc411
LDFLAGS+=-llibopencv_ml411 -llibopencv_objdetect411
LDFLAGS+=-llibopencv_photo411 -llibopencv_stitching411
LDFLAGS+=-llibopencv_video411 -llibopencv_videoio411  
LDFLAGS+= -static-libgcc -static-libstdc++
# LDFLAGS+=-L C:\\opencv\\install\\x64\\mingw\\lib -llibopencv_calib3d411 -llibopencv_core411 -llibopencv_features2d411 -llibopencv_flann411 -llibopencv_highgui411 -llibopencv_imgcodecs411 -llibopencv_imgproc411 -llibopencv_ml411 -llibopencv_objdetect411 -llibopencv_photo411 -llibopencv_stitching411 -llibopencv_video411 -llibopencv_videoio411

TARGET= opencv
# no this lib -llibopencv_dnn411
OBJS = opencv.o

.PHONY: all 
all: ${TARGET} clean
 ${TARGET}: $(OBJS)
	$(CC) -g -o $(TARGET) $(OBJS) $(LDFLAGS)
 %.o: %.cpp
	$(CC) -c $^ -o $@ $(CFLAGS)
	
.PHONY: clean
clean:
	rm -rf *.o

# g++ -static-libgcc -static-libstdc++ -g c:\\Users\\ADE\\Desktop\\vscode\\opencvrtsp.cpp -o c:\\Users\\ADE\\Desktop\\vscode\\opencvrtsp.exe -I C:\\opencv\\install\\include -L C:\\opencv\\install\\x64\\mingw\\lib -llibopencv_calib3d411 -llibopencv_core411 -llibopencv_features2d411 -llibopencv_flann411 -llibopencv_highgui411 -llibopencv_imgcodecs411 -llibopencv_imgproc411 -llibopencv_ml411 -llibopencv_objdetect411 -llibopencv_photo411 -llibopencv_stitching411 -llibopencv_video411 -llibopencv_videoio411 