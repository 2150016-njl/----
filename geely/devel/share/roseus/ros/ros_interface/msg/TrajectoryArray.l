;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrajectoryArray)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrajectoryArray (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAJECTORYARRAY")
  (make-package "ROS_INTERFACE::TRAJECTORYARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::TrajectoryArray
  :super ros::object
  :slots (_header _spline_s _qp_smooth _trajectory_list ))

(defmethod ros_interface::TrajectoryArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:spline_s __spline_s) (let (r) (dotimes (i 0) (push (instance ros_interface::Path :init) r)) r))
    ((:qp_smooth __qp_smooth) (let (r) (dotimes (i 0) (push (instance ros_interface::Path :init) r)) r))
    ((:trajectory_list __trajectory_list) (let (r) (dotimes (i 0) (push (instance ros_interface::Trajectory :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _spline_s __spline_s)
   (setq _qp_smooth __qp_smooth)
   (setq _trajectory_list __trajectory_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:spline_s
   (&rest __spline_s)
   (if (keywordp (car __spline_s))
       (send* _spline_s __spline_s)
     (progn
       (if __spline_s (setq _spline_s (car __spline_s)))
       _spline_s)))
  (:qp_smooth
   (&rest __qp_smooth)
   (if (keywordp (car __qp_smooth))
       (send* _qp_smooth __qp_smooth)
     (progn
       (if __qp_smooth (setq _qp_smooth (car __qp_smooth)))
       _qp_smooth)))
  (:trajectory_list
   (&rest __trajectory_list)
   (if (keywordp (car __trajectory_list))
       (send* _trajectory_list __trajectory_list)
     (progn
       (if __trajectory_list (setq _trajectory_list (car __trajectory_list)))
       _trajectory_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/Path[] _spline_s
    (apply #'+ (send-all _spline_s :serialization-length)) 4
    ;; ros_interface/Path[] _qp_smooth
    (apply #'+ (send-all _qp_smooth :serialization-length)) 4
    ;; ros_interface/Trajectory[] _trajectory_list
    (apply #'+ (send-all _trajectory_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/Path[] _spline_s
     (write-long (length _spline_s) s)
     (dolist (elem _spline_s)
       (send elem :serialize s)
       )
     ;; ros_interface/Path[] _qp_smooth
     (write-long (length _qp_smooth) s)
     (dolist (elem _qp_smooth)
       (send elem :serialize s)
       )
     ;; ros_interface/Trajectory[] _trajectory_list
     (write-long (length _trajectory_list) s)
     (dolist (elem _trajectory_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/Path[] _spline_s
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _spline_s (let (r) (dotimes (i n) (push (instance ros_interface::Path :init) r)) r))
     (dolist (elem- _spline_s)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Path[] _qp_smooth
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _qp_smooth (let (r) (dotimes (i n) (push (instance ros_interface::Path :init) r)) r))
     (dolist (elem- _qp_smooth)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Trajectory[] _trajectory_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_list (let (r) (dotimes (i n) (push (instance ros_interface::Trajectory :init) r)) r))
     (dolist (elem- _trajectory_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::TrajectoryArray :md5sum-) "f6fa2156da02dea66a565f8c06f54666")
(setf (get ros_interface::TrajectoryArray :datatype-) "ros_interface/TrajectoryArray")
(setf (get ros_interface::TrajectoryArray :definition-)
      "Header   header     #  
Path[] spline_s # 样条拟合曲线
Path[] qp_smooth # qp参考线拟合
Trajectory[] trajectory_list # 轨迹簇

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/Path
string   name     # 名称
PathPoint[] path_points # 路径点集

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
MSG: ros_interface/Trajectory
string   name     # 轨迹名称
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
MSG: ros_interface/GaussianInfo
float64   sigma_x     # 标准差x
float64   sigma_y     # 标准差y
float64   correlation     # 相关性
float64   area_probability     # Information of representative uncertainty area
float64   ellipse_a     # 椭圆长轴
float64   ellipse_b     # 椭圆短轴
float64   theta_a     # 椭圆朝向

")



(provide :ros_interface/TrajectoryArray "f6fa2156da02dea66a565f8c06f54666")


