// Generated by gencpp from file arm_gazebo/ikResponse.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_IKRESPONSE_H
#define ARM_GAZEBO_MESSAGE_IKRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_gazebo
{
template <class ContainerAllocator>
struct ikResponse_
{
  typedef ikResponse_<ContainerAllocator> Type;

  ikResponse_()
    : target_positions()  {
    }
  ikResponse_(const ContainerAllocator& _alloc)
    : target_positions(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _target_positions_type;
  _target_positions_type target_positions;





  typedef boost::shared_ptr< ::arm_gazebo::ikResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_gazebo::ikResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ikResponse_

typedef ::arm_gazebo::ikResponse_<std::allocator<void> > ikResponse;

typedef boost::shared_ptr< ::arm_gazebo::ikResponse > ikResponsePtr;
typedef boost::shared_ptr< ::arm_gazebo::ikResponse const> ikResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_gazebo::ikResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_gazebo::ikResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_gazebo::ikResponse_<ContainerAllocator1> & lhs, const ::arm_gazebo::ikResponse_<ContainerAllocator2> & rhs)
{
  return lhs.target_positions == rhs.target_positions;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_gazebo::ikResponse_<ContainerAllocator1> & lhs, const ::arm_gazebo::ikResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_gazebo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::ikResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::ikResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::ikResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::ikResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::ikResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::ikResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_gazebo::ikResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0fd84c0985418c9e7020e2efc8f95f49";
  }

  static const char* value(const ::arm_gazebo::ikResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0fd84c0985418c9eULL;
  static const uint64_t static_value2 = 0x7020e2efc8f95f49ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_gazebo::ikResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_gazebo/ikResponse";
  }

  static const char* value(const ::arm_gazebo::ikResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_gazebo::ikResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] target_positions\n"
;
  }

  static const char* value(const ::arm_gazebo::ikResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_gazebo::ikResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_positions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ikResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_gazebo::ikResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_gazebo::ikResponse_<ContainerAllocator>& v)
  {
    s << indent << "target_positions[]" << std::endl;
    for (size_t i = 0; i < v.target_positions.size(); ++i)
    {
      s << indent << "  target_positions[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.target_positions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_IKRESPONSE_H
