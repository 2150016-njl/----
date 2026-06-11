; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PlanningParkingDebug.msg.html

(cl:defclass <PlanningParkingDebug> (roslisp-msg-protocol:ros-message)
  ((vehicle_preiew_polygon
    :reader vehicle_preiew_polygon
    :initarg :vehicle_preiew_polygon
    :type (cl:vector ros_interface-msg:Polygon2D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Polygon2D :initial-element (cl:make-instance 'ros_interface-msg:Polygon2D)))
   (obstacles_polygon
    :reader obstacles_polygon
    :initarg :obstacles_polygon
    :type (cl:vector ros_interface-msg:Polygon2D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Polygon2D :initial-element (cl:make-instance 'ros_interface-msg:Polygon2D)))
   (path_points
    :reader path_points
    :initarg :path_points
    :type (cl:vector ros_interface-msg:PathPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:PathPoint :initial-element (cl:make-instance 'ros_interface-msg:PathPoint)))
   (lat_error
    :reader lat_error
    :initarg :lat_error
    :type cl:float
    :initform 0.0)
   (lon_error
    :reader lon_error
    :initarg :lon_error
    :type cl:float
    :initform 0.0)
   (yaw_error
    :reader yaw_error
    :initarg :yaw_error
    :type cl:float
    :initform 0.0)
   (obstacles_vec
    :reader obstacles_vec
    :initarg :obstacles_vec
    :type (cl:vector ros_interface-msg:Point2dList)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point2dList :initial-element (cl:make-instance 'ros_interface-msg:Point2dList)))
   (warm_start_traj
    :reader warm_start_traj
    :initarg :warm_start_traj
    :type (cl:vector ros_interface-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryPoint :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryPoint)))
   (smoothed_traj_stage1
    :reader smoothed_traj_stage1
    :initarg :smoothed_traj_stage1
    :type (cl:vector ros_interface-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryPoint :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryPoint)))
   (smoothed_traj_stage2
    :reader smoothed_traj_stage2
    :initarg :smoothed_traj_stage2
    :type (cl:vector ros_interface-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrajectoryPoint :initial-element (cl:make-instance 'ros_interface-msg:TrajectoryPoint)))
   (reference_line
    :reader reference_line
    :initarg :reference_line
    :type ros_interface-msg:Trajectory
    :initform (cl:make-instance 'ros_interface-msg:Trajectory))
   (trajectory_array
    :reader trajectory_array
    :initarg :trajectory_array
    :type (cl:vector ros_interface-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Trajectory :initial-element (cl:make-instance 'ros_interface-msg:Trajectory)))
   (optimal_coarse_trajectory
    :reader optimal_coarse_trajectory
    :initarg :optimal_coarse_trajectory
    :type ros_interface-msg:Trajectory
    :initform (cl:make-instance 'ros_interface-msg:Trajectory))
   (optimal_smooth_trajectory
    :reader optimal_smooth_trajectory
    :initarg :optimal_smooth_trajectory
    :type ros_interface-msg:Trajectory
    :initform (cl:make-instance 'ros_interface-msg:Trajectory))
   (hybrid_a_star_map_time
    :reader hybrid_a_star_map_time
    :initarg :hybrid_a_star_map_time
    :type cl:float
    :initform 0.0)
   (hybrid_a_star_heuristic_time
    :reader hybrid_a_star_heuristic_time
    :initarg :hybrid_a_star_heuristic_time
    :type cl:float
    :initform 0.0)
   (hybrid_a_star_rs_time
    :reader hybrid_a_star_rs_time
    :initarg :hybrid_a_star_rs_time
    :type cl:float
    :initform 0.0)
   (hybrid_a_star_total_time
    :reader hybrid_a_star_total_time
    :initarg :hybrid_a_star_total_time
    :type cl:float
    :initform 0.0)
   (ias_collision_avoidance_time
    :reader ias_collision_avoidance_time
    :initarg :ias_collision_avoidance_time
    :type cl:float
    :initform 0.0)
   (ias_path_smooth_time
    :reader ias_path_smooth_time
    :initarg :ias_path_smooth_time
    :type cl:float
    :initform 0.0)
   (ias_speed_smooth_time
    :reader ias_speed_smooth_time
    :initarg :ias_speed_smooth_time
    :type cl:float
    :initform 0.0)
   (ias_total_time
    :reader ias_total_time
    :initarg :ias_total_time
    :type cl:float
    :initform 0.0)
   (samping_trajectory_time
    :reader samping_trajectory_time
    :initarg :samping_trajectory_time
    :type cl:float
    :initform 0.0)
   (is_replan
    :reader is_replan
    :initarg :is_replan
    :type cl:boolean
    :initform cl:nil)
   (replan_reason
    :reader replan_reason
    :initarg :replan_reason
    :type cl:string
    :initform "")
   (replan_time
    :reader replan_time
    :initarg :replan_time
    :type cl:float
    :initform 0.0)
   (replan_num
    :reader replan_num
    :initarg :replan_num
    :type cl:integer
    :initform 0)
   (optimizer_thread_counter
    :reader optimizer_thread_counter
    :initarg :optimizer_thread_counter
    :type cl:integer
    :initform 0)
   (replan_by_context_update_counter
    :reader replan_by_context_update_counter
    :initarg :replan_by_context_update_counter
    :type cl:integer
    :initform 0)
   (replan_by_large_error_counter
    :reader replan_by_large_error_counter
    :initarg :replan_by_large_error_counter
    :type cl:integer
    :initform 0)
   (parking_type
    :reader parking_type
    :initarg :parking_type
    :type cl:integer
    :initform 0)
   (moves_counter
    :reader moves_counter
    :initarg :moves_counter
    :type cl:integer
    :initform 0)
   (remain_distance
    :reader remain_distance
    :initarg :remain_distance
    :type cl:float
    :initform 0.0)
   (distance_to_leader_obj
    :reader distance_to_leader_obj
    :initarg :distance_to_leader_obj
    :type cl:float
    :initform 0.0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanningParkingDebug (<PlanningParkingDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningParkingDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningParkingDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PlanningParkingDebug> is deprecated: use ros_interface-msg:PlanningParkingDebug instead.")))

(cl:ensure-generic-function 'vehicle_preiew_polygon-val :lambda-list '(m))
(cl:defmethod vehicle_preiew_polygon-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:vehicle_preiew_polygon-val is deprecated.  Use ros_interface-msg:vehicle_preiew_polygon instead.")
  (vehicle_preiew_polygon m))

(cl:ensure-generic-function 'obstacles_polygon-val :lambda-list '(m))
(cl:defmethod obstacles_polygon-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:obstacles_polygon-val is deprecated.  Use ros_interface-msg:obstacles_polygon instead.")
  (obstacles_polygon m))

(cl:ensure-generic-function 'path_points-val :lambda-list '(m))
(cl:defmethod path_points-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:path_points-val is deprecated.  Use ros_interface-msg:path_points instead.")
  (path_points m))

(cl:ensure-generic-function 'lat_error-val :lambda-list '(m))
(cl:defmethod lat_error-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lat_error-val is deprecated.  Use ros_interface-msg:lat_error instead.")
  (lat_error m))

(cl:ensure-generic-function 'lon_error-val :lambda-list '(m))
(cl:defmethod lon_error-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lon_error-val is deprecated.  Use ros_interface-msg:lon_error instead.")
  (lon_error m))

(cl:ensure-generic-function 'yaw_error-val :lambda-list '(m))
(cl:defmethod yaw_error-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:yaw_error-val is deprecated.  Use ros_interface-msg:yaw_error instead.")
  (yaw_error m))

(cl:ensure-generic-function 'obstacles_vec-val :lambda-list '(m))
(cl:defmethod obstacles_vec-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:obstacles_vec-val is deprecated.  Use ros_interface-msg:obstacles_vec instead.")
  (obstacles_vec m))

(cl:ensure-generic-function 'warm_start_traj-val :lambda-list '(m))
(cl:defmethod warm_start_traj-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:warm_start_traj-val is deprecated.  Use ros_interface-msg:warm_start_traj instead.")
  (warm_start_traj m))

(cl:ensure-generic-function 'smoothed_traj_stage1-val :lambda-list '(m))
(cl:defmethod smoothed_traj_stage1-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:smoothed_traj_stage1-val is deprecated.  Use ros_interface-msg:smoothed_traj_stage1 instead.")
  (smoothed_traj_stage1 m))

(cl:ensure-generic-function 'smoothed_traj_stage2-val :lambda-list '(m))
(cl:defmethod smoothed_traj_stage2-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:smoothed_traj_stage2-val is deprecated.  Use ros_interface-msg:smoothed_traj_stage2 instead.")
  (smoothed_traj_stage2 m))

(cl:ensure-generic-function 'reference_line-val :lambda-list '(m))
(cl:defmethod reference_line-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:reference_line-val is deprecated.  Use ros_interface-msg:reference_line instead.")
  (reference_line m))

(cl:ensure-generic-function 'trajectory_array-val :lambda-list '(m))
(cl:defmethod trajectory_array-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory_array-val is deprecated.  Use ros_interface-msg:trajectory_array instead.")
  (trajectory_array m))

(cl:ensure-generic-function 'optimal_coarse_trajectory-val :lambda-list '(m))
(cl:defmethod optimal_coarse_trajectory-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:optimal_coarse_trajectory-val is deprecated.  Use ros_interface-msg:optimal_coarse_trajectory instead.")
  (optimal_coarse_trajectory m))

(cl:ensure-generic-function 'optimal_smooth_trajectory-val :lambda-list '(m))
(cl:defmethod optimal_smooth_trajectory-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:optimal_smooth_trajectory-val is deprecated.  Use ros_interface-msg:optimal_smooth_trajectory instead.")
  (optimal_smooth_trajectory m))

(cl:ensure-generic-function 'hybrid_a_star_map_time-val :lambda-list '(m))
(cl:defmethod hybrid_a_star_map_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hybrid_a_star_map_time-val is deprecated.  Use ros_interface-msg:hybrid_a_star_map_time instead.")
  (hybrid_a_star_map_time m))

(cl:ensure-generic-function 'hybrid_a_star_heuristic_time-val :lambda-list '(m))
(cl:defmethod hybrid_a_star_heuristic_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hybrid_a_star_heuristic_time-val is deprecated.  Use ros_interface-msg:hybrid_a_star_heuristic_time instead.")
  (hybrid_a_star_heuristic_time m))

(cl:ensure-generic-function 'hybrid_a_star_rs_time-val :lambda-list '(m))
(cl:defmethod hybrid_a_star_rs_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hybrid_a_star_rs_time-val is deprecated.  Use ros_interface-msg:hybrid_a_star_rs_time instead.")
  (hybrid_a_star_rs_time m))

(cl:ensure-generic-function 'hybrid_a_star_total_time-val :lambda-list '(m))
(cl:defmethod hybrid_a_star_total_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hybrid_a_star_total_time-val is deprecated.  Use ros_interface-msg:hybrid_a_star_total_time instead.")
  (hybrid_a_star_total_time m))

(cl:ensure-generic-function 'ias_collision_avoidance_time-val :lambda-list '(m))
(cl:defmethod ias_collision_avoidance_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ias_collision_avoidance_time-val is deprecated.  Use ros_interface-msg:ias_collision_avoidance_time instead.")
  (ias_collision_avoidance_time m))

(cl:ensure-generic-function 'ias_path_smooth_time-val :lambda-list '(m))
(cl:defmethod ias_path_smooth_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ias_path_smooth_time-val is deprecated.  Use ros_interface-msg:ias_path_smooth_time instead.")
  (ias_path_smooth_time m))

(cl:ensure-generic-function 'ias_speed_smooth_time-val :lambda-list '(m))
(cl:defmethod ias_speed_smooth_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ias_speed_smooth_time-val is deprecated.  Use ros_interface-msg:ias_speed_smooth_time instead.")
  (ias_speed_smooth_time m))

(cl:ensure-generic-function 'ias_total_time-val :lambda-list '(m))
(cl:defmethod ias_total_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ias_total_time-val is deprecated.  Use ros_interface-msg:ias_total_time instead.")
  (ias_total_time m))

(cl:ensure-generic-function 'samping_trajectory_time-val :lambda-list '(m))
(cl:defmethod samping_trajectory_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:samping_trajectory_time-val is deprecated.  Use ros_interface-msg:samping_trajectory_time instead.")
  (samping_trajectory_time m))

(cl:ensure-generic-function 'is_replan-val :lambda-list '(m))
(cl:defmethod is_replan-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_replan-val is deprecated.  Use ros_interface-msg:is_replan instead.")
  (is_replan m))

(cl:ensure-generic-function 'replan_reason-val :lambda-list '(m))
(cl:defmethod replan_reason-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_reason-val is deprecated.  Use ros_interface-msg:replan_reason instead.")
  (replan_reason m))

(cl:ensure-generic-function 'replan_time-val :lambda-list '(m))
(cl:defmethod replan_time-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_time-val is deprecated.  Use ros_interface-msg:replan_time instead.")
  (replan_time m))

(cl:ensure-generic-function 'replan_num-val :lambda-list '(m))
(cl:defmethod replan_num-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_num-val is deprecated.  Use ros_interface-msg:replan_num instead.")
  (replan_num m))

(cl:ensure-generic-function 'optimizer_thread_counter-val :lambda-list '(m))
(cl:defmethod optimizer_thread_counter-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:optimizer_thread_counter-val is deprecated.  Use ros_interface-msg:optimizer_thread_counter instead.")
  (optimizer_thread_counter m))

(cl:ensure-generic-function 'replan_by_context_update_counter-val :lambda-list '(m))
(cl:defmethod replan_by_context_update_counter-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_by_context_update_counter-val is deprecated.  Use ros_interface-msg:replan_by_context_update_counter instead.")
  (replan_by_context_update_counter m))

(cl:ensure-generic-function 'replan_by_large_error_counter-val :lambda-list '(m))
(cl:defmethod replan_by_large_error_counter-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:replan_by_large_error_counter-val is deprecated.  Use ros_interface-msg:replan_by_large_error_counter instead.")
  (replan_by_large_error_counter m))

(cl:ensure-generic-function 'parking_type-val :lambda-list '(m))
(cl:defmethod parking_type-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_type-val is deprecated.  Use ros_interface-msg:parking_type instead.")
  (parking_type m))

(cl:ensure-generic-function 'moves_counter-val :lambda-list '(m))
(cl:defmethod moves_counter-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:moves_counter-val is deprecated.  Use ros_interface-msg:moves_counter instead.")
  (moves_counter m))

(cl:ensure-generic-function 'remain_distance-val :lambda-list '(m))
(cl:defmethod remain_distance-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:remain_distance-val is deprecated.  Use ros_interface-msg:remain_distance instead.")
  (remain_distance m))

(cl:ensure-generic-function 'distance_to_leader_obj-val :lambda-list '(m))
(cl:defmethod distance_to_leader_obj-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:distance_to_leader_obj-val is deprecated.  Use ros_interface-msg:distance_to_leader_obj instead.")
  (distance_to_leader_obj m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PlanningParkingDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:state-val is deprecated.  Use ros_interface-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningParkingDebug>) ostream)
  "Serializes a message object of type '<PlanningParkingDebug>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicle_preiew_polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicle_preiew_polygon))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles_polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles_polygon))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_points))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lon_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles_vec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles_vec))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'warm_start_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'warm_start_traj))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'smoothed_traj_stage1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'smoothed_traj_stage1))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'smoothed_traj_stage2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'smoothed_traj_stage2))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_line) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_array))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'optimal_coarse_trajectory) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'optimal_smooth_trajectory) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hybrid_a_star_map_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hybrid_a_star_heuristic_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hybrid_a_star_rs_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hybrid_a_star_total_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ias_collision_avoidance_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ias_path_smooth_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ias_speed_smooth_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ias_total_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'samping_trajectory_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_replan) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'replan_reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'replan_reason))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'replan_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'replan_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'optimizer_thread_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'replan_by_context_update_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'replan_by_large_error_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parking_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'moves_counter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remain_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_leader_obj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningParkingDebug>) istream)
  "Deserializes a message object of type '<PlanningParkingDebug>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicle_preiew_polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicle_preiew_polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Polygon2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles_polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles_polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Polygon2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:PathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lon_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_error) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles_vec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles_vec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point2dList))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'warm_start_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'warm_start_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'smoothed_traj_stage1) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'smoothed_traj_stage1)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'smoothed_traj_stage2) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'smoothed_traj_stage2)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_line) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'optimal_coarse_trajectory) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'optimal_smooth_trajectory) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hybrid_a_star_map_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hybrid_a_star_heuristic_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hybrid_a_star_rs_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hybrid_a_star_total_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ias_collision_avoidance_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ias_path_smooth_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ias_speed_smooth_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ias_total_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'samping_trajectory_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_replan) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'replan_reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'replan_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'optimizer_thread_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_by_context_update_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'replan_by_large_error_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moves_counter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remain_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_leader_obj) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningParkingDebug>)))
  "Returns string type for a message object of type '<PlanningParkingDebug>"
  "ros_interface/PlanningParkingDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningParkingDebug)))
  "Returns string type for a message object of type 'PlanningParkingDebug"
  "ros_interface/PlanningParkingDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningParkingDebug>)))
  "Returns md5sum for a message object of type '<PlanningParkingDebug>"
  "1b9cb6b363f6520ffafa504a0b28d1b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningParkingDebug)))
  "Returns md5sum for a message object of type 'PlanningParkingDebug"
  "1b9cb6b363f6520ffafa504a0b28d1b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningParkingDebug>)))
  "Returns full string definition for message of type '<PlanningParkingDebug>"
  (cl:format cl:nil "Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形~%Polygon2D[] obstacles_polygon # 障碍物多边形~%PathPoint[] path_points # 轨迹点~%float64   lat_error     # 横向误差~%float64   lon_error     # 纵向误差~%float64   yaw_error     # 角度误差(度)~%Point2dList[] obstacles_vec #  ~%TrajectoryPoint[] warm_start_traj #  ~%TrajectoryPoint[] smoothed_traj_stage1 #  ~%TrajectoryPoint[] smoothed_traj_stage2 #  ~%Trajectory   reference_line     #  ~%Trajectory[] trajectory_array # 轨迹簇~%Trajectory   optimal_coarse_trajectory     #  ~%Trajectory   optimal_smooth_trajectory     #  ~%float64   hybrid_a_star_map_time     #  ~%float64   hybrid_a_star_heuristic_time     #  ~%float64   hybrid_a_star_rs_time     #  ~%float64   hybrid_a_star_total_time     #  ~%float64   ias_collision_avoidance_time     #  ~%float64   ias_path_smooth_time     #  ~%float64   ias_speed_smooth_time     #  ~%float64   ias_total_time     #  ~%float64   samping_trajectory_time     #  ~%bool   is_replan     #  ~%string   replan_reason     #  ~%float64   replan_time     #  ~%int32   replan_num     #  ~%int32   optimizer_thread_counter     #  ~%int32   replan_by_context_update_counter     #  ~%int32   replan_by_large_error_counter     #  ~%int32   parking_type     #  ~%int32   moves_counter     # 揉库次数~%float64   remain_distance     # 剩余距离~%float64   distance_to_leader_obj     # 距离最近障碍物距离~%int32   state     #  ~%~%================================================================================~%MSG: ros_interface/Polygon2D~%int32   coordinate_system     # 坐标系~%Point2D[] points # 二维点集~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/Point2dList~%Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/Trajectory~%string   name     # 轨迹名称~%TrajectoryPoint[] trajectory_points # 轨迹点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningParkingDebug)))
  "Returns full string definition for message of type 'PlanningParkingDebug"
  (cl:format cl:nil "Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形~%Polygon2D[] obstacles_polygon # 障碍物多边形~%PathPoint[] path_points # 轨迹点~%float64   lat_error     # 横向误差~%float64   lon_error     # 纵向误差~%float64   yaw_error     # 角度误差(度)~%Point2dList[] obstacles_vec #  ~%TrajectoryPoint[] warm_start_traj #  ~%TrajectoryPoint[] smoothed_traj_stage1 #  ~%TrajectoryPoint[] smoothed_traj_stage2 #  ~%Trajectory   reference_line     #  ~%Trajectory[] trajectory_array # 轨迹簇~%Trajectory   optimal_coarse_trajectory     #  ~%Trajectory   optimal_smooth_trajectory     #  ~%float64   hybrid_a_star_map_time     #  ~%float64   hybrid_a_star_heuristic_time     #  ~%float64   hybrid_a_star_rs_time     #  ~%float64   hybrid_a_star_total_time     #  ~%float64   ias_collision_avoidance_time     #  ~%float64   ias_path_smooth_time     #  ~%float64   ias_speed_smooth_time     #  ~%float64   ias_total_time     #  ~%float64   samping_trajectory_time     #  ~%bool   is_replan     #  ~%string   replan_reason     #  ~%float64   replan_time     #  ~%int32   replan_num     #  ~%int32   optimizer_thread_counter     #  ~%int32   replan_by_context_update_counter     #  ~%int32   replan_by_large_error_counter     #  ~%int32   parking_type     #  ~%int32   moves_counter     # 揉库次数~%float64   remain_distance     # 剩余距离~%float64   distance_to_leader_obj     # 距离最近障碍物距离~%int32   state     #  ~%~%================================================================================~%MSG: ros_interface/Polygon2D~%int32   coordinate_system     # 坐标系~%Point2D[] points # 二维点集~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/Point2dList~%Point2D[] point2d_list #  ~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%================================================================================~%MSG: ros_interface/Trajectory~%string   name     # 轨迹名称~%TrajectoryPoint[] trajectory_points # 轨迹点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningParkingDebug>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicle_preiew_polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles_polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles_vec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'warm_start_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'smoothed_traj_stage1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'smoothed_traj_stage2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_line))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'optimal_coarse_trajectory))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'optimal_smooth_trajectory))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     1
     4 (cl:length (cl:slot-value msg 'replan_reason))
     8
     4
     4
     4
     4
     4
     4
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningParkingDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningParkingDebug
    (cl:cons ':vehicle_preiew_polygon (vehicle_preiew_polygon msg))
    (cl:cons ':obstacles_polygon (obstacles_polygon msg))
    (cl:cons ':path_points (path_points msg))
    (cl:cons ':lat_error (lat_error msg))
    (cl:cons ':lon_error (lon_error msg))
    (cl:cons ':yaw_error (yaw_error msg))
    (cl:cons ':obstacles_vec (obstacles_vec msg))
    (cl:cons ':warm_start_traj (warm_start_traj msg))
    (cl:cons ':smoothed_traj_stage1 (smoothed_traj_stage1 msg))
    (cl:cons ':smoothed_traj_stage2 (smoothed_traj_stage2 msg))
    (cl:cons ':reference_line (reference_line msg))
    (cl:cons ':trajectory_array (trajectory_array msg))
    (cl:cons ':optimal_coarse_trajectory (optimal_coarse_trajectory msg))
    (cl:cons ':optimal_smooth_trajectory (optimal_smooth_trajectory msg))
    (cl:cons ':hybrid_a_star_map_time (hybrid_a_star_map_time msg))
    (cl:cons ':hybrid_a_star_heuristic_time (hybrid_a_star_heuristic_time msg))
    (cl:cons ':hybrid_a_star_rs_time (hybrid_a_star_rs_time msg))
    (cl:cons ':hybrid_a_star_total_time (hybrid_a_star_total_time msg))
    (cl:cons ':ias_collision_avoidance_time (ias_collision_avoidance_time msg))
    (cl:cons ':ias_path_smooth_time (ias_path_smooth_time msg))
    (cl:cons ':ias_speed_smooth_time (ias_speed_smooth_time msg))
    (cl:cons ':ias_total_time (ias_total_time msg))
    (cl:cons ':samping_trajectory_time (samping_trajectory_time msg))
    (cl:cons ':is_replan (is_replan msg))
    (cl:cons ':replan_reason (replan_reason msg))
    (cl:cons ':replan_time (replan_time msg))
    (cl:cons ':replan_num (replan_num msg))
    (cl:cons ':optimizer_thread_counter (optimizer_thread_counter msg))
    (cl:cons ':replan_by_context_update_counter (replan_by_context_update_counter msg))
    (cl:cons ':replan_by_large_error_counter (replan_by_large_error_counter msg))
    (cl:cons ':parking_type (parking_type msg))
    (cl:cons ':moves_counter (moves_counter msg))
    (cl:cons ':remain_distance (remain_distance msg))
    (cl:cons ':distance_to_leader_obj (distance_to_leader_obj msg))
    (cl:cons ':state (state msg))
))
