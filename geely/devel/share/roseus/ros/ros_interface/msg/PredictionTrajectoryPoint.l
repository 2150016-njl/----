;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PredictionTrajectoryPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PredictionTrajectoryPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PREDICTIONTRAJECTORYPOINT")
  (make-package "ROS_INTERFACE::PREDICTIONTRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude PredictionTrajectoryPoint.msg.html


(defclass ros_interface::PredictionTrajectoryPoint
  :super ros::object
  :slots (_predition_path_point _timestamp ))

(defmethod ros_interface::PredictionTrajectoryPoint
  (:init
   (&key
    ((:predition_path_point __predition_path_point) (instance ros_interface::Point3D :init))
    ((:timestamp __timestamp) 0.0)
    )
   (send-super :init)
   (setq _predition_path_point __predition_path_point)
   (setq _timestamp (float __timestamp))
   self)
  (:predition_path_point
   (&rest __predition_path_point)
   (if (keywordp (car __predition_path_point))
       (send* _predition_path_point __predition_path_point)
     (progn
       (if __predition_path_point (setq _predition_path_point (car __predition_path_point)))
       _predition_path_point)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point3D _predition_path_point
    (send _predition_path_point :serialization-length)
    ;; float64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point3D _predition_path_point
       (send _predition_path_point :serialize s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point3D _predition_path_point
     (send _predition_path_point :deserialize buf ptr-) (incf ptr- (send _predition_path_point :serialization-length))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::PredictionTrajectoryPoint :md5sum-) "9430389d65624b2a0ee8a6a8be5b0ea2")
(setf (get ros_interface::PredictionTrajectoryPoint :datatype-) "ros_interface/PredictionTrajectoryPoint")
(setf (get ros_interface::PredictionTrajectoryPoint :definition-)
      "Point3D   predition_path_point     #  
float64   timestamp     #  

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/PredictionTrajectoryPoint "9430389d65624b2a0ee8a6a8be5b0ea2")


