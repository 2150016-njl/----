;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMITrajectoryPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMITrajectoryPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMITRAJECTORYPOINT")
  (make-package "ROS_INTERFACE::HMITRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude HMITrajectoryPoint.msg.html


(defclass ros_interface::HMITrajectoryPoint
  :super ros::object
  :slots (_point _v ))

(defmethod ros_interface::HMITrajectoryPoint
  (:init
   (&key
    ((:point __point) (instance ros_interface::Point3D :init))
    ((:v __v) 0.0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _v (float __v))
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point3D _point
    (send _point :serialization-length)
    ;; float64 _v
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point3D _point
       (send _point :serialize s)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point3D _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::HMITrajectoryPoint :md5sum-) "ee1cc429c82f6cef953c1a1066bd1db2")
(setf (get ros_interface::HMITrajectoryPoint :datatype-) "ros_interface/HMITrajectoryPoint")
(setf (get ros_interface::HMITrajectoryPoint :definition-)
      "Point3D   point     #  
float64   v     #  

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/HMITrajectoryPoint "ee1cc429c82f6cef953c1a1066bd1db2")


