;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrajectoryPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrajectoryPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAJECTORYPOINT")
  (make-package "ROS_INTERFACE::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html


(defclass ros_interface::TrajectoryPoint
  :super ros::object
  :slots (_path_point _v _a _relative_time _da _is_steer_valid _front_steer _rear_steer _gear _gaussian_info ))

(defmethod ros_interface::TrajectoryPoint
  (:init
   (&key
    ((:path_point __path_point) (instance ros_interface::PathPoint :init))
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    ((:relative_time __relative_time) 0.0)
    ((:da __da) 0.0)
    ((:is_steer_valid __is_steer_valid) nil)
    ((:front_steer __front_steer) 0.0)
    ((:rear_steer __rear_steer) 0.0)
    ((:gear __gear) 0)
    ((:gaussian_info __gaussian_info) (instance ros_interface::GaussianInfo :init))
    )
   (send-super :init)
   (setq _path_point __path_point)
   (setq _v (float __v))
   (setq _a (float __a))
   (setq _relative_time (float __relative_time))
   (setq _da (float __da))
   (setq _is_steer_valid __is_steer_valid)
   (setq _front_steer (float __front_steer))
   (setq _rear_steer (float __rear_steer))
   (setq _gear (round __gear))
   (setq _gaussian_info __gaussian_info)
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
  (:da
   (&optional __da)
   (if __da (setq _da __da)) _da)
  (:is_steer_valid
   (&optional __is_steer_valid)
   (if __is_steer_valid (setq _is_steer_valid __is_steer_valid)) _is_steer_valid)
  (:front_steer
   (&optional __front_steer)
   (if __front_steer (setq _front_steer __front_steer)) _front_steer)
  (:rear_steer
   (&optional __rear_steer)
   (if __rear_steer (setq _rear_steer __rear_steer)) _rear_steer)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:gaussian_info
   (&rest __gaussian_info)
   (if (keywordp (car __gaussian_info))
       (send* _gaussian_info __gaussian_info)
     (progn
       (if __gaussian_info (setq _gaussian_info (car __gaussian_info)))
       _gaussian_info)))
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
    ;; float64 _da
    8
    ;; bool _is_steer_valid
    1
    ;; float64 _front_steer
    8
    ;; float64 _rear_steer
    8
    ;; int32 _gear
    4
    ;; ros_interface/GaussianInfo _gaussian_info
    (send _gaussian_info :serialization-length)
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
     ;; float64 _da
       (sys::poke _da (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_steer_valid
       (if _is_steer_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _front_steer
       (sys::poke _front_steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer
       (sys::poke _rear_steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _gear
       (write-long _gear s)
     ;; ros_interface/GaussianInfo _gaussian_info
       (send _gaussian_info :serialize s)
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
   ;; float64 _da
     (setq _da (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_steer_valid
     (setq _is_steer_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _front_steer
     (setq _front_steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer
     (setq _rear_steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/GaussianInfo _gaussian_info
     (send _gaussian_info :deserialize buf ptr-) (incf ptr- (send _gaussian_info :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::TrajectoryPoint :md5sum-) "83c41220037674c2962fa7a8fe3a16d3")
(setf (get ros_interface::TrajectoryPoint :datatype-) "ros_interface/TrajectoryPoint")
(setf (get ros_interface::TrajectoryPoint :definition-)
      "PathPoint   path_point     # path point
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



(provide :ros_interface/TrajectoryPoint "83c41220037674c2962fa7a8fe3a16d3")


