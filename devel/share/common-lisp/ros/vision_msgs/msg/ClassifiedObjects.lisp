; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude ClassifiedObjects.msg.html

(cl:defclass <ClassifiedObjects> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector vision_msgs-msg:ClassifiedObject)
   :initform (cl:make-array 0 :element-type 'vision_msgs-msg:ClassifiedObject :initial-element (cl:make-instance 'vision_msgs-msg:ClassifiedObject))))
)

(cl:defclass ClassifiedObjects (<ClassifiedObjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClassifiedObjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClassifiedObjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<ClassifiedObjects> is deprecated: use vision_msgs-msg:ClassifiedObjects instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <ClassifiedObjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:objects-val is deprecated.  Use vision_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClassifiedObjects>) ostream)
  "Serializes a message object of type '<ClassifiedObjects>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClassifiedObjects>) istream)
  "Deserializes a message object of type '<ClassifiedObjects>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vision_msgs-msg:ClassifiedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClassifiedObjects>)))
  "Returns string type for a message object of type '<ClassifiedObjects>"
  "vision_msgs/ClassifiedObjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClassifiedObjects)))
  "Returns string type for a message object of type 'ClassifiedObjects"
  "vision_msgs/ClassifiedObjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClassifiedObjects>)))
  "Returns md5sum for a message object of type '<ClassifiedObjects>"
  "593a73ae2615e0b38517c53d9fec3897")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClassifiedObjects)))
  "Returns md5sum for a message object of type 'ClassifiedObjects"
  "593a73ae2615e0b38517c53d9fec3897")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClassifiedObjects>)))
  "Returns full string definition for message of type '<ClassifiedObjects>"
  (cl:format cl:nil "ClassifiedObject[] objects~%~%================================================================================~%MSG: vision_msgs/ClassifiedObject~%# Header for timestamp info~%Header header~%string object_class	  	# Detected objects~%float32 confidence 		# Confidence for each detected object~%sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClassifiedObjects)))
  "Returns full string definition for message of type 'ClassifiedObjects"
  (cl:format cl:nil "ClassifiedObject[] objects~%~%================================================================================~%MSG: vision_msgs/ClassifiedObject~%# Header for timestamp info~%Header header~%string object_class	  	# Detected objects~%float32 confidence 		# Confidence for each detected object~%sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClassifiedObjects>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClassifiedObjects>))
  "Converts a ROS message object to a list"
  (cl:list 'ClassifiedObjects
    (cl:cons ':objects (objects msg))
))
