// Generated by gencpp from file print_server/PrintGoal.msg
// DO NOT EDIT!


#ifndef PRINT_SERVER_MESSAGE_PRINTGOAL_H
#define PRINT_SERVER_MESSAGE_PRINTGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace print_server
{
template <class ContainerAllocator>
struct PrintGoal_
{
  typedef PrintGoal_<ContainerAllocator> Type;

  PrintGoal_()
    : print_nr_times(0)  {
    }
  PrintGoal_(const ContainerAllocator& _alloc)
    : print_nr_times(0)  {
  (void)_alloc;
    }



   typedef uint32_t _print_nr_times_type;
  _print_nr_times_type print_nr_times;





  typedef boost::shared_ptr< ::print_server::PrintGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::print_server::PrintGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PrintGoal_

typedef ::print_server::PrintGoal_<std::allocator<void> > PrintGoal;

typedef boost::shared_ptr< ::print_server::PrintGoal > PrintGoalPtr;
typedef boost::shared_ptr< ::print_server::PrintGoal const> PrintGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::print_server::PrintGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::print_server::PrintGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace print_server

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'print_server': ['/home/user/Desktop/master/devel/share/print_server/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::print_server::PrintGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::print_server::PrintGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::print_server::PrintGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::print_server::PrintGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::print_server::PrintGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::print_server::PrintGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::print_server::PrintGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3f890709095ea5967b10b9b6490a682c";
  }

  static const char* value(const ::print_server::PrintGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3f890709095ea596ULL;
  static const uint64_t static_value2 = 0x7b10b9b6490a682cULL;
};

template<class ContainerAllocator>
struct DataType< ::print_server::PrintGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "print_server/PrintGoal";
  }

  static const char* value(const ::print_server::PrintGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::print_server::PrintGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Define the goal\n\
uint32 print_nr_times  # How many times the action prints\n\
";
  }

  static const char* value(const ::print_server::PrintGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::print_server::PrintGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.print_nr_times);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PrintGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::print_server::PrintGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::print_server::PrintGoal_<ContainerAllocator>& v)
  {
    s << indent << "print_nr_times: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.print_nr_times);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PRINT_SERVER_MESSAGE_PRINTGOAL_H
