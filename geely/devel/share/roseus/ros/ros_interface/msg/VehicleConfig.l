;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::VehicleConfig)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'VehicleConfig (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::VEHICLECONFIG")
  (make-package "ROS_INTERFACE::VEHICLECONFIG"))

(in-package "ROS")
;;//! \htmlinclude VehicleConfig.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::VehicleConfig
  :super ros::object
  :slots (_header _vehicle_param ))

(defmethod ros_interface::VehicleConfig
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_param __vehicle_param) (instance ros_interface::VehicleParam :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_param __vehicle_param)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_param
   (&rest __vehicle_param)
   (if (keywordp (car __vehicle_param))
       (send* _vehicle_param __vehicle_param)
     (progn
       (if __vehicle_param (setq _vehicle_param (car __vehicle_param)))
       _vehicle_param)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/VehicleParam _vehicle_param
    (send _vehicle_param :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/VehicleParam _vehicle_param
       (send _vehicle_param :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/VehicleParam _vehicle_param
     (send _vehicle_param :deserialize buf ptr-) (incf ptr- (send _vehicle_param :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::VehicleConfig :md5sum-) "e501d7b1f42705539ce132ff4e593b0c")
(setf (get ros_interface::VehicleConfig :datatype-) "ros_interface/VehicleConfig")
(setf (get ros_interface::VehicleConfig :definition-)
      "Header   header     #  
VehicleParam   vehicle_param     # 车辆参数表

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
MSG: ros_interface/VehicleParam
string   brand     #  
int32   steer_mode     #  
float64   length     #  
float64   width     #  
float64   height     #  
float64   mass_fl     #  
float64   mass_fr     #  
float64   mass_rl     #  
float64   mass_rr     #  
float64   wheel_radius     #  
float64   wheelbase     #  
float64   front_edge_to_center     #  
float64   back_edge_to_center     #  
float64   lf     #  
float64   lr     #  
float64   cf     #  
float64   cr     #  
float64   steer_ratio     #  
float64   rolling_coefficient     #  
float64   air_density     #  
float64   air_damping_coefficient     #  
float64   max_front_steer_angle     #  
float64   min_front_steer_angle     #  
float64   max_rear_steer_angle     #  
float64   min_rear_steer_angle     #  
float64   speed_limit     #  
float64   max_brake_value     #  
float64   min_brake_value     #  
float64   max_accel_value     #  
float64   min_accel_value     #  
float64   speed_deadzone     #  
float64   standstill_acceleration     #  
float64   max_front_steer_angle_rate     #  
float64   max_rear_steer_angle_rate     #  
float64   max_abs_speed_when_stopped     #  
float64   max_abs_speed_when_stopped_duration     #  
float64   brake_value_when_gear_transitioning     #  
float64   accel_deadzone     #  
float64   brake_deadzone     #  
float64   acceleration_in_idle     #  
float64   deceleration_in_idle     #  
float64   max_acceleration_jerk     #  
float64   max_acceleration     #  
float64   max_deceleration     #  
float64   min_turning_radius     #  

")



(provide :ros_interface/VehicleConfig "e501d7b1f42705539ce132ff4e593b0c")


