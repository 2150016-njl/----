cmake_minimum_required(VERSION 3.12)
project(spline_planner)

set(CMAKE_CXX_STANDARD 14)

find_package(pybind11 REQUIRED)

add_library(spline_planner MODULE calc_cur_s.cpp)
target_link_libraries(spline_planner PRIVATE pybind11::module)
