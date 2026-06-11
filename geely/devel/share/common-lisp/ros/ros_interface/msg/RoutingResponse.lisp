; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RoutingResponse.msg.html

(cl:defclass <RoutingResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (plan_status
    :reader plan_status
    :initarg :plan_status
    :type cl:integer
    :initform 0)
   (replan_flag
    :reader replan_flag
    :initarg :replan_flag
    :type cl:integer
    :initform 0)
   (route_reason
    :reader route_reason
    :initarg :route_reason
    :type cl:integer
    :initform 0)
   (lane_list
    :reader lane_list
    :initarg :lane_list
    :type (cl:vector ros_interface-msg:LaneInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:LaneInfo :initial-element (cl:make-instance 'ros_interface-msg:LaneInfo))))
)

(cl:defclass RoutingResponse (<RoutingResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RoutingResponse> is deprecated: use ros_interface-msg:RoutingResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'plan_status-val :lambda-list '(m))
(cl:defmethod plan_status-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:plan_status-val is deprecated.  Use ros_interface-msg:plan_status instead.")
  (plan_status m))

(cl:ensure-generic-function 'replan_flag-val :lambda-list '(m))
(cl:defmethod replan_flag-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_flag-val is deprecated.  Use ros_interface-msg:replan_flag instead.")
  (replan_flag m))

(cl:ensure-generic-function 'route_reason-val :lambda-list '(m))
(cl:defmethod route_reason-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:route_reason-val is deprecated.  Use ros_interface-msg:route_reason instead.")
  (route_reason m))

(cl:ensure-generic-function 'lane_list-val :lambda-list '(m))
(cl:defmethod lane_list-val ((m <RoutingResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_list-val is deprecated.  Use ros_interface-msg:lane_list instead.")
  (lane_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingResponse>) ostream)
  "Serializes a message object of type '<RoutingResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'plan_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'replan_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'route_reason)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingResponse>) istream)
  "Deserializes a message object of type '<RoutingResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plan_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route_reason) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:LaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingResponse>)))
  "Returns string type for a message object of type '<RoutingResponse>"
  "ros_interface/RoutingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingResponse)))
  "Returns string type for a message object of type 'RoutingResponse"
  "ros_interface/RoutingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingResponse>)))
  "Returns md5sum for a message object of type '<RoutingResponse>"
  "15cd52a06ebf7f4a70dca47308a3032d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingResponse)))
  "Returns md5sum for a message object of type 'RoutingResponse"
  "15cd52a06ebf7f4a70dca47308a3032d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingResponse>)))
  "Returns full string definition for message of type '<RoutingResponse>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   plan_status     # 规划结果状态~%int32   replan_flag     # REPLAN_FLAG_NONE=0  //不需要重规划 REPLAN_FLAG_NAVI=1 //网络层重规划 REPLAN_FLAG_HUMAN=2 //人为重规划~%int32   route_reason     # 规划原因 ROUTE_REASON_HMI = 0 //hmi上触发规划 ROUTE_REASON_PLATOON_HEADER = 1 //车队头车下发规划 ROUTE_REASON_PLATOON_OTHER = 2 //车队其他车辆下发规划~%LaneInfo[] lane_list # 分段路径规划结果~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/LaneInfo~%int8   priority     # 道路优先级~%int8   global_id     # 道路全局id（从左至右，从0开始）~%int8 predecessor_id # 上一车道id~%int8 successor_id # 下一车道id~%int8 left_neighbor_id # 左边相邻车道id~%int8 right_neighbor_id # 右边相邻车道id~%int8   type     # 类型（预留）~%LanePoint[] lane_points # 道路参考线（z）~%~%================================================================================~%MSG: ros_interface/LanePoint~%Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%float64   mileage     # 总体里程~%float64   limit_speed     # 地图限速（单位m/s）~%float64   left_road_width     # 左边车道宽~%float64   right_road_width     # 右边车道宽~%int32   left_line_type     # 左边车线线型~%int32   right_line_type     # 右边车线线型~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingResponse)))
  "Returns full string definition for message of type 'RoutingResponse"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   plan_status     # 规划结果状态~%int32   replan_flag     # REPLAN_FLAG_NONE=0  //不需要重规划 REPLAN_FLAG_NAVI=1 //网络层重规划 REPLAN_FLAG_HUMAN=2 //人为重规划~%int32   route_reason     # 规划原因 ROUTE_REASON_HMI = 0 //hmi上触发规划 ROUTE_REASON_PLATOON_HEADER = 1 //车队头车下发规划 ROUTE_REASON_PLATOON_OTHER = 2 //车队其他车辆下发规划~%LaneInfo[] lane_list # 分段路径规划结果~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/LaneInfo~%int8   priority     # 道路优先级~%int8   global_id     # 道路全局id（从左至右，从0开始）~%int8 predecessor_id # 上一车道id~%int8 successor_id # 下一车道id~%int8 left_neighbor_id # 左边相邻车道id~%int8 right_neighbor_id # 右边相邻车道id~%int8   type     # 类型（预留）~%LanePoint[] lane_points # 道路参考线（z）~%~%================================================================================~%MSG: ros_interface/LanePoint~%Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%float64   mileage     # 总体里程~%float64   limit_speed     # 地图限速（单位m/s）~%float64   left_road_width     # 左边车道宽~%float64   right_road_width     # 右边车道宽~%int32   left_line_type     # 左边车线线型~%int32   right_line_type     # 右边车线线型~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingResponse
    (cl:cons ':header (header msg))
    (cl:cons ':plan_status (plan_status msg))
    (cl:cons ':replan_flag (replan_flag msg))
    (cl:cons ':route_reason (route_reason msg))
    (cl:cons ':lane_list (lane_list msg))
))
