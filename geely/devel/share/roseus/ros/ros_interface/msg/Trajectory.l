;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Trajectory)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Trajectory (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAJECTORY")
  (make-package "ROS_INTERFACE::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass ros_interface::Trajectory
  :super ros::object
  :slots (_name _trajectory_points ))

(defmethod ros_interface::Trajectory
  (:init
   (&key
    ((:name __name) "")
    ((:trajectory_points __trajectory_points) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _trajectory_points __trajectory_points)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
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
    ;; string _name
    4 (length _name)
    ;; ros_interface/TrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; ros_interface/TrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get ros_interface::Trajectory :md5sum-) "284ca400279fcd41012e2ec3b6b63ba5")
(setf (get ros_interface::Trajectory :datatype-) "ros_interface/Trajectory")
(setf (get ros_interface::Trajectory :definition-)
      "string   name     # 轨迹名称
TrajectoryPoint[] trajectory_points # 轨迹点

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



(provide :ros_interface/Trajectory "284ca400279fcd41012e2ec3b6b63ba5")


