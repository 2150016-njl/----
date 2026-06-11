;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ObstacleInteractiveTag)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ObstacleInteractiveTag (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::OBSTACLEINTERACTIVETAG")
  (make-package "ROS_INTERFACE::OBSTACLEINTERACTIVETAG"))

(in-package "ROS")
;;//! \htmlinclude ObstacleInteractiveTag.msg.html


(defclass ros_interface::ObstacleInteractiveTag
  :super ros::object
  :slots (_interactive_tag ))

(defmethod ros_interface::ObstacleInteractiveTag
  (:init
   (&key
    ((:interactive_tag __interactive_tag) 0)
    )
   (send-super :init)
   (setq _interactive_tag (round __interactive_tag))
   self)
  (:interactive_tag
   (&optional __interactive_tag)
   (if __interactive_tag (setq _interactive_tag __interactive_tag)) _interactive_tag)
  (:serialization-length
   ()
   (+
    ;; int32 _interactive_tag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _interactive_tag
       (write-long _interactive_tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _interactive_tag
     (setq _interactive_tag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::ObstacleInteractiveTag :md5sum-) "c2e9ac94a7bb1e05f8d6dfc48cdf1b73")
(setf (get ros_interface::ObstacleInteractiveTag :datatype-) "ros_interface/ObstacleInteractiveTag")
(setf (get ros_interface::ObstacleInteractiveTag :definition-)
      "int32   interactive_tag     #  

")



(provide :ros_interface/ObstacleInteractiveTag "c2e9ac94a7bb1e05f8d6dfc48cdf1b73")


