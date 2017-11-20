# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trabajo: 3 messages, 0 services")

set(MSG_I_FLAGS "-Itrabajo:/home/ericros/catkin_ws/src/trabajo/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trabajo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg" "trabajo/inf_personal_usuario:trabajo/pos_usuario"
)

get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" ""
)

get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_custom_target(_trabajo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trabajo" "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg;/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)
_generate_msg_cpp(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)
_generate_msg_cpp(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
)

### Generating Services

### Generating Module File
_generate_module_cpp(trabajo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trabajo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_cpp _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_gencpp)
add_dependencies(trabajo_gencpp trabajo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg;/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)
_generate_msg_lisp(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)
_generate_msg_lisp(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
)

### Generating Services

### Generating Module File
_generate_module_lisp(trabajo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trabajo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_lisp _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_genlisp)
add_dependencies(trabajo_genlisp trabajo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg"
  "${MSG_I_FLAGS}"
  "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg;/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)
_generate_msg_py(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)
_generate_msg_py(trabajo
  "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
)

### Generating Services

### Generating Module File
_generate_module_py(trabajo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trabajo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trabajo_generate_messages trabajo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/inf_personal_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ericros/catkin_ws/src/trabajo/msg/pos_usuario.msg" NAME_WE)
add_dependencies(trabajo_generate_messages_py _trabajo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trabajo_genpy)
add_dependencies(trabajo_genpy trabajo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trabajo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trabajo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trabajo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trabajo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trabajo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trabajo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trabajo_generate_messages_py std_msgs_generate_messages_py)
endif()
