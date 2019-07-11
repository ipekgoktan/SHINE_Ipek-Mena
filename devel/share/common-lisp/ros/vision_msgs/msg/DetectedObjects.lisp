; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude DetectedObjects.msg.html

(cl:defclass <DetectedObjects> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (positive_detections
    :reader positive_detections
    :initarg :positive_detections
    :type vision_msgs-msg:ClassifiedObjects
    :initform (cl:make-instance 'vision_msgs-msg:ClassifiedObjects))
   (all_detections
    :reader all_detections
    :initarg :all_detections
    :type vision_msgs-msg:ClassifiedObjects
    :initform (cl:make-instance 'vision_msgs-msg:ClassifiedObjects)))
)

(cl:defclass DetectedObjects (<DetectedObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<DetectedObjects> is deprecated: use vision_msgs-msg:DetectedObjects instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:header-val is deprecated.  Use vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'positive_detections-val :lambda-list '(m))
(cl:defmethod positive_detections-val ((m <DetectedObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:positive_detections-val is deprecated.  Use vision_msgs-msg:positive_detections instead.")
  (positive_detections m))

(cl:ensure-generic-function 'all_detections-val :lambda-list '(m))
(cl:defmethod all_detections-val ((m <DetectedObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:all_detections-val is deprecated.  Use vision_msgs-msg:all_detections instead.")
  (all_detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObjects>) ostream)
  "Serializes a message object of type '<DetectedObjects>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'positive_detections) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'all_detections) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObjects>) istream)
  "Deserializes a message object of type '<DetectedObjects>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'positive_detections) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'all_detections) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObjects>)))
  "Returns string type for a message object of type '<DetectedObjects>"
  "vision_msgs/DetectedObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObjects)))
  "Returns string type for a message object of type 'DetectedObjects"
  "vision_msgs/DetectedObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObjects>)))
  "Returns md5sum for a message object of type '<DetectedObjects>"
  "b311e2b24dcd6070f418bd1bd3446fd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObjects)))
  "Returns md5sum for a message object of type 'DetectedObjects"
  "b311e2b24dcd6070f418bd1bd3446fd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObjects>)))
  "Returns full string definition for message of type '<DetectedObjects>"
  (cl:format cl:nil "# Header for timestamp / frame info~%Header header~%~%ClassifiedObjects positive_detections~%ClassifiedObjects all_detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vision_msgs/ClassifiedObjects~%ClassifiedObject[] objects~%~%================================================================================~%MSG: vision_msgs/ClassifiedObject~%# Header for timestamp info~%Header header~%string object_class	  	# Detected objects~%float32 confidence 		# Confidence for each detected object~%sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObjects)))
  "Returns full string definition for message of type 'DetectedObjects"
  (cl:format cl:nil "# Header for timestamp / frame info~%Header header~%~%ClassifiedObjects positive_detections~%ClassifiedObjects all_detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vision_msgs/ClassifiedObjects~%ClassifiedObject[] objects~%~%================================================================================~%MSG: vision_msgs/ClassifiedObject~%# Header for timestamp info~%Header header~%string object_class	  	# Detected objects~%float32 confidence 		# Confidence for each detected object~%sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObjects>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'positive_detections))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'all_detections))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObjects
    (cl:cons ':header (header msg))
    (cl:cons ':positive_detections (positive_detections msg))
    (cl:cons ':all_detections (all_detections msg))
))
