; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude SotifMonitorResult.msg.html

(cl:defclass <SotifMonitorResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (region_value
    :reader region_value
    :initarg :region_value
    :type (cl:vector ros_interface-msg:Region)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Region :initial-element (cl:make-instance 'ros_interface-msg:Region)))
   (grid_map
    :reader grid_map
    :initarg :grid_map
    :type (cl:vector ros_interface-msg:Grid)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Grid :initial-element (cl:make-instance 'ros_interface-msg:Grid))))
)

(cl:defclass SotifMonitorResult (<SotifMonitorResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SotifMonitorResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SotifMonitorResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<SotifMonitorResult> is deprecated: use ros_interface-msg:SotifMonitorResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SotifMonitorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'region_value-val :lambda-list '(m))
(cl:defmethod region_value-val ((m <SotifMonitorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:region_value-val is deprecated.  Use ros_interface-msg:region_value instead.")
  (region_value m))

(cl:ensure-generic-function 'grid_map-val :lambda-list '(m))
(cl:defmethod grid_map-val ((m <SotifMonitorResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:grid_map-val is deprecated.  Use ros_interface-msg:grid_map instead.")
  (grid_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SotifMonitorResult>) ostream)
  "Serializes a message object of type '<SotifMonitorResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'region_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'region_value))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'grid_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'grid_map))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SotifMonitorResult>) istream)
  "Deserializes a message object of type '<SotifMonitorResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'region_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'region_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Region))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'grid_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'grid_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Grid))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SotifMonitorResult>)))
  "Returns string type for a message object of type '<SotifMonitorResult>"
  "ros_interface/SotifMonitorResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SotifMonitorResult)))
  "Returns string type for a message object of type 'SotifMonitorResult"
  "ros_interface/SotifMonitorResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SotifMonitorResult>)))
  "Returns md5sum for a message object of type '<SotifMonitorResult>"
  "cfcbcab73f775f6e6285221c4193ca0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SotifMonitorResult)))
  "Returns md5sum for a message object of type 'SotifMonitorResult"
  "cfcbcab73f775f6e6285221c4193ca0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SotifMonitorResult>)))
  "Returns full string definition for message of type '<SotifMonitorResult>"
  (cl:format cl:nil "Header   header     #  ~%Region[] region_value # 区域态势~%Grid[] grid_map # 栅格地图~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Region~%int32   name_region     # 前后左右区域~%float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)~%int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)~%Point3D[] region_polygon # 世界坐标系下的区域多边形~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Grid~%float64   x     # 世界坐标系下的x~%float64   y     # 世界坐标系下的y~%SLPoint   sl_point     # Frenet坐标系下的x~%float64   yaw     #  ~%float64   potential     # 势场值~%int32   region_id     # 区域编号~%~%================================================================================~%MSG: ros_interface/SLPoint~%float64   s     # 纵向位移~%float64   l     # 横向位移~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SotifMonitorResult)))
  "Returns full string definition for message of type 'SotifMonitorResult"
  (cl:format cl:nil "Header   header     #  ~%Region[] region_value # 区域态势~%Grid[] grid_map # 栅格地图~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Region~%int32   name_region     # 前后左右区域~%float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)~%int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)~%Point3D[] region_polygon # 世界坐标系下的区域多边形~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Grid~%float64   x     # 世界坐标系下的x~%float64   y     # 世界坐标系下的y~%SLPoint   sl_point     # Frenet坐标系下的x~%float64   yaw     #  ~%float64   potential     # 势场值~%int32   region_id     # 区域编号~%~%================================================================================~%MSG: ros_interface/SLPoint~%float64   s     # 纵向位移~%float64   l     # 横向位移~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SotifMonitorResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'region_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'grid_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SotifMonitorResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SotifMonitorResult
    (cl:cons ':header (header msg))
    (cl:cons ':region_value (region_value msg))
    (cl:cons ':grid_map (grid_map msg))
))
