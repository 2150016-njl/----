# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_interface: 153 messages, 0 services")

set(MSG_I_FLAGS "-Iros_interface:/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" "ros_interface/LaneLineCubicCurve"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" "ros_interface/RadarObstacle:ros_interface/Point2D:ros_interface/RadarState:std_msgs/Header:ros_interface/RadarStateError:ros_interface/RadarStateMode:ros_interface/Status"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" "ros_interface/TrajectoryInPrediction:ros_interface/Point3D:ros_interface/ObstaclePriority:ros_interface/PerceptionObstacle:ros_interface/ObstacleIntent:ros_interface/ObstacleInteractiveTag:ros_interface/TrajectoryPoint:ros_interface/PathPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" "ros_interface/ImageRect:ros_interface/Point3D:ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" "ros_interface/Point3D:ros_interface/Polygon3D:ros_interface/ParkingStopper:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" "ros_interface/Point3D:ros_interface/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" "ros_interface/Point3D:ros_interface/LaneLineCubicCurve:ros_interface/EndPoints:ros_interface/Point2D:ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" "ros_interface/Status:ros_interface/Point2D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" "ros_interface/KeyPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" "ros_interface/LaneLineCubicCurve:ros_interface/Point2D:ros_interface/RoadMark:ros_interface/LaneLine:ros_interface/SensorCalibrator:ros_interface/Point3D:ros_interface/EndPoints:std_msgs/Header:ros_interface/HolisticPathPrediction:ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" "ros_interface/Point3D:ros_interface/LanePoint:ros_interface/LaneInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" "ros_interface/Point2dList:ros_interface/Point2D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" "ros_interface/Point2D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" "ros_interface/Point3D:ros_interface/TrafficLight:ros_interface/ImageRect:ros_interface/Time:ros_interface/TrafficLightBox:std_msgs/Header:ros_interface/TrafficLightDebug"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" "ros_interface/PathPoint"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" "ros_interface/PointENU:ros_interface/PointLLH:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" "ros_interface/Point3D:ros_interface/LanePoint"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" "ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" "ros_interface/RadarStateError:ros_interface/RadarStateMode"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" "ros_interface/TrajectoryPoint:ros_interface/PathPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" "ros_interface/PathPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" "ros_interface/UssObstacle:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" "ros_interface/Point3D:ros_interface/WLConstraintInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" "ros_interface/VehicleParam:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" "ros_interface/VehicleMotionPoint:ros_interface/TrajectoryPoint:ros_interface/PathPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" "ros_interface/Polygon3D:ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" "ros_interface/Point2D:ros_interface/Polygon2D:ros_interface/PathPoint:ros_interface/Trajectory:ros_interface/TrajectoryPoint:ros_interface/Point2dList:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" "ros_interface/Time:ros_interface/Event:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" "ros_interface/Point3D:ros_interface/HMITrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" "ros_interface/HMIObuCmd:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" "ros_interface/Command:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" "ros_interface/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" "ros_interface/KeyValues:ros_interface/DiagnosticStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" "ros_interface/Path:ros_interface/PathPoint:ros_interface/Trajectory:std_msgs/Header:ros_interface/TrajectoryPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" "ros_interface/Point2D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" "ros_interface/Point2D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" "ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" "ros_interface/PredictionTrajectoryPoint:ros_interface/TrajectoryInPrediction:ros_interface/TrajectoryPointInPrediction:ros_interface/Point3D:ros_interface/ObstaclePriority:ros_interface/PathPoint:ros_interface/TrajectoryPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" "ros_interface/TrajectoryPoint:ros_interface/PathPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" "ros_interface/UltrasonicObstacle:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" "ros_interface/Point3D:ros_interface/ImageKeyPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" "ros_interface/HMIParkingInfo:ros_interface/Point3D:ros_interface/Polygon3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" "ros_interface/TrafficLightBox"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" "ros_interface/Polygon2D:ros_interface/Point2D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" "ros_interface/PointENU:ros_interface/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" "ros_interface/ObuCmd:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" "ros_interface/Fault:ros_interface/Time:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" "ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" "ros_interface/RouteFusionInfo:ros_interface/Point3D:ros_interface/LimitSpeedInfo:ros_interface/JunctionInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" "ros_interface/PathPoint"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" "ros_interface/Point3D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" "ros_interface/Point3D:ros_interface/Grid:ros_interface/Region:ros_interface/SLPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" "ros_interface/PointXYZIRT:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" "ros_interface/WarningCommand:ros_interface/TrajectoryLimitCommand:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" "ros_interface/TrajectoryInPrediction:ros_interface/PathPoint:ros_interface/Point3D:ros_interface/ObstaclePriority:ros_interface/PerceptionObstacle:ros_interface/ObstacleIntent:ros_interface/ObstacleInteractiveTag:std_msgs/Header:ros_interface/TrajectoryPoint:ros_interface/PredictionObstacle:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" "ros_interface/HMIDiagnosticStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" "ros_interface/RoadMark:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" "ros_interface/Message:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" "ros_interface/CameraParkingStopper:ros_interface/Point3D:std_msgs/Header:ros_interface/CameraParkingInfo:ros_interface/ImageKeyPoint:ros_interface/BBox2D"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" "ros_interface/SLPoint"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" "ros_interface/LaneletInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" "ros_interface/PointENU:ros_interface/Point3D:ros_interface/Quaternion:ros_interface/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" "ros_interface/Point2D:ros_interface/SensorCalibrator:ros_interface/Point3D:ros_interface/Obstacle:std_msgs/Header:ros_interface/ImageKeyPoint:ros_interface/BBox2D:ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" "ros_interface/SLPoint"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" "ros_interface/Point3D:ros_interface/UssParkingInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" "ros_interface/Point3D:ros_interface/PointENU:ros_interface/PointLLH:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" "ros_interface/PointENU:ros_interface/Point3D:ros_interface/Quaternion"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" "ros_interface/Point3D:ros_interface/Polygon3D:ros_interface/ParkingStopper:ros_interface/ParkingInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" "ros_interface/Point2D:ros_interface/SensorCalibrator:ros_interface/Point3D:ros_interface/ImageKeyPoint:ros_interface/BBox2D:ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" "ros_interface/Point3D:ros_interface/HMIObstacle:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" "ros_interface/TrajectoryPoint:ros_interface/PathPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" "ros_interface/Point3D:ros_interface/StopPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" "ros_interface/Time"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" "ros_interface/Point3D:ros_interface/Polygon3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" "ros_interface/Point2D:ros_interface/TimeConsume:ros_interface/Polygon2D:ros_interface/PathPoint:ros_interface/Trajectory:std_msgs/Header:ros_interface/TrajectoryPoint:ros_interface/Point2dList:ros_interface/PlanningParkingDebug:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" "ros_interface/Point3D:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" "ros_interface/EStop:ros_interface/RSSInfo:ros_interface/PathPoint:std_msgs/Header:ros_interface/TrajectoryPoint:ros_interface/GaussianInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" NAME_WE)
add_custom_target(_ros_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_interface" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" "ros_interface/BBox2D:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)
_generate_msg_cpp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
)

### Generating Services

### Generating Module File
_generate_module_cpp(ros_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_interface_generate_messages ros_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_cpp _ros_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_interface_gencpp)
add_dependencies(ros_interface_gencpp ros_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)
_generate_msg_eus(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
)

### Generating Services

### Generating Module File
_generate_module_eus(ros_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_interface_generate_messages ros_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_eus _ros_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_interface_geneus)
add_dependencies(ros_interface_geneus ros_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)
_generate_msg_lisp(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
)

### Generating Services

### Generating Module File
_generate_module_lisp(ros_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_interface_generate_messages ros_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_lisp _ros_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_interface_genlisp)
add_dependencies(ros_interface_genlisp ros_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)
_generate_msg_nodejs(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ros_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_interface_generate_messages ros_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_nodejs _ros_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_interface_gennodejs)
add_dependencies(ros_interface_gennodejs ros_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)
_generate_msg_py(ros_interface
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
)

### Generating Services

### Generating Module File
_generate_module_py(ros_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_interface_generate_messages ros_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HolisticPathPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PadMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacleListMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLight.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Imu.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLine.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WheelInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Command.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingRequest.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoutingResponse.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommandRespond.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingRoi.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2dList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingOutInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Path.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIVehicleMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ControlAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pavementype.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateError.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMark.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleParam.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Header.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneletInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SpeedPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleInteractiveTag.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotionPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/JunctionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/BBox2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Status.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Point3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WLConstraintInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleConfig.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LanePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleMotion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EStop.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PerceptionObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GaussianInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionTrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstaclePriority.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DrivableRegion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RSSInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleIntent.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/KeyValues.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningParkingDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Events.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Message.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FrenetFramePoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Stories.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UltrasonicObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryLimitCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CommCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/DiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointLLH.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMITrajectoryPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Polygon2D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/EndPoints.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Twist.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightBox.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/AlarmMessage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PathPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Log.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleFeature.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ultrasonic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Uncertainty.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Region.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficLightDebug.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/FreeSpace.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Odometry.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CompressedImage.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmdMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Faults.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Event.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrafficEvents.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TrajectoryPointInPrediction.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SensorCalibrator.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SotifMonitorResult.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointCloud.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/TimeConsume.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SecurityDecision.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Matrix3D.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointXYZIRT.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PredictionObstacles.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticArray.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Time.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Quaternion.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RoadMarkList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ModuleStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/SLBoundary.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/GlobalRouteMsg.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleState.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingStateDisplay.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Grid.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Chassis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Location.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIDiagnosticStatus.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Image.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Gnss.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Pose.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RadarStateMode.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ParkingInfoList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/RouteFusionInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Obstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LimitSpeedInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ObuCmd.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIObstacleList.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Trajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/StopInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Fault.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageRect.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/HMIParkingInfo.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/UssObstacle.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/VehicleSignal.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointBasic.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PlanningAnalysis.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/Ins.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ADCTrajectory.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/PointENU.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/LaneLineCubicCurve.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/WarningCommand.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/ImageKeyPoint.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_interface/msg/CameraParkingStopper.msg" NAME_WE)
add_dependencies(ros_interface_generate_messages_py _ros_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_interface_genpy)
add_dependencies(ros_interface_genpy ros_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
