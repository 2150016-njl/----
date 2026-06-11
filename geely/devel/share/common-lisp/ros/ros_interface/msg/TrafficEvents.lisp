; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TrafficEvents.msg.html

(cl:defclass <TrafficEvents> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (route_fusion_info
    :reader route_fusion_info
    :initarg :route_fusion_info
    :type ros_interface-msg:RouteFusionInfo
    :initform (cl:make-instance 'ros_interface-msg:RouteFusionInfo))
   (junction_info
    :reader junction_info
    :initarg :junction_info
    :type ros_interface-msg:JunctionInfo
    :initform (cl:make-instance 'ros_interface-msg:JunctionInfo))
   (limit_speed_info
    :reader limit_speed_info
    :initarg :limit_speed_info
    :type ros_interface-msg:LimitSpeedInfo
    :initform (cl:make-instance 'ros_interface-msg:LimitSpeedInfo)))
)

(cl:defclass TrafficEvents (<TrafficEvents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficEvents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficEvents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TrafficEvents> is deprecated: use ros_interface-msg:TrafficEvents instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'route_fusion_info-val :lambda-list '(m))
(cl:defmethod route_fusion_info-val ((m <TrafficEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:route_fusion_info-val is deprecated.  Use ros_interface-msg:route_fusion_info instead.")
  (route_fusion_info m))

(cl:ensure-generic-function 'junction_info-val :lambda-list '(m))
(cl:defmethod junction_info-val ((m <TrafficEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:junction_info-val is deprecated.  Use ros_interface-msg:junction_info instead.")
  (junction_info m))

(cl:ensure-generic-function 'limit_speed_info-val :lambda-list '(m))
(cl:defmethod limit_speed_info-val ((m <TrafficEvents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:limit_speed_info-val is deprecated.  Use ros_interface-msg:limit_speed_info instead.")
  (limit_speed_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficEvents>) ostream)
  "Serializes a message object of type '<TrafficEvents>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'route_fusion_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'junction_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'limit_speed_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficEvents>) istream)
  "Deserializes a message object of type '<TrafficEvents>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'route_fusion_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'junction_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'limit_speed_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficEvents>)))
  "Returns string type for a message object of type '<TrafficEvents>"
  "ros_interface/TrafficEvents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficEvents)))
  "Returns string type for a message object of type 'TrafficEvents"
  "ros_interface/TrafficEvents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficEvents>)))
  "Returns md5sum for a message object of type '<TrafficEvents>"
  "335c91b3f0dcb169fd1b0fb0532d62c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficEvents)))
  "Returns md5sum for a message object of type 'TrafficEvents"
  "335c91b3f0dcb169fd1b0fb0532d62c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficEvents>)))
  "Returns full string definition for message of type '<TrafficEvents>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%RouteFusionInfo   route_fusion_info     # 地图融合信息~%JunctionInfo   junction_info     # 路口信息~%LimitSpeedInfo   limit_speed_info     # 限速消息~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/RouteFusionInfo~%int32   fusion_flag     # 是否有效标志位~%string   fusion_reason     # 融合原因~%~%================================================================================~%MSG: ros_interface/JunctionInfo~%int32   id     #  ~%int32   light_flag     # 是否有效，无效就可能是清除了，或者已经过路口了~%int32   light_color     # 信号灯颜色，绿灯可通行，false红灯不能通行~%float64   light_remain_time     # 信号灯剩余时间~%float64   distance_to_stop     # 停车距离，停止线~%int32   direction_flag     # 是否有效，无效就可能是清除了，或者已经过路口了~%int32   direction     # 路口通行方向，0：无效、1：左、2：前、3：右~%float64   distance_to_junction     # 距路口距离~%Point3D[] stop_line # 路口停止线~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/LimitSpeedInfo~%int32   limitspeed_valid_flag     # 限速有效性标志位~%float64   limit_speed     # 限速大小（m/s）~%float64   limit_distance     # 开始减速距离(m)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficEvents)))
  "Returns full string definition for message of type 'TrafficEvents"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%RouteFusionInfo   route_fusion_info     # 地图融合信息~%JunctionInfo   junction_info     # 路口信息~%LimitSpeedInfo   limit_speed_info     # 限速消息~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/RouteFusionInfo~%int32   fusion_flag     # 是否有效标志位~%string   fusion_reason     # 融合原因~%~%================================================================================~%MSG: ros_interface/JunctionInfo~%int32   id     #  ~%int32   light_flag     # 是否有效，无效就可能是清除了，或者已经过路口了~%int32   light_color     # 信号灯颜色，绿灯可通行，false红灯不能通行~%float64   light_remain_time     # 信号灯剩余时间~%float64   distance_to_stop     # 停车距离，停止线~%int32   direction_flag     # 是否有效，无效就可能是清除了，或者已经过路口了~%int32   direction     # 路口通行方向，0：无效、1：左、2：前、3：右~%float64   distance_to_junction     # 距路口距离~%Point3D[] stop_line # 路口停止线~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/LimitSpeedInfo~%int32   limitspeed_valid_flag     # 限速有效性标志位~%float64   limit_speed     # 限速大小（m/s）~%float64   limit_distance     # 开始减速距离(m)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficEvents>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'route_fusion_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'junction_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'limit_speed_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficEvents>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficEvents
    (cl:cons ':header (header msg))
    (cl:cons ':route_fusion_info (route_fusion_info msg))
    (cl:cons ':junction_info (junction_info msg))
    (cl:cons ':limit_speed_info (limit_speed_info msg))
))
