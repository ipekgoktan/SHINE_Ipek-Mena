// Generated by gencpp from file vision_msgs/DetectedObjects.msg
// DO NOT EDIT!


#ifndef VISION_MSGS_MESSAGE_DETECTEDOBJECTS_H
#define VISION_MSGS_MESSAGE_DETECTEDOBJECTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <vision_msgs/ClassifiedObjects.h>
#include <vision_msgs/ClassifiedObjects.h>

namespace vision_msgs
{
template <class ContainerAllocator>
struct DetectedObjects_
{
  typedef DetectedObjects_<ContainerAllocator> Type;

  DetectedObjects_()
    : header()
    , positive_detections()
    , all_detections()  {
    }
  DetectedObjects_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , positive_detections(_alloc)
    , all_detections(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::vision_msgs::ClassifiedObjects_<ContainerAllocator>  _positive_detections_type;
  _positive_detections_type positive_detections;

   typedef  ::vision_msgs::ClassifiedObjects_<ContainerAllocator>  _all_detections_type;
  _all_detections_type all_detections;




  typedef boost::shared_ptr< ::vision_msgs::DetectedObjects_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vision_msgs::DetectedObjects_<ContainerAllocator> const> ConstPtr;

}; // struct DetectedObjects_

typedef ::vision_msgs::DetectedObjects_<std::allocator<void> > DetectedObjects;

typedef boost::shared_ptr< ::vision_msgs::DetectedObjects > DetectedObjectsPtr;
typedef boost::shared_ptr< ::vision_msgs::DetectedObjects const> DetectedObjectsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vision_msgs::DetectedObjects_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vision_msgs::DetectedObjects_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vision_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'vision_msgs': ['/home/peggyjean/toms_ws/src/vision_msgs/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vision_msgs::DetectedObjects_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vision_msgs::DetectedObjects_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vision_msgs::DetectedObjects_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b311e2b24dcd6070f418bd1bd3446fd9";
  }

  static const char* value(const ::vision_msgs::DetectedObjects_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb311e2b24dcd6070ULL;
  static const uint64_t static_value2 = 0xf418bd1bd3446fd9ULL;
};

template<class ContainerAllocator>
struct DataType< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vision_msgs/DetectedObjects";
  }

  static const char* value(const ::vision_msgs::DetectedObjects_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Header for timestamp / frame info\n\
Header header\n\
\n\
ClassifiedObjects positive_detections\n\
ClassifiedObjects all_detections\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: vision_msgs/ClassifiedObjects\n\
ClassifiedObject[] objects\n\
\n\
================================================================================\n\
MSG: vision_msgs/ClassifiedObject\n\
# Header for timestamp info\n\
Header header\n\
string object_class	  	# Detected objects\n\
float32 confidence 		# Confidence for each detected object\n\
sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected\n\
\n\
================================================================================\n\
MSG: sensor_msgs/RegionOfInterest\n\
# This message is used to specify a region of interest within an image.\n\
#\n\
# When used to specify the ROI setting of the camera when the image was\n\
# taken, the height and width fields should either match the height and\n\
# width fields for the associated image; or height = width = 0\n\
# indicates that the full resolution image was captured.\n\
\n\
uint32 x_offset  # Leftmost pixel of the ROI\n\
                 # (0 if the ROI includes the left edge of the image)\n\
uint32 y_offset  # Topmost pixel of the ROI\n\
                 # (0 if the ROI includes the top edge of the image)\n\
uint32 height    # Height of ROI\n\
uint32 width     # Width of ROI\n\
\n\
# True if a distinct rectified ROI should be calculated from the \"raw\"\n\
# ROI in this message. Typically this should be False if the full image\n\
# is captured (ROI not used), and True if a subwindow is captured (ROI\n\
# used).\n\
bool do_rectify\n\
";
  }

  static const char* value(const ::vision_msgs::DetectedObjects_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.positive_detections);
      stream.next(m.all_detections);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectedObjects_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vision_msgs::DetectedObjects_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vision_msgs::DetectedObjects_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "positive_detections: ";
    s << std::endl;
    Printer< ::vision_msgs::ClassifiedObjects_<ContainerAllocator> >::stream(s, indent + "  ", v.positive_detections);
    s << indent << "all_detections: ";
    s << std::endl;
    Printer< ::vision_msgs::ClassifiedObjects_<ContainerAllocator> >::stream(s, indent + "  ", v.all_detections);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VISION_MSGS_MESSAGE_DETECTEDOBJECTS_H
