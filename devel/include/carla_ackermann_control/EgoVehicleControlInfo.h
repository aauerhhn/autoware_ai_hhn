// Generated by gencpp from file carla_ackermann_control/EgoVehicleControlInfo.msg
// DO NOT EDIT!


#ifndef CARLA_ACKERMANN_CONTROL_MESSAGE_EGOVEHICLECONTROLINFO_H
#define CARLA_ACKERMANN_CONTROL_MESSAGE_EGOVEHICLECONTROLINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <carla_ackermann_control/EgoVehicleControlMaxima.h>
#include <carla_ackermann_control/EgoVehicleControlTarget.h>
#include <carla_ackermann_control/EgoVehicleControlCurrent.h>
#include <carla_ackermann_control/EgoVehicleControlStatus.h>
#include <carla_msgs/CarlaEgoVehicleControl.h>

namespace carla_ackermann_control
{
template <class ContainerAllocator>
struct EgoVehicleControlInfo_
{
  typedef EgoVehicleControlInfo_<ContainerAllocator> Type;

  EgoVehicleControlInfo_()
    : header()
    , restrictions()
    , target()
    , current()
    , status()
    , output()  {
    }
  EgoVehicleControlInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , restrictions(_alloc)
    , target(_alloc)
    , current(_alloc)
    , status(_alloc)
    , output(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::carla_ackermann_control::EgoVehicleControlMaxima_<ContainerAllocator>  _restrictions_type;
  _restrictions_type restrictions;

   typedef  ::carla_ackermann_control::EgoVehicleControlTarget_<ContainerAllocator>  _target_type;
  _target_type target;

   typedef  ::carla_ackermann_control::EgoVehicleControlCurrent_<ContainerAllocator>  _current_type;
  _current_type current;

   typedef  ::carla_ackermann_control::EgoVehicleControlStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::carla_msgs::CarlaEgoVehicleControl_<ContainerAllocator>  _output_type;
  _output_type output;





  typedef boost::shared_ptr< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> const> ConstPtr;

}; // struct EgoVehicleControlInfo_

typedef ::carla_ackermann_control::EgoVehicleControlInfo_<std::allocator<void> > EgoVehicleControlInfo;

typedef boost::shared_ptr< ::carla_ackermann_control::EgoVehicleControlInfo > EgoVehicleControlInfoPtr;
typedef boost::shared_ptr< ::carla_ackermann_control::EgoVehicleControlInfo const> EgoVehicleControlInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator1> & lhs, const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.restrictions == rhs.restrictions &&
    lhs.target == rhs.target &&
    lhs.current == rhs.current &&
    lhs.status == rhs.status &&
    lhs.output == rhs.output;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator1> & lhs, const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace carla_ackermann_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc2719c7e816ee0bd3fbbf8de4fec4db";
  }

  static const char* value(const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc2719c7e816ee0bULL;
  static const uint64_t static_value2 = 0xd3fbbf8de4fec4dbULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_ackermann_control/EgoVehicleControlInfo";
  }

  static const char* value(const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2018-2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents an info message of the ego vehicle\n"
"\n"
"Header header\n"
"\n"
"# the restrictions\n"
"EgoVehicleControlMaxima restrictions\n"
"\n"
"# the target values\n"
"EgoVehicleControlTarget target\n"
"\n"
"# the currently measured values\n"
"EgoVehicleControlCurrent current\n"
"\n"
"# the current control status\n"
"EgoVehicleControlStatus status\n"
"\n"
"# the current control output to CARLA\n"
"carla_msgs/CarlaEgoVehicleControl output\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: carla_ackermann_control/EgoVehicleControlMaxima\n"
"#\n"
"# Copyright (c) 2018-2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents some ego vehicle control maximal values\n"
"\n"
"# vehicle maximum values\n"
"float32 max_steering_angle\n"
"float32 max_speed\n"
"float32 max_accel\n"
"float32 max_decel\n"
"float32 min_accel\n"
"float32 max_pedal\n"
"\n"
"================================================================================\n"
"MSG: carla_ackermann_control/EgoVehicleControlTarget\n"
"#\n"
"# Copyright (c) 2018-2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents the target speed/accel values of the ego vehicle\n"
"\n"
"float32 steering_angle\n"
"float32 speed\n"
"float32 speed_abs\n"
"float32 accel\n"
"float32 jerk\n"
"\n"
"================================================================================\n"
"MSG: carla_ackermann_control/EgoVehicleControlCurrent\n"
"#\n"
"# Copyright (c) 2018-2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents the current time/speed/accel values of the vehicle used by the controller\n"
"\n"
"float32 time_sec\n"
"float32 speed\n"
"float32 speed_abs\n"
"float32 accel\n"
"================================================================================\n"
"MSG: carla_ackermann_control/EgoVehicleControlStatus\n"
"#\n"
"# Copyright (c) 2018-2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents the control status variables of the ego vehicle control\n"
"\n"
"# the current control status\n"
"string status\n"
"\n"
"# speed controller\n"
"uint8   speed_control_activation_count\n"
"float32 speed_control_accel_delta\n"
"float32 speed_control_accel_target\n"
"\n"
"# acceleration controller\n"
"float32 accel_control_pedal_delta\n"
"float32 accel_control_pedal_target\n"
"\n"
"# borders for lay off pedal\n"
"float32 brake_upper_border\n"
"float32 throttle_lower_border\n"
"\n"
"================================================================================\n"
"MSG: carla_msgs/CarlaEgoVehicleControl\n"
"#\n"
"# Copyright (c) 2018-2019 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"# This represents a vehicle control message sent to CARLA simulator\n"
"\n"
"Header header\n"
"\n"
"# The CARLA vehicle control data\n"
"\n"
"# 0. <= throttle <= 1.\n"
"float32 throttle\n"
"\n"
"# -1. <= steer <= 1.\n"
"float32 steer\n"
"\n"
"# 0. <= brake <= 1.\n"
"float32 brake\n"
"\n"
"# hand_brake 0 or 1\n"
"bool hand_brake\n"
"\n"
"# reverse 0 or 1\n"
"bool reverse\n"
"\n"
"# gear\n"
"int32 gear\n"
"\n"
"# manual gear shift\n"
"bool manual_gear_shift\n"
;
  }

  static const char* value(const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.restrictions);
      stream.next(m.target);
      stream.next(m.current);
      stream.next(m.status);
      stream.next(m.output);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EgoVehicleControlInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_ackermann_control::EgoVehicleControlInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "restrictions: ";
    s << std::endl;
    Printer< ::carla_ackermann_control::EgoVehicleControlMaxima_<ContainerAllocator> >::stream(s, indent + "  ", v.restrictions);
    s << indent << "target: ";
    s << std::endl;
    Printer< ::carla_ackermann_control::EgoVehicleControlTarget_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
    s << indent << "current: ";
    s << std::endl;
    Printer< ::carla_ackermann_control::EgoVehicleControlCurrent_<ContainerAllocator> >::stream(s, indent + "  ", v.current);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::carla_ackermann_control::EgoVehicleControlStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "output: ";
    s << std::endl;
    Printer< ::carla_msgs::CarlaEgoVehicleControl_<ContainerAllocator> >::stream(s, indent + "  ", v.output);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_ACKERMANN_CONTROL_MESSAGE_EGOVEHICLECONTROLINFO_H
