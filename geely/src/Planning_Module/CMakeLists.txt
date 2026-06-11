cmake_minimum_required(VERSION 3.0.2)
project(Planning_Module)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation

)

add_message_files(
  FILES
  trajectory_planning_msg.msg

)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES test_pub
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

include_directories(
include
  ${catkin_INCLUDE_DIRS}
)
add_executable(Planning_Module_start src/Planning_Module_start.cpp
                                     src/rt_nonfinite.cpp
                                     src/rtGetInf.cpp
                                     src/rtGetNaN.cpp
                                     src/Planning_Module.cpp)
add_dependencies(Planning_Module_start ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(Planning_Module_start ${catkin_LIBRARIES}
 )
