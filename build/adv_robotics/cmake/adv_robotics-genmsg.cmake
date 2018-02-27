# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "adv_robotics: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(adv_robotics_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_adv_robotics_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "adv_robotics" "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(adv_robotics
  "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adv_robotics
)

### Generating Module File
_generate_module_cpp(adv_robotics
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adv_robotics
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(adv_robotics_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(adv_robotics_generate_messages adv_robotics_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(adv_robotics_generate_messages_cpp _adv_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adv_robotics_gencpp)
add_dependencies(adv_robotics_gencpp adv_robotics_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adv_robotics_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(adv_robotics
  "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adv_robotics
)

### Generating Module File
_generate_module_eus(adv_robotics
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adv_robotics
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(adv_robotics_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(adv_robotics_generate_messages adv_robotics_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(adv_robotics_generate_messages_eus _adv_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adv_robotics_geneus)
add_dependencies(adv_robotics_geneus adv_robotics_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adv_robotics_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(adv_robotics
  "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adv_robotics
)

### Generating Module File
_generate_module_lisp(adv_robotics
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adv_robotics
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(adv_robotics_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(adv_robotics_generate_messages adv_robotics_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(adv_robotics_generate_messages_lisp _adv_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adv_robotics_genlisp)
add_dependencies(adv_robotics_genlisp adv_robotics_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adv_robotics_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(adv_robotics
  "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adv_robotics
)

### Generating Module File
_generate_module_nodejs(adv_robotics
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adv_robotics
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(adv_robotics_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(adv_robotics_generate_messages adv_robotics_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(adv_robotics_generate_messages_nodejs _adv_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adv_robotics_gennodejs)
add_dependencies(adv_robotics_gennodejs adv_robotics_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adv_robotics_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(adv_robotics
  "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adv_robotics
)

### Generating Module File
_generate_module_py(adv_robotics
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adv_robotics
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(adv_robotics_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(adv_robotics_generate_messages adv_robotics_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ellie/ws_adv_robot/src/adv_robotics/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(adv_robotics_generate_messages_py _adv_robotics_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(adv_robotics_genpy)
add_dependencies(adv_robotics_genpy adv_robotics_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS adv_robotics_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adv_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/adv_robotics
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(adv_robotics_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adv_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/adv_robotics
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(adv_robotics_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adv_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/adv_robotics
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(adv_robotics_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adv_robotics)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/adv_robotics
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(adv_robotics_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adv_robotics)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adv_robotics\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/adv_robotics
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(adv_robotics_generate_messages_py std_msgs_generate_messages_py)
endif()
