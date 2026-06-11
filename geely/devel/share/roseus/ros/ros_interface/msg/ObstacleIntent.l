;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ObstacleIntent)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ObstacleIntent (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::OBSTACLEINTENT")
  (make-package "ROS_INTERFACE::OBSTACLEINTENT"))

(in-package "ROS")
;;//! \htmlinclude ObstacleIntent.msg.html


(defclass ros_interface::ObstacleIntent
  :super ros::object
  :slots (_type ))

(defmethod ros_interface::ObstacleIntent
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ObstacleIntent :md5sum-) "bda37decd5e3814bcc042f341d2e60a1")
(setf (get ros_interface::ObstacleIntent :datatype-) "ros_interface/ObstacleIntent")
(setf (get ros_interface::ObstacleIntent :definition-)
      "int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, 

")



(provide :ros_interface/ObstacleIntent "bda37decd5e3814bcc042f341d2e60a1")


