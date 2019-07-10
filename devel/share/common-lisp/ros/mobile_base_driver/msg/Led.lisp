; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Led.msg.html

(cl:defclass <Led> (roslisp-msg-protocol:ros-message)
  ((red
    :reader red
    :initarg :red
    :type cl:fixnum
    :initform 0)
   (green
    :reader green
    :initarg :green
    :type cl:fixnum
    :initform 0)
   (blue
    :reader blue
    :initarg :blue
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Led (<Led>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Led>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Led)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Led> is deprecated: use mobile_base_driver-msg:Led instead.")))

(cl:ensure-generic-function 'red-val :lambda-list '(m))
(cl:defmethod red-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:red-val is deprecated.  Use mobile_base_driver-msg:red instead.")
  (red m))

(cl:ensure-generic-function 'green-val :lambda-list '(m))
(cl:defmethod green-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:green-val is deprecated.  Use mobile_base_driver-msg:green instead.")
  (green m))

(cl:ensure-generic-function 'blue-val :lambda-list '(m))
(cl:defmethod blue-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:blue-val is deprecated.  Use mobile_base_driver-msg:blue instead.")
  (blue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Led>) ostream)
  "Serializes a message object of type '<Led>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Led>) istream)
  "Deserializes a message object of type '<Led>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'green)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Led>)))
  "Returns string type for a message object of type '<Led>"
  "mobile_base_driver/Led")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Led)))
  "Returns string type for a message object of type 'Led"
  "mobile_base_driver/Led")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Led>)))
  "Returns md5sum for a message object of type '<Led>"
  "6c2dad1f01296e5a2060415602019877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Led)))
  "Returns md5sum for a message object of type 'Led"
  "6c2dad1f01296e5a2060415602019877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Led>)))
  "Returns full string definition for message of type '<Led>"
  (cl:format cl:nil "# Provides a three color LED state~%~%uint8 red~%uint8 green~%uint8 blue~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Led)))
  "Returns full string definition for message of type 'Led"
  (cl:format cl:nil "# Provides a three color LED state~%~%uint8 red~%uint8 green~%uint8 blue~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Led>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Led>))
  "Converts a ROS message object to a list"
  (cl:list 'Led
    (cl:cons ':red (red msg))
    (cl:cons ':green (green msg))
    (cl:cons ':blue (blue msg))
))
