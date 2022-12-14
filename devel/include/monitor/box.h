// Generated by gencpp from file monitor/box.msg
// DO NOT EDIT!


#ifndef MONITOR_MESSAGE_BOX_H
#define MONITOR_MESSAGE_BOX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace monitor
{
template <class ContainerAllocator>
struct box_
{
  typedef box_<ContainerAllocator> Type;

  box_()
    : x(0.0)
    , y(0.0)
    , confidence(0.0)  {
    }
  box_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::monitor::box_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::monitor::box_<ContainerAllocator> const> ConstPtr;

}; // struct box_

typedef ::monitor::box_<std::allocator<void> > box;

typedef boost::shared_ptr< ::monitor::box > boxPtr;
typedef boost::shared_ptr< ::monitor::box const> boxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::monitor::box_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::monitor::box_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::monitor::box_<ContainerAllocator1> & lhs, const ::monitor::box_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.confidence == rhs.confidence;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::monitor::box_<ContainerAllocator1> & lhs, const ::monitor::box_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::monitor::box_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::monitor::box_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monitor::box_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monitor::box_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monitor::box_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monitor::box_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::monitor::box_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e9a400087ccf081800741199acc9712f";
  }

  static const char* value(const ::monitor::box_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe9a400087ccf0818ULL;
  static const uint64_t static_value2 = 0x00741199acc9712fULL;
};

template<class ContainerAllocator>
struct DataType< ::monitor::box_<ContainerAllocator> >
{
  static const char* value()
  {
    return "monitor/box";
  }

  static const char* value(const ::monitor::box_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::monitor::box_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 confidence\n"
;
  }

  static const char* value(const ::monitor::box_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::monitor::box_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct box_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::monitor::box_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::monitor::box_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "confidence: ";
    Printer<double>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONITOR_MESSAGE_BOX_H
