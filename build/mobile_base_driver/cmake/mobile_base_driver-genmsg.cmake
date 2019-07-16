# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mobile_base_driver: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imobile_base_driver:/home/peggyjean/toms_ws/src/mobile_base_driver/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mobile_base_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg" NAME_WE)
add_custom_target(_mobile_base_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mobile_base_driver" "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg" "mobile_base_driver/Led"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg" NAME_WE)
add_custom_target(_mobile_base_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mobile_base_driver" "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg" ""
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg" NAME_WE)
add_custom_target(_mobile_base_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mobile_base_driver" "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mobile_base_driver
)
_generate_msg_cpp(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mobile_base_driver
)
_generate_msg_cpp(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mobile_base_driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(mobile_base_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mobile_base_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mobile_base_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mobile_base_driver_generate_messages mobile_base_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_cpp _mobile_base_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_cpp _mobile_base_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_cpp _mobile_base_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mobile_base_driver_gencpp)
add_dependencies(mobile_base_driver_gencpp mobile_base_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mobile_base_driver_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mobile_base_driver
)
_generate_msg_lisp(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mobile_base_driver
)
_generate_msg_lisp(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mobile_base_driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(mobile_base_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mobile_base_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mobile_base_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mobile_base_driver_generate_messages mobile_base_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_lisp _mobile_base_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_lisp _mobile_base_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_lisp _mobile_base_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mobile_base_driver_genlisp)
add_dependencies(mobile_base_driver_genlisp mobile_base_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mobile_base_driver_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver
)
_generate_msg_py(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver
)
_generate_msg_py(mobile_base_driver
  "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver
)

### Generating Services

### Generating Module File
_generate_module_py(mobile_base_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mobile_base_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mobile_base_driver_generate_messages mobile_base_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/ChestLeds.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_py _mobile_base_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Led.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_py _mobile_base_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/mobile_base_driver/msg/Touch.msg" NAME_WE)
add_dependencies(mobile_base_driver_generate_messages_py _mobile_base_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mobile_base_driver_genpy)
add_dependencies(mobile_base_driver_genpy mobile_base_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mobile_base_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mobile_base_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mobile_base_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mobile_base_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mobile_base_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mobile_base_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
