# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rl_planning: 8 messages, 0 services")

set(MSG_I_FLAGS "-Irl_planning:/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rl_planning_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" "rl_planning/Point:rl_planning/Vector3D:geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Polygon:geometry_msgs/PolygonStamped"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" NAME_WE)
add_custom_target(_rl_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rl_planning" "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" "rl_planning/VehicleInfo:std_msgs/Header:rl_planning/Vector3D:rl_planning/Point:geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)
_generate_msg_cpp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
)

### Generating Services

### Generating Module File
_generate_module_cpp(rl_planning
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rl_planning_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rl_planning_generate_messages rl_planning_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_cpp _rl_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_planning_gencpp)
add_dependencies(rl_planning_gencpp rl_planning_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_planning_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)
_generate_msg_eus(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
)

### Generating Services

### Generating Module File
_generate_module_eus(rl_planning
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rl_planning_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rl_planning_generate_messages rl_planning_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_eus _rl_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_planning_geneus)
add_dependencies(rl_planning_geneus rl_planning_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_planning_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)
_generate_msg_lisp(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
)

### Generating Services

### Generating Module File
_generate_module_lisp(rl_planning
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rl_planning_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rl_planning_generate_messages rl_planning_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_lisp _rl_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_planning_genlisp)
add_dependencies(rl_planning_genlisp rl_planning_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_planning_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)
_generate_msg_nodejs(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rl_planning
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rl_planning_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rl_planning_generate_messages rl_planning_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_nodejs _rl_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_planning_gennodejs)
add_dependencies(rl_planning_gennodejs rl_planning_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_planning_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg;/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)
_generate_msg_py(rl_planning
  "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
)

### Generating Services

### Generating Module File
_generate_module_py(rl_planning
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rl_planning_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rl_planning_generate_messages rl_planning_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Trajectory_planning.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Point.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/CSP.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/PlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/Vector3D.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/RLPlanningPath.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/rl_planning/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(rl_planning_generate_messages_py _rl_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rl_planning_genpy)
add_dependencies(rl_planning_genpy rl_planning_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rl_planning_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rl_planning
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rl_planning_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rl_planning_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(rl_planning_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rl_planning
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rl_planning_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rl_planning_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(rl_planning_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rl_planning
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rl_planning_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rl_planning_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(rl_planning_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rl_planning
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rl_planning_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rl_planning_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(rl_planning_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rl_planning
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rl_planning_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rl_planning_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(rl_planning_generate_messages_py nav_msgs_generate_messages_py)
endif()
