# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vision_msgs: 9 messages, 0 services")

set(MSG_I_FLAGS "-Ivision_msgs:/home/peggyjean/toms_ws/src/vision_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vision_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg" "vision_msgs/ObjectFeatures:geometry_msgs/Point:vision_msgs/ClassifiedObject:std_msgs/Header:vision_msgs/FaceArray:sensor_msgs/RegionOfInterest:vision_msgs/ImageClustering:vision_msgs/Face:vision_msgs/ClassifiedObjects:vision_msgs/ImageQuality:vision_msgs/DetectedObjects"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg" "vision_msgs/ClassifiedObject:vision_msgs/ClassifiedObjects:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg" "vision_msgs/ClassifiedObject:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg" "vision_msgs/Face:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_custom_target(_vision_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vision_msgs" "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)
_generate_msg_cpp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vision_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vision_msgs_generate_messages vision_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_cpp _vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision_msgs_gencpp)
add_dependencies(vision_msgs_gencpp vision_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)
_generate_msg_lisp(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vision_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vision_msgs_generate_messages vision_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_lisp _vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision_msgs_genlisp)
add_dependencies(vision_msgs_genlisp vision_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)
_generate_msg_py(vision_msgs
  "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(vision_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vision_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vision_msgs_generate_messages vision_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageClustering.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/Face.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObject.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FrameResults.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/DetectedObjects.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ClassifiedObjects.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/FaceArray.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ImageQuality.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/peggyjean/toms_ws/src/vision_msgs/msg/ObjectFeatures.msg" NAME_WE)
add_dependencies(vision_msgs_generate_messages_py _vision_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vision_msgs_genpy)
add_dependencies(vision_msgs_genpy vision_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vision_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vision_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vision_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(vision_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vision_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vision_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(vision_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vision_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vision_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(vision_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
