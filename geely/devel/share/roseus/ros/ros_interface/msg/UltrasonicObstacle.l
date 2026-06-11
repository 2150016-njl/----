;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::UltrasonicObstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'UltrasonicObstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ULTRASONICOBSTACLE")
  (make-package "ROS_INTERFACE::ULTRASONICOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicObstacle.msg.html


(defclass ros_interface::UltrasonicObstacle
  :super ros::object
  :slots (_id _range ))

(defmethod ros_interface::UltrasonicObstacle
  (:init
   (&key
    ((:id __id) 0)
    ((:range __range) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _range (float __range))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64 _range
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _range
       (sys::poke _range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _range
     (setq _range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::UltrasonicObstacle :md5sum-) "8a071cc49f1c1d100af28eb6b14c404b")
(setf (get ros_interface::UltrasonicObstacle :datatype-) "ros_interface/UltrasonicObstacle")
(setf (get ros_interface::UltrasonicObstacle :definition-)
      "int32   id     # 障碍物id
float64   range     # 障碍物距离

")



(provide :ros_interface/UltrasonicObstacle "8a071cc49f1c1d100af28eb6b14c404b")


