######## A simple cmakelists.txt file for OpenCV() #############  
cmake_minimum_required(VERSION 3.2)                            

set(BUILD_SHARED_LIBS OFF)

PROJECT(opencv)      
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "../bin")                                 
set(CMAKE_CXX_COMPILER "g++")

find_package(OpenCV REQUIRED)
set(CMAKE_FIND_LIBRARY_SUFFIXES .a ${CMAKE_FIND_LIBRARY_SUFFIXES})

# Print some message showing some of them
message(STATUS "OpenCV library status:")
message(STATUS "    config: ${OpenCV_DIR}")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIB}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "    find lib suff: ${CMAKE_FIND_LIBRARY_SUFFIXES}")

#
include_directories(${OpenCV_INCLUDE_DIRS})
add_executable(opencv opencvrtsp.cpp)                         
target_link_libraries (opencv ${OpenCV_LIBS})    
    
####################### end ########################  
# cmake -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++ -DCMAKE_BUILD_TYPE=Release  ..
# make .
