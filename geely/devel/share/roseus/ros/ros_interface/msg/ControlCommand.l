;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ControlCommand)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ControlCommand (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::CONTROLCOMMAND")
  (make-package "ROS_INTERFACE::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ControlCommand
  :super ros::object
  :slots (_header _steer_driving_mode _front_steering_target _rear_steering_target _front_steering_rate _rear_steering_rate _accel_driving_mode _accel_value _brake_driving_mode _brake_value _backup_brake_driving_mode _backup_brake_value _epb_driving_mode _epb_level _gear_driving_mode _emergency_brake_enable _gear_location _speed _acceleration _turn_lamp_ctrl _high_beam_ctrl _low_beam_ctrl _horn_ctrl _front_wiper_ctrl _rear_wiper_ctrl _position_lamp_ctrl _front_fog_lamp_ctrl _rear_fog_lamp_ctrl _brake_lamp_ctrl _alarm_lamp_ctrl _lf_door_ctrl _rf_door_ctrl _lr_door_ctrl _rr_door_ctrl ))

(defmethod ros_interface::ControlCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steer_driving_mode __steer_driving_mode) 0)
    ((:front_steering_target __front_steering_target) 0.0)
    ((:rear_steering_target __rear_steering_target) 0.0)
    ((:front_steering_rate __front_steering_rate) 0.0)
    ((:rear_steering_rate __rear_steering_rate) 0.0)
    ((:accel_driving_mode __accel_driving_mode) 0)
    ((:accel_value __accel_value) 0.0)
    ((:brake_driving_mode __brake_driving_mode) 0)
    ((:brake_value __brake_value) 0.0)
    ((:backup_brake_driving_mode __backup_brake_driving_mode) 0)
    ((:backup_brake_value __backup_brake_value) 0.0)
    ((:epb_driving_mode __epb_driving_mode) 0)
    ((:epb_level __epb_level) 0)
    ((:gear_driving_mode __gear_driving_mode) 0)
    ((:emergency_brake_enable __emergency_brake_enable) 0)
    ((:gear_location __gear_location) 0)
    ((:speed __speed) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:turn_lamp_ctrl __turn_lamp_ctrl) 0)
    ((:high_beam_ctrl __high_beam_ctrl) 0)
    ((:low_beam_ctrl __low_beam_ctrl) 0)
    ((:horn_ctrl __horn_ctrl) 0)
    ((:front_wiper_ctrl __front_wiper_ctrl) 0)
    ((:rear_wiper_ctrl __rear_wiper_ctrl) 0)
    ((:position_lamp_ctrl __position_lamp_ctrl) 0)
    ((:front_fog_lamp_ctrl __front_fog_lamp_ctrl) 0)
    ((:rear_fog_lamp_ctrl __rear_fog_lamp_ctrl) 0)
    ((:brake_lamp_ctrl __brake_lamp_ctrl) 0)
    ((:alarm_lamp_ctrl __alarm_lamp_ctrl) 0)
    ((:lf_door_ctrl __lf_door_ctrl) 0)
    ((:rf_door_ctrl __rf_door_ctrl) 0)
    ((:lr_door_ctrl __lr_door_ctrl) 0)
    ((:rr_door_ctrl __rr_door_ctrl) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steer_driving_mode (round __steer_driving_mode))
   (setq _front_steering_target (float __front_steering_target))
   (setq _rear_steering_target (float __rear_steering_target))
   (setq _front_steering_rate (float __front_steering_rate))
   (setq _rear_steering_rate (float __rear_steering_rate))
   (setq _accel_driving_mode (round __accel_driving_mode))
   (setq _accel_value (float __accel_value))
   (setq _brake_driving_mode (round __brake_driving_mode))
   (setq _brake_value (float __brake_value))
   (setq _backup_brake_driving_mode (round __backup_brake_driving_mode))
   (setq _backup_brake_value (float __backup_brake_value))
   (setq _epb_driving_mode (round __epb_driving_mode))
   (setq _epb_level (round __epb_level))
   (setq _gear_driving_mode (round __gear_driving_mode))
   (setq _emergency_brake_enable (round __emergency_brake_enable))
   (setq _gear_location (round __gear_location))
   (setq _speed (float __speed))
   (setq _acceleration (float __acceleration))
   (setq _turn_lamp_ctrl (round __turn_lamp_ctrl))
   (setq _high_beam_ctrl (round __high_beam_ctrl))
   (setq _low_beam_ctrl (round __low_beam_ctrl))
   (setq _horn_ctrl (round __horn_ctrl))
   (setq _front_wiper_ctrl (round __front_wiper_ctrl))
   (setq _rear_wiper_ctrl (round __rear_wiper_ctrl))
   (setq _position_lamp_ctrl (round __position_lamp_ctrl))
   (setq _front_fog_lamp_ctrl (round __front_fog_lamp_ctrl))
   (setq _rear_fog_lamp_ctrl (round __rear_fog_lamp_ctrl))
   (setq _brake_lamp_ctrl (round __brake_lamp_ctrl))
   (setq _alarm_lamp_ctrl (round __alarm_lamp_ctrl))
   (setq _lf_door_ctrl (round __lf_door_ctrl))
   (setq _rf_door_ctrl (round __rf_door_ctrl))
   (setq _lr_door_ctrl (round __lr_door_ctrl))
   (setq _rr_door_ctrl (round __rr_door_ctrl))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steer_driving_mode
   (&optional __steer_driving_mode)
   (if __steer_driving_mode (setq _steer_driving_mode __steer_driving_mode)) _steer_driving_mode)
  (:front_steering_target
   (&optional __front_steering_target)
   (if __front_steering_target (setq _front_steering_target __front_steering_target)) _front_steering_target)
  (:rear_steering_target
   (&optional __rear_steering_target)
   (if __rear_steering_target (setq _rear_steering_target __rear_steering_target)) _rear_steering_target)
  (:front_steering_rate
   (&optional __front_steering_rate)
   (if __front_steering_rate (setq _front_steering_rate __front_steering_rate)) _front_steering_rate)
  (:rear_steering_rate
   (&optional __rear_steering_rate)
   (if __rear_steering_rate (setq _rear_steering_rate __rear_steering_rate)) _rear_steering_rate)
  (:accel_driving_mode
   (&optional __accel_driving_mode)
   (if __accel_driving_mode (setq _accel_driving_mode __accel_driving_mode)) _accel_driving_mode)
  (:accel_value
   (&optional __accel_value)
   (if __accel_value (setq _accel_value __accel_value)) _accel_value)
  (:brake_driving_mode
   (&optional __brake_driving_mode)
   (if __brake_driving_mode (setq _brake_driving_mode __brake_driving_mode)) _brake_driving_mode)
  (:brake_value
   (&optional __brake_value)
   (if __brake_value (setq _brake_value __brake_value)) _brake_value)
  (:backup_brake_driving_mode
   (&optional __backup_brake_driving_mode)
   (if __backup_brake_driving_mode (setq _backup_brake_driving_mode __backup_brake_driving_mode)) _backup_brake_driving_mode)
  (:backup_brake_value
   (&optional __backup_brake_value)
   (if __backup_brake_value (setq _backup_brake_value __backup_brake_value)) _backup_brake_value)
  (:epb_driving_mode
   (&optional __epb_driving_mode)
   (if __epb_driving_mode (setq _epb_driving_mode __epb_driving_mode)) _epb_driving_mode)
  (:epb_level
   (&optional __epb_level)
   (if __epb_level (setq _epb_level __epb_level)) _epb_level)
  (:gear_driving_mode
   (&optional __gear_driving_mode)
   (if __gear_driving_mode (setq _gear_driving_mode __gear_driving_mode)) _gear_driving_mode)
  (:emergency_brake_enable
   (&optional __emergency_brake_enable)
   (if __emergency_brake_enable (setq _emergency_brake_enable __emergency_brake_enable)) _emergency_brake_enable)
  (:gear_location
   (&optional __gear_location)
   (if __gear_location (setq _gear_location __gear_location)) _gear_location)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:turn_lamp_ctrl
   (&optional __turn_lamp_ctrl)
   (if __turn_lamp_ctrl (setq _turn_lamp_ctrl __turn_lamp_ctrl)) _turn_lamp_ctrl)
  (:high_beam_ctrl
   (&optional __high_beam_ctrl)
   (if __high_beam_ctrl (setq _high_beam_ctrl __high_beam_ctrl)) _high_beam_ctrl)
  (:low_beam_ctrl
   (&optional __low_beam_ctrl)
   (if __low_beam_ctrl (setq _low_beam_ctrl __low_beam_ctrl)) _low_beam_ctrl)
  (:horn_ctrl
   (&optional __horn_ctrl)
   (if __horn_ctrl (setq _horn_ctrl __horn_ctrl)) _horn_ctrl)
  (:front_wiper_ctrl
   (&optional __front_wiper_ctrl)
   (if __front_wiper_ctrl (setq _front_wiper_ctrl __front_wiper_ctrl)) _front_wiper_ctrl)
  (:rear_wiper_ctrl
   (&optional __rear_wiper_ctrl)
   (if __rear_wiper_ctrl (setq _rear_wiper_ctrl __rear_wiper_ctrl)) _rear_wiper_ctrl)
  (:position_lamp_ctrl
   (&optional __position_lamp_ctrl)
   (if __position_lamp_ctrl (setq _position_lamp_ctrl __position_lamp_ctrl)) _position_lamp_ctrl)
  (:front_fog_lamp_ctrl
   (&optional __front_fog_lamp_ctrl)
   (if __front_fog_lamp_ctrl (setq _front_fog_lamp_ctrl __front_fog_lamp_ctrl)) _front_fog_lamp_ctrl)
  (:rear_fog_lamp_ctrl
   (&optional __rear_fog_lamp_ctrl)
   (if __rear_fog_lamp_ctrl (setq _rear_fog_lamp_ctrl __rear_fog_lamp_ctrl)) _rear_fog_lamp_ctrl)
  (:brake_lamp_ctrl
   (&optional __brake_lamp_ctrl)
   (if __brake_lamp_ctrl (setq _brake_lamp_ctrl __brake_lamp_ctrl)) _brake_lamp_ctrl)
  (:alarm_lamp_ctrl
   (&optional __alarm_lamp_ctrl)
   (if __alarm_lamp_ctrl (setq _alarm_lamp_ctrl __alarm_lamp_ctrl)) _alarm_lamp_ctrl)
  (:lf_door_ctrl
   (&optional __lf_door_ctrl)
   (if __lf_door_ctrl (setq _lf_door_ctrl __lf_door_ctrl)) _lf_door_ctrl)
  (:rf_door_ctrl
   (&optional __rf_door_ctrl)
   (if __rf_door_ctrl (setq _rf_door_ctrl __rf_door_ctrl)) _rf_door_ctrl)
  (:lr_door_ctrl
   (&optional __lr_door_ctrl)
   (if __lr_door_ctrl (setq _lr_door_ctrl __lr_door_ctrl)) _lr_door_ctrl)
  (:rr_door_ctrl
   (&optional __rr_door_ctrl)
   (if __rr_door_ctrl (setq _rr_door_ctrl __rr_door_ctrl)) _rr_door_ctrl)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _steer_driving_mode
    4
    ;; float64 _front_steering_target
    8
    ;; float64 _rear_steering_target
    8
    ;; float64 _front_steering_rate
    8
    ;; float64 _rear_steering_rate
    8
    ;; int32 _accel_driving_mode
    4
    ;; float64 _accel_value
    8
    ;; int32 _brake_driving_mode
    4
    ;; float64 _brake_value
    8
    ;; int32 _backup_brake_driving_mode
    4
    ;; float64 _backup_brake_value
    8
    ;; int32 _epb_driving_mode
    4
    ;; int32 _epb_level
    4
    ;; int32 _gear_driving_mode
    4
    ;; int8 _emergency_brake_enable
    1
    ;; int32 _gear_location
    4
    ;; float64 _speed
    8
    ;; float64 _acceleration
    8
    ;; int32 _turn_lamp_ctrl
    4
    ;; int32 _high_beam_ctrl
    4
    ;; int32 _low_beam_ctrl
    4
    ;; int32 _horn_ctrl
    4
    ;; int32 _front_wiper_ctrl
    4
    ;; int32 _rear_wiper_ctrl
    4
    ;; int32 _position_lamp_ctrl
    4
    ;; int32 _front_fog_lamp_ctrl
    4
    ;; int32 _rear_fog_lamp_ctrl
    4
    ;; int32 _brake_lamp_ctrl
    4
    ;; int32 _alarm_lamp_ctrl
    4
    ;; int32 _lf_door_ctrl
    4
    ;; int32 _rf_door_ctrl
    4
    ;; int32 _lr_door_ctrl
    4
    ;; int32 _rr_door_ctrl
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _steer_driving_mode
       (write-long _steer_driving_mode s)
     ;; float64 _front_steering_target
       (sys::poke _front_steering_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_target
       (sys::poke _rear_steering_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steering_rate
       (sys::poke _front_steering_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_rate
       (sys::poke _rear_steering_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _accel_driving_mode
       (write-long _accel_driving_mode s)
     ;; float64 _accel_value
       (sys::poke _accel_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _brake_driving_mode
       (write-long _brake_driving_mode s)
     ;; float64 _brake_value
       (sys::poke _brake_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _backup_brake_driving_mode
       (write-long _backup_brake_driving_mode s)
     ;; float64 _backup_brake_value
       (sys::poke _backup_brake_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _epb_driving_mode
       (write-long _epb_driving_mode s)
     ;; int32 _epb_level
       (write-long _epb_level s)
     ;; int32 _gear_driving_mode
       (write-long _gear_driving_mode s)
     ;; int8 _emergency_brake_enable
       (write-byte _emergency_brake_enable s)
     ;; int32 _gear_location
       (write-long _gear_location s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _turn_lamp_ctrl
       (write-long _turn_lamp_ctrl s)
     ;; int32 _high_beam_ctrl
       (write-long _high_beam_ctrl s)
     ;; int32 _low_beam_ctrl
       (write-long _low_beam_ctrl s)
     ;; int32 _horn_ctrl
       (write-long _horn_ctrl s)
     ;; int32 _front_wiper_ctrl
       (write-long _front_wiper_ctrl s)
     ;; int32 _rear_wiper_ctrl
       (write-long _rear_wiper_ctrl s)
     ;; int32 _position_lamp_ctrl
       (write-long _position_lamp_ctrl s)
     ;; int32 _front_fog_lamp_ctrl
       (write-long _front_fog_lamp_ctrl s)
     ;; int32 _rear_fog_lamp_ctrl
       (write-long _rear_fog_lamp_ctrl s)
     ;; int32 _brake_lamp_ctrl
       (write-long _brake_lamp_ctrl s)
     ;; int32 _alarm_lamp_ctrl
       (write-long _alarm_lamp_ctrl s)
     ;; int32 _lf_door_ctrl
       (write-long _lf_door_ctrl s)
     ;; int32 _rf_door_ctrl
       (write-long _rf_door_ctrl s)
     ;; int32 _lr_door_ctrl
       (write-long _lr_door_ctrl s)
     ;; int32 _rr_door_ctrl
       (write-long _rr_door_ctrl s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _steer_driving_mode
     (setq _steer_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _front_steering_target
     (setq _front_steering_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_target
     (setq _rear_steering_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steering_rate
     (setq _front_steering_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_rate
     (setq _rear_steering_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _accel_driving_mode
     (setq _accel_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _accel_value
     (setq _accel_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _brake_driving_mode
     (setq _brake_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _brake_value
     (setq _brake_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _backup_brake_driving_mode
     (setq _backup_brake_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _backup_brake_value
     (setq _backup_brake_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _epb_driving_mode
     (setq _epb_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epb_level
     (setq _epb_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_driving_mode
     (setq _gear_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _emergency_brake_enable
     (setq _emergency_brake_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _emergency_brake_enable 127) (setq _emergency_brake_enable (- _emergency_brake_enable 256)))
   ;; int32 _gear_location
     (setq _gear_location (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _turn_lamp_ctrl
     (setq _turn_lamp_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _high_beam_ctrl
     (setq _high_beam_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _low_beam_ctrl
     (setq _low_beam_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _horn_ctrl
     (setq _horn_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_wiper_ctrl
     (setq _front_wiper_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rear_wiper_ctrl
     (setq _rear_wiper_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position_lamp_ctrl
     (setq _position_lamp_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_fog_lamp_ctrl
     (setq _front_fog_lamp_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rear_fog_lamp_ctrl
     (setq _rear_fog_lamp_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _brake_lamp_ctrl
     (setq _brake_lamp_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alarm_lamp_ctrl
     (setq _alarm_lamp_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lf_door_ctrl
     (setq _lf_door_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rf_door_ctrl
     (setq _rf_door_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lr_door_ctrl
     (setq _lr_door_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rr_door_ctrl
     (setq _rr_door_ctrl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ControlCommand :md5sum-) "03627dc94a89132c997f76d6408a79d3")
(setf (get ros_interface::ControlCommand :datatype-) "ros_interface/ControlCommand")
(setf (get ros_interface::ControlCommand :definition-)
      "Header   header     #  
int32   steer_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
float64   front_steering_target     # target steering angle
float64   rear_steering_target     # target steering angle
float64   front_steering_rate     # target non-directional steering rate
float64   rear_steering_rate     # target non-directional steering rate
int32   accel_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
float64   accel_value     # target accel value
int32   brake_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
float64   brake_value     # target brake
int32   backup_brake_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
float64   backup_brake_value     # target brake
int32   epb_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
int32   epb_level     # 0=RELEASE 1=APPLIY 2=INVALID
int32   gear_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
int8   emergency_brake_enable     # 0=disenable  1=enable
int32   gear_location     # 0=GEAR_NEUTRAL 1=GEAR_DRIVE 2=GEAR_REVERSE 3=GEAR_PARKING 4=GEAR_LOW 5=GEAR_INVALID 6=GEAR_NONE
float64   speed     # target speed, in m/s
float64   acceleration     # target acceleration in m`s^-2
int32   turn_lamp_ctrl     # 转向灯 0 关闭 1 开启 2 不响应
int32   high_beam_ctrl     # 0 关闭 1 开启 2 不响应
int32   low_beam_ctrl     # 0 关闭 1 开启 2 不响应
int32   horn_ctrl     # 0 关闭 1 开启 2 不响应
int32   front_wiper_ctrl     # 前雨刮器 0 关闭 1 开启
int32   rear_wiper_ctrl     # 后雨刮器 0 关闭 1 开启
int32   position_lamp_ctrl     # 位置灯 0 关闭 1 开启
int32   front_fog_lamp_ctrl     # 前雾灯 0 关闭 1 开启
int32   rear_fog_lamp_ctrl     # 后雾灯 0 关闭 1 开启
int32   brake_lamp_ctrl     # 刹车灯 一般情况自动控制 0 关闭 1 开启
int32   alarm_lamp_ctrl     # 警报灯 双闪 0 关闭 1 开启
int32   lf_door_ctrl     # 左前门控制 0 关闭 1 开启
int32   rf_door_ctrl     # 右前门控制 0 关闭 1 开启
int32   lr_door_ctrl     # 左后门控制 0 关闭 1 开启
int32   rr_door_ctrl     # 右后门控制 0 关闭 1 开启

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



(provide :ros_interface/ControlCommand "03627dc94a89132c997f76d6408a79d3")


