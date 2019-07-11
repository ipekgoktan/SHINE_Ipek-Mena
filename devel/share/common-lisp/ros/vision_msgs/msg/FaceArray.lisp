; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude FaceArray.msg.html

(cl:defclass <FaceArray> (roslisp-msg-protocol:ros-message)
  ((faces
    :reader faces
    :initarg :faces
    :type (cl:vector vision_msgs-msg:Face)
   :initform (cl:make-array 0 :element-type 'vision_msgs-msg:Face :initial-element (cl:make-instance 'vision_msgs-msg:Face))))
)

(cl:defclass FaceArray (<FaceArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<FaceArray> is deprecated: use vision_msgs-msg:FaceArray instead.")))

(cl:ensure-generic-function 'faces-val :lambda-list '(m))
(cl:defmethod faces-val ((m <FaceArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:faces-val is deprecated.  Use vision_msgs-msg:faces instead.")
  (faces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceArray>) ostream)
  "Serializes a message object of type '<FaceArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'faces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'faces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceArray>) istream)
  "Deserializes a message object of type '<FaceArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'faces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'faces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vision_msgs-msg:Face))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceArray>)))
  "Returns string type for a message object of type '<FaceArray>"
  "vision_msgs/FaceArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceArray)))
  "Returns string type for a message object of type 'FaceArray"
  "vision_msgs/FaceArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceArray>)))
  "Returns md5sum for a message object of type '<FaceArray>"
  "22ce0869e5c5474804f18cc49c6e69ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceArray)))
  "Returns md5sum for a message object of type 'FaceArray"
  "22ce0869e5c5474804f18cc49c6e69ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceArray>)))
  "Returns full string definition for message of type '<FaceArray>"
  (cl:format cl:nil "Face[] faces~%~%================================================================================~%MSG: vision_msgs/Face~%# Header for timestamp info~%Header header~%~%# Unique identifier~%string id~%~%# Time that the image was captured~%time capture_time~%~%# Amount of time that the face has been tracked~%duration timetrack~%~%# Bounding box of the face in pixels [x_origin, y_origin, width, height]~%float32[4] bb~%~%# Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])~%geometry_msgs/Point center~%~%# Percentage of the face compared to the image size in pixels ~%# (in the range [0.0, 1.0])~%float32 size~%~%# Rotation of the face in degrees (difference in the angle of eyes compared ~%# to a horizontal line)~%float32 rotation 							~%~%#  Keypoints for eyes, nose, mouth~%geometry_msgs/Point[5] keypoints~%~%# Confidence value in the range [0.0, 1.0]~%float32 confidence~%~%#  Currently unused, for future compatibility~%string name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceArray)))
  "Returns full string definition for message of type 'FaceArray"
  (cl:format cl:nil "Face[] faces~%~%================================================================================~%MSG: vision_msgs/Face~%# Header for timestamp info~%Header header~%~%# Unique identifier~%string id~%~%# Time that the image was captured~%time capture_time~%~%# Amount of time that the face has been tracked~%duration timetrack~%~%# Bounding box of the face in pixels [x_origin, y_origin, width, height]~%float32[4] bb~%~%# Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])~%geometry_msgs/Point center~%~%# Percentage of the face compared to the image size in pixels ~%# (in the range [0.0, 1.0])~%float32 size~%~%# Rotation of the face in degrees (difference in the angle of eyes compared ~%# to a horizontal line)~%float32 rotation 							~%~%#  Keypoints for eyes, nose, mouth~%geometry_msgs/Point[5] keypoints~%~%# Confidence value in the range [0.0, 1.0]~%float32 confidence~%~%#  Currently unused, for future compatibility~%string name~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'faces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceArray>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceArray
    (cl:cons ':faces (faces msg))
))
