; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RadarObstacleListMsg.msg.html

(cl:defclass <RadarObstacleListMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radar_obstacle
    :reader radar_obstacle
    :initarg :radar_obstacle
    :type (cl:vector ros_interface-msg:RadarObstacle)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:RadarObstacle :initial-element (cl:make-instance 'ros_interface-msg:RadarObstacle)))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0)
   (radar_state
    :reader radar_state
    :initarg :radar_state
    :type ros_interface-msg:RadarState
    :initform (cl:make-instance 'ros_interface-msg:RadarState))
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RadarObstacleListMsg (<RadarObstacleListMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObstacleListMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObstacleListMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RadarObstacleListMsg> is deprecated: use ros_interface-msg:RadarObstacleListMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarObstacleListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radar_obstacle-val :lambda-list '(m))
(cl:defmethod radar_obstacle-val ((m <RadarObstacleListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:radar_obstacle-val is deprecated.  Use ros_interface-msg:radar_obstacle instead.")
  (radar_obstacle m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <RadarObstacleListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_id-val is deprecated.  Use ros_interface-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'radar_state-val :lambda-list '(m))
(cl:defmethod radar_state-val ((m <RadarObstacleListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:radar_state-val is deprecated.  Use ros_interface-msg:radar_state instead.")
  (radar_state m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <RadarObstacleListMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObstacleListMsg>) ostream)
  "Serializes a message object of type '<RadarObstacleListMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'radar_obstacle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'radar_obstacle))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radar_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObstacleListMsg>) istream)
  "Deserializes a message object of type '<RadarObstacleListMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'radar_obstacle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'radar_obstacle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:RadarObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radar_state) istream)
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObstacleListMsg>)))
  "Returns string type for a message object of type '<RadarObstacleListMsg>"
  "ros_interface/RadarObstacleListMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObstacleListMsg)))
  "Returns string type for a message object of type 'RadarObstacleListMsg"
  "ros_interface/RadarObstacleListMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObstacleListMsg>)))
  "Returns md5sum for a message object of type '<RadarObstacleListMsg>"
  "3660edcdfc572605c301b7d0cc42e1d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObstacleListMsg)))
  "Returns md5sum for a message object of type 'RadarObstacleListMsg"
  "3660edcdfc572605c301b7d0cc42e1d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObstacleListMsg>)))
  "Returns full string definition for message of type '<RadarObstacleListMsg>"
  (cl:format cl:nil "Header   header     # 消息头~%RadarObstacle[] radar_obstacle # 毫米波雷达障碍物数组~%uint8   sensor_id     # 毫米波雷达 ID.~%RadarState   radar_state     # radar state.~%bool   is_valid     # true: valid  false: invalid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/RadarObstacle~%int32   id     # obstacle ID.~%uint8   life_time     # 障碍物存在时间~%Point2D   relative_position     # 雷达坐标系障碍物位置~%Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差~%Point2D   relative_velocity     # 雷达坐标系障碍物速度~%Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差~%Point2D   relative_acceleration     # 雷达坐标系障碍物加速度~%Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差~%float64   rcs     # 雷达散射面积~%float64   snr     #  ~%int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;~%float64   width     # 雷达障碍物宽度~%float64   length     # 雷达障碍物长度~%float64   height     # 雷达障碍物高度~%float64   theta     #  ~%Point2D   absolute_position     # obstacle position in map coordinate system~%Point2D   absolute_position_rms     #  ~%Point2D   absolute_velocity     # obstacle position in map coordinate system~%Point2D   absolute_velocity_rms     #  ~%Point2D   absolute_acceleration     #  ~%Point2D   absolute_acceleration_rms     #  ~%float64   orientation     # 雷达障碍物方位角~%float64   orient_rms     # 雷达障碍物方位角标准差~%float64   yaw     #  ~%float64   yaw_rms     #  ~%int32   count     #  ~%int32   moving_frames_count     #  ~%Status   status     # 状态码~%float64   underpass_probability     #  ~%float64   overpass_probability     #  ~%uint8   exist_probability     # 障碍物存在的概率~%uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7~%uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；~%uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/Status~%int32   error_code     # 错误码~%string   msg     # 错误码描述~%~%================================================================================~%MSG: ros_interface/RadarState~%uint8   sensor_id     #  ~%uint8   nvm_read_status     #  ~%uint8   nvm_write_status     #  ~%RadarStateError   radar_state_error     #  ~%RadarStateMode   radar_state_mode     #  ~%uint16   max_distance     #  ~%uint8   sort_index     #  ~%uint8   radar_power     #  ~%uint8   ctl_relay     #  ~%uint8   output_type     #  ~%uint8   send_quality     #  ~%uint8   send_extinfo     #  ~%uint8   motion_rx_state     #  ~%uint8   rcs_threshold     #  ~%uint8   connector_direction     #  ~%uint8   radar_position     #  ~%uint8   hw_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateError~%uint8   persistent_error     #  ~%uint8   temporary_error     #  ~%uint8   interference_error     #  ~%uint8   temperature_error     #  ~%uint8   voltage_error     #  ~%uint8   block_error     #  ~%uint8   broadcast_error     #  ~%uint8   electric_axis_error     #  ~%uint8   config_error     #  ~%uint8   calibration_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateMode~%uint8   can0_work_mode     # can0工作模式~%uint8   can1_work_mode     # can1工作模式~%uint8   dual_can_mode     # 双总线工作模式~%uint8   timming_mode     # 计时模式~%uint8   power_mode     # 电源模式~%uint8   performance_mode     # 效能模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObstacleListMsg)))
  "Returns full string definition for message of type 'RadarObstacleListMsg"
  (cl:format cl:nil "Header   header     # 消息头~%RadarObstacle[] radar_obstacle # 毫米波雷达障碍物数组~%uint8   sensor_id     # 毫米波雷达 ID.~%RadarState   radar_state     # radar state.~%bool   is_valid     # true: valid  false: invalid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/RadarObstacle~%int32   id     # obstacle ID.~%uint8   life_time     # 障碍物存在时间~%Point2D   relative_position     # 雷达坐标系障碍物位置~%Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差~%Point2D   relative_velocity     # 雷达坐标系障碍物速度~%Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差~%Point2D   relative_acceleration     # 雷达坐标系障碍物加速度~%Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差~%float64   rcs     # 雷达散射面积~%float64   snr     #  ~%int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;~%float64   width     # 雷达障碍物宽度~%float64   length     # 雷达障碍物长度~%float64   height     # 雷达障碍物高度~%float64   theta     #  ~%Point2D   absolute_position     # obstacle position in map coordinate system~%Point2D   absolute_position_rms     #  ~%Point2D   absolute_velocity     # obstacle position in map coordinate system~%Point2D   absolute_velocity_rms     #  ~%Point2D   absolute_acceleration     #  ~%Point2D   absolute_acceleration_rms     #  ~%float64   orientation     # 雷达障碍物方位角~%float64   orient_rms     # 雷达障碍物方位角标准差~%float64   yaw     #  ~%float64   yaw_rms     #  ~%int32   count     #  ~%int32   moving_frames_count     #  ~%Status   status     # 状态码~%float64   underpass_probability     #  ~%float64   overpass_probability     #  ~%uint8   exist_probability     # 障碍物存在的概率~%uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7~%uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；~%uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/Status~%int32   error_code     # 错误码~%string   msg     # 错误码描述~%~%================================================================================~%MSG: ros_interface/RadarState~%uint8   sensor_id     #  ~%uint8   nvm_read_status     #  ~%uint8   nvm_write_status     #  ~%RadarStateError   radar_state_error     #  ~%RadarStateMode   radar_state_mode     #  ~%uint16   max_distance     #  ~%uint8   sort_index     #  ~%uint8   radar_power     #  ~%uint8   ctl_relay     #  ~%uint8   output_type     #  ~%uint8   send_quality     #  ~%uint8   send_extinfo     #  ~%uint8   motion_rx_state     #  ~%uint8   rcs_threshold     #  ~%uint8   connector_direction     #  ~%uint8   radar_position     #  ~%uint8   hw_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateError~%uint8   persistent_error     #  ~%uint8   temporary_error     #  ~%uint8   interference_error     #  ~%uint8   temperature_error     #  ~%uint8   voltage_error     #  ~%uint8   block_error     #  ~%uint8   broadcast_error     #  ~%uint8   electric_axis_error     #  ~%uint8   config_error     #  ~%uint8   calibration_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateMode~%uint8   can0_work_mode     # can0工作模式~%uint8   can1_work_mode     # can1工作模式~%uint8   dual_can_mode     # 双总线工作模式~%uint8   timming_mode     # 计时模式~%uint8   power_mode     # 电源模式~%uint8   performance_mode     # 效能模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObstacleListMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'radar_obstacle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radar_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObstacleListMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObstacleListMsg
    (cl:cons ':header (header msg))
    (cl:cons ':radar_obstacle (radar_obstacle msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':radar_state (radar_state msg))
    (cl:cons ':is_valid (is_valid msg))
))
