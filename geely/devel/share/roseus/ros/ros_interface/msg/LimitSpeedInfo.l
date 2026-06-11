;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LimitSpeedInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LimitSpeedInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LIMITSPEEDINFO")
  (make-package "ROS_INTERFACE::LIMITSPEEDINFO"))

(in-package "ROS")
;;//! \htmlinclude LimitSpeedInfo.msg.html


(defclass ros_interface::LimitSpeedInfo
  :super ros::object
  :slots (_limitspeed_valid_flag _limit_speed _limit_distance ))

(defmethod ros_interface::LimitSpeedInfo
  (:init
   (&key
    ((:limitspeed_valid_flag __limitspeed_valid_flag) 0)
    ((:limit_speed __limit_speed) 0.0)
    ((:limit_distance __limit_distance) 0.0)
    )
   (send-super :init)
   (setq _limitspeed_valid_flag (round __limitspeed_valid_flag))
   (setq _limit_speed (float __limit_speed))
   (setq _limit_distance (float __limit_distance))
   self)
  (:limitspeed_valid_flag
   (&optional __limitspeed_valid_flag)
   (if __limitspeed_valid_flag (setq _limitspeed_valid_flag __limitspeed_valid_flag)) _limitspeed_valid_flag)
  (:limit_speed
   (&optional __limit_speed)
   (if __limit_speed (setq _limit_speed __limit_speed)) _limit_speed)
  (:limit_distance
   (&optional __limit_distance)
   (if __limit_distance (setq _limit_distance __limit_distance)) _limit_distance)
  (:serialization-length
   ()
   (+
    ;; int32 _limitspeed_valid_flag
    4
    ;; float64 _limit_speed
    8
    ;; float64 _limit_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _limitspeed_valid_flag
       (write-long _limitspeed_valid_flag s)
     ;; float64 _limit_speed
       (sys::poke _limit_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _limit_distance
       (sys::poke _limit_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _limitspeed_valid_flag
     (setq _limitspeed_valid_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _limit_speed
     (setq _limit_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _limit_distance
     (setq _limit_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::LimitSpeedInfo :md5sum-) "60f4e9d159cc502ec9c6b727aad50d08")
(setf (get ros_interface::LimitSpeedInfo :datatype-) "ros_interface/LimitSpeedInfo")
(setf (get ros_interface::LimitSpeedInfo :definition-)
      "int32   limitspeed_valid_flag     # 限速有效性标志位
float64   limit_speed     # 限速大小（m/s）
float64   limit_distance     # 开始减速距离(m)

")



(provide :ros_interface/LimitSpeedInfo "60f4e9d159cc502ec9c6b727aad50d08")


