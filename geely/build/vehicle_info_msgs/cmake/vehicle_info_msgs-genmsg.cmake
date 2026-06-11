# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vehicle_info_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ivehicle_info_msgs:/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vehicle_info_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" NAME_WE)
add_custom_target(_vehicle_info_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vehicle_info_msgs" "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" NAME_WE)
add_custom_target(_vehicle_info_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vehicle_info_msgs" "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" NAME_WE)
add_custom_target(_vehicle_info_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vehicle_info_msgs" "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" "std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" NAME_WE)
add_custom_target(_vehicle_info_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vehicle_info_msgs" "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" "vehicle_info_msgs/VehicleInfo:std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_cpp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_cpp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_cpp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(vehicle_info_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vehicle_info_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vehicle_info_msgs_generate_messages vehicle_info_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_cpp _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_cpp _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_cpp _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_cpp _vehicle_info_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_info_msgs_gencpp)
add_dependencies(vehicle_info_msgs_gencpp vehicle_info_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_info_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_eus(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_eus(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_eus(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(vehicle_info_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vehicle_info_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vehicle_info_msgs_generate_messages vehicle_info_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_eus _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_eus _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_eus _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_eus _vehicle_info_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_info_msgs_geneus)
add_dependencies(vehicle_info_msgs_geneus vehicle_info_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_info_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_lisp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_lisp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_lisp(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(vehicle_info_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vehicle_info_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vehicle_info_msgs_generate_messages vehicle_info_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_lisp _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_lisp _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_lisp _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_lisp _vehicle_info_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_info_msgs_genlisp)
add_dependencies(vehicle_info_msgs_genlisp vehicle_info_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_info_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_nodejs(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_nodejs(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_nodejs(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(vehicle_info_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vehicle_info_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vehicle_info_msgs_generate_messages vehicle_info_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_nodejs _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_nodejs _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_nodejs _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_nodejs _vehicle_info_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_info_msgs_gennodejs)
add_dependencies(vehicle_info_msgs_gennodejs vehicle_info_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_info_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_py(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_py(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs
)
_generate_msg_py(vehicle_info_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(vehicle_info_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vehicle_info_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vehicle_info_msgs_generate_messages vehicle_info_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Point.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_py _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/Vector3D.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_py _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfo.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_py _vehicle_info_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/vehicle_info_msgs/msg/VehicleInfoBatch.msg" NAME_WE)
add_dependencies(vehicle_info_msgs_generate_messages_py _vehicle_info_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vehicle_info_msgs_genpy)
add_dependencies(vehicle_info_msgs_genpy vehicle_info_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vehicle_info_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vehicle_info_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vehicle_info_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vehicle_info_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vehicle_info_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vehicle_info_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vehicle_info_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vehicle_info_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vehicle_info_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vehicle_info_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vehicle_info_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vehicle_info_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vehicle_info_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vehicle_info_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vehicle_info_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vehicle_info_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
