;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RadarObstacleListMsg)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RadarObstacleListMsg (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::RADAROBSTACLELISTMSG")
  (make-package "ROS_INTERFACE::RADAROBSTACLELISTMSG"))

(in-package "ROS")
;;//! \htmlinclude RadarObstacleListMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::RadarObstacleListMsg
  :super ros::object
  :slots (_header _radar_obstacle _sensor_id _radar_state _is_valid ))

(defmethod ros_interface::RadarObstacleListMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radar_obstacle __radar_obstacle) (let (r) (dotimes (i 0) (push (instance ros_interface::RadarObstacle :init) r)) r))
    ((:sensor_id __sensor_id) 0)
    ((:radar_state __radar_state) (instance ros_interface::RadarState :init))
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _radar_obstacle __radar_obstacle)
   (setq _sensor_id (round __sensor_id))
   (setq _radar_state __radar_state)
   (setq _is_valid __is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radar_obstacle
   (&rest __radar_obstacle)
   (if (keywordp (car __radar_obstacle))
       (send* _radar_obstacle __radar_obstacle)
     (progn
       (if __radar_obstacle (setq _radar_obstacle (car __radar_obstacle)))
       _radar_obstacle)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:radar_state
   (&rest __radar_state)
   (if (keywordp (car __radar_state))
       (send* _radar_state __radar_state)
     (progn
       (if __radar_state (setq _radar_state (car __radar_state)))
       _radar_state)))
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/RadarObstacle[] _radar_obstacle
    (apply #'+ (send-all _radar_obstacle :serialization-length)) 4
    ;; uint8 _sensor_id
    1
    ;; ros_interface/RadarState _radar_state
    (send _radar_state :serialization-length)
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/RadarObstacle[] _radar_obstacle
     (write-long (length _radar_obstacle) s)
     (dolist (elem _radar_obstacle)
       (send elem :serialize s)
       )
     ;; uint8 _sensor_id
       (write-byte _sensor_id s)
     ;; ros_interface/RadarState _radar_state
       (send _radar_state :serialize s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/RadarObstacle[] _radar_obstacle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _radar_obstacle (let (r) (dotimes (i n) (push (instance ros_interface::RadarObstacle :init) r)) r))
     (dolist (elem- _radar_obstacle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ros_interface/RadarState _radar_state
     (send _radar_state :deserialize buf ptr-) (incf ptr- (send _radar_state :serialization-length))
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::RadarObstacleListMsg :md5sum-) "3660edcdfc572605c301b7d0cc42e1d4")
(setf (get ros_interface::RadarObstacleListMsg :datatype-) "ros_interface/RadarObstacleListMsg")
(setf (get ros_interface::RadarObstacleListMsg :definition-)
      "Header   header     # 消息头
RadarObstacle[] radar_obstacle # 毫米波雷达障碍物数组
uint8   sensor_id     # 毫米波雷达 ID.
RadarState   radar_state     # radar state.
bool   is_valid     # true: valid  false: invalid

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/RadarObstacle
int32   id     # obstacle ID.
uint8   life_time     # 障碍物存在时间
Point2D   relative_position     # 雷达坐标系障碍物位置
Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差
Point2D   relative_velocity     # 雷达坐标系障碍物速度
Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差
Point2D   relative_acceleration     # 雷达坐标系障碍物加速度
Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差
float64   rcs     # 雷达散射面积
float64   snr     #  
int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;
float64   width     # 雷达障碍物宽度
float64   length     # 雷达障碍物长度
float64   height     # 雷达障碍物高度
float64   theta     #  
Point2D   absolute_position     # obstacle position in map coordinate system
Point2D   absolute_position_rms     #  
Point2D   absolute_velocity     # obstacle position in map coordinate system
Point2D   absolute_velocity_rms     #  
Point2D   absolute_acceleration     #  
Point2D   absolute_acceleration_rms     #  
float64   orientation     # 雷达障碍物方位角
float64   orient_rms     # 雷达障碍物方位角标准差
float64   yaw     #  
float64   yaw_rms     #  
int32   count     #  
int32   moving_frames_count     #  
Status   status     # 状态码
float64   underpass_probability     #  
float64   overpass_probability     #  
uint8   exist_probability     # 障碍物存在的概率
uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7
uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；
uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

================================================================================
MSG: ros_interface/Status
int32   error_code     # 错误码
string   msg     # 错误码描述

================================================================================
MSG: ros_interface/RadarState
uint8   sensor_id     #  
uint8   nvm_read_status     #  
uint8   nvm_write_status     #  
RadarStateError   radar_state_error     #  
RadarStateMode   radar_state_mode     #  
uint16   max_distance     #  
uint8   sort_index     #  
uint8   radar_power     #  
uint8   ctl_relay     #  
uint8   output_type     #  
uint8   send_quality     #  
uint8   send_extinfo     #  
uint8   motion_rx_state     #  
uint8   rcs_threshold     #  
uint8   connector_direction     #  
uint8   radar_position     #  
uint8   hw_error     #  

================================================================================
MSG: ros_interface/RadarStateError
uint8   persistent_error     #  
uint8   temporary_error     #  
uint8   interference_error     #  
uint8   temperature_error     #  
uint8   voltage_error     #  
uint8   block_error     #  
uint8   broadcast_error     #  
uint8   electric_axis_error     #  
uint8   config_error     #  
uint8   calibration_error     #  

================================================================================
MSG: ros_interface/RadarStateMode
uint8   can0_work_mode     # can0工作模式
uint8   can1_work_mode     # can1工作模式
uint8   dual_can_mode     # 双总线工作模式
uint8   timming_mode     # 计时模式
uint8   power_mode     # 电源模式
uint8   performance_mode     # 效能模式

")



(provide :ros_interface/RadarObstacleListMsg "3660edcdfc572605c301b7d0cc42e1d4")


