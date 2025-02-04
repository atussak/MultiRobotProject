// Generated by gencpp from file master/robot_feedback.msg
// DO NOT EDIT!


#ifndef MASTER_MESSAGE_ROBOT_FEEDBACK_H
#define MASTER_MESSAGE_ROBOT_FEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace master
{
template <class ContainerAllocator>
struct robot_feedback_
{
  typedef robot_feedback_<ContainerAllocator> Type;

  robot_feedback_()
    : current_state(0)
    , state_executed(false)  {
    }
  robot_feedback_(const ContainerAllocator& _alloc)
    : current_state(0)
    , state_executed(false)  {
  (void)_alloc;
    }



   typedef int32_t _current_state_type;
  _current_state_type current_state;

   typedef uint8_t _state_executed_type;
  _state_executed_type state_executed;





  typedef boost::shared_ptr< ::master::robot_feedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::master::robot_feedback_<ContainerAllocator> const> ConstPtr;

}; // struct robot_feedback_

typedef ::master::robot_feedback_<std::allocator<void> > robot_feedback;

typedef boost::shared_ptr< ::master::robot_feedback > robot_feedbackPtr;
typedef boost::shared_ptr< ::master::robot_feedback const> robot_feedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::master::robot_feedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::master::robot_feedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace master

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'master': ['/home/user/Desktop/master/src/master_node/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::master::robot_feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::master::robot_feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master::robot_feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::master::robot_feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master::robot_feedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::master::robot_feedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::master::robot_feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "43b1d8fe98a57fe4d9fd7c53b24f68c7";
  }

  static const char* value(const ::master::robot_feedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x43b1d8fe98a57fe4ULL;
  static const uint64_t static_value2 = 0xd9fd7c53b24f68c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::master::robot_feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "master/robot_feedback";
  }

  static const char* value(const ::master::robot_feedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::master::robot_feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 current_state\n\
bool state_executed\n\
";
  }

  static const char* value(const ::master::robot_feedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::master::robot_feedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.current_state);
      stream.next(m.state_executed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct robot_feedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::master::robot_feedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::master::robot_feedback_<ContainerAllocator>& v)
  {
    s << indent << "current_state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_state);
    s << indent << "state_executed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state_executed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MASTER_MESSAGE_ROBOT_FEEDBACK_H
