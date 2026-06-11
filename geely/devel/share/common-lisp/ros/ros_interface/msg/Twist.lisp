; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Twist.msg.html

(cl:defclass <Twist> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (linear
    :reader linear
    :initarg :linear
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (angular
    :reader angular
    :initarg :angular
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass Twist (<Twist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Twist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Twist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Twist> is deprecated: use ros_interface-msg:Twist instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear-val is deprecated.  Use ros_interface-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <Twist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angular-val is deprecated.  Use ros_interface-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Twist>) ostream)
  "Serializes a message object of type '<Twist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Twist>) istream)
  "Deserializes a message object of type '<Twist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Twist>)))
  "Returns string type for a message object of type '<Twist>"
  "ros_interface/Twist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Twist)))
  "Returns string type for a message object of type 'Twist"
  "ros_interface/Twist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Twist>)))
  "Returns md5sum for a message object of type '<Twist>"
  "09119d3b0067bd05b1a6696c168cebb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Twist)))
  "Returns md5sum for a message object of type 'Twist"
  "09119d3b0067bd05b1a6696c168cebb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Twist>)))
  "Returns full string definition for message of type '<Twist>"
  (cl:format cl:nil "Header   header     #  ~%Point3D   linear     # 线速度 m/s~%Point3D   angular     # 角速度 deg/s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Twist)))
  "Returns full string definition for message of type 'Twist"
  (cl:format cl:nil "Header   header     #  ~%Point3D   linear     # 线速度 m/s~%Point3D   angular     # 角速度 deg/s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Twist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Twist>))
  "Converts a ROS message object to a list"
  (cl:list 'Twist
    (cl:cons ':header (header msg))
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
