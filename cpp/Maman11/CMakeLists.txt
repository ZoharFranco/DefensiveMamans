cmake_minimum_required(VERSION 3.28)
project(Maman11)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(Maman11
        maman11.cpp
        maman11.h
        my_vec.cpp
        my_vec.h
        vecs_all.cpp
        vecs_all.h
        read_csv.cpp
        read_csv.h)
