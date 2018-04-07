cmake_minimum_required(VERSION 3.8)
project(Programming3)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        main.cpp
        Project3.cpp
        String.h)

add_executable(Programming3 ${SOURCE_FILES})