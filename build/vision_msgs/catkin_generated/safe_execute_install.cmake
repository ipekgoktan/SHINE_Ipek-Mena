execute_process(COMMAND "/home/peggyjean/toms_ws/build/vision_msgs/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/peggyjean/toms_ws/build/vision_msgs/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
