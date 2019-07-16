; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Touch.msg.html

(cl:defclass <Touch> (roslisp-msg-protocol:ros-message)
  ((electrodes
    :reader electrodes
    :initarg :electrodes
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass Touch (<Touch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Touch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Touch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Touch> is deprecated: use mobile_base_driver-msg:Touch instead.")))

(cl:ensure-generic-function 'electrodes-val :lambda-list '(m))
(cl:defmethod electrodes-val ((m <Touch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:electrodes-val is deprecated.  Use mobile_base_driver-msg:electrodes instead.")
  (electrodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Touch>) ostream)
  "Serializes a message object of type '<Touch>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'electrodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'electrodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Touch>) istream)
  "Deserializes a message object of type '<Touch>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'electrodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'electrodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Touch>)))
  "Returns string type for a message object of type '<Touch>"
  "mobile_base_driver/Touch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Touch)))
  "Returns string type for a message object of type 'Touch"
  "mobile_base_driver/Touch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Touch>)))
  "Returns md5sum for a message object of type '<Touch>"
  "45f8d1c4c44dcc7ee376d119a02375bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Touch)))
  "Returns md5sum for a message object of type 'Touch"
  "45f8d1c4c44dcc7ee376d119a02375bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Touch>)))
  "Returns full string definition for message of type '<Touch>"
  (cl:format cl:nil "# true means touched~%# [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]~%bool[] electrodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Touch)))
  "Returns full string definition for message of type 'Touch"
  (cl:format cl:nil "# true means touched~%# [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]~%bool[] electrodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Touch>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'electrodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Touch>))
  "Converts a ROS message object to a list"
  (cl:list 'Touch
    (cl:cons ':electrodes (electrodes msg))
))
