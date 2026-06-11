# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "perception_ros_msg: 22 messages, 0 services")

set(MSG_I_FLAGS "-Iperception_ros_msg:/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(perception_ros_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" "perception_ros_msg/Point4f:perception_ros_msg/Pose:std_msgs/Int32:perception_ros_msg/Point3d:perception_ros_msg/Point2f:perception_ros_msg/Curve:perception_ros_msg/FreeSpaceInfos:perception_ros_msg/AxisStatusPose:std_msgs/Bool:perception_ros_msg/RoadEdges:perception_ros_msg/Object:std_msgs/Float64:std_msgs/Float32:perception_ros_msg/RoadEdge:perception_ros_msg/Lane:perception_ros_msg/PoseMap:perception_ros_msg/Indices:perception_ros_msg/CoreInfo:perception_ros_msg/Objects:std_msgs/UInt32:perception_ros_msg/Point3f:perception_ros_msg/EndPoints:std_msgs/String:perception_ros_msg/Lanes:perception_ros_msg/SupplementInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" "std_msgs/Float32:perception_ros_msg/Point2f"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" "std_msgs/Int32:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" "perception_ros_msg/RoadEdge:perception_ros_msg/EndPoints:std_msgs/Int32:perception_ros_msg/Point2f:perception_ros_msg/Curve:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" "perception_ros_msg/EndPoints:std_msgs/Int32:perception_ros_msg/Point2f:perception_ros_msg/Lane:perception_ros_msg/Curve:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" "std_msgs/Float32:std_msgs/Int32:perception_ros_msg/Pose"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" "perception_ros_msg/Point4f:perception_ros_msg/Pose:std_msgs/Int32:perception_ros_msg/Point3d:perception_ros_msg/Point2f:perception_ros_msg/Curve:perception_ros_msg/FreeSpaceInfos:perception_ros_msg/AxisStatusPose:std_msgs/Bool:perception_ros_msg/RoadEdges:perception_ros_msg/LidarFrameMsg:perception_ros_msg/Object:std_msgs/Float64:std_msgs/Float32:perception_ros_msg/RoadEdge:perception_ros_msg/Lane:perception_ros_msg/PoseMap:perception_ros_msg/Indices:perception_ros_msg/CoreInfo:perception_ros_msg/Objects:std_msgs/UInt32:perception_ros_msg/Point3f:perception_ros_msg/EndPoints:std_msgs/String:perception_ros_msg/Lanes:perception_ros_msg/SupplementInfo"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" "perception_ros_msg/EndPoints:std_msgs/Float32:perception_ros_msg/Point2f:std_msgs/Int32:perception_ros_msg/Curve"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" "std_msgs/Bool:perception_ros_msg/Point3f:std_msgs/Int32:perception_ros_msg/Point3d:std_msgs/Float64:std_msgs/UInt32:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" "std_msgs/Float64"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" "std_msgs/Float32:perception_ros_msg/AxisStatusPose:std_msgs/Int32:perception_ros_msg/Pose"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" "perception_ros_msg/Point3f:std_msgs/Int32:perception_ros_msg/SupplementInfo:perception_ros_msg/CoreInfo:std_msgs/Float64:std_msgs/UInt32:perception_ros_msg/Point3d:std_msgs/Bool:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" "perception_ros_msg/Point3f:std_msgs/Int32:perception_ros_msg/Object:perception_ros_msg/SupplementInfo:perception_ros_msg/CoreInfo:std_msgs/Float64:std_msgs/UInt32:perception_ros_msg/Point3d:std_msgs/Bool:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" "std_msgs/Float64:perception_ros_msg/Point3f:std_msgs/Int32:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" "std_msgs/Int32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" "std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" "perception_ros_msg/EndPoints:std_msgs/Float32:perception_ros_msg/Point2f:std_msgs/Int32:perception_ros_msg/Curve"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" "perception_ros_msg/Point3f:std_msgs/Float32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" NAME_WE)
add_custom_target(_perception_ros_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "perception_ros_msg" "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" "std_msgs/Float32"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_cpp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(perception_ros_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(perception_ros_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(perception_ros_msg_generate_messages perception_ros_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_cpp _perception_ros_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(perception_ros_msg_gencpp)
add_dependencies(perception_ros_msg_gencpp perception_ros_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS perception_ros_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_eus(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(perception_ros_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(perception_ros_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(perception_ros_msg_generate_messages perception_ros_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_eus _perception_ros_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(perception_ros_msg_geneus)
add_dependencies(perception_ros_msg_geneus perception_ros_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS perception_ros_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_lisp(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(perception_ros_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(perception_ros_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(perception_ros_msg_generate_messages perception_ros_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_lisp _perception_ros_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(perception_ros_msg_genlisp)
add_dependencies(perception_ros_msg_genlisp perception_ros_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS perception_ros_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_nodejs(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(perception_ros_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(perception_ros_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(perception_ros_msg_generate_messages perception_ros_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_nodejs _perception_ros_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(perception_ros_msg_gennodejs)
add_dependencies(perception_ros_msg_gennodejs perception_ros_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS perception_ros_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/String.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/UInt32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float64.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Int32.msg;/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)
_generate_msg_py(perception_ros_msg
  "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
)

### Generating Services

### Generating Module File
_generate_module_py(perception_ros_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(perception_ros_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(perception_ros_msg_generate_messages perception_ros_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/LidarFrameMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/EndPoints.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Matrix3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Pose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdges.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lanes.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/AxisStatusPose.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RsPerceptionMsg.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/RoadEdge.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/SupplementInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3d.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point4f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/PoseMap.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Object.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point3f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Objects.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/CoreInfo.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Indices.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Curve.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Lane.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/FreeSpaceInfos.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/athena/ros_msg/msg/Point2f.msg" NAME_WE)
add_dependencies(perception_ros_msg_generate_messages_py _perception_ros_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(perception_ros_msg_genpy)
add_dependencies(perception_ros_msg_genpy perception_ros_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS perception_ros_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/perception_ros_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(perception_ros_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(perception_ros_msg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(perception_ros_msg_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/perception_ros_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(perception_ros_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(perception_ros_msg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(perception_ros_msg_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/perception_ros_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(perception_ros_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(perception_ros_msg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(perception_ros_msg_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/perception_ros_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(perception_ros_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(perception_ros_msg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(perception_ros_msg_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/perception_ros_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(perception_ros_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(perception_ros_msg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(perception_ros_msg_generate_messages_py sensor_msgs_generate_messages_py)
endif()
