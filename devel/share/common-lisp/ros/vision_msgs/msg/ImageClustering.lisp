; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude ImageClustering.msg.html

(cl:defclass <ImageClustering> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cluster
    :reader cluster
    :initarg :cluster
    :type cl:string
    :initform "")
   (current_cluster_size
    :reader current_cluster_size
    :initarg :current_cluster_size
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ImageClustering (<ImageClustering>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageClustering>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageClustering)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<ImageClustering> is deprecated: use vision_msgs-msg:ImageClustering instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImageClustering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:header-val is deprecated.  Use vision_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cluster-val :lambda-list '(m))
(cl:defmethod cluster-val ((m <ImageClustering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:cluster-val is deprecated.  Use vision_msgs-msg:cluster instead.")
  (cluster m))

(cl:ensure-generic-function 'current_cluster_size-val :lambda-list '(m))
(cl:defmethod current_cluster_size-val ((m <ImageClustering>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:current_cluster_size-val is deprecated.  Use vision_msgs-msg:current_cluster_size instead.")
  (current_cluster_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageClustering>) ostream)
  "Serializes a message object of type '<ImageClustering>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cluster))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_cluster_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_cluster_size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageClustering>) istream)
  "Deserializes a message object of type '<ImageClustering>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cluster) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cluster) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_cluster_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_cluster_size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageClustering>)))
  "Returns string type for a message object of type '<ImageClustering>"
  "vision_msgs/ImageClustering")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageClustering)))
  "Returns string type for a message object of type 'ImageClustering"
  "vision_msgs/ImageClustering")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageClustering>)))
  "Returns md5sum for a message object of type '<ImageClustering>"
  "e72c57ecabfb90e37b6f225cc4bdd2dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageClustering)))
  "Returns md5sum for a message object of type 'ImageClustering"
  "e72c57ecabfb90e37b6f225cc4bdd2dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageClustering>)))
  "Returns full string definition for message of type '<ImageClustering>"
  (cl:format cl:nil "# Header for timestamp / frame info~%Header header~%~%string cluster~%uint16 current_cluster_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageClustering)))
  "Returns full string definition for message of type 'ImageClustering"
  (cl:format cl:nil "# Header for timestamp / frame info~%Header header~%~%string cluster~%uint16 current_cluster_size~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageClustering>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'cluster))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageClustering>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageClustering
    (cl:cons ':header (header msg))
    (cl:cons ':cluster (cluster msg))
    (cl:cons ':current_cluster_size (current_cluster_size msg))
))
