// Generated by gencpp from file mobile_base_driver/ChestLeds.msg
// DO NOT EDIT!


#ifndef MOBILE_BASE_DRIVER_MESSAGE_CHESTLEDS_H
#define MOBILE_BASE_DRIVER_MESSAGE_CHESTLEDS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <mobile_base_driver/Led.h>

namespace mobile_base_driver
{
template <class ContainerAllocator>
struct ChestLeds_
{
  typedef ChestLeds_<ContainerAllocator> Type;

  ChestLeds_()
    : leds()  {
    }
  ChestLeds_(const ContainerAllocator& _alloc)
    : leds()  {
  (void)_alloc;
      leds.assign( ::mobile_base_driver::Led_<ContainerAllocator> (_alloc));
  }



   typedef boost::array< ::mobile_base_driver::Led_<ContainerAllocator> , 15>  _leds_type;
  _leds_type leds;




  typedef boost::shared_ptr< ::mobile_base_driver::ChestLeds_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mobile_base_driver::ChestLeds_<ContainerAllocator> const> ConstPtr;

}; // struct ChestLeds_

typedef ::mobile_base_driver::ChestLeds_<std::allocator<void> > ChestLeds;

typedef boost::shared_ptr< ::mobile_base_driver::ChestLeds > ChestLedsPtr;
typedef boost::shared_ptr< ::mobile_base_driver::ChestLeds const> ChestLedsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mobile_base_driver::ChestLeds_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mobile_base_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mobile_base_driver': ['/home/peggyjean/toms_ws/src/mobile_base_driver/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mobile_base_driver::ChestLeds_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mobile_base_driver::ChestLeds_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobile_base_driver::ChestLeds_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ef09340f131b3099106bbb45d67c5ff0";
  }

  static const char* value(const ::mobile_base_driver::ChestLeds_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xef09340f131b3099ULL;
  static const uint64_t static_value2 = 0x106bbb45d67c5ff0ULL;
};

template<class ContainerAllocator>
struct DataType< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mobile_base_driver/ChestLeds";
  }

  static const char* value(const ::mobile_base_driver::ChestLeds_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Provide chest LEDs frame\n\
# Index 0 is the center LED\n\
# With 0 degrees straight up increasing clockwise\n\
\n\
# Inner ring\n\
# Index 1 : 150 degrees\n\
# Index 2 : 210 degrees\n\
# Index 3 : 270 degrees\n\
# Index 4 : 330 degrees\n\
# Index 5 : 30 degrees\n\
# Index 6 : 90 degrees\n\
\n\
# Outter ring\n\
# Index 13 : 22 degrees\n\
# Index 14 : 67 degrees\n\
# Index 7  : 112 degrees\n\
# Index 8  : 157 degrees\n\
# Index 9  : 202 degrees\n\
# Index 10 : 247 degrees\n\
# Index 11 : 292 degrees\n\
# Index 12 : 337 degrees\n\
\n\
Led[15]    leds\n\
\n\
================================================================================\n\
MSG: mobile_base_driver/Led\n\
# Provides a three color LED state\n\
\n\
uint8 red\n\
uint8 green\n\
uint8 blue\n\
";
  }

  static const char* value(const ::mobile_base_driver::ChestLeds_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.leds);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChestLeds_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mobile_base_driver::ChestLeds_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mobile_base_driver::ChestLeds_<ContainerAllocator>& v)
  {
    s << indent << "leds[]" << std::endl;
    for (size_t i = 0; i < v.leds.size(); ++i)
    {
      s << indent << "  leds[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::mobile_base_driver::Led_<ContainerAllocator> >::stream(s, indent + "    ", v.leds[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOBILE_BASE_DRIVER_MESSAGE_CHESTLEDS_H
