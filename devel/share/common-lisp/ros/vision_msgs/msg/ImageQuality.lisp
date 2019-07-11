; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude ImageQuality.msg.html

(cl:defclass <ImageQuality> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:float
    :initform 0.0)
   (sharpness
    :reader sharpness
    :initarg :sharpness
    :type cl:float
    :initform 0.0)
   (brightness_delta
    :reader brightness_delta
    :initarg :brightness_delta
    :type cl:float
    :initform 0.0)
   (sharpness_delta
    :reader sharpness_delta
    :initarg :sharpness_delta
    :type cl:float
    :initform 0.0))
)

(cl:defclass ImageQuality (<ImageQuality>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageQuality>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageQuality)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<ImageQuality> is deprecated: use vision_msgs-msg:ImageQuality instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImageQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:header-val is deprecated.  Use vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <ImageQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:brightness-val is deprecated.  Use vision_msgs-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'sharpness-val :lambda-list '(m))
(cl:defmethod sharpness-val ((m <ImageQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:sharpness-val is deprecated.  Use vision_msgs-msg:sharpness instead.")
  (sharpness m))

(cl:ensure-generic-function 'brightness_delta-val :lambda-list '(m))
(cl:defmethod brightness_delta-val ((m <ImageQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:brightness_delta-val is deprecated.  Use vision_msgs-msg:brightness_delta instead.")
  (brightness_delta m))

(cl:ensure-generic-function 'sharpness_delta-val :lambda-list '(m))
(cl:defmethod sharpness_delta-val ((m <ImageQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:sharpness_delta-val is deprecated.  Use vision_msgs-msg:sharpness_delta instead.")
  (sharpness_delta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageQuality>) ostream)
  "Serializes a message object of type '<ImageQuality>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brightness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sharpness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brightness_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sharpness_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageQuality>) istream)
  "Deserializes a message object of type '<ImageQuality>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brightness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sharpness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brightness_delta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sharpness_delta) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageQuality>)))
  "Returns string type for a message object of type '<ImageQuality>"
  "vision_msgs/ImageQuality")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageQuality)))
  "Returns string type for a message object of type 'ImageQuality"
  "vision_msgs/ImageQuality")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageQuality>)))
  "Returns md5sum for a message object of type '<ImageQuality>"
  "e3839252c986c29ecf4e52d533209c6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageQuality)))
  "Returns md5sum for a message object of type 'ImageQuality"
  "e3839252c986c29ecf4e52d533209c6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageQuality>)))
  "Returns full string definition for message of type '<ImageQuality>"
  (cl:format cl:nil "# Header for timestamp info~%Header header~%float32 brightness~%float32 sharpness~%float32 brightness_delta~%float32 sharpness_delta~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageQuality)))
  "Returns full string definition for message of type 'ImageQuality"
  (cl:format cl:nil "# Header for timestamp info~%Header header~%float32 brightness~%float32 sharpness~%float32 brightness_delta~%float32 sharpness_delta~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageQuality>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageQuality>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageQuality
    (cl:cons ':header (header msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':sharpness (sharpness msg))
    (cl:cons ':brightness_delta (brightness_delta msg))
    (cl:cons ':sharpness_delta (sharpness_delta msg))
))
