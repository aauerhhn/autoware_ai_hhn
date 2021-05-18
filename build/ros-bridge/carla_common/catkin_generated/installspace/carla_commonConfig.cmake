# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(carla_common_CONFIG_INCLUDED)
  return()
endif()
set(carla_common_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(carla_common_SOURCE_PREFIX /home/autoware/carla_ws/src/ros-bridge/carla_common)
  set(carla_common_DEVEL_PREFIX /home/autoware/carla_ws/devel)
  set(carla_common_INSTALL_PREFIX "")
  set(carla_common_PREFIX ${carla_common_DEVEL_PREFIX})
else()
  set(carla_common_SOURCE_PREFIX "")
  set(carla_common_DEVEL_PREFIX "")
  set(carla_common_INSTALL_PREFIX /home/autoware/carla_ws/install)
  set(carla_common_PREFIX ${carla_common_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'carla_common' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(carla_common_FOUND_CATKIN_PROJECT TRUE)

if(NOT " " STREQUAL " ")
  set(carla_common_INCLUDE_DIRS "")
  set(_include_dirs "")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT " " STREQUAL " ")
    set(_report "Check the website '' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'CARLA Simulator Team <carla.simulator@gmail.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${carla_common_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'carla_common' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'carla_common' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '\${prefix}/${idir}'.  ${_report}")
    endif()
    _list_append_unique(carla_common_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND carla_common_LIBRARIES ${library})
  elseif(${library} MATCHES "^-l")
    list(APPEND carla_common_LIBRARIES ${library})
  elseif(${library} MATCHES "^-")
    # This is a linker flag/option (like -pthread)
    # There's no standard variable for these, so create an interface library to hold it
    if(NOT carla_common_NUM_DUMMY_TARGETS)
      set(carla_common_NUM_DUMMY_TARGETS 0)
    endif()
    # Make sure the target name is unique
    set(interface_target_name "catkin::carla_common::wrapped-linker-option${carla_common_NUM_DUMMY_TARGETS}")
    while(TARGET "${interface_target_name}")
      math(EXPR carla_common_NUM_DUMMY_TARGETS "${carla_common_NUM_DUMMY_TARGETS}+1")
      set(interface_target_name "catkin::carla_common::wrapped-linker-option${carla_common_NUM_DUMMY_TARGETS}")
    endwhile()
    add_library("${interface_target_name}" INTERFACE IMPORTED)
    if("${CMAKE_VERSION}" VERSION_LESS "3.13.0")
      set_property(
        TARGET
        "${interface_target_name}"
        APPEND PROPERTY
        INTERFACE_LINK_LIBRARIES "${library}")
    else()
      target_link_options("${interface_target_name}" INTERFACE "${library}")
    endif()
    list(APPEND carla_common_LIBRARIES "${interface_target_name}")
  elseif(TARGET ${library})
    list(APPEND carla_common_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND carla_common_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/autoware/carla_ws/install/lib;/home/autoware/Autoware/install/ymc/lib;/home/autoware/Autoware/install/xsens_driver/lib;/home/autoware/Autoware/install/wf_simulator/lib;/home/autoware/Autoware/install/lattice_planner/lib;/home/autoware/Autoware/install/waypoint_planner/lib;/home/autoware/Autoware/install/waypoint_maker/lib;/home/autoware/Autoware/install/way_planner/lib;/home/autoware/Autoware/install/vlg22c_cam/lib;/home/autoware/Autoware/install/vision_ssd_detect/lib;/home/autoware/Autoware/install/vision_segment_enet_detect/lib;/home/autoware/Autoware/install/vision_lane_detect/lib;/home/autoware/Autoware/install/vision_darknet_detect/lib;/home/autoware/Autoware/install/vision_beyond_track/lib;/home/autoware/Autoware/install/vel_pose_diff_checker/lib;/home/autoware/Autoware/install/vehicle_socket/lib;/home/autoware/Autoware/install/vehicle_sim_model/lib;/home/autoware/Autoware/install/vehicle_model/lib;/home/autoware/Autoware/install/vehicle_gazebo_simulation_launcher/lib;/home/autoware/Autoware/install/vehicle_gazebo_simulation_interface/lib;/home/autoware/Autoware/install/vehicle_engage_panel/lib;/home/autoware/Autoware/install/vehicle_description/lib;/home/autoware/Autoware/install/trafficlight_recognizer/lib;/home/autoware/Autoware/install/op_utilities/lib;/home/autoware/Autoware/install/op_simulation_package/lib;/home/autoware/Autoware/install/op_local_planner/lib;/home/autoware/Autoware/install/op_global_planner/lib;/home/autoware/Autoware/install/lidar_kf_contour_track/lib;/home/autoware/Autoware/install/op_ros_helpers/lib;/home/autoware/Autoware/install/ff_waypoint_follower/lib;/home/autoware/Autoware/install/dp_planner/lib;/home/autoware/Autoware/install/op_simu/lib;/home/autoware/Autoware/install/op_planner/lib;/home/autoware/Autoware/install/op_utility/lib;/home/autoware/Autoware/install/lidar_euclidean_cluster_detect/lib;/home/autoware/Autoware/install/vector_map_server/lib;/home/autoware/Autoware/install/road_occupancy_processor/lib;/home/autoware/Autoware/install/costmap_generator/lib;/home/autoware/Autoware/install/object_map/lib;/home/autoware/Autoware/install/naive_motion_predict/lib;/home/autoware/Autoware/install/lanelet_aisan_converter/lib;/home/autoware/Autoware/install/map_file/lib;/home/autoware/Autoware/install/libvectormap/lib;/home/autoware/Autoware/install/lane_planner/lib;/home/autoware/Autoware/install/imm_ukf_pda_track/lib;/home/autoware/Autoware/install/decision_maker/lib;/home/autoware/Autoware/install/vector_map/lib;/home/autoware/Autoware/install/vector_map_msgs/lib;/home/autoware/Autoware/install/vectacam/lib;/home/autoware/Autoware/install/udon_socket/lib;/home/autoware/Autoware/install/twist_generator/lib;/home/autoware/Autoware/install/twist_gate/lib;/home/autoware/Autoware/install/twist_filter/lib;/home/autoware/Autoware/install/twist2odom/lib;/home/autoware/Autoware/install/tablet_socket/lib;/home/autoware/Autoware/install/runtime_manager/lib;/home/autoware/Autoware/install/mqtt_socket/lib;/home/autoware/Autoware/install/tablet_socket_msgs/lib;/home/autoware/Autoware/install/state_machine_lib/lib;/home/autoware/Autoware/install/sound_player/lib;/home/autoware/Autoware/install/sick_lms5xx/lib;/home/autoware/Autoware/install/sick_ldmrs_tools/lib;/home/autoware/Autoware/install/sick_ldmrs_driver/lib;/home/autoware/Autoware/install/sick_ldmrs_msgs/lib;/home/autoware/Autoware/install/sick_ldmrs_description/lib;/home/autoware/Autoware/install/points2image/lib;/home/autoware/Autoware/install/rosinterface/lib;/home/autoware/Autoware/install/rosbag_controller/lib;/home/autoware/Autoware/install/pure_pursuit/lib;/home/autoware/Autoware/install/points_preprocessor/lib;/home/autoware/Autoware/install/mpc_follower/lib;/home/autoware/Autoware/install/lidar_localizer/lib;/home/autoware/Autoware/install/emergency_handler/lib;/home/autoware/Autoware/install/autoware_health_checker/lib;/home/autoware/Autoware/install/as/lib;/home/autoware/Autoware/install/ros_observer/lib;/home/autoware/Autoware/install/roi_object_filter/lib;/home/autoware/Autoware/install/range_vision_fusion/lib;/home/autoware/Autoware/install/pos_db/lib;/home/autoware/Autoware/install/points_downsampler/lib;/home/autoware/Autoware/install/pixel_cloud_fusion/lib;/home/autoware/Autoware/install/pcl_omp_registration/lib;/home/autoware/Autoware/install/pc2_downsampler/lib;/home/autoware/Autoware/install/oculus_socket/lib;/home/autoware/Autoware/install/obj_db/lib;/home/autoware/Autoware/install/nmea_navsat/lib;/home/autoware/Autoware/install/ndt_tku/lib;/home/autoware/Autoware/install/ndt_gpu/lib;/home/autoware/Autoware/install/ndt_cpu/lib;/home/autoware/Autoware/install/multi_lidar_calibrator/lib;/home/autoware/Autoware/install/microstrain_driver/lib;/home/autoware/Autoware/install/memsic_imu/lib;/home/autoware/Autoware/install/marker_downsampler/lib;/home/autoware/Autoware/install/map_tools/lib;/home/autoware/Autoware/install/map_tf_generator/lib;/home/autoware/Autoware/install/log_tools/lib;/home/autoware/Autoware/install/lidar_shape_estimation/lib;/home/autoware/Autoware/install/lidar_point_pillars/lib;/home/autoware/Autoware/install/lidar_naive_l_shape_detect/lib;/home/autoware/Autoware/install/lidar_fake_perception/lib;/home/autoware/Autoware/install/lidar_apollo_cnn_seg_detect/lib;/home/autoware/Autoware/install/libwaypoint_follower/lib;/home/autoware/Autoware/install/lgsvl_simulator_bridge/lib;/home/autoware/Autoware/install/lanelet2_extension/lib;/home/autoware/Autoware/install/kvaser/lib;/home/autoware/Autoware/install/kitti_launch/lib;/home/autoware/Autoware/install/kitti_player/lib;/home/autoware/Autoware/install/kitti_box_publisher/lib;/home/autoware/Autoware/install/javad_navsat_driver/lib;/home/autoware/Autoware/install/integrated_viewer/lib;/home/autoware/Autoware/install/image_processor/lib;/home/autoware/Autoware/install/hokuyo/lib;/home/autoware/Autoware/install/graph_tools/lib;/home/autoware/Autoware/install/gnss_localizer/lib;/home/autoware/Autoware/install/gnss/lib;/home/autoware/Autoware/install/glviewer/lib;/home/autoware/Autoware/install/gazebo_world_description/lib;/home/autoware/Autoware/install/gazebo_imu_description/lib;/home/autoware/Autoware/install/gazebo_camera_description/lib;/home/autoware/Autoware/install/garmin/lib;/home/autoware/Autoware/install/freespace_planner/lib;/home/autoware/Autoware/install/fastvirtualscan/lib;/home/autoware/Autoware/install/ekf_localizer/lib;/home/autoware/Autoware/install/ds4_msgs/lib;/home/autoware/Autoware/install/ds4_driver/lib;/home/autoware/Autoware/install/detected_objects_visualizer/lib;/home/autoware/Autoware/install/decision_maker_panel/lib;/home/autoware/Autoware/install/data_preprocessor/lib;/home/autoware/Autoware/install/custom_msgs/lib;/home/autoware/Autoware/install/carla_autoware_bridge/lib;/home/autoware/Autoware/install/calibration_publisher/lib;/home/autoware/Autoware/install/autoware_system_msgs/lib;/home/autoware/Autoware/install/autoware_rviz_plugins/lib;/home/autoware/Autoware/install/autoware_quickstart_examples/lib;/home/autoware/Autoware/install/autoware_pointgrey_drivers/lib;/home/autoware/Autoware/install/autoware_driveworks_interface/lib;/home/autoware/Autoware/install/autoware_connector/lib;/home/autoware/Autoware/install/autoware_camera_lidar_calibrator/lib;/home/autoware/Autoware/install/astar_search/lib;/home/autoware/Autoware/install/amathutils_lib/lib;/home/autoware/Autoware/install/autoware_msgs/lib;/home/autoware/Autoware/install/autoware_map_msgs/lib;/home/autoware/Autoware/install/autoware_launcher_rviz/lib;/home/autoware/Autoware/install/autoware_launcher/lib;/home/autoware/Autoware/install/autoware_lanelet2_msgs/lib;/home/autoware/Autoware/install/autoware_external_msgs/lib;/home/autoware/Autoware/install/autoware_driveworks_gmsl_interface/lib;/home/autoware/Autoware/install/autoware_config_msgs/lib;/home/autoware/Autoware/install/autoware_can_msgs/lib;/home/autoware/Autoware/install/autoware_build_flags/lib;/home/autoware/Autoware/install/autoware_bag_tools/lib;/home/autoware/Autoware/install/adi_driver/lib;/home/autoware/carla_ws/devel/lib;/opt/ros/melodic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(carla_common_LIBRARY_DIRS ${lib_path})
      list(APPEND carla_common_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'carla_common'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND carla_common_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(carla_common_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${carla_common_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 carla_common_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${carla_common_dep}_FOUND)
      find_package(${carla_common_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${carla_common_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(carla_common_INCLUDE_DIRS ${${carla_common_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(carla_common_LIBRARIES ${carla_common_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${carla_common_dep}_LIBRARIES})
  _list_append_deduplicate(carla_common_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(carla_common_LIBRARIES ${carla_common_LIBRARIES})

  _list_append_unique(carla_common_LIBRARY_DIRS ${${carla_common_dep}_LIBRARY_DIRS})
  list(APPEND carla_common_EXPORTED_TARGETS ${${carla_common_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${carla_common_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
