;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ObstaclePriority)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ObstaclePriority (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::OBSTACLEPRIORITY")
  (make-package "ROS_INTERFACE::OBSTACLEPRIORITY"))

(in-package "ROS")
;;//! \htmlinclude ObstaclePriority.msg.html


(defclass ros_interface::ObstaclePriority
  :super ros::object
  :slots (_priority ))

(defmethod ros_interface::ObstaclePriority
  (:init
   (&key
    ((:priority __priority) 0)
    )
   (send-super :init)
   (setq _priority (round __priority))
   self)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:serialization-length
   ()
   (+
    ;; int32 _priority
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _priority
       (write-long _priority s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _priority
     (setq _priority (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ObstaclePriority :md5sum-) "74910a325dfb2ab2393f7e42b1a1a337")
(setf (get ros_interface::ObstaclePriority :datatype-) "ros_interface/ObstaclePriority")
(setf (get ros_interface::ObstaclePriority :definition-)
      "int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;

")



(provide :ros_interface/ObstaclePriority "74910a325dfb2ab2393f7e42b1a1a337")


