# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "used_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iused_msgs:/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(used_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" NAME_WE)
add_custom_target(_used_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "used_msgs" "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" NAME_WE)
add_custom_target(_used_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "used_msgs" "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" ""
)

get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" NAME_WE)
add_custom_target(_used_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "used_msgs" "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" "used_msgs/Lane:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/used_msgs
)
_generate_msg_cpp(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/used_msgs
)
_generate_msg_cpp(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/used_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(used_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/used_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(used_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(used_msgs_generate_messages used_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_cpp _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_cpp _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_cpp _used_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(used_msgs_gencpp)
add_dependencies(used_msgs_gencpp used_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS used_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/used_msgs
)
_generate_msg_eus(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/used_msgs
)
_generate_msg_eus(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/used_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(used_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/used_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(used_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(used_msgs_generate_messages used_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_eus _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_eus _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_eus _used_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(used_msgs_geneus)
add_dependencies(used_msgs_geneus used_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS used_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/used_msgs
)
_generate_msg_lisp(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/used_msgs
)
_generate_msg_lisp(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/used_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(used_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/used_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(used_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(used_msgs_generate_messages used_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_lisp _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_lisp _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_lisp _used_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(used_msgs_genlisp)
add_dependencies(used_msgs_genlisp used_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS used_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/used_msgs
)
_generate_msg_nodejs(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/used_msgs
)
_generate_msg_nodejs(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/used_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(used_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/used_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(used_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(used_msgs_generate_messages used_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_nodejs _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_nodejs _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_nodejs _used_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(used_msgs_gennodejs)
add_dependencies(used_msgs_gennodejs used_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS used_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs
)
_generate_msg_py(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs
)
_generate_msg_py(used_msgs
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg"
  "${MSG_I_FLAGS}"
  "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(used_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(used_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(used_msgs_generate_messages used_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Traffic_light.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_py _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lane.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_py _used_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/used_msgs/msg/Lanes.msg" NAME_WE)
add_dependencies(used_msgs_generate_messages_py _used_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(used_msgs_genpy)
add_dependencies(used_msgs_genpy used_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS used_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/used_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/used_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(used_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/used_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/used_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(used_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/used_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/used_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(used_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/used_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/used_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(used_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/used_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(used_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
