;; Auto-generated. Do not edit!


(when (boundp 'ego_trajectory_udp::AdsUdpState)
  (if (not (find-package "EGO_TRAJECTORY_UDP"))
    (make-package "EGO_TRAJECTORY_UDP"))
  (shadow 'AdsUdpState (find-package "EGO_TRAJECTORY_UDP")))
(unless (find-package "EGO_TRAJECTORY_UDP::ADSUDPSTATE")
  (make-package "EGO_TRAJECTORY_UDP::ADSUDPSTATE"))

(in-package "ROS")
;;//! \htmlinclude AdsUdpState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ego_trajectory_udp::AdsUdpState
  :super ros::object
  :slots (_header _x_m _y_m _heading_deg _speed_mps _ax_mps2 _ay_mps2 _yaw_rate_dps ))

(defmethod ego_trajectory_udp::AdsUdpState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_m __x_m) 0.0)
    ((:y_m __y_m) 0.0)
    ((:heading_deg __heading_deg) 0.0)
    ((:speed_mps __speed_mps) 0.0)
    ((:ax_mps2 __ax_mps2) 0.0)
    ((:ay_mps2 __ay_mps2) 0.0)
    ((:yaw_rate_dps __yaw_rate_dps) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_m (float __x_m))
   (setq _y_m (float __y_m))
   (setq _heading_deg (float __heading_deg))
   (setq _speed_mps (float __speed_mps))
   (setq _ax_mps2 (float __ax_mps2))
   (setq _ay_mps2 (float __ay_mps2))
   (setq _yaw_rate_dps (float __yaw_rate_dps))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_m
   (&optional __x_m)
   (if __x_m (setq _x_m __x_m)) _x_m)
  (:y_m
   (&optional __y_m)
   (if __y_m (setq _y_m __y_m)) _y_m)
  (:heading_deg
   (&optional __heading_deg)
   (if __heading_deg (setq _heading_deg __heading_deg)) _heading_deg)
  (:speed_mps
   (&optional __speed_mps)
   (if __speed_mps (setq _speed_mps __speed_mps)) _speed_mps)
  (:ax_mps2
   (&optional __ax_mps2)
   (if __ax_mps2 (setq _ax_mps2 __ax_mps2)) _ax_mps2)
  (:ay_mps2
   (&optional __ay_mps2)
   (if __ay_mps2 (setq _ay_mps2 __ay_mps2)) _ay_mps2)
  (:yaw_rate_dps
   (&optional __yaw_rate_dps)
   (if __yaw_rate_dps (setq _yaw_rate_dps __yaw_rate_dps)) _yaw_rate_dps)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x_m
    8
    ;; float64 _y_m
    8
    ;; float64 _heading_deg
    8
    ;; float64 _speed_mps
    8
    ;; float64 _ax_mps2
    8
    ;; float64 _ay_mps2
    8
    ;; float64 _yaw_rate_dps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _x_m
       (sys::poke _x_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_m
       (sys::poke _y_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_deg
       (sys::poke _heading_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_mps
       (sys::poke _speed_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ax_mps2
       (sys::poke _ax_mps2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay_mps2
       (sys::poke _ay_mps2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate_dps
       (sys::poke _yaw_rate_dps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x_m
     (setq _x_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_m
     (setq _y_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_deg
     (setq _heading_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_mps
     (setq _speed_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ax_mps2
     (setq _ax_mps2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay_mps2
     (setq _ay_mps2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate_dps
     (setq _yaw_rate_dps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ego_trajectory_udp::AdsUdpState :md5sum-) "7ae101eb840016ed92e16f138aa1a06b")
(setf (get ego_trajectory_udp::AdsUdpState :datatype-) "ego_trajectory_udp/AdsUdpState")
(setf (get ego_trajectory_udp::AdsUdpState :definition-)
      "std_msgs/Header header

float64 x_m
float64 y_m
float64 heading_deg
float64 speed_mps

# ADS protocol ax/ay are longitudinal/lateral acceleration in the target body frame.
float64 ax_mps2
float64 ay_mps2
float64 yaw_rate_dps

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



(provide :ego_trajectory_udp/AdsUdpState "7ae101eb840016ed92e16f138aa1a06b")


