; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMITrajectory.msg.html

(cl:defclass <HMITrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trajectory_points
    :reader trajectory_points
    :initarg :trajectory_points
    :type (cl:vector ros_interface-msg:HMITrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:HMITrajectoryPoint :initial-element (cl:make-instance 'ros_interface-msg:HMITrajectoryPoint))))
)

(cl:defclass HMITrajectory (<HMITrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMITrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMITrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMITrajectory> is deprecated: use ros_interface-msg:HMITrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMITrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trajectory_points-val :lambda-list '(m))
(cl:defmethod trajectory_points-val ((m <HMITrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory_points-val is deprecated.  Use ros_interface-msg:trajectory_points instead.")
  (trajectory_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMITrajectory>) ostream)
  "Serializes a message object of type '<HMITrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMITrajectory>) istream)
  "Deserializes a message object of type '<HMITrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:HMITrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMITrajectory>)))
  "Returns string type for a message object of type '<HMITrajectory>"
  "ros_interface/HMITrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMITrajectory)))
  "Returns string type for a message object of type 'HMITrajectory"
  "ros_interface/HMITrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMITrajectory>)))
  "Returns md5sum for a message object of type '<HMITrajectory>"
  "1d0c04a6d5136937220260a0ea83028b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMITrajectory)))
  "Returns md5sum for a message object of type 'HMITrajectory"
  "1d0c04a6d5136937220260a0ea83028b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMITrajectory>)))
  "Returns full string definition for message of type '<HMITrajectory>"
  (cl:format cl:nil "Header   header     # 消息头~%HMITrajectoryPoint[] trajectory_points # 抽稀用来显示的轨迹点数组~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/HMITrajectoryPoint~%Point3D   point     #  ~%float64   v     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMITrajectory)))
  "Returns full string definition for message of type 'HMITrajectory"
  (cl:format cl:nil "Header   header     # 消息头~%HMITrajectoryPoint[] trajectory_points # 抽稀用来显示的轨迹点数组~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/HMITrajectoryPoint~%Point3D   point     #  ~%float64   v     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMITrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMITrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'HMITrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':trajectory_points (trajectory_points msg))
))
