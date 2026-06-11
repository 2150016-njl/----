# Install script for directory: /home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/plusgo/geely_1225_tongji/geely/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/perception_ros_msg/msg" TYPE FILE FILES
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/perception_ros_msg/cmake" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/build/athena/ros_msg/catkin_generated/installspace/perception_ros_msg-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/include/perception_ros_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/share/roseus/ros/perception_ros_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/share/common-lisp/ros/perception_ros_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/share/gennodejs/ros/perception_ros_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/plusgo/geely_1225_tongji/geely/devel/lib/python2.7/dist-packages/perception_ros_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/lib/python2.7/dist-packages/perception_ros_msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/build/athena/ros_msg/catkin_generated/installspace/perception_ros_msg.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/perception_ros_msg/cmake" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/build/athena/ros_msg/catkin_generated/installspace/perception_ros_msg-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/perception_ros_msg/cmake" TYPE FILE FILES
    "/home/plusgo/geely_1225_tongji/geely/build/athena/ros_msg/catkin_generated/installspace/perception_ros_msgConfig.cmake"
    "/home/plusgo/geely_1225_tongji/geely/build/athena/ros_msg/catkin_generated/installspace/perception_ros_msgConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/perception_ros_msg" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/package.xml")
endif()

