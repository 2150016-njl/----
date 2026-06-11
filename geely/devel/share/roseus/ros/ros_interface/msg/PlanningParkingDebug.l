;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PlanningParkingDebug)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PlanningParkingDebug (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PLANNINGPARKINGDEBUG")
  (make-package "ROS_INTERFACE::PLANNINGPARKINGDEBUG"))

(in-package "ROS")
;;//! \htmlinclude PlanningParkingDebug.msg.html


(defclass ros_interface::PlanningParkingDebug
  :super ros::object
  :slots (_vehicle_preiew_polygon _obstacles_polygon _path_points _lat_error _lon_error _yaw_error _obstacles_vec _warm_start_traj _smoothed_traj_stage1 _smoothed_traj_stage2 _reference_line _trajectory_array _optimal_coarse_trajectory _optimal_smooth_trajectory _hybrid_a_star_map_time _hybrid_a_star_heuristic_time _hybrid_a_star_rs_time _hybrid_a_star_total_time _ias_collision_avoidance_time _ias_path_smooth_time _ias_speed_smooth_time _ias_total_time _samping_trajectory_time _is_replan _replan_reason _replan_time _replan_num _optimizer_thread_counter _replan_by_context_update_counter _replan_by_large_error_counter _parking_type _moves_counter _remain_distance _distance_to_leader_obj _state ))

