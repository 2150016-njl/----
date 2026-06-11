# Install script for directory: /home/plusgo/geely_1225_tongji/geely/src/rl_planning

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rl_planning/msg" TYPE FILE FILES
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg"
    "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rl_planning/cmake" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/build/rl_planning/catkin_generated/installspace/rl_planning-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/include/rl_planning")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/share/roseus/ros/rl_planning")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/share/common-lisp/ros/rl_planning")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/share/gennodejs/ros/rl_planning")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/plusgo/geely_1225_tongji/geely/devel/lib/python2.7/dist-packages/rl_planning")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/plusgo/geely_1225_tongji/geely/devel/lib/python2.7/dist-packages/rl_planning")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/build/rl_planning/catkin_generated/installspace/rl_planning.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rl_planning/cmake" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/build/rl_planning/catkin_generated/installspace/rl_planning-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rl_planning/cmake" TYPE FILE FILES
    "/home/plusgo/geely_1225_tongji/geely/build/rl_planning/catkin_generated/installspace/rl_planningConfig.cmake"
    "/home/plusgo/geely_1225_tongji/geely/build/rl_planning/catkin_generated/installspace/rl_planningConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rl_planning" TYPE FILE FILES "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/package.xml")
endif()

