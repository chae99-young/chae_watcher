// Generated by gencpp from file monitor/boxes.msg
// DO NOT EDIT!


#ifndef MONITOR_MESSAGE_BOXES_H
#define MONITOR_MESSAGE_BOXES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <monitor/box.h>

namespace monitor
{
template <class ContainerAllocator>
struct boxes_
{
  typedef boxes_<ContainerAllocator> Type;

  boxes_()
    : box_num(0)
    , boxes()  {
    }
  boxes_(const ContainerAllocator& _alloc)
    : box_num(0)
    , boxes(_alloc)  {
  (void)_alloc;
    }



   typedef uint64_t _box_num_type;
  _box_num_type box_num;

   typedef std::vector< ::monitor::box_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::monitor::box_<ContainerAllocator> >::other >  _boxes_type;
  _boxes_type boxes;





  typedef boost::shared_ptr< ::monitor::boxes_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::monitor::boxes_<ContainerAllocator> const> ConstPtr;

}; // struct boxes_

typedef ::monitor::boxes_<std::allocator<void> > boxes;

typedef boost::shared_ptr< ::monitor::boxes > boxesPtr;
typedef boost::shared_ptr< ::monitor::boxes const> boxesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::monitor::boxes_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::monitor::boxes_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::monitor::boxes_<ContainerAllocator1> & lhs, const ::monitor::boxes_<ContainerAllocator2> & rhs)
{
  return lhs.box_num == rhs.box_num &&
    lhs.boxes == rhs.boxes;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::monitor::boxes_<ContainerAllocator1> & lhs, const ::monitor::boxes_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::monitor::boxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::monitor::boxes_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monitor::boxes_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monitor::boxes_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monitor::boxes_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monitor::boxes_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::monitor::boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d62211855a58c4e6dee52f924da82b09";
  }

  static const char* value(const ::monitor::boxes_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd62211855a58c4e6ULL;
  static const uint64_t static_value2 = 0xdee52f924da82b09ULL;
};

template<class ContainerAllocator>
struct DataType< ::monitor::boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "monitor/boxes";
  }

  static const char* value(const ::monitor::boxes_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::monitor::boxes_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 box_num\n"
"box[] boxes\n"
"\n"
"================================================================================\n"
"MSG: monitor/box\n"
"float64 x\n"
"float64 y\n"
"float64 confidence\n"
;
  }

  static const char* value(const ::monitor::boxes_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::monitor::boxes_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.box_num);
      stream.next(m.boxes);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct boxes_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::monitor::boxes_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::monitor::boxes_<ContainerAllocator>& v)
  {
    s << indent << "box_num: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.box_num);
    s << indent << "boxes[]" << std::endl;
    for (size_t i = 0; i < v.boxes.size(); ++i)
    {
      s << indent << "  boxes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::monitor::box_<ContainerAllocator> >::stream(s, indent + "    ", v.boxes[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONITOR_MESSAGE_BOXES_H
