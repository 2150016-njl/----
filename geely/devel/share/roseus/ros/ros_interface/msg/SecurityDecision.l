;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::SecurityDecision)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'SecurityDecision (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::SECURITYDECISION")
  (make-package "ROS_INTERFACE::SECURITYDECISION"))

(in-package "ROS")
;;//! \htmlinclude SecurityDecision.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::SecurityDecision
  :super ros::object
  :slots (_header _warning_command _motion_alarm _brake_report _change_lane_command _trajectory_limit_command _park_command _drivingmode_report ))

(defmethod ros_interface::SecurityDecision
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:warning_command __warning_command) (instance ros_interface::WarningCommand :init))
    ((:motion_alarm __motion_alarm) (instance ros_interface::WarningCommand :init))
    ((:brake_report __brake_report) 0)
    ((:change_lane_command __change_lane_command) 0)
    ((:trajectory_limit_command __trajectory_limit_command) (instance ros_interface::TrajectoryLimitCommand :init))
    ((:park_command __park_command) 0)
    ((:drivingmode_report __drivingmode_report) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _warning_command __warning_command)
   (setq _motion_alarm __motion_alarm)
   (setq _brake_report (round __brake_report))
   (setq _change_lane_command (round __change_lane_command))
   (setq _trajectory_limit_command __trajectory_limit_command)
   (setq _park_command (round __park_command))
   (setq _drivingmode_report (round __drivingmode_report))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:warning_command
   (&rest __warning_command)
   (if (keywordp (car __warning_command))
       (send* _warning_command __warning_command)
     (progn
       (if __warning_command (setq _warning_command (car __warning_command)))
       _warning_command)))
  (:motion_alarm
   (&rest __motion_alarm)
   (if (keywordp (car __motion_alarm))
       (send* _motion_alarm __motion_alarm)
     (progn
       (if __motion_alarm (setq _motion_alarm (car __motion_alarm)))
       _motion_alarm)))
  (:brake_report
   (&optional __brake_report)
   (if __brake_report (setq _brake_report __brake_report)) _brake_report)
  (:change_lane_command
   (&optional __change_lane_command)
   (if __change_lane_command (setq _change_lane_command __change_lane_command)) _change_lane_command)
  (:trajectory_limit_command
   (&rest __trajectory_limit_command)
   (if (keywordp (car __trajectory_limit_command))
       (send* _trajectory_limit_command __trajectory_limit_command)
     (progn
       (if __trajectory_limit_command (setq _trajectory_limit_command (car __trajectory_limit_command)))
       _trajectory_limit_command)))
  (:park_command
   (&optional __park_command)
   (if __park_command (setq _park_command __park_command)) _park_command)
  (:drivingmode_report
   (&optional __drivingmode_report)
   (if __drivingmode_report (setq _drivingmode_report __drivingmode_report)) _drivingmode_report)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/WarningCommand _warning_command
    (send _warning_command :serialization-length)
    ;; ros_interface/WarningCommand _motion_alarm
    (send _motion_alarm :serialization-length)
    ;; int32 _brake_report
    4
    ;; int32 _change_lane_command
    4
    ;; ros_interface/TrajectoryLimitCommand _trajectory_limit_command
    (send _trajectory_limit_command :serialization-length)
    ;; int32 _park_command
    4
    ;; int32 _drivingmode_report
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/WarningCommand _warning_command
       (send _warning_command :serialize s)
     ;; ros_interface/WarningCommand _motion_alarm
       (send _motion_alarm :serialize s)
     ;; int32 _brake_report
       (write-long _brake_report s)
     ;; int32 _change_lane_command
       (write-long _change_lane_command s)
     ;; ros_interface/TrajectoryLimitCommand _trajectory_limit_command
       (send _trajectory_limit_command :serialize s)
     ;; int32 _park_command
       (write-long _park_command s)
     ;; int32 _drivingmode_report
       (write-long _drivingmode_report s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/WarningCommand _warning_command
     (send _warning_command :deserialize buf ptr-) (incf ptr- (send _warning_command :serialization-length))
   ;; ros_interface/WarningCommand _motion_alarm
     (send _motion_alarm :deserialize buf ptr-) (incf ptr- (send _motion_alarm :serialization-length))
   ;; int32 _brake_report
     (setq _brake_report (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _change_lane_command
     (setq _change_lane_command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/TrajectoryLimitCommand _trajectory_limit_command
     (send _trajectory_limit_command :deserialize buf ptr-) (incf ptr- (send _trajectory_limit_command :serialization-length))
   ;; int32 _park_command
     (setq _park_command (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drivingmode_report
     (setq _drivingmode_report (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::SecurityDecision :md5sum-) "12f094a22d15ee8e4e9e06d46a5b0c22")
(setf (get ros_interface::SecurityDecision :datatype-) "ros_interface/SecurityDecision")
(setf (get ros_interface::SecurityDecision :definition-)
      "Header   header     #  
WarningCommand   warning_command     # 告警指令
WarningCommand   motion_alarm     #  
int32   brake_report     # 刹车报告
int32   change_lane_command     # 换道指令
TrajectoryLimitCommand   trajectory_limit_command     # 轨迹限制指令
int32   park_command     # 停车指令
int32   drivingmode_report     # 驾驶模式报告

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
MSG: ros_interface/WarningCommand
int32   sound_alarm     # 声音告警
int32   light_alarm     # 车灯告警
int32   media_alarm     # 媒体告警
int32   motion_alarm     # 震动告警

================================================================================
MSG: ros_interface/TrajectoryLimitCommand
bool   speed_limit_enable     #  
float64   speed_limit     # m/s
bool   kappa_limit_enable     #  
float64   kappa_limit     # deg/m

")



(provide :ros_interface/SecurityDecision "12f094a22d15ee8e4e9e06d46a5b0c22")


