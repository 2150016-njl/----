; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude StopInfo.msg.html

(cl:defclass <StopInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stop_points
    :reader stop_points
    :initarg :stop_points
    :type (cl:vector ros_interface-msg:StopPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:StopPoint :initial-element (cl:make-instance 'ros_interface-msg:StopPoint))))
)

(cl:defclass StopInfo (<StopInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<StopInfo> is deprecated: use ros_interface-msg:StopInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StopInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stop_points-val :lambda-list '(m))
(cl:defmethod stop_points-val ((m <StopInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:stop_points-val is deprecated.  Use ros_interface-msg:stop_points instead.")
  (stop_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopInfo>) ostream)
  "Serializes a message object of type '<StopInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stop_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stop_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopInfo>) istream)
  "Deserializes a message object of type '<StopInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stop_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stop_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:StopPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopInfo>)))
  "Returns string type for a message object of type '<StopInfo>"
  "ros_interface/StopInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopInfo)))
  "Returns string type for a message object of type 'StopInfo"
  "ros_interface/StopInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopInfo>)))
  "Returns md5sum for a message object of type '<StopInfo>"
  "845948dd14933839d4b790bf2764e174")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopInfo)))
  "Returns md5sum for a message object of type 'StopInfo"
  "845948dd14933839d4b790bf2764e174")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopInfo>)))
  "Returns full string definition for message of type '<StopInfo>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%StopPoint[] stop_points # 停车点列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/StopPoint~%Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%int8   type     # STOP_TYPE_TERMINAL=0 //目的地终点 STOP_TYPE_JUNCTION=1 //路口停止线~%float64   stop_distance     # 距停止点多少米停车~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopInfo)))
  "Returns full string definition for message of type 'StopInfo"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%StopPoint[] stop_points # 停车点列表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/StopPoint~%Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%int8   type     # STOP_TYPE_TERMINAL=0 //目的地终点 STOP_TYPE_JUNCTION=1 //路口停止线~%float64   stop_distance     # 距停止点多少米停车~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stop_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'StopInfo
    (cl:cons ':header (header msg))
    (cl:cons ':stop_points (stop_points msg))
))
