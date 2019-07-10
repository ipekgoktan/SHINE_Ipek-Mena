; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude ChestLeds.msg.html

(cl:defclass <ChestLeds> (roslisp-msg-protocol:ros-message)
  ((leds
    :reader leds
    :initarg :leds
    :type (cl:vector mobile_base_driver-msg:Led)
   :initform (cl:make-array 15 :element-type 'mobile_base_driver-msg:Led :initial-element (cl:make-instance 'mobile_base_driver-msg:Led))))
)

(cl:defclass ChestLeds (<ChestLeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChestLeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChestLeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<ChestLeds> is deprecated: use mobile_base_driver-msg:ChestLeds instead.")))

(cl:ensure-generic-function 'leds-val :lambda-list '(m))
(cl:defmethod leds-val ((m <ChestLeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:leds-val is deprecated.  Use mobile_base_driver-msg:leds instead.")
  (leds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChestLeds>) ostream)
  "Serializes a message object of type '<ChestLeds>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'leds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChestLeds>) istream)
  "Deserializes a message object of type '<ChestLeds>"
  (cl:setf (cl:slot-value msg 'leds) (cl:make-array 15))
  (cl:let ((vals (cl:slot-value msg 'leds)))
    (cl:dotimes (i 15)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:Led))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChestLeds>)))
  "Returns string type for a message object of type '<ChestLeds>"
  "mobile_base_driver/ChestLeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChestLeds)))
  "Returns string type for a message object of type 'ChestLeds"
  "mobile_base_driver/ChestLeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChestLeds>)))
  "Returns md5sum for a message object of type '<ChestLeds>"
  "ef09340f131b3099106bbb45d67c5ff0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChestLeds)))
  "Returns md5sum for a message object of type 'ChestLeds"
  "ef09340f131b3099106bbb45d67c5ff0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChestLeds>)))
  "Returns full string definition for message of type '<ChestLeds>"
  (cl:format cl:nil "# Provide chest LEDs frame~%# Index 0 is the center LED~%# With 0 degrees straight up increasing clockwise~%~%# Inner ring~%# Index 1 : 150 degrees~%# Index 2 : 210 degrees~%# Index 3 : 270 degrees~%# Index 4 : 330 degrees~%# Index 5 : 30 degrees~%# Index 6 : 90 degrees~%~%# Outter ring~%# Index 13 : 22 degrees~%# Index 14 : 67 degrees~%# Index 7  : 112 degrees~%# Index 8  : 157 degrees~%# Index 9  : 202 degrees~%# Index 10 : 247 degrees~%# Index 11 : 292 degrees~%# Index 12 : 337 degrees~%~%Led[15]    leds~%~%================================================================================~%MSG: mobile_base_driver/Led~%# Provides a three color LED state~%~%uint8 red~%uint8 green~%uint8 blue~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChestLeds)))
  "Returns full string definition for message of type 'ChestLeds"
  (cl:format cl:nil "# Provide chest LEDs frame~%# Index 0 is the center LED~%# With 0 degrees straight up increasing clockwise~%~%# Inner ring~%# Index 1 : 150 degrees~%# Index 2 : 210 degrees~%# Index 3 : 270 degrees~%# Index 4 : 330 degrees~%# Index 5 : 30 degrees~%# Index 6 : 90 degrees~%~%# Outter ring~%# Index 13 : 22 degrees~%# Index 14 : 67 degrees~%# Index 7  : 112 degrees~%# Index 8  : 157 degrees~%# Index 9  : 202 degrees~%# Index 10 : 247 degrees~%# Index 11 : 292 degrees~%# Index 12 : 337 degrees~%~%Led[15]    leds~%~%================================================================================~%MSG: mobile_base_driver/Led~%# Provides a three color LED state~%~%uint8 red~%uint8 green~%uint8 blue~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChestLeds>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChestLeds>))
  "Converts a ROS message object to a list"
  (cl:list 'ChestLeds
    (cl:cons ':leds (leds msg))
))
