# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\cmake-3.20.4\bin\cmake.exe

# The command to remove a file.
RM = C:\cmake-3.20.4\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\ADE\Desktop\vscode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\ADE\Desktop\vscode\build

# Include any dependencies generated for this target.
include CMakeFiles/opencv.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/opencv.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/opencv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opencv.dir/flags.make

CMakeFiles/opencv.dir/opencvrtsp.cpp.obj: CMakeFiles/opencv.dir/flags.make
CMakeFiles/opencv.dir/opencvrtsp.cpp.obj: CMakeFiles/opencv.dir/includes_CXX.rsp
CMakeFiles/opencv.dir/opencvrtsp.cpp.obj: ../opencvrtsp.cpp
CMakeFiles/opencv.dir/opencvrtsp.cpp.obj: CMakeFiles/opencv.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\ADE\Desktop\vscode\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opencv.dir/opencvrtsp.cpp.obj"
	C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/opencv.dir/opencvrtsp.cpp.obj -MF CMakeFiles\opencv.dir\opencvrtsp.cpp.obj.d -o CMakeFiles\opencv.dir\opencvrtsp.cpp.obj -c C:\Users\ADE\Desktop\vscode\opencvrtsp.cpp

CMakeFiles/opencv.dir/opencvrtsp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv.dir/opencvrtsp.cpp.i"
	C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\ADE\Desktop\vscode\opencvrtsp.cpp > CMakeFiles\opencv.dir\opencvrtsp.cpp.i

CMakeFiles/opencv.dir/opencvrtsp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv.dir/opencvrtsp.cpp.s"
	C:\mingw-w64\x86_64-8.1.0-posix-seh-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\ADE\Desktop\vscode\opencvrtsp.cpp -o CMakeFiles\opencv.dir\opencvrtsp.cpp.s

# Object files for target opencv
opencv_OBJECTS = \
"CMakeFiles/opencv.dir/opencvrtsp.cpp.obj"

# External object files for target opencv
opencv_EXTERNAL_OBJECTS =

../bin/opencv.exe: CMakeFiles/opencv.dir/opencvrtsp.cpp.obj
../bin/opencv.exe: CMakeFiles/opencv.dir/build.make
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_dnn411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_gapi411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_highgui411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_ml411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_objdetect411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_photo411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_stitching411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_video411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_videoio411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_imgcodecs411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_calib3d411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_features2d411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_flann411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_imgproc411.dll.a
../bin/opencv.exe: C:/opencv/OpenCV-MinGW-Build/x64/mingw/lib/libopencv_core411.dll.a
../bin/opencv.exe: CMakeFiles/opencv.dir/linklibs.rsp
../bin/opencv.exe: CMakeFiles/opencv.dir/objects1.rsp
../bin/opencv.exe: CMakeFiles/opencv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\ADE\Desktop\vscode\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\opencv.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\opencv.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opencv.dir/build: ../bin/opencv.exe
.PHONY : CMakeFiles/opencv.dir/build

CMakeFiles/opencv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\opencv.dir\cmake_clean.cmake
.PHONY : CMakeFiles/opencv.dir/clean

CMakeFiles/opencv.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\ADE\Desktop\vscode C:\Users\ADE\Desktop\vscode C:\Users\ADE\Desktop\vscode\build C:\Users\ADE\Desktop\vscode\build C:\Users\ADE\Desktop\vscode\build\CMakeFiles\opencv.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opencv.dir/depend

