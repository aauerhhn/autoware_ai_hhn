# Install script for directory: /home/autoware/carla_ws/src/ros-bridge/carla_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/autoware/carla_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_msgs/msg" TYPE FILE FILES
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaBoundingBox.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaEgoVehicleControl.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaEgoVehicleStatus.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaEgoVehicleInfoWheel.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaEgoVehicleInfo.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaCollisionEvent.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaLaneInvasionEvent.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaWorldInfo.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaActorInfo.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaActorList.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaControl.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaStatus.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaTrafficLightInfo.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaTrafficLightInfoList.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaTrafficLightStatus.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaTrafficLightStatusList.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaWalkerControl.msg"
    "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/msg/CarlaWeatherParameters.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_msgs/cmake" TYPE FILE FILES "/home/autoware/carla_ws/build/ros-bridge/carla_msgs/catkin_generated/installspace/carla_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/autoware/carla_ws/devel/include/carla_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/autoware/carla_ws/devel/share/roseus/ros/carla_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/autoware/carla_ws/devel/share/common-lisp/ros/carla_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/autoware/carla_ws/devel/share/gennodejs/ros/carla_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/autoware/carla_ws/devel/lib/python2.7/dist-packages/carla_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/autoware/carla_ws/devel/lib/python2.7/dist-packages/carla_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/autoware/carla_ws/build/ros-bridge/carla_msgs/catkin_generated/installspace/carla_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_msgs/cmake" TYPE FILE FILES "/home/autoware/carla_ws/build/ros-bridge/carla_msgs/catkin_generated/installspace/carla_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_msgs/cmake" TYPE FILE FILES
    "/home/autoware/carla_ws/build/ros-bridge/carla_msgs/catkin_generated/installspace/carla_msgsConfig.cmake"
    "/home/autoware/carla_ws/build/ros-bridge/carla_msgs/catkin_generated/installspace/carla_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/carla_msgs" TYPE FILE FILES "/home/autoware/carla_ws/src/ros-bridge/carla_msgs/package.xml")
endif()

