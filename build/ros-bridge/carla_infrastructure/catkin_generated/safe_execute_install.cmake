execute_process(COMMAND "/home/autoware/carla_ws/build/ros-bridge/carla_infrastructure/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/autoware/carla_ws/build/ros-bridge/carla_infrastructure/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
