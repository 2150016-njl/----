;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrajectoryPointInPrediction)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrajectoryPointInPrediction (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAJECTORYPOINTINPREDICTION")
  (make-package "ROS_INTERFACE::TRAJECTORYPOINTINPREDICTION"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPointInPrediction.msg.html


(defclass ros_interface::TrajectoryPointInPrediction
  :super ros::object
  :slots (_path_point _v _a _relative_time ))

(defmethod ros_interface::TrajectoryPointInPrediction
  (:init
   (&key
    ((:path_point __path_point) (instance ros_interface::PathPoint :init))
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    ((:relative_time __relative_time) 0.0)
    )
   (send-super :init)
   (setq _path_point __path_point)
   (setq _v (float __v))
   (setq _a (float __a))
   (setq _relative_time (float __relative_time))
   self)
  (:path_point
   (&rest __path_point)
   (if (keywordp (car __path_point))
       (send* _path_point __path_point)
     (progn
       (if __path_point (setq _path_point (car __path_point)))
       _path_point)))
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:relative_time
   (&optional __relative_time)
   (if __relative_time (setq _relative_time __relative_time)) _relative_time)
  (:serialization-length
   ()
   (+
    ;; ros_interface/PathPoint _path_point
    (send _path_point :serialization-length)
    ;; float64 _v
    8
    ;; float64 _a
    8
    ;; float64 _relative_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/PathPoint _path_point
       (send _path_point :serialize s)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_time
       (sys::poke _relative_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/PathPoint _path_point
     (send _path_point :deserialize buf ptr-) (incf ptr- (send _path_point :serialization-length))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_time
     (setq _relative_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::TrajectoryPointInPrediction :md5sum-) "05fd9f6cc86d21615eadb92a27ce577c")
(setf (get ros_interface::TrajectoryPointInPrediction :datatype-) "ros_interface/TrajectoryPointInPrediction")
(setf (get ros_interface::TrajectoryPointInPrediction :definition-)
      "PathPoint   path_point     # path point
float64   v     # linear velocity
float64   a     # linear acceleration
float64   relative_time     # relative time from beginning of the trajectory

================================================================================
MSG: ros_interface/PathPoint
float64   x     # coordinates x
float64   y     # coordinates y
float64   z     # coordinates z
float64   theta     # direction on the x-y plane
float64   kappa     # curvature on the x-y planning
float64   s     # accumulated distance from beginning of the path
float64   dkappa     # derivative of kappa w.r.t s.
float64   ddkappa     # derivative of derivative of kappa w.r.t s.
float64   lane_id     # The lane ID where the path point is on
float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline
float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline

")



(provide :ros_interface/TrajectoryPointInPrediction "05fd9f6cc86d21615eadb92a27ce577c")


