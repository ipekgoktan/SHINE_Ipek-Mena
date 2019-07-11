; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude FrameResults.msg.html

(cl:defclass <FrameResults> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (faces
    :reader faces
    :initarg :faces
    :type vision_msgs-msg:FaceArray
    :initform (cl:make-instance 'vision_msgs-msg:FaceArray))
   (clustering
    :reader clustering
    :initarg :clustering
    :type vision_msgs-msg:ImageClustering
    :initform (cl:make-instance 'vision_msgs-msg:ImageClustering))
   (objects
    :reader objects
    :initarg :objects
    :type vision_msgs-msg:DetectedObjects
    :initform (cl:make-instance 'vision_msgs-msg:DetectedObjects))
   (features
    :reader features
    :initarg :features
    :type vision_msgs-msg:ObjectFeatures
    :initform (cl:make-instance 'vision_msgs-msg:ObjectFeatures))
   (quality
    :reader quality
    :initarg :quality
    :type vision_msgs-msg:ImageQuality
    :initform (cl:make-instance 'vision_msgs-msg:ImageQuality))
   (modules
    :reader modules
    :initarg :modules
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FrameResults (<FrameResults>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrameResults>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrameResults)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<FrameResults> is deprecated: use vision_msgs-msg:FrameResults instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:header-val is deprecated.  Use vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:faces-val is deprecated.  Use vision_msgs-msg:faces instead.")
  (faces m))

(cl:ensure-generic-function 'clustering-val :lambda-list '(m))
(cl:defmethod clustering-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:clustering-val is deprecated.  Use vision_msgs-msg:clustering instead.")
  (clustering m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:objects-val is deprecated.  Use vision_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:features-val is deprecated.  Use vision_msgs-msg:features instead.")
  (features m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:quality-val is deprecated.  Use vision_msgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'modules-val :lambda-list '(m))
(cl:defmethod modules-val ((m <FrameResults>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:modules-val is deprecated.  Use vision_msgs-msg:modules instead.")
  (modules m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrameResults>) ostream)
  "Serializes a message object of type '<FrameResults>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'faces) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clustering) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'objects) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'features) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quality) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modules))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'modules))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrameResults>) istream)
  "Deserializes a message object of type '<FrameResults>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'faces) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clustering) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'objects) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'features) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quality) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'modules) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'modules)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrameResults>)))
  "Returns string type for a message object of type '<FrameResults>"
  "vision_msgs/FrameResults")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameResults)))
  "Returns string type for a message object of type 'FrameResults"
  "vision_msgs/FrameResults")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrameResults>)))
  "Returns md5sum for a message object of type '<FrameResults>"
  "6ddc9f5aeba4eed50c0dbd8bc8468f0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrameResults)))
  "Returns md5sum for a message object of type 'FrameResults"
  "6ddc9f5aeba4eed50c0dbd8bc8468f0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrameResults>)))
  "Returns full string definition for message of type '<FrameResults>"
  (cl:format cl:nil "Header header~%FaceArray faces~%ImageClustering clustering~%DetectedObjects objects~%ObjectFeatures features~%ImageQuality quality~%# Processed modules~%string[] modules~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vision_msgs/FaceArray~%Face[] faces~%~%================================================================================~%MSG: vision_msgs/Face~%# Header for timestamp info~%Header header~%~%# Unique identifier~%string id~%~%# Time that the image was captured~%time capture_time~%~%# Amount of time that the face has been tracked~%duration timetrack~%~%# Bounding box of the face in pixels [x_origin, y_origin, width, height]~%float32[4] bb~%~%# Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])~%geometry_msgs/Point center~%~%# Percentage of the face compared to the image size in pixels ~%# (in the range [0.0, 1.0])~%float32 size~%~%# Rotation of the face in degrees (difference in the angle of eyes compared ~%# to a horizontal line)~%float32 rotation 							~%~%#  Keypoints for eyes, nose, mouth~%geometry_msgs/Point[5] keypoints~%~%# Confidence value in the range [0.0, 1.0]~%float32 confidence~%~%#  Currently unused, for future compatibility~%string name~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vision_msgs/ImageClustering~%# Header for timestamp / frame info~%Header header~%~%string cluster~%uint16 current_cluster_size~%~%================================================================================~%MSG: vision_msgs/DetectedObjects~%# Header for timestamp / frame info~%Header header~%~%ClassifiedObjects positive_detections~%ClassifiedObjects all_detections~%~%================================================================================~%MSG: vision_msgs/ClassifiedObjects~%ClassifiedObject[] objects~%~%================================================================================~%MSG: vision_msgs/ClassifiedObject~%# Header for timestamp info~%Header header~%string object_class	  	# Detected objects~%float32 confidence 		# Confidence for each detected object~%sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: vision_msgs/ObjectFeatures~%Header header~%~%uint8[] features~%~%================================================================================~%MSG: vision_msgs/ImageQuality~%# Header for timestamp info~%Header header~%float32 brightness~%float32 sharpness~%float32 brightness_delta~%float32 sharpness_delta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrameResults)))
  "Returns full string definition for message of type 'FrameResults"
  (cl:format cl:nil "Header header~%FaceArray faces~%ImageClustering clustering~%DetectedObjects objects~%ObjectFeatures features~%ImageQuality quality~%# Processed modules~%string[] modules~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: vision_msgs/FaceArray~%Face[] faces~%~%================================================================================~%MSG: vision_msgs/Face~%# Header for timestamp info~%Header header~%~%# Unique identifier~%string id~%~%# Time that the image was captured~%time capture_time~%~%# Amount of time that the face has been tracked~%duration timetrack~%~%# Bounding box of the face in pixels [x_origin, y_origin, width, height]~%float32[4] bb~%~%# Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])~%geometry_msgs/Point center~%~%# Percentage of the face compared to the image size in pixels ~%# (in the range [0.0, 1.0])~%float32 size~%~%# Rotation of the face in degrees (difference in the angle of eyes compared ~%# to a horizontal line)~%float32 rotation 							~%~%#  Keypoints for eyes, nose, mouth~%geometry_msgs/Point[5] keypoints~%~%# Confidence value in the range [0.0, 1.0]~%float32 confidence~%~%#  Currently unused, for future compatibility~%string name~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: vision_msgs/ImageClustering~%# Header for timestamp / frame info~%Header header~%~%string cluster~%uint16 current_cluster_size~%~%================================================================================~%MSG: vision_msgs/DetectedObjects~%# Header for timestamp / frame info~%Header header~%~%ClassifiedObjects positive_detections~%ClassifiedObjects all_detections~%~%================================================================================~%MSG: vision_msgs/ClassifiedObjects~%ClassifiedObject[] objects~%~%================================================================================~%MSG: vision_msgs/ClassifiedObject~%# Header for timestamp info~%Header header~%string object_class	  	# Detected objects~%float32 confidence 		# Confidence for each detected object~%sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: vision_msgs/ObjectFeatures~%Header header~%~%uint8[] features~%~%================================================================================~%MSG: vision_msgs/ImageQuality~%# Header for timestamp info~%Header header~%float32 brightness~%float32 sharpness~%float32 brightness_delta~%float32 sharpness_delta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrameResults>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'faces))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clustering))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'objects))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'features))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quality))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modules) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrameResults>))
  "Converts a ROS message object to a list"
  (cl:list 'FrameResults
    (cl:cons ':header (header msg))
    (cl:cons ':faces (faces msg))
    (cl:cons ':clustering (clustering msg))
    (cl:cons ':objects (objects msg))
    (cl:cons ':features (features msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':modules (modules msg))
))
