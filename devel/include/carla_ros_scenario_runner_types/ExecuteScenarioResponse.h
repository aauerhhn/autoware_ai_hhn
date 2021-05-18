// Generated by gencpp from file carla_ros_scenario_runner_types/ExecuteScenarioResponse.msg
// DO NOT EDIT!


#ifndef CARLA_ROS_SCENARIO_RUNNER_TYPES_MESSAGE_EXECUTESCENARIORESPONSE_H
#define CARLA_ROS_SCENARIO_RUNNER_TYPES_MESSAGE_EXECUTESCENARIORESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace carla_ros_scenario_runner_types
{
template <class ContainerAllocator>
struct ExecuteScenarioResponse_
{
  typedef ExecuteScenarioResponse_<ContainerAllocator> Type;

  ExecuteScenarioResponse_()
    : result(false)  {
    }
  ExecuteScenarioResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ExecuteScenarioResponse_

typedef ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<std::allocator<void> > ExecuteScenarioResponse;

typedef boost::shared_ptr< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse > ExecuteScenarioResponsePtr;
typedef boost::shared_ptr< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse const> ExecuteScenarioResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator1> & lhs, const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator1> & lhs, const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace carla_ros_scenario_runner_types

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_ros_scenario_runner_types/ExecuteScenarioResponse";
  }

  static const char* value(const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"\n"
"\n"
;
  }

  static const char* value(const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecuteScenarioResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_ros_scenario_runner_types::ExecuteScenarioResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_ROS_SCENARIO_RUNNER_TYPES_MESSAGE_EXECUTESCENARIORESPONSE_H
