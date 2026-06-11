;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrajectoryInPrediction)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrajectoryInPrediction (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAJECTORYINPREDICTION")
  (make-package "ROS_INTERFACE::TRAJECTORYINPREDICTION"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryInPrediction.msg.html


(defclass ros_interface::TrajectoryInPrediction
  :super ros::object
  :slots (_probability _trajectory_points ))

(defmethod ros_interface::TrajectoryInPrediction
  (:init
   (&key
    ((:probability __probability) 0.0)
    ((:trajectory_points __trajectory_points) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _probability (float __probability))
   (setq _trajectory_points __trajectory_points)
   self)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:serialization-length
   ()
   (+
    ;; float64 _probability
    8
    ;; ros_interface/TrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/TrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _probability
     (setq _probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/TrajectoryPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::TrajectoryInPrediction :md5sum-) "73bf7bb3c93ff87ef340dc39e494cbe9")
(setf (get ros_interface::TrajectoryInPrediction :datatype-) "ros_interface/TrajectoryInPrediction")
(setf (get ros_interface::TrajectoryInPrediction :definition-)
      "float64   probability     # probability of this trajectory
TrajectoryPoint[] trajectory_points #  

================================================================================
MSG: ros_interface/TrajectoryPoint
PathPoint   path_point     # path point
float64   v     # linear velocity
float64   a     # linear acceleration
float64   relative_time     # relative time from beginning of the trajectory
float64   da     # longitudinal jerk
bool   is_steer_valid     # 转向是否有效
float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis
float64   rear_steer     # 后轮转角
int32   gear     # 档位
GaussianInfo   gaussian_info     # Gaussian probability information

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

================================================================================
MSG: ros_interface/GaussianInfo
float64   sigma_x     # 标准差x
float64   sigma_y     # 标准差y
float64   correlation     # 相关性
float64   area_probability     # Information of representative uncertainty area
float64   ellipse_a     # 椭圆长轴
float64   ellipse_b     # 椭圆短轴
float64   theta_a     # 椭圆朝向

")



(provide :ros_interface/TrajectoryInPrediction "73bf7bb3c93ff87ef340dc39e494cbe9")


