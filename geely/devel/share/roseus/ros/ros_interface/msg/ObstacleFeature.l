;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ObstacleFeature)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ObstacleFeature (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::OBSTACLEFEATURE")
  (make-package "ROS_INTERFACE::OBSTACLEFEATURE"))

(in-package "ROS")
;;//! \htmlinclude ObstacleFeature.msg.html


(defclass ros_interface::ObstacleFeature
  :super ros::object
  :slots (_obstacle_id _polygon_point _position _front_position _velocity _raw_velocity _acceleration _velocity_heading _speed _acc _theta _length _width _height _tracking_time _timestamp _t_position _t_velocity _t_velocity_heading _t_speed _t_acceleration _t_acc _is_still _type _label_update_time_delta _priority _is_near_junction _future_trajectory_points _short_term_predicted_trajectory_points _predicted_trajectory _adc_trajectory_point ))

(defmethod ros_interface::ObstacleFeature
  (:init
   (&key
    ((:obstacle_id __obstacle_id) 0)
    ((:polygon_point __polygon_point) (instance ros_interface::Point3D :init))
    ((:position __position) (instance ros_interface::Point3D :init))
    ((:front_position __front_position) (instance ros_interface::Point3D :init))
    ((:velocity __velocity) (instance ros_interface::Point3D :init))
    ((:raw_velocity __raw_velocity) (instance ros_interface::Point3D :init))
    ((:acceleration __acceleration) (instance ros_interface::Point3D :init))
    ((:velocity_heading __velocity_heading) 0.0)
    ((:speed __speed) 0.0)
    ((:acc __acc) 0.0)
    ((:theta __theta) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:tracking_time __tracking_time) 0.0)
    ((:timestamp __timestamp) 0.0)
    ((:t_position __t_position) (instance ros_interface::Point3D :init))
    ((:t_velocity __t_velocity) (instance ros_interface::Point3D :init))
    ((:t_velocity_heading __t_velocity_heading) 0.0)
    ((:t_speed __t_speed) 0.0)
    ((:t_acceleration __t_acceleration) (instance ros_interface::Point3D :init))
    ((:t_acc __t_acc) 0.0)
    ((:is_still __is_still) nil)
    ((:type __type) 0)
    ((:label_update_time_delta __label_update_time_delta) 0.0)
    ((:priority __priority) (instance ros_interface::ObstaclePriority :init))
    ((:is_near_junction __is_near_junction) nil)
    ((:future_trajectory_points __future_trajectory_points) (let (r) (dotimes (i 0) (push (instance ros_interface::PredictionTrajectoryPoint :init) r)) r))
    ((:short_term_predicted_trajectory_points __short_term_predicted_trajectory_points) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPointInPrediction :init) r)) r))
    ((:predicted_trajectory __predicted_trajectory) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryInPrediction :init) r)) r))
    ((:adc_trajectory_point __adc_trajectory_point) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPointInPrediction :init) r)) r))
    )
   (send-super :init)
   (setq _obstacle_id (round __obstacle_id))
   (setq _polygon_point __polygon_point)
   (setq _position __position)
   (setq _front_position __front_position)
   (setq _velocity __velocity)
   (setq _raw_velocity __raw_velocity)
   (setq _acceleration __acceleration)
   (setq _velocity_heading (float __velocity_heading))
   (setq _speed (float __speed))
   (setq _acc (float __acc))
   (setq _theta (float __theta))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _tracking_time (float __tracking_time))
   (setq _timestamp (float __timestamp))
   (setq _t_position __t_position)
   (setq _t_velocity __t_velocity)
   (setq _t_velocity_heading (float __t_velocity_heading))
   (setq _t_speed (float __t_speed))
   (setq _t_acceleration __t_acceleration)
   (setq _t_acc (float __t_acc))
   (setq _is_still __is_still)
   (setq _type (round __type))
   (setq _label_update_time_delta (float __label_update_time_delta))
   (setq _priority __priority)
   (setq _is_near_junction __is_near_junction)
   (setq _future_trajectory_points __future_trajectory_points)
   (setq _short_term_predicted_trajectory_points __short_term_predicted_trajectory_points)
   (setq _predicted_trajectory __predicted_trajectory)
   (setq _adc_trajectory_point __adc_trajectory_point)
   self)
  (:obstacle_id
   (&optional __obstacle_id)
   (if __obstacle_id (setq _obstacle_id __obstacle_id)) _obstacle_id)
  (:polygon_point
   (&rest __polygon_point)
   (if (keywordp (car __polygon_point))
       (send* _polygon_point __polygon_point)
     (progn
       (if __polygon_point (setq _polygon_point (car __polygon_point)))
       _polygon_point)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:front_position
   (&rest __front_position)
   (if (keywordp (car __front_position))
       (send* _front_position __front_position)
     (progn
       (if __front_position (setq _front_position (car __front_position)))
       _front_position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:raw_velocity
   (&rest __raw_velocity)
   (if (keywordp (car __raw_velocity))
       (send* _raw_velocity __raw_velocity)
     (progn
       (if __raw_velocity (setq _raw_velocity (car __raw_velocity)))
       _raw_velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:velocity_heading
   (&optional __velocity_heading)
   (if __velocity_heading (setq _velocity_heading __velocity_heading)) _velocity_heading)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:t_position
   (&rest __t_position)
   (if (keywordp (car __t_position))
       (send* _t_position __t_position)
     (progn
       (if __t_position (setq _t_position (car __t_position)))
       _t_position)))
  (:t_velocity
   (&rest __t_velocity)
   (if (keywordp (car __t_velocity))
       (send* _t_velocity __t_velocity)
     (progn
       (if __t_velocity (setq _t_velocity (car __t_velocity)))
       _t_velocity)))
  (:t_velocity_heading
   (&optional __t_velocity_heading)
   (if __t_velocity_heading (setq _t_velocity_heading __t_velocity_heading)) _t_velocity_heading)
  (:t_speed
   (&optional __t_speed)
   (if __t_speed (setq _t_speed __t_speed)) _t_speed)
  (:t_acceleration
   (&rest __t_acceleration)
   (if (keywordp (car __t_acceleration))
       (send* _t_acceleration __t_acceleration)
     (progn
       (if __t_acceleration (setq _t_acceleration (car __t_acceleration)))
       _t_acceleration)))
  (:t_acc
   (&optional __t_acc)
   (if __t_acc (setq _t_acc __t_acc)) _t_acc)
  (:is_still
   (&optional __is_still)
   (if __is_still (setq _is_still __is_still)) _is_still)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:label_update_time_delta
   (&optional __label_update_time_delta)
   (if __label_update_time_delta (setq _label_update_time_delta __label_update_time_delta)) _label_update_time_delta)
  (:priority
   (&rest __priority)
   (if (keywordp (car __priority))
       (send* _priority __priority)
     (progn
       (if __priority (setq _priority (car __priority)))
       _priority)))
  (:is_near_junction
   (&optional __is_near_junction)
   (if __is_near_junction (setq _is_near_junction __is_near_junction)) _is_near_junction)
  (:future_trajectory_points
   (&rest __future_trajectory_points)
   (if (keywordp (car __future_trajectory_points))
       (send* _future_trajectory_points __future_trajectory_points)
     (progn
       (if __future_trajectory_points (setq _future_trajectory_points (car __future_trajectory_points)))
       _future_trajectory_points)))
  (:short_term_predicted_trajectory_points
   (&rest __short_term_predicted_trajectory_points)
   (if (keywordp (car __short_term_predicted_trajectory_points))
       (send* _short_term_predicted_trajectory_points __short_term_predicted_trajectory_points)
     (progn
       (if __short_term_predicted_trajectory_points (setq _short_term_predicted_trajectory_points (car __short_term_predicted_trajectory_points)))
       _short_term_predicted_trajectory_points)))
  (:predicted_trajectory
   (&rest __predicted_trajectory)
   (if (keywordp (car __predicted_trajectory))
       (send* _predicted_trajectory __predicted_trajectory)
     (progn
       (if __predicted_trajectory (setq _predicted_trajectory (car __predicted_trajectory)))
       _predicted_trajectory)))
  (:adc_trajectory_point
   (&rest __adc_trajectory_point)
   (if (keywordp (car __adc_trajectory_point))
       (send* _adc_trajectory_point __adc_trajectory_point)
     (progn
       (if __adc_trajectory_point (setq _adc_trajectory_point (car __adc_trajectory_point)))
       _adc_trajectory_point)))
  (:serialization-length
   ()
   (+
    ;; int32 _obstacle_id
    4
    ;; ros_interface/Point3D _polygon_point
    (send _polygon_point :serialization-length)
    ;; ros_interface/Point3D _position
    (send _position :serialization-length)
    ;; ros_interface/Point3D _front_position
    (send _front_position :serialization-length)
    ;; ros_interface/Point3D _velocity
    (send _velocity :serialization-length)
    ;; ros_interface/Point3D _raw_velocity
    (send _raw_velocity :serialization-length)
    ;; ros_interface/Point3D _acceleration
    (send _acceleration :serialization-length)
    ;; float64 _velocity_heading
    8
    ;; float64 _speed
    8
    ;; float64 _acc
    8
    ;; float64 _theta
    8
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; float64 _tracking_time
    8
    ;; float64 _timestamp
    8
    ;; ros_interface/Point3D _t_position
    (send _t_position :serialization-length)
    ;; ros_interface/Point3D _t_velocity
    (send _t_velocity :serialization-length)
    ;; float64 _t_velocity_heading
    8
    ;; float64 _t_speed
    8
    ;; ros_interface/Point3D _t_acceleration
    (send _t_acceleration :serialization-length)
    ;; float64 _t_acc
    8
    ;; bool _is_still
    1
    ;; int32 _type
    4
    ;; float64 _label_update_time_delta
    8
    ;; ros_interface/ObstaclePriority _priority
    (send _priority :serialization-length)
    ;; bool _is_near_junction
    1
    ;; ros_interface/PredictionTrajectoryPoint[] _future_trajectory_points
    (apply #'+ (send-all _future_trajectory_points :serialization-length)) 4
    ;; ros_interface/TrajectoryPointInPrediction[] _short_term_predicted_trajectory_points
    (apply #'+ (send-all _short_term_predicted_trajectory_points :serialization-length)) 4
    ;; ros_interface/TrajectoryInPrediction[] _predicted_trajectory
    (apply #'+ (send-all _predicted_trajectory :serialization-length)) 4
    ;; ros_interface/TrajectoryPointInPrediction[] _adc_trajectory_point
    (apply #'+ (send-all _adc_trajectory_point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _obstacle_id
       (write-long _obstacle_id s)
     ;; ros_interface/Point3D _polygon_point
       (send _polygon_point :serialize s)
     ;; ros_interface/Point3D _position
       (send _position :serialize s)
     ;; ros_interface/Point3D _front_position
       (send _front_position :serialize s)
     ;; ros_interface/Point3D _velocity
       (send _velocity :serialize s)
     ;; ros_interface/Point3D _raw_velocity
       (send _raw_velocity :serialize s)
     ;; ros_interface/Point3D _acceleration
       (send _acceleration :serialize s)
     ;; float64 _velocity_heading
       (sys::poke _velocity_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _t_position
       (send _t_position :serialize s)
     ;; ros_interface/Point3D _t_velocity
       (send _t_velocity :serialize s)
     ;; float64 _t_velocity_heading
       (sys::poke _t_velocity_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _t_speed
       (sys::poke _t_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _t_acceleration
       (send _t_acceleration :serialize s)
     ;; float64 _t_acc
       (sys::poke _t_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_still
       (if _is_still (write-byte -1 s) (write-byte 0 s))
     ;; int32 _type
       (write-long _type s)
     ;; float64 _label_update_time_delta
       (sys::poke _label_update_time_delta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/ObstaclePriority _priority
       (send _priority :serialize s)
     ;; bool _is_near_junction
       (if _is_near_junction (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/PredictionTrajectoryPoint[] _future_trajectory_points
     (write-long (length _future_trajectory_points) s)
     (dolist (elem _future_trajectory_points)
       (send elem :serialize s)
       )
     ;; ros_interface/TrajectoryPointInPrediction[] _short_term_predicted_trajectory_points
     (write-long (length _short_term_predicted_trajectory_points) s)
     (dolist (elem _short_term_predicted_trajectory_points)
       (send elem :serialize s)
       )
     ;; ros_interface/TrajectoryInPrediction[] _predicted_trajectory
     (write-long (length _predicted_trajectory) s)
     (dolist (elem _predicted_trajectory)
       (send elem :serialize s)
       )
     ;; ros_interface/TrajectoryPointInPrediction[] _adc_trajectory_point
     (write-long (length _adc_trajectory_point) s)
     (dolist (elem _adc_trajectory_point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _obstacle_id
     (setq _obstacle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D _polygon_point
     (send _polygon_point :deserialize buf ptr-) (incf ptr- (send _polygon_point :serialization-length))
   ;; ros_interface/Point3D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ros_interface/Point3D _front_position
     (send _front_position :deserialize buf ptr-) (incf ptr- (send _front_position :serialization-length))
   ;; ros_interface/Point3D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; ros_interface/Point3D _raw_velocity
     (send _raw_velocity :deserialize buf ptr-) (incf ptr- (send _raw_velocity :serialization-length))
   ;; ros_interface/Point3D _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; float64 _velocity_heading
     (setq _velocity_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _t_position
     (send _t_position :deserialize buf ptr-) (incf ptr- (send _t_position :serialization-length))
   ;; ros_interface/Point3D _t_velocity
     (send _t_velocity :deserialize buf ptr-) (incf ptr- (send _t_velocity :serialization-length))
   ;; float64 _t_velocity_heading
     (setq _t_velocity_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _t_speed
     (setq _t_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _t_acceleration
     (send _t_acceleration :deserialize buf ptr-) (incf ptr- (send _t_acceleration :serialization-length))
   ;; float64 _t_acc
     (setq _t_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_still
     (setq _is_still (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _label_update_time_delta
     (setq _label_update_time_delta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/ObstaclePriority _priority
     (send _priority :deserialize buf ptr-) (incf ptr- (send _priority :serialization-length))
   ;; bool _is_near_junction
     (setq _is_near_junction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/PredictionTrajectoryPoint[] _future_trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _future_trajectory_points (let (r) (dotimes (i n) (push (instance ros_interface::PredictionTrajectoryPoint :init) r)) r))
     (dolist (elem- _future_trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrajectoryPointInPrediction[] _short_term_predicted_trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _short_term_predicted_trajectory_points (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPointInPrediction :init) r)) r))
     (dolist (elem- _short_term_predicted_trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrajectoryInPrediction[] _predicted_trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predicted_trajectory (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryInPrediction :init) r)) r))
     (dolist (elem- _predicted_trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrajectoryPointInPrediction[] _adc_trajectory_point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _adc_trajectory_point (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPointInPrediction :init) r)) r))
     (dolist (elem- _adc_trajectory_point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::ObstacleFeature :md5sum-) "f5db825b7f5c05c840b2b7624a450755")
(setf (get ros_interface::ObstacleFeature :datatype-) "ros_interface/ObstacleFeature")
(setf (get ros_interface::ObstacleFeature :definition-)
      "int32   obstacle_id     # Obstacle ID
Point3D   polygon_point     # 障碍物边框点列
Point3D   position     #  
Point3D   front_position     #  
Point3D   velocity     #  
Point3D   raw_velocity     # from perception
Point3D   acceleration     #  
float64   velocity_heading     #  
float64   speed     #  
float64   acc     #  
float64   theta     #  
float64   length     #  
float64   width     #  
float64   height     #  
float64   tracking_time     #  
float64   timestamp     #  
Point3D   t_position     #  
Point3D   t_velocity     # [deprecated = true]
float64   t_velocity_heading     # [deprecated = true]
float64   t_speed     # [deprecated = true]
Point3D   t_acceleration     # [deprecated = true]
float64   t_acc     # [deprecated = true]
bool   is_still     # [deprecated = false]
int32   type     # 感知到的障碍物类型         0-UNKNOWN, 1-UNKNOWN_MOVABLE, 2-UNKNOWN_UNMOVABLE, 3-PEDESTRIAN, 4-BICYCLE,     5-VEHICLE
float64   label_update_time_delta     #  
ObstaclePriority   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;
bool   is_near_junction     #  
PredictionTrajectoryPoint[] future_trajectory_points # Obstacle ground-truth labels:
TrajectoryPointInPrediction[] short_term_predicted_trajectory_points # Obstacle short-term predicted trajectory points
TrajectoryInPrediction[] predicted_trajectory # Obstacle predicted trajectories
TrajectoryPointInPrediction[] adc_trajectory_point # ADC trajectory at the same frame

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/ObstaclePriority
int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;

================================================================================
MSG: ros_interface/PredictionTrajectoryPoint
Point3D   predition_path_point     #  
float64   timestamp     #  

================================================================================
MSG: ros_interface/TrajectoryPointInPrediction
PathPoint   path_point     # path point
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

================================================================================
MSG: ros_interface/TrajectoryInPrediction
float64   probability     # probability of this trajectory
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
MSG: ros_interface/GaussianInfo
float64   sigma_x     # 标准差x
float64   sigma_y     # 标准差y
float64   correlation     # 相关性
float64   area_probability     # Information of representative uncertainty area
float64   ellipse_a     # 椭圆长轴
float64   ellipse_b     # 椭圆短轴
float64   theta_a     # 椭圆朝向

")



(provide :ros_interface/ObstacleFeature "f5db825b7f5c05c840b2b7624a450755")


