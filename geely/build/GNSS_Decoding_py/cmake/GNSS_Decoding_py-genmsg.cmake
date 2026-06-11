# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "GNSS_Decoding_py: 1 messages, 0 services")

set(MSG_I_FLAGS "-IGNSS_Decoding_py:/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(GNSS_Decoding_py_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" NAME_WE)
add_custom_target(_GNSS_Decoding_py_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "GNSS_Decoding_py" "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(GNSS_Decoding_py
  "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/GNSS_Decoding_py
)

### Generating Services

### Generating Module File
_generate_module_cpp(GNSS_Decoding_py
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/GNSS_Decoding_py
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(GNSS_Decoding_py_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(GNSS_Decoding_py_generate_messages GNSS_Decoding_py_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" NAME_WE)
add_dependencies(GNSS_Decoding_py_generate_messages_cpp _GNSS_Decoding_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(GNSS_Decoding_py_gencpp)
add_dependencies(GNSS_Decoding_py_gencpp GNSS_Decoding_py_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS GNSS_Decoding_py_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(GNSS_Decoding_py
  "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/GNSS_Decoding_py
)

### Generating Services

### Generating Module File
_generate_module_eus(GNSS_Decoding_py
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/GNSS_Decoding_py
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(GNSS_Decoding_py_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(GNSS_Decoding_py_generate_messages GNSS_Decoding_py_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" NAME_WE)
add_dependencies(GNSS_Decoding_py_generate_messages_eus _GNSS_Decoding_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(GNSS_Decoding_py_geneus)
add_dependencies(GNSS_Decoding_py_geneus GNSS_Decoding_py_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS GNSS_Decoding_py_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(GNSS_Decoding_py
  "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/GNSS_Decoding_py
)

### Generating Services

### Generating Module File
_generate_module_lisp(GNSS_Decoding_py
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/GNSS_Decoding_py
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(GNSS_Decoding_py_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(GNSS_Decoding_py_generate_messages GNSS_Decoding_py_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" NAME_WE)
add_dependencies(GNSS_Decoding_py_generate_messages_lisp _GNSS_Decoding_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(GNSS_Decoding_py_genlisp)
add_dependencies(GNSS_Decoding_py_genlisp GNSS_Decoding_py_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS GNSS_Decoding_py_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(GNSS_Decoding_py
  "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/GNSS_Decoding_py
)

### Generating Services

### Generating Module File
_generate_module_nodejs(GNSS_Decoding_py
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/GNSS_Decoding_py
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(GNSS_Decoding_py_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(GNSS_Decoding_py_generate_messages GNSS_Decoding_py_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" NAME_WE)
add_dependencies(GNSS_Decoding_py_generate_messages_nodejs _GNSS_Decoding_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(GNSS_Decoding_py_gennodejs)
add_dependencies(GNSS_Decoding_py_gennodejs GNSS_Decoding_py_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS GNSS_Decoding_py_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(GNSS_Decoding_py
  "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/GNSS_Decoding_py
)

### Generating Services

### Generating Module File
_generate_module_py(GNSS_Decoding_py
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/GNSS_Decoding_py
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(GNSS_Decoding_py_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(GNSS_Decoding_py_generate_messages GNSS_Decoding_py_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/plusgo/geely_1225_tongji/geely/src/GNSS_Decoding_py/msg/GNSS_Output.msg" NAME_WE)
add_dependencies(GNSS_Decoding_py_generate_messages_py _GNSS_Decoding_py_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(GNSS_Decoding_py_genpy)
add_dependencies(GNSS_Decoding_py_genpy GNSS_Decoding_py_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS GNSS_Decoding_py_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/GNSS_Decoding_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/GNSS_Decoding_py
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(GNSS_Decoding_py_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/GNSS_Decoding_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/GNSS_Decoding_py
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(GNSS_Decoding_py_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/GNSS_Decoding_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/GNSS_Decoding_py
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(GNSS_Decoding_py_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/GNSS_Decoding_py)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/GNSS_Decoding_py
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(GNSS_Decoding_py_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/GNSS_Decoding_py)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/GNSS_Decoding_py\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/GNSS_Decoding_py
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(GNSS_Decoding_py_generate_messages_py std_msgs_generate_messages_py)
endif()
