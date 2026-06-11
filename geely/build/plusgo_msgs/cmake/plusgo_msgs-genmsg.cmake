# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "plusgo_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iplusgo_msgs:/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(plusgo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" NAME_WE)
add_custom_target(_plusgo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plusgo_msgs" "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" "plusgo_msgs/ImageRect:plusgo_msgs/Object:geometry_msgs/Vector3:plusgo_msgs/Polygon:std_msgs/Header:geometry_msgs/Point32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" NAME_WE)
add_custom_target(_plusgo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plusgo_msgs" "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" "plusgo_msgs/ImageRect:plusgo_msgs/Polygon:geometry_msgs/Vector3:geometry_msgs/Point32:std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" NAME_WE)
add_custom_target(_plusgo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plusgo_msgs" "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" NAME_WE)
add_custom_target(_plusgo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plusgo_msgs" "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_cpp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_cpp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_cpp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(plusgo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(plusgo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(plusgo_msgs_generate_messages plusgo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_cpp _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_cpp _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_cpp _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_cpp _plusgo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plusgo_msgs_gencpp)
add_dependencies(plusgo_msgs_gencpp plusgo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plusgo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_eus(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_eus(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_eus(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(plusgo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(plusgo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(plusgo_msgs_generate_messages plusgo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_eus _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_eus _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_eus _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_eus _plusgo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plusgo_msgs_geneus)
add_dependencies(plusgo_msgs_geneus plusgo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plusgo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_lisp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_lisp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_lisp(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(plusgo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(plusgo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(plusgo_msgs_generate_messages plusgo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_lisp _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_lisp _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_lisp _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_lisp _plusgo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plusgo_msgs_genlisp)
add_dependencies(plusgo_msgs_genlisp plusgo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plusgo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_nodejs(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_nodejs(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_nodejs(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(plusgo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(plusgo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(plusgo_msgs_generate_messages plusgo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_nodejs _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_nodejs _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_nodejs _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_nodejs _plusgo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plusgo_msgs_gennodejs)
add_dependencies(plusgo_msgs_gennodejs plusgo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plusgo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_py(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg;/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_py(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs
)
_generate_msg_py(plusgo_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(plusgo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(plusgo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(plusgo_msgs_generate_messages plusgo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Objects.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_py _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Object.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_py _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/Polygon.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_py _plusgo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/plusgo_msgs/msg/ImageRect.msg" NAME_WE)
add_dependencies(plusgo_msgs_generate_messages_py _plusgo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plusgo_msgs_genpy)
add_dependencies(plusgo_msgs_genpy plusgo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plusgo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plusgo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(plusgo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(plusgo_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plusgo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(plusgo_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(plusgo_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plusgo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(plusgo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(plusgo_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plusgo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(plusgo_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(plusgo_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plusgo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(plusgo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(plusgo_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
