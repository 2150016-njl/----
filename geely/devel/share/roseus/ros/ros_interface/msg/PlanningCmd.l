;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PlanningCmd)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PlanningCmd (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PLANNINGCMD")
  (make-package "ROS_INTERFACE::PLANNINGCMD"))

(in-package "ROS")
;;//! \htmlinclude PlanningCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::PlanningCmd
  :super ros::object
  :slots (_header _turn_lamp_ctrl _high_beam_ctrl _low_beam_ctrl _horn_ctrl _front_wiper_ctrl _rear_wiper_ctrl _position_lamp_ctrl _front_fog_lamp_ctrl _rear_fog_lamp_ctrl _brake_lamp_ctrl _alarm_lamp_ctrl _lf_door_ctrl _rf_door_ctrl _lr_door_ctrl _rr_door_ctrl ))

(defmethod ros_interface::PlanningCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
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

(setf (get ros_interface::PlanningCmd :md5sum-) "988d2e6545b7aed3c7c802e455b6a331")
(setf (get ros_interface::PlanningCmd :datatype-) "ros_interface/PlanningCmd")
(setf (get ros_interface::PlanningCmd :definition-)
      "Header   header     #  
int32   turn_lamp_ctrl     # 转向灯 TURN_INACTIVE_SIGNAL:0 TURN_LEFT_SIGNAL:1 TURN_RIGHT_SIGNAL:2 TURN_INVALID_SIGNAL:3
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



(provide :ros_interface/PlanningCmd "988d2e6545b7aed3c7c802e455b6a331")


