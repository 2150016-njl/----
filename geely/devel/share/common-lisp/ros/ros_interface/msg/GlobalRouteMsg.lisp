; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude GlobalRouteMsg.msg.html

(cl:defclass <GlobalRouteMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (route
    :reader route
    :initarg :route
    :type (cl:vector ros_interface-msg:LaneletInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:LaneletInfo :initial-element (cl:make-instance 'ros_interface-msg:LaneletInfo)))
   (current_lanelet
    :reader current_lanelet
    :initarg :current_lanelet
    :type ros_interface-msg:LaneletInfo
    :initform (cl:make-instance 'ros_interface-msg:LaneletInfo))
   (total_mileage
    :reader total_mileage
    :initarg :total_mileage
    :type cl:float
    :initform 0.0)
   (cur_mileage
    :reader cur_mileage
    :initarg :cur_mileage
    :type cl:float
    :initform 0.0)
   (cur_slice
    :reader cur_slice
    :initarg :cur_slice
    :type (cl:vector ros_interface-msg:LaneletInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:LaneletInfo :initial-element (cl:make-instance 'ros_interface-msg:LaneletInfo))))
)

(cl:defclass GlobalRouteMsg (<GlobalRouteMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalRouteMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalRouteMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<GlobalRouteMsg> is deprecated: use ros_interface-msg:GlobalRouteMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GlobalRouteMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'route-val :lambda-list '(m))
(cl:defmethod route-val ((m <GlobalRouteMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:route-val is deprecated.  Use ros_interface-msg:route instead.")
  (route m))

(cl:ensure-generic-function 'current_lanelet-val :lambda-list '(m))
(cl:defmethod current_lanelet-val ((m <GlobalRouteMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:current_lanelet-val is deprecated.  Use ros_interface-msg:current_lanelet instead.")
  (current_lanelet m))

(cl:ensure-generic-function 'total_mileage-val :lambda-list '(m))
(cl:defmethod total_mileage-val ((m <GlobalRouteMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:total_mileage-val is deprecated.  Use ros_interface-msg:total_mileage instead.")
  (total_mileage m))

(cl:ensure-generic-function 'cur_mileage-val :lambda-list '(m))
(cl:defmethod cur_mileage-val ((m <GlobalRouteMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cur_mileage-val is deprecated.  Use ros_interface-msg:cur_mileage instead.")
  (cur_mileage m))

(cl:ensure-generic-function 'cur_slice-val :lambda-list '(m))
(cl:defmethod cur_slice-val ((m <GlobalRouteMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cur_slice-val is deprecated.  Use ros_interface-msg:cur_slice instead.")
  (cur_slice m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalRouteMsg>) ostream)
  "Serializes a message object of type '<GlobalRouteMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'route))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'route))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current_lanelet) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cur_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cur_slice))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cur_slice))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalRouteMsg>) istream)
  "Deserializes a message object of type '<GlobalRouteMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'route) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'route)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:LaneletInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current_lanelet) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_mileage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cur_mileage) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cur_slice) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cur_slice)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:LaneletInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalRouteMsg>)))
  "Returns string type for a message object of type '<GlobalRouteMsg>"
  "ros_interface/GlobalRouteMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalRouteMsg)))
  "Returns string type for a message object of type 'GlobalRouteMsg"
  "ros_interface/GlobalRouteMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalRouteMsg>)))
  "Returns md5sum for a message object of type '<GlobalRouteMsg>"
  "9a9de06349ba12c560c2c024a6bcece7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalRouteMsg)))
  "Returns md5sum for a message object of type 'GlobalRouteMsg"
  "9a9de06349ba12c560c2c024a6bcece7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalRouteMsg>)))
  "Returns full string definition for message of type '<GlobalRouteMsg>"
  (cl:format cl:nil "Header   header     # 消息头~%LaneletInfo[] route # 一次导航的全程道路集合，从起点到终点排序~%LaneletInfo   current_lanelet     # 当前所在车道的信息~%float64   total_mileage     # 总里程~%float64   cur_mileage     # 当前里程~%LaneletInfo[] cur_slice # 当前地图切片,用来绘制局部地图~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/LaneletInfo~%int32   lanelet_id     # 道路id，与地图文件对应~%float64   length     # 道路长度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalRouteMsg)))
  "Returns full string definition for message of type 'GlobalRouteMsg"
  (cl:format cl:nil "Header   header     # 消息头~%LaneletInfo[] route # 一次导航的全程道路集合，从起点到终点排序~%LaneletInfo   current_lanelet     # 当前所在车道的信息~%float64   total_mileage     # 总里程~%float64   cur_mileage     # 当前里程~%LaneletInfo[] cur_slice # 当前地图切片,用来绘制局部地图~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/LaneletInfo~%int32   lanelet_id     # 道路id，与地图文件对应~%float64   length     # 道路长度~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalRouteMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'route) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current_lanelet))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cur_slice) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalRouteMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalRouteMsg
    (cl:cons ':header (header msg))
    (cl:cons ':route (route msg))
    (cl:cons ':current_lanelet (current_lanelet msg))
    (cl:cons ':total_mileage (total_mileage msg))
    (cl:cons ':cur_mileage (cur_mileage msg))
    (cl:cons ':cur_slice (cur_slice msg))
))
