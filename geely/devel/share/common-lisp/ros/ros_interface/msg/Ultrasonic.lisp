; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Ultrasonic.msg.html

(cl:defclass <Ultrasonic> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector ros_interface-msg:UltrasonicObstacle)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:UltrasonicObstacle :initial-element (cl:make-instance 'ros_interface-msg:UltrasonicObstacle))))
)

(cl:defclass Ultrasonic (<Ultrasonic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ultrasonic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ultrasonic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Ultrasonic> is deprecated: use ros_interface-msg:Ultrasonic instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <Ultrasonic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ranges-val is deprecated.  Use ros_interface-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ultrasonic>) ostream)
  "Serializes a message object of type '<Ultrasonic>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ultrasonic>) istream)
  "Deserializes a message object of type '<Ultrasonic>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:UltrasonicObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ultrasonic>)))
  "Returns string type for a message object of type '<Ultrasonic>"
  "ros_interface/Ultrasonic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ultrasonic)))
  "Returns string type for a message object of type 'Ultrasonic"
  "ros_interface/Ultrasonic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ultrasonic>)))
  "Returns md5sum for a message object of type '<Ultrasonic>"
  "546a7e18a0d13f54ea35016a325c5b51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ultrasonic)))
  "Returns md5sum for a message object of type 'Ultrasonic"
  "546a7e18a0d13f54ea35016a325c5b51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ultrasonic>)))
  "Returns full string definition for message of type '<Ultrasonic>"
  (cl:format cl:nil "Header   header     # 消息头~%UltrasonicObstacle[] ranges # 超声波障碍物数组~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/UltrasonicObstacle~%int32   id     # 障碍物id~%float64   range     # 障碍物距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ultrasonic)))
  "Returns full string definition for message of type 'Ultrasonic"
  (cl:format cl:nil "Header   header     # 消息头~%UltrasonicObstacle[] ranges # 超声波障碍物数组~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/UltrasonicObstacle~%int32   id     # 障碍物id~%float64   range     # 障碍物距离~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ultrasonic>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ultrasonic>))
  "Converts a ROS message object to a list"
  (cl:list 'Ultrasonic
    (cl:cons ':header (header msg))
    (cl:cons ':ranges (ranges msg))
))
