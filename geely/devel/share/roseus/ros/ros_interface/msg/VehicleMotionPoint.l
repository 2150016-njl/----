;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::VehicleMotionPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'VehicleMotionPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::VEHICLEMOTIONPOINT")
  (make-package "ROS_INTERFACE::VEHICLEMOTIONPOINT"))

(in-package "ROS")
;;//! \htmlinclude VehicleMotionPoint.msg.html


(defclass ros_interface::VehicleMotionPoint
  :super ros::object
  :slots (_trajectory_point _steer ))

(defmethod ros_interface::VehicleMotionPoint
  (:init
   (&key
    ((:trajectory_point __trajectory_point) (instance ros_interface::TrajectoryPoint :init))
    ((:steer __steer) 0.0)
    )
   (send-super :init)
   (setq _trajectory_point __trajectory_point)
   (setq _steer (float __steer))
   self)
  (:trajectory_point
   (&rest __trajectory_point)
   (if (keywordp (car __trajectory_point))
       (send* _trajectory_point __trajectory_point)
     (progn
       (if __trajectory_point (setq _trajectory_point (car __trajectory_point)))
       _trajectory_point)))
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:serialization-length
   ()
   (+
    ;; ros_interface/TrajectoryPoint _trajectory_point
    (send _trajectory_point :serialization-length)
    ;; float64 _steer
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/TrajectoryPoint _trajectory_point
       (send _trajectory_point :serialize s)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/TrajectoryPoint _trajectory_point
     (send _trajectory_point :deserialize buf ptr-) (incf ptr- (send _trajectory_point :serialization-length))
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::VehicleMotionPoint :md5sum-) "3bd1f282bdb71dadf0b9039f3bb5e35f")
(setf (get ros_interface::VehicleMotionPoint :datatype-) "ros_interface/VehicleMotionPoint")
(setf (get ros_interface::VehicleMotionPoint :definition-)
      "TrajectoryPoint   trajectory_point     # trajectory point
float64   steer     # The angle between vehicle front wheel and vehicle longitudinal axis

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



(provide :ros_interface/VehicleMotionPoint "3bd1f282bdb71dadf0b9039f3bb5e35f")