(defmethod ros_interface::PlanningParkingDebug
  (:init
   (&key
    ((:vehicle_preiew_polygon __vehicle_preiew_polygon) (let (r) (dotimes (i 0) (push (instance ros_interface::Polygon2D :init) r)) r))
    ((:obstacles_polygon __obstacles_polygon) (let (r) (dotimes (i 0) (push (instance ros_interface::Polygon2D :init) r)) r))
    ((:path_points __path_points) (let (r) (dotimes (i 0) (push (instance ros_interface::PathPoint :init) r)) r))
    ((:lat_error __lat_error) 0.0)
    ((:lon_error __lon_error) 0.0)
    ((:yaw_error __yaw_error) 0.0)
    ((:obstacles_vec __obstacles_vec) (let (r) (dotimes (i 0) (push (instance ros_interface::Point2dList :init) r)) r))
    ((:warm_start_traj __warm_start_traj) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
    ((:smoothed_traj_stage1 __smoothed_traj_stage1) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
    ((:smoothed_traj_stage2 __smoothed_traj_stage2) (let (r) (dotimes (i 0) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
    ((:reference_line __reference_line) (instance ros_interface::Trajectory :init))
    ((:trajectory_array __trajectory_array) (let (r) (dotimes (i 0) (push (instance ros_interface::Trajectory :init) r)) r))
    ((:optimal_coarse_trajectory __optimal_coarse_trajectory) (instance ros_interface::Trajectory :init))
    ((:optimal_smooth_trajectory __optimal_smooth_trajectory) (instance ros_interface::Trajectory :init))
    ((:hybrid_a_star_map_time __hybrid_a_star_map_time) 0.0)
    ((:hybrid_a_star_heuristic_time __hybrid_a_star_heuristic_time) 0.0)
    ((:hybrid_a_star_rs_time __hybrid_a_star_rs_time) 0.0)
    ((:hybrid_a_star_total_time __hybrid_a_star_total_time) 0.0)
    ((:ias_collision_avoidance_time __ias_collision_avoidance_time) 0.0)
    ((:ias_path_smooth_time __ias_path_smooth_time) 0.0)
    ((:ias_speed_smooth_time __ias_speed_smooth_time) 0.0)
    ((:ias_total_time __ias_total_time) 0.0)
    ((:samping_trajectory_time __samping_trajectory_time) 0.0)
    ((:is_replan __is_replan) nil)
    ((:replan_reason __replan_reason) "")
    ((:replan_time __replan_time) 0.0)
    ((:replan_num __replan_num) 0)
    ((:optimizer_thread_counter __optimizer_thread_counter) 0)
    ((:replan_by_context_update_counter __replan_by_context_update_counter) 0)
    ((:replan_by_large_error_counter __replan_by_large_error_counter) 0)
    ((:parking_type __parking_type) 0)
    ((:moves_counter __moves_counter) 0)
    ((:remain_distance __remain_distance) 0.0)
    ((:distance_to_leader_obj __distance_to_leader_obj) 0.0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _vehicle_preiew_polygon __vehicle_preiew_polygon)
   (setq _obstacles_polygon __obstacles_polygon)
   (setq _path_points __path_points)
   (setq _lat_error (float __lat_error))
   (setq _lon_error (float __lon_error))
   (setq _yaw_error (float __yaw_error))
   (setq _obstacles_vec __obstacles_vec)
   (setq _warm_start_traj __warm_start_traj)
   (setq _smoothed_traj_stage1 __smoothed_traj_stage1)
   (setq _smoothed_traj_stage2 __smoothed_traj_stage2)
   (setq _reference_line __reference_line)
   (setq _trajectory_array __trajectory_array)
   (setq _optimal_coarse_trajectory __optimal_coarse_trajectory)
   (setq _optimal_smooth_trajectory __optimal_smooth_trajectory)
   (setq _hybrid_a_star_map_time (float __hybrid_a_star_map_time))
   (setq _hybrid_a_star_heuristic_time (float __hybrid_a_star_heuristic_time))
   (setq _hybrid_a_star_rs_time (float __hybrid_a_star_rs_time))
   (setq _hybrid_a_star_total_time (float __hybrid_a_star_total_time))
   (setq _ias_collision_avoidance_time (float __ias_collision_avoidance_time))
   (setq _ias_path_smooth_time (float __ias_path_smooth_time))
   (setq _ias_speed_smooth_time (float __ias_speed_smooth_time))
   (setq _ias_total_time (float __ias_total_time))
   (setq _samping_trajectory_time (float __samping_trajectory_time))
   (setq _is_replan __is_replan)
   (setq _replan_reason (string __replan_reason))
   (setq _replan_time (float __replan_time))
   (setq _replan_num (round __replan_num))
   (setq _optimizer_thread_counter (round __optimizer_thread_counter))
   (setq _replan_by_context_update_counter (round __replan_by_context_update_counter))
   (setq _replan_by_large_error_counter (round __replan_by_large_error_counter))
   (setq _parking_type (round __parking_type))
   (setq _moves_counter (round __moves_counter))
   (setq _remain_distance (float __remain_distance))
   (setq _distance_to_leader_obj (float __distance_to_leader_obj))
   (setq _state (round __state))
   self)
  (:vehicle_preiew_polygon
   (&rest __vehicle_preiew_polygon)
   (if (keywordp (car __vehicle_preiew_polygon))
       (send* _vehicle_preiew_polygon __vehicle_preiew_polygon)
     (progn
       (if __vehicle_preiew_polygon (setq _vehicle_preiew_polygon (car __vehicle_preiew_polygon)))
       _vehicle_preiew_polygon)))
  (:obstacles_polygon
   (&rest __obstacles_polygon)
   (if (keywordp (car __obstacles_polygon))
       (send* _obstacles_polygon __obstacles_polygon)
     (progn
       (if __obstacles_polygon (setq _obstacles_polygon (car __obstacles_polygon)))
       _obstacles_polygon)))
  (:path_points
   (&rest __path_points)
   (if (keywordp (car __path_points))
       (send* _path_points __path_points)
     (progn
       (if __path_points (setq _path_points (car __path_points)))
       _path_points)))
  (:lat_error
   (&optional __lat_error)
   (if __lat_error (setq _lat_error __lat_error)) _lat_error)
  (:lon_error
   (&optional __lon_error)
   (if __lon_error (setq _lon_error __lon_error)) _lon_error)
  (:yaw_error
   (&optional __yaw_error)
   (if __yaw_error (setq _yaw_error __yaw_error)) _yaw_error)
  (:obstacles_vec
   (&rest __obstacles_vec)
   (if (keywordp (car __obstacles_vec))
       (send* _obstacles_vec __obstacles_vec)
     (progn
       (if __obstacles_vec (setq _obstacles_vec (car __obstacles_vec)))
       _obstacles_vec)))
  (:warm_start_traj
   (&rest __warm_start_traj)
   (if (keywordp (car __warm_start_traj))
       (send* _warm_start_traj __warm_start_traj)
     (progn
       (if __warm_start_traj (setq _warm_start_traj (car __warm_start_traj)))
       _warm_start_traj)))
  (:smoothed_traj_stage1
   (&rest __smoothed_traj_stage1)
   (if (keywordp (car __smoothed_traj_stage1))
       (send* _smoothed_traj_stage1 __smoothed_traj_stage1)
     (progn
       (if __smoothed_traj_stage1 (setq _smoothed_traj_stage1 (car __smoothed_traj_stage1)))
       _smoothed_traj_stage1)))
  (:smoothed_traj_stage2
   (&rest __smoothed_traj_stage2)
   (if (keywordp (car __smoothed_traj_stage2))
       (send* _smoothed_traj_stage2 __smoothed_traj_stage2)
     (progn
       (if __smoothed_traj_stage2 (setq _smoothed_traj_stage2 (car __smoothed_traj_stage2)))
       _smoothed_traj_stage2)))
  (:reference_line
   (&rest __reference_line)
   (if (keywordp (car __reference_line))
       (send* _reference_line __reference_line)
     (progn
       (if __reference_line (setq _reference_line (car __reference_line)))
       _reference_line)))
  (:trajectory_array
   (&rest __trajectory_array)
   (if (keywordp (car __trajectory_array))
       (send* _trajectory_array __trajectory_array)
     (progn
       (if __trajectory_array (setq _trajectory_array (car __trajectory_array)))
       _trajectory_array)))
  (:optimal_coarse_trajectory
   (&rest __optimal_coarse_trajectory)
   (if (keywordp (car __optimal_coarse_trajectory))
       (send* _optimal_coarse_trajectory __optimal_coarse_trajectory)
     (progn
       (if __optimal_coarse_trajectory (setq _optimal_coarse_trajectory (car __optimal_coarse_trajectory)))
       _optimal_coarse_trajectory)))
  (:optimal_smooth_trajectory
   (&rest __optimal_smooth_trajectory)
   (if (keywordp (car __optimal_smooth_trajectory))
       (send* _optimal_smooth_trajectory __optimal_smooth_trajectory)
     (progn
       (if __optimal_smooth_trajectory (setq _optimal_smooth_trajectory (car __optimal_smooth_trajectory)))
       _optimal_smooth_trajectory)))
  (:hybrid_a_star_map_time
   (&optional __hybrid_a_star_map_time)
   (if __hybrid_a_star_map_time (setq _hybrid_a_star_map_time __hybrid_a_star_map_time)) _hybrid_a_star_map_time)
  (:hybrid_a_star_heuristic_time
   (&optional __hybrid_a_star_heuristic_time)
   (if __hybrid_a_star_heuristic_time (setq _hybrid_a_star_heuristic_time __hybrid_a_star_heuristic_time)) _hybrid_a_star_heuristic_time)
  (:hybrid_a_star_rs_time
   (&optional __hybrid_a_star_rs_time)
   (if __hybrid_a_star_rs_time (setq _hybrid_a_star_rs_time __hybrid_a_star_rs_time)) _hybrid_a_star_rs_time)
  (:hybrid_a_star_total_time
   (&optional __hybrid_a_star_total_time)
   (if __hybrid_a_star_total_time (setq _hybrid_a_star_total_time __hybrid_a_star_total_time)) _hybrid_a_star_total_time)
  (:ias_collision_avoidance_time
   (&optional __ias_collision_avoidance_time)
   (if __ias_collision_avoidance_time (setq _ias_collision_avoidance_time __ias_collision_avoidance_time)) _ias_collision_avoidance_time)
  (:ias_path_smooth_time
   (&optional __ias_path_smooth_time)
   (if __ias_path_smooth_time (setq _ias_path_smooth_time __ias_path_smooth_time)) _ias_path_smooth_time)
  (:ias_speed_smooth_time
   (&optional __ias_speed_smooth_time)
   (if __ias_speed_smooth_time (setq _ias_speed_smooth_time __ias_speed_smooth_time)) _ias_speed_smooth_time)
  (:ias_total_time
   (&optional __ias_total_time)
   (if __ias_total_time (setq _ias_total_time __ias_total_time)) _ias_total_time)
  (:samping_trajectory_time
   (&optional __samping_trajectory_time)
   (if __samping_trajectory_time (setq _samping_trajectory_time __samping_trajectory_time)) _samping_trajectory_time)
  (:is_replan
   (&optional __is_replan)
   (if __is_replan (setq _is_replan __is_replan)) _is_replan)
  (:replan_reason
   (&optional __replan_reason)
   (if __replan_reason (setq _replan_reason __replan_reason)) _replan_reason)
  (:replan_time
   (&optional __replan_time)
   (if __replan_time (setq _replan_time __replan_time)) _replan_time)
  (:replan_num
   (&optional __replan_num)
   (if __replan_num (setq _replan_num __replan_num)) _replan_num)
  (:optimizer_thread_counter
   (&optional __optimizer_thread_counter)
   (if __optimizer_thread_counter (setq _optimizer_thread_counter __optimizer_thread_counter)) _optimizer_thread_counter)
  (:replan_by_context_update_counter
   (&optional __replan_by_context_update_counter)
   (if __replan_by_context_update_counter (setq _replan_by_context_update_counter __replan_by_context_update_counter)) _replan_by_context_update_counter)
  (:replan_by_large_error_counter
   (&optional __replan_by_large_error_counter)
   (if __replan_by_large_error_counter (setq _replan_by_large_error_counter __replan_by_large_error_counter)) _replan_by_large_error_counter)
  (:parking_type
   (&optional __parking_type)
   (if __parking_type (setq _parking_type __parking_type)) _parking_type)
  (:moves_counter
   (&optional __moves_counter)
   (if __moves_counter (setq _moves_counter __moves_counter)) _moves_counter)
  (:remain_distance
   (&optional __remain_distance)
   (if __remain_distance (setq _remain_distance __remain_distance)) _remain_distance)
  (:distance_to_leader_obj
   (&optional __distance_to_leader_obj)
   (if __distance_to_leader_obj (setq _distance_to_leader_obj __distance_to_leader_obj)) _distance_to_leader_obj)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Polygon2D[] _vehicle_preiew_polygon
    (apply #'+ (send-all _vehicle_preiew_polygon :serialization-length)) 4
    ;; ros_interface/Polygon2D[] _obstacles_polygon
    (apply #'+ (send-all _obstacles_polygon :serialization-length)) 4
    ;; ros_interface/PathPoint[] _path_points
    (apply #'+ (send-all _path_points :serialization-length)) 4
    ;; float64 _lat_error
    8
    ;; float64 _lon_error
    8
    ;; float64 _yaw_error
    8
    ;; ros_interface/Point2dList[] _obstacles_vec
    (apply #'+ (send-all _obstacles_vec :serialization-length)) 4
    ;; ros_interface/TrajectoryPoint[] _warm_start_traj
    (apply #'+ (send-all _warm_start_traj :serialization-length)) 4
    ;; ros_interface/TrajectoryPoint[] _smoothed_traj_stage1
    (apply #'+ (send-all _smoothed_traj_stage1 :serialization-length)) 4
    ;; ros_interface/TrajectoryPoint[] _smoothed_traj_stage2
    (apply #'+ (send-all _smoothed_traj_stage2 :serialization-length)) 4
    ;; ros_interface/Trajectory _reference_line
    (send _reference_line :serialization-length)
    ;; ros_interface/Trajectory[] _trajectory_array
    (apply #'+ (send-all _trajectory_array :serialization-length)) 4
    ;; ros_interface/Trajectory _optimal_coarse_trajectory
    (send _optimal_coarse_trajectory :serialization-length)
    ;; ros_interface/Trajectory _optimal_smooth_trajectory
    (send _optimal_smooth_trajectory :serialization-length)
    ;; float64 _hybrid_a_star_map_time
    8
    ;; float64 _hybrid_a_star_heuristic_time
    8
    ;; float64 _hybrid_a_star_rs_time
    8
    ;; float64 _hybrid_a_star_total_time
    8
    ;; float64 _ias_collision_avoidance_time
    8
    ;; float64 _ias_path_smooth_time
    8
    ;; float64 _ias_speed_smooth_time
    8
    ;; float64 _ias_total_time
    8
    ;; float64 _samping_trajectory_time
    8
    ;; bool _is_replan
    1
    ;; string _replan_reason
    4 (length _replan_reason)
    ;; float64 _replan_time
    8
    ;; int32 _replan_num
    4
    ;; int32 _optimizer_thread_counter
    4
    ;; int32 _replan_by_context_update_counter
    4
    ;; int32 _replan_by_large_error_counter
    4
    ;; int32 _parking_type
    4
    ;; int32 _moves_counter
    4
    ;; float64 _remain_distance
    8
    ;; float64 _distance_to_leader_obj
    8
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Polygon2D[] _vehicle_preiew_polygon
     (write-long (length _vehicle_preiew_polygon) s)
     (dolist (elem _vehicle_preiew_polygon)
       (send elem :serialize s)
       )
     ;; ros_interface/Polygon2D[] _obstacles_polygon
     (write-long (length _obstacles_polygon) s)
     (dolist (elem _obstacles_polygon)
       (send elem :serialize s)
       )
     ;; ros_interface/PathPoint[] _path_points
     (write-long (length _path_points) s)
     (dolist (elem _path_points)
       (send elem :serialize s)
       )
     ;; float64 _lat_error
       (sys::poke _lat_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon_error
       (sys::poke _lon_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_error
       (sys::poke _yaw_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point2dList[] _obstacles_vec
     (write-long (length _obstacles_vec) s)
     (dolist (elem _obstacles_vec)
       (send elem :serialize s)
       )
     ;; ros_interface/TrajectoryPoint[] _warm_start_traj
     (write-long (length _warm_start_traj) s)
     (dolist (elem _warm_start_traj)
       (send elem :serialize s)
       )
     ;; ros_interface/TrajectoryPoint[] _smoothed_traj_stage1
     (write-long (length _smoothed_traj_stage1) s)
     (dolist (elem _smoothed_traj_stage1)
       (send elem :serialize s)
       )
     ;; ros_interface/TrajectoryPoint[] _smoothed_traj_stage2
     (write-long (length _smoothed_traj_stage2) s)
     (dolist (elem _smoothed_traj_stage2)
       (send elem :serialize s)
       )
     ;; ros_interface/Trajectory _reference_line
       (send _reference_line :serialize s)
     ;; ros_interface/Trajectory[] _trajectory_array
     (write-long (length _trajectory_array) s)
     (dolist (elem _trajectory_array)
       (send elem :serialize s)
       )
     ;; ros_interface/Trajectory _optimal_coarse_trajectory
       (send _optimal_coarse_trajectory :serialize s)
     ;; ros_interface/Trajectory _optimal_smooth_trajectory
       (send _optimal_smooth_trajectory :serialize s)
     ;; float64 _hybrid_a_star_map_time
       (sys::poke _hybrid_a_star_map_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hybrid_a_star_heuristic_time
       (sys::poke _hybrid_a_star_heuristic_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hybrid_a_star_rs_time
       (sys::poke _hybrid_a_star_rs_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hybrid_a_star_total_time
       (sys::poke _hybrid_a_star_total_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ias_collision_avoidance_time
       (sys::poke _ias_collision_avoidance_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ias_path_smooth_time
       (sys::poke _ias_path_smooth_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ias_speed_smooth_time
       (sys::poke _ias_speed_smooth_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ias_total_time
       (sys::poke _ias_total_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _samping_trajectory_time
       (sys::poke _samping_trajectory_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_replan
       (if _is_replan (write-byte -1 s) (write-byte 0 s))
     ;; string _replan_reason
       (write-long (length _replan_reason) s) (princ _replan_reason s)
     ;; float64 _replan_time
       (sys::poke _replan_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _replan_num
       (write-long _replan_num s)
     ;; int32 _optimizer_thread_counter
       (write-long _optimizer_thread_counter s)
     ;; int32 _replan_by_context_update_counter
       (write-long _replan_by_context_update_counter s)
     ;; int32 _replan_by_large_error_counter
       (write-long _replan_by_large_error_counter s)
     ;; int32 _parking_type
       (write-long _parking_type s)
     ;; int32 _moves_counter
       (write-long _moves_counter s)
     ;; float64 _remain_distance
       (sys::poke _remain_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_leader_obj
       (sys::poke _distance_to_leader_obj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Polygon2D[] _vehicle_preiew_polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicle_preiew_polygon (let (r) (dotimes (i n) (push (instance ros_interface::Polygon2D :init) r)) r))
     (dolist (elem- _vehicle_preiew_polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Polygon2D[] _obstacles_polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles_polygon (let (r) (dotimes (i n) (push (instance ros_interface::Polygon2D :init) r)) r))
     (dolist (elem- _obstacles_polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/PathPoint[] _path_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_points (let (r) (dotimes (i n) (push (instance ros_interface::PathPoint :init) r)) r))
     (dolist (elem- _path_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _lat_error
     (setq _lat_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon_error
     (setq _lon_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_error
     (setq _yaw_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point2dList[] _obstacles_vec
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles_vec (let (r) (dotimes (i n) (push (instance ros_interface::Point2dList :init) r)) r))
     (dolist (elem- _obstacles_vec)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrajectoryPoint[] _warm_start_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _warm_start_traj (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
     (dolist (elem- _warm_start_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrajectoryPoint[] _smoothed_traj_stage1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _smoothed_traj_stage1 (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
     (dolist (elem- _smoothed_traj_stage1)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrajectoryPoint[] _smoothed_traj_stage2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _smoothed_traj_stage2 (let (r) (dotimes (i n) (push (instance ros_interface::TrajectoryPoint :init) r)) r))
     (dolist (elem- _smoothed_traj_stage2)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Trajectory _reference_line
     (send _reference_line :deserialize buf ptr-) (incf ptr- (send _reference_line :serialization-length))
   ;; ros_interface/Trajectory[] _trajectory_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_array (let (r) (dotimes (i n) (push (instance ros_interface::Trajectory :init) r)) r))
     (dolist (elem- _trajectory_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Trajectory _optimal_coarse_trajectory
     (send _optimal_coarse_trajectory :deserialize buf ptr-) (incf ptr- (send _optimal_coarse_trajectory :serialization-length))
   ;; ros_interface/Trajectory _optimal_smooth_trajectory
     (send _optimal_smooth_trajectory :deserialize buf ptr-) (incf ptr- (send _optimal_smooth_trajectory :serialization-length))
   ;; float64 _hybrid_a_star_map_time
     (setq _hybrid_a_star_map_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hybrid_a_star_heuristic_time
     (setq _hybrid_a_star_heuristic_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hybrid_a_star_rs_time
     (setq _hybrid_a_star_rs_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hybrid_a_star_total_time
     (setq _hybrid_a_star_total_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ias_collision_avoidance_time
     (setq _ias_collision_avoidance_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ias_path_smooth_time
     (setq _ias_path_smooth_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ias_speed_smooth_time
     (setq _ias_speed_smooth_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ias_total_time
     (setq _ias_total_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _samping_trajectory_time
     (setq _samping_trajectory_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_replan
     (setq _is_replan (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _replan_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _replan_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _replan_time
     (setq _replan_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _replan_num
     (setq _replan_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _optimizer_thread_counter
     (setq _optimizer_thread_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _replan_by_context_update_counter
     (setq _replan_by_context_update_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _replan_by_large_error_counter
     (setq _replan_by_large_error_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _parking_type
     (setq _parking_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _moves_counter
     (setq _moves_counter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _remain_distance
     (setq _remain_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_leader_obj
     (setq _distance_to_leader_obj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::PlanningParkingDebug :md5sum-) "1b9cb6b363f6520ffafa504a0b28d1b3")
(setf (get ros_interface::PlanningParkingDebug :datatype-) "ros_interface/PlanningParkingDebug")
(setf (get ros_interface::PlanningParkingDebug :definition-)
      "Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形
Polygon2D[] obstacles_polygon # 障碍物多边形
PathPoint[] path_points # 轨迹点
float64   lat_error     # 横向误差
float64   lon_error     # 纵向误差
float64   yaw_error     # 角度误差(度)
Point2dList[] obstacles_vec #  
TrajectoryPoint[] warm_start_traj #  
TrajectoryPoint[] smoothed_traj_stage1 #  
TrajectoryPoint[] smoothed_traj_stage2 #  
Trajectory   reference_line     #  
Trajectory[] trajectory_array # 轨迹簇
Trajectory   optimal_coarse_trajectory     #  
Trajectory   optimal_smooth_trajectory     #  
float64   hybrid_a_star_map_time     #  
float64   hybrid_a_star_heuristic_time     #  
float64   hybrid_a_star_rs_time     #  
float64   hybrid_a_star_total_time     #  
float64   ias_collision_avoidance_time     #  
float64   ias_path_smooth_time     #  
float64   ias_speed_smooth_time     #  
float64   ias_total_time     #  
float64   samping_trajectory_time     #  
bool   is_replan     #  
string   replan_reason     #  
float64   replan_time     #  
int32   replan_num     #  
int32   optimizer_thread_counter     #  
int32   replan_by_context_update_counter     #  
int32   replan_by_large_error_counter     #  
int32   parking_type     #  
int32   moves_counter     # 揉库次数
float64   remain_distance     # 剩余距离
float64   distance_to_leader_obj     # 距离最近障碍物距离
int32   state     #  

================================================================================
MSG: ros_interface/Polygon2D
int32   coordinate_system     # 坐标系
Point2D[] points # 二维点集

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

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
MSG: ros_interface/Point2dList
Point2D[] point2d_list #  

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

================================================================================
MSG: ros_interface/Trajectory
string   name     # 轨迹名称
TrajectoryPoint[] trajectory_points # 轨迹点

")



(provide :ros_interface/PlanningParkingDebug "1b9cb6b363f6520ffafa504a0b28d1b3")


