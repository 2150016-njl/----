;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::WheelInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'WheelInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::WHEELINFO")
  (make-package "ROS_INTERFACE::WHEELINFO"))

(in-package "ROS")
;;//! \htmlinclude WheelInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::WheelInfo
  :super ros::object
  :slots (_header _moving_status _steer_driving_mode _steering_value _steering_torque_nm _steering_rate_dps _speed_mps _veh_spd_vld _gear _gear_vld _wheel_direction_rr _wheel_spd_rr _wheel_direction_rl _wheel_spd_rl _wheel_direction_fr _wheel_spd_fr _wheel_direction_fl _wheel_spd_fl _yaw_rate _wss_fl_edges_sum _wss_fr_edges_sum _wss_rl_edges_sum _wss_rr_edges_sum _wss_fl_edges_sum_vld _wss_fr_edges_sum_vld _wss_rl_edges_sum_vld _wss_rr_edges_sum_vld _veh_lat_accel _veh_lgt_accel _veh_lat_accel_vld _veh_lgt_accel_vld ))

(defmethod ros_interface::WheelInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:moving_status __moving_status) 0)
    ((:steer_driving_mode __steer_driving_mode) 0)
    ((:steering_value __steering_value) 0.0)
    ((:steering_torque_nm __steering_torque_nm) 0.0)
    ((:steering_rate_dps __steering_rate_dps) 0.0)
    ((:speed_mps __speed_mps) 0.0)
    ((:veh_spd_vld __veh_spd_vld) nil)
    ((:gear __gear) 0)
    ((:gear_vld __gear_vld) nil)
    ((:wheel_direction_rr __wheel_direction_rr) 0)
    ((:wheel_spd_rr __wheel_spd_rr) 0.0)
    ((:wheel_direction_rl __wheel_direction_rl) 0)
    ((:wheel_spd_rl __wheel_spd_rl) 0.0)
    ((:wheel_direction_fr __wheel_direction_fr) 0)
    ((:wheel_spd_fr __wheel_spd_fr) 0.0)
    ((:wheel_direction_fl __wheel_direction_fl) 0)
    ((:wheel_spd_fl __wheel_spd_fl) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:wss_fl_edges_sum __wss_fl_edges_sum) 0)
    ((:wss_fr_edges_sum __wss_fr_edges_sum) 0)
    ((:wss_rl_edges_sum __wss_rl_edges_sum) 0)
    ((:wss_rr_edges_sum __wss_rr_edges_sum) 0)
    ((:wss_fl_edges_sum_vld __wss_fl_edges_sum_vld) nil)
    ((:wss_fr_edges_sum_vld __wss_fr_edges_sum_vld) nil)
    ((:wss_rl_edges_sum_vld __wss_rl_edges_sum_vld) nil)
    ((:wss_rr_edges_sum_vld __wss_rr_edges_sum_vld) nil)
    ((:veh_lat_accel __veh_lat_accel) 0.0)
    ((:veh_lgt_accel __veh_lgt_accel) 0.0)
    ((:veh_lat_accel_vld __veh_lat_accel_vld) nil)
    ((:veh_lgt_accel_vld __veh_lgt_accel_vld) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _moving_status (round __moving_status))
   (setq _steer_driving_mode (round __steer_driving_mode))
   (setq _steering_value (float __steering_value))
   (setq _steering_torque_nm (float __steering_torque_nm))
   (setq _steering_rate_dps (float __steering_rate_dps))
   (setq _speed_mps (float __speed_mps))
   (setq _veh_spd_vld __veh_spd_vld)
   (setq _gear (round __gear))
   (setq _gear_vld __gear_vld)
   (setq _wheel_direction_rr (round __wheel_direction_rr))
   (setq _wheel_spd_rr (float __wheel_spd_rr))
   (setq _wheel_direction_rl (round __wheel_direction_rl))
   (setq _wheel_spd_rl (float __wheel_spd_rl))
   (setq _wheel_direction_fr (round __wheel_direction_fr))
   (setq _wheel_spd_fr (float __wheel_spd_fr))
   (setq _wheel_direction_fl (round __wheel_direction_fl))
   (setq _wheel_spd_fl (float __wheel_spd_fl))
   (setq _yaw_rate (float __yaw_rate))
   (setq _wss_fl_edges_sum (round __wss_fl_edges_sum))
   (setq _wss_fr_edges_sum (round __wss_fr_edges_sum))
   (setq _wss_rl_edges_sum (round __wss_rl_edges_sum))
   (setq _wss_rr_edges_sum (round __wss_rr_edges_sum))
   (setq _wss_fl_edges_sum_vld __wss_fl_edges_sum_vld)
   (setq _wss_fr_edges_sum_vld __wss_fr_edges_sum_vld)
   (setq _wss_rl_edges_sum_vld __wss_rl_edges_sum_vld)
   (setq _wss_rr_edges_sum_vld __wss_rr_edges_sum_vld)
   (setq _veh_lat_accel (float __veh_lat_accel))
   (setq _veh_lgt_accel (float __veh_lgt_accel))
   (setq _veh_lat_accel_vld __veh_lat_accel_vld)
   (setq _veh_lgt_accel_vld __veh_lgt_accel_vld)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:moving_status
   (&optional __moving_status)
   (if __moving_status (setq _moving_status __moving_status)) _moving_status)
  (:steer_driving_mode
   (&optional __steer_driving_mode)
   (if __steer_driving_mode (setq _steer_driving_mode __steer_driving_mode)) _steer_driving_mode)
  (:steering_value
   (&optional __steering_value)
   (if __steering_value (setq _steering_value __steering_value)) _steering_value)
  (:steering_torque_nm
   (&optional __steering_torque_nm)
   (if __steering_torque_nm (setq _steering_torque_nm __steering_torque_nm)) _steering_torque_nm)
  (:steering_rate_dps
   (&optional __steering_rate_dps)
   (if __steering_rate_dps (setq _steering_rate_dps __steering_rate_dps)) _steering_rate_dps)
  (:speed_mps
   (&optional __speed_mps)
   (if __speed_mps (setq _speed_mps __speed_mps)) _speed_mps)
  (:veh_spd_vld
   (&optional __veh_spd_vld)
   (if __veh_spd_vld (setq _veh_spd_vld __veh_spd_vld)) _veh_spd_vld)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:gear_vld
   (&optional __gear_vld)
   (if __gear_vld (setq _gear_vld __gear_vld)) _gear_vld)
  (:wheel_direction_rr
   (&optional __wheel_direction_rr)
   (if __wheel_direction_rr (setq _wheel_direction_rr __wheel_direction_rr)) _wheel_direction_rr)
  (:wheel_spd_rr
   (&optional __wheel_spd_rr)
   (if __wheel_spd_rr (setq _wheel_spd_rr __wheel_spd_rr)) _wheel_spd_rr)
  (:wheel_direction_rl
   (&optional __wheel_direction_rl)
   (if __wheel_direction_rl (setq _wheel_direction_rl __wheel_direction_rl)) _wheel_direction_rl)
  (:wheel_spd_rl
   (&optional __wheel_spd_rl)
   (if __wheel_spd_rl (setq _wheel_spd_rl __wheel_spd_rl)) _wheel_spd_rl)
  (:wheel_direction_fr
   (&optional __wheel_direction_fr)
   (if __wheel_direction_fr (setq _wheel_direction_fr __wheel_direction_fr)) _wheel_direction_fr)
  (:wheel_spd_fr
   (&optional __wheel_spd_fr)
   (if __wheel_spd_fr (setq _wheel_spd_fr __wheel_spd_fr)) _wheel_spd_fr)
  (:wheel_direction_fl
   (&optional __wheel_direction_fl)
   (if __wheel_direction_fl (setq _wheel_direction_fl __wheel_direction_fl)) _wheel_direction_fl)
  (:wheel_spd_fl
   (&optional __wheel_spd_fl)
   (if __wheel_spd_fl (setq _wheel_spd_fl __wheel_spd_fl)) _wheel_spd_fl)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:wss_fl_edges_sum
   (&optional __wss_fl_edges_sum)
   (if __wss_fl_edges_sum (setq _wss_fl_edges_sum __wss_fl_edges_sum)) _wss_fl_edges_sum)
  (:wss_fr_edges_sum
   (&optional __wss_fr_edges_sum)
   (if __wss_fr_edges_sum (setq _wss_fr_edges_sum __wss_fr_edges_sum)) _wss_fr_edges_sum)
  (:wss_rl_edges_sum
   (&optional __wss_rl_edges_sum)
   (if __wss_rl_edges_sum (setq _wss_rl_edges_sum __wss_rl_edges_sum)) _wss_rl_edges_sum)
  (:wss_rr_edges_sum
   (&optional __wss_rr_edges_sum)
   (if __wss_rr_edges_sum (setq _wss_rr_edges_sum __wss_rr_edges_sum)) _wss_rr_edges_sum)
  (:wss_fl_edges_sum_vld
   (&optional __wss_fl_edges_sum_vld)
   (if __wss_fl_edges_sum_vld (setq _wss_fl_edges_sum_vld __wss_fl_edges_sum_vld)) _wss_fl_edges_sum_vld)
  (:wss_fr_edges_sum_vld
   (&optional __wss_fr_edges_sum_vld)
   (if __wss_fr_edges_sum_vld (setq _wss_fr_edges_sum_vld __wss_fr_edges_sum_vld)) _wss_fr_edges_sum_vld)
  (:wss_rl_edges_sum_vld
   (&optional __wss_rl_edges_sum_vld)
   (if __wss_rl_edges_sum_vld (setq _wss_rl_edges_sum_vld __wss_rl_edges_sum_vld)) _wss_rl_edges_sum_vld)
  (:wss_rr_edges_sum_vld
   (&optional __wss_rr_edges_sum_vld)
   (if __wss_rr_edges_sum_vld (setq _wss_rr_edges_sum_vld __wss_rr_edges_sum_vld)) _wss_rr_edges_sum_vld)
  (:veh_lat_accel
   (&optional __veh_lat_accel)
   (if __veh_lat_accel (setq _veh_lat_accel __veh_lat_accel)) _veh_lat_accel)
  (:veh_lgt_accel
   (&optional __veh_lgt_accel)
   (if __veh_lgt_accel (setq _veh_lgt_accel __veh_lgt_accel)) _veh_lgt_accel)
  (:veh_lat_accel_vld
   (&optional __veh_lat_accel_vld)
   (if __veh_lat_accel_vld (setq _veh_lat_accel_vld __veh_lat_accel_vld)) _veh_lat_accel_vld)
  (:veh_lgt_accel_vld
   (&optional __veh_lgt_accel_vld)
   (if __veh_lgt_accel_vld (setq _veh_lgt_accel_vld __veh_lgt_accel_vld)) _veh_lgt_accel_vld)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _moving_status
    4
    ;; int32 _steer_driving_mode
    4
    ;; float64 _steering_value
    8
    ;; float64 _steering_torque_nm
    8
    ;; float64 _steering_rate_dps
    8
    ;; float64 _speed_mps
    8
    ;; bool _veh_spd_vld
    1
    ;; int32 _gear
    4
    ;; bool _gear_vld
    1
    ;; int32 _wheel_direction_rr
    4
    ;; float64 _wheel_spd_rr
    8
    ;; int32 _wheel_direction_rl
    4
    ;; float64 _wheel_spd_rl
    8
    ;; int32 _wheel_direction_fr
    4
    ;; float64 _wheel_spd_fr
    8
    ;; int32 _wheel_direction_fl
    4
    ;; float64 _wheel_spd_fl
    8
    ;; float64 _yaw_rate
    8
    ;; int32 _wss_fl_edges_sum
    4
    ;; int32 _wss_fr_edges_sum
    4
    ;; int32 _wss_rl_edges_sum
    4
    ;; int32 _wss_rr_edges_sum
    4
    ;; bool _wss_fl_edges_sum_vld
    1
    ;; bool _wss_fr_edges_sum_vld
    1
    ;; bool _wss_rl_edges_sum_vld
    1
    ;; bool _wss_rr_edges_sum_vld
    1
    ;; float64 _veh_lat_accel
    8
    ;; float64 _veh_lgt_accel
    8
    ;; bool _veh_lat_accel_vld
    1
    ;; bool _veh_lgt_accel_vld
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _moving_status
       (write-long _moving_status s)
     ;; int32 _steer_driving_mode
       (write-long _steer_driving_mode s)
     ;; float64 _steering_value
       (sys::poke _steering_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_torque_nm
       (sys::poke _steering_torque_nm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_rate_dps
       (sys::poke _steering_rate_dps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_mps
       (sys::poke _speed_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _veh_spd_vld
       (if _veh_spd_vld (write-byte -1 s) (write-byte 0 s))
     ;; int32 _gear
       (write-long _gear s)
     ;; bool _gear_vld
       (if _gear_vld (write-byte -1 s) (write-byte 0 s))
     ;; int32 _wheel_direction_rr
       (write-long _wheel_direction_rr s)
     ;; float64 _wheel_spd_rr
       (sys::poke _wheel_spd_rr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wheel_direction_rl
       (write-long _wheel_direction_rl s)
     ;; float64 _wheel_spd_rl
       (sys::poke _wheel_spd_rl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wheel_direction_fr
       (write-long _wheel_direction_fr s)
     ;; float64 _wheel_spd_fr
       (sys::poke _wheel_spd_fr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wheel_direction_fl
       (write-long _wheel_direction_fl s)
     ;; float64 _wheel_spd_fl
       (sys::poke _wheel_spd_fl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wss_fl_edges_sum
       (write-long _wss_fl_edges_sum s)
     ;; int32 _wss_fr_edges_sum
       (write-long _wss_fr_edges_sum s)
     ;; int32 _wss_rl_edges_sum
       (write-long _wss_rl_edges_sum s)
     ;; int32 _wss_rr_edges_sum
       (write-long _wss_rr_edges_sum s)
     ;; bool _wss_fl_edges_sum_vld
       (if _wss_fl_edges_sum_vld (write-byte -1 s) (write-byte 0 s))
     ;; bool _wss_fr_edges_sum_vld
       (if _wss_fr_edges_sum_vld (write-byte -1 s) (write-byte 0 s))
     ;; bool _wss_rl_edges_sum_vld
       (if _wss_rl_edges_sum_vld (write-byte -1 s) (write-byte 0 s))
     ;; bool _wss_rr_edges_sum_vld
       (if _wss_rr_edges_sum_vld (write-byte -1 s) (write-byte 0 s))
     ;; float64 _veh_lat_accel
       (sys::poke _veh_lat_accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _veh_lgt_accel
       (sys::poke _veh_lgt_accel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _veh_lat_accel_vld
       (if _veh_lat_accel_vld (write-byte -1 s) (write-byte 0 s))
     ;; bool _veh_lgt_accel_vld
       (if _veh_lgt_accel_vld (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _moving_status
     (setq _moving_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_driving_mode
     (setq _steer_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _steering_value
     (setq _steering_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_torque_nm
     (setq _steering_torque_nm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_rate_dps
     (setq _steering_rate_dps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_mps
     (setq _speed_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _veh_spd_vld
     (setq _veh_spd_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _gear_vld
     (setq _gear_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _wheel_direction_rr
     (setq _wheel_direction_rr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_rr
     (setq _wheel_spd_rr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wheel_direction_rl
     (setq _wheel_direction_rl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_rl
     (setq _wheel_spd_rl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wheel_direction_fr
     (setq _wheel_direction_fr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_fr
     (setq _wheel_spd_fr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wheel_direction_fl
     (setq _wheel_direction_fl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_fl
     (setq _wheel_spd_fl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wss_fl_edges_sum
     (setq _wss_fl_edges_sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wss_fr_edges_sum
     (setq _wss_fr_edges_sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wss_rl_edges_sum
     (setq _wss_rl_edges_sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wss_rr_edges_sum
     (setq _wss_rr_edges_sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _wss_fl_edges_sum_vld
     (setq _wss_fl_edges_sum_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wss_fr_edges_sum_vld
     (setq _wss_fr_edges_sum_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wss_rl_edges_sum_vld
     (setq _wss_rl_edges_sum_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wss_rr_edges_sum_vld
     (setq _wss_rr_edges_sum_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _veh_lat_accel
     (setq _veh_lat_accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _veh_lgt_accel
     (setq _veh_lgt_accel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _veh_lat_accel_vld
     (setq _veh_lat_accel_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _veh_lgt_accel_vld
     (setq _veh_lgt_accel_vld (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::WheelInfo :md5sum-) "89a45d7281d30b62ae7cbb5f0d17e21a")
(setf (get ros_interface::WheelInfo :datatype-) "ros_interface/WheelInfo")
(setf (get ros_interface::WheelInfo :definition-)
      "Header   header     #  
int32   moving_status     # 0=UNKNOWN_VEHICLE_STATE  1=STATIONARY  2=MOVING_FORWARD  3=MOVING_BACKWARD
int32   steer_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE  4=EMERGENCY_MODE
float64   steering_value     # Real steering location
float64   steering_torque_nm     # Applied steering torque in [Nm]
float64   steering_rate_dps     # degree/s
float64   speed_mps     # Vehicle Speed in meters per second
bool   veh_spd_vld     # 车速有效性
int32   gear     # 档位
bool   gear_vld     # 档位有效性
int32   wheel_direction_rr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
float64   wheel_spd_rr     # Actual speed of the right rear wheel
int32   wheel_direction_rl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
float64   wheel_spd_rl     # Actual speed of the left rear wheel
int32   wheel_direction_fr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
float64   wheel_spd_fr     # Actual speed of the right front wheel
int32   wheel_direction_fl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
float64   wheel_spd_fl     # Actual speed of the left front wheel
float64   yaw_rate     # Yaw rate[degree/s] [-163.84|163.835]
int32   wss_fl_edges_sum     # 左前轮边缘和
int32   wss_fr_edges_sum     # 右前轮边缘和
int32   wss_rl_edges_sum     # 左后轮边缘和
int32   wss_rr_edges_sum     # 右后轮边缘和
bool   wss_fl_edges_sum_vld     # 左前轮边缘和有效位（0：无效 1：有效）
bool   wss_fr_edges_sum_vld     # 右前轮边缘和有效位（0：无效 1：有效）
bool   wss_rl_edges_sum_vld     # 左后轮边缘和有效位（0：无效 1：有效）
bool   wss_rr_edges_sum_vld     # 右后轮边缘和有效位（0：无效 1：有效）
float64   veh_lat_accel     # 车辆横向加速度
float64   veh_lgt_accel     # 车辆纵向加速度
bool   veh_lat_accel_vld     # 车辆横向加速度有效性
bool   veh_lgt_accel_vld     # 车辆纵向加速度有效性

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

")



(provide :ros_interface/WheelInfo "89a45d7281d30b62ae7cbb5f0d17e21a")


