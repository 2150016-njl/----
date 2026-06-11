;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::ControlAnalysis)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'ControlAnalysis (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::CONTROLANALYSIS")
  (make-package "ROS_INTERFACE::CONTROLANALYSIS"))

(in-package "ROS")
;;//! \htmlinclude ControlAnalysis.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::ControlAnalysis
  :super ros::object
  :slots (_header _driving_mode _driving_mode_fd _gear_location_fd _gear_location_cmd _epb_level_fd _epb_level_cmd _speed_mps _speed_reference _accel_value_fd _accel_value_cmd _brake_value_fd _brake_value_cmd _path_remain _has_stop_point _is_full_stop _is_stopped _lon_acc_jerk _acceleration_cmd _acceleration_cmd_closeloop _preview_acceleration_reference _slope_offset_compensation _turning_offset_compensation _speed_error_limited _speed_error _speed_offset _station_error_limited _station_error _lon_target_point_s _lon_calculate_time _lon_calculate_time_max _ref_curvature _ref_heading _current_heading _heading_error _heading_error_rate _lateral_error _lateral_error_rate _lon_error _front_steering_value_fd _front_steering_target _front_steering_rate _front_steer_angle_feedforward _front_steer_angle_feedback _front_steer_angle_lateral_contribution _front_steer_angle_lateral_rate_contribution _front_steer_angle_heading_contribution _front_steer_angle_heading_rate_contribution _rear_steering_value_fd _rear_steering_target _rear_steering_rate _rear_steer_angle_feedforward _rear_steer_angle_feedback _rear_steer_angle_lateral_contribution _rear_steer_angle_lateral_rate_contribution _rear_steer_angle_heading_contribution _rear_steer_angle_heading_rate_contribution _matrix_k_00 _matrix_k_01 _matrix_k_02 _matrix_k_03 _matrix_k_10 _matrix_k_11 _matrix_k_12 _matrix_k_13 _matrix_state_0 _matrix_state_1 _matrix_state_2 _matrix_state_3 _matrix_q_updated_0 _matrix_q_updated_1 _matrix_q_updated_2 _matrix_q_updated_3 _current_x _current_y _target_point_x _target_point_y _lat_target_point_s _lqr_calculate_time _lqr_calculate_time_max ))

(defmethod ros_interface::ControlAnalysis
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driving_mode __driving_mode) 0)
    ((:driving_mode_fd __driving_mode_fd) 0)
    ((:gear_location_fd __gear_location_fd) 0)
    ((:gear_location_cmd __gear_location_cmd) 0)
    ((:epb_level_fd __epb_level_fd) 0)
    ((:epb_level_cmd __epb_level_cmd) 0)
    ((:speed_mps __speed_mps) 0.0)
    ((:speed_reference __speed_reference) 0.0)
    ((:accel_value_fd __accel_value_fd) 0.0)
    ((:accel_value_cmd __accel_value_cmd) 0.0)
    ((:brake_value_fd __brake_value_fd) 0.0)
    ((:brake_value_cmd __brake_value_cmd) 0.0)
    ((:path_remain __path_remain) 0.0)
    ((:has_stop_point __has_stop_point) nil)
    ((:is_full_stop __is_full_stop) nil)
    ((:is_stopped __is_stopped) nil)
    ((:lon_acc_jerk __lon_acc_jerk) 0.0)
    ((:acceleration_cmd __acceleration_cmd) 0.0)
    ((:acceleration_cmd_closeloop __acceleration_cmd_closeloop) 0.0)
    ((:preview_acceleration_reference __preview_acceleration_reference) 0.0)
    ((:slope_offset_compensation __slope_offset_compensation) 0.0)
    ((:turning_offset_compensation __turning_offset_compensation) 0.0)
    ((:speed_error_limited __speed_error_limited) 0.0)
    ((:speed_error __speed_error) 0.0)
    ((:speed_offset __speed_offset) 0.0)
    ((:station_error_limited __station_error_limited) 0.0)
    ((:station_error __station_error) 0.0)
    ((:lon_target_point_s __lon_target_point_s) 0.0)
    ((:lon_calculate_time __lon_calculate_time) 0)
    ((:lon_calculate_time_max __lon_calculate_time_max) 0)
    ((:ref_curvature __ref_curvature) 0.0)
    ((:ref_heading __ref_heading) 0.0)
    ((:current_heading __current_heading) 0.0)
    ((:heading_error __heading_error) 0.0)
    ((:heading_error_rate __heading_error_rate) 0.0)
    ((:lateral_error __lateral_error) 0.0)
    ((:lateral_error_rate __lateral_error_rate) 0.0)
    ((:lon_error __lon_error) 0.0)
    ((:front_steering_value_fd __front_steering_value_fd) 0.0)
    ((:front_steering_target __front_steering_target) 0.0)
    ((:front_steering_rate __front_steering_rate) 0.0)
    ((:front_steer_angle_feedforward __front_steer_angle_feedforward) 0.0)
    ((:front_steer_angle_feedback __front_steer_angle_feedback) 0.0)
    ((:front_steer_angle_lateral_contribution __front_steer_angle_lateral_contribution) 0.0)
    ((:front_steer_angle_lateral_rate_contribution __front_steer_angle_lateral_rate_contribution) 0.0)
    ((:front_steer_angle_heading_contribution __front_steer_angle_heading_contribution) 0.0)
    ((:front_steer_angle_heading_rate_contribution __front_steer_angle_heading_rate_contribution) 0.0)
    ((:rear_steering_value_fd __rear_steering_value_fd) 0.0)
    ((:rear_steering_target __rear_steering_target) 0.0)
    ((:rear_steering_rate __rear_steering_rate) 0.0)
    ((:rear_steer_angle_feedforward __rear_steer_angle_feedforward) 0.0)
    ((:rear_steer_angle_feedback __rear_steer_angle_feedback) 0.0)
    ((:rear_steer_angle_lateral_contribution __rear_steer_angle_lateral_contribution) 0.0)
    ((:rear_steer_angle_lateral_rate_contribution __rear_steer_angle_lateral_rate_contribution) 0.0)
    ((:rear_steer_angle_heading_contribution __rear_steer_angle_heading_contribution) 0.0)
    ((:rear_steer_angle_heading_rate_contribution __rear_steer_angle_heading_rate_contribution) 0.0)
    ((:matrix_k_00 __matrix_k_00) 0.0)
    ((:matrix_k_01 __matrix_k_01) 0.0)
    ((:matrix_k_02 __matrix_k_02) 0.0)
    ((:matrix_k_03 __matrix_k_03) 0.0)
    ((:matrix_k_10 __matrix_k_10) 0.0)
    ((:matrix_k_11 __matrix_k_11) 0.0)
    ((:matrix_k_12 __matrix_k_12) 0.0)
    ((:matrix_k_13 __matrix_k_13) 0.0)
    ((:matrix_state_0 __matrix_state_0) 0.0)
    ((:matrix_state_1 __matrix_state_1) 0.0)
    ((:matrix_state_2 __matrix_state_2) 0.0)
    ((:matrix_state_3 __matrix_state_3) 0.0)
    ((:matrix_q_updated_0 __matrix_q_updated_0) 0.0)
    ((:matrix_q_updated_1 __matrix_q_updated_1) 0.0)
    ((:matrix_q_updated_2 __matrix_q_updated_2) 0.0)
    ((:matrix_q_updated_3 __matrix_q_updated_3) 0.0)
    ((:current_x __current_x) 0.0)
    ((:current_y __current_y) 0.0)
    ((:target_point_x __target_point_x) 0.0)
    ((:target_point_y __target_point_y) 0.0)
    ((:lat_target_point_s __lat_target_point_s) 0.0)
    ((:lqr_calculate_time __lqr_calculate_time) 0)
    ((:lqr_calculate_time_max __lqr_calculate_time_max) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _driving_mode (round __driving_mode))
   (setq _driving_mode_fd (round __driving_mode_fd))
   (setq _gear_location_fd (round __gear_location_fd))
   (setq _gear_location_cmd (round __gear_location_cmd))
   (setq _epb_level_fd (round __epb_level_fd))
   (setq _epb_level_cmd (round __epb_level_cmd))
   (setq _speed_mps (float __speed_mps))
   (setq _speed_reference (float __speed_reference))
   (setq _accel_value_fd (float __accel_value_fd))
   (setq _accel_value_cmd (float __accel_value_cmd))
   (setq _brake_value_fd (float __brake_value_fd))
   (setq _brake_value_cmd (float __brake_value_cmd))
   (setq _path_remain (float __path_remain))
   (setq _has_stop_point __has_stop_point)
   (setq _is_full_stop __is_full_stop)
   (setq _is_stopped __is_stopped)
   (setq _lon_acc_jerk (float __lon_acc_jerk))
   (setq _acceleration_cmd (float __acceleration_cmd))
   (setq _acceleration_cmd_closeloop (float __acceleration_cmd_closeloop))
   (setq _preview_acceleration_reference (float __preview_acceleration_reference))
   (setq _slope_offset_compensation (float __slope_offset_compensation))
   (setq _turning_offset_compensation (float __turning_offset_compensation))
   (setq _speed_error_limited (float __speed_error_limited))
   (setq _speed_error (float __speed_error))
   (setq _speed_offset (float __speed_offset))
   (setq _station_error_limited (float __station_error_limited))
   (setq _station_error (float __station_error))
   (setq _lon_target_point_s (float __lon_target_point_s))
   (setq _lon_calculate_time (round __lon_calculate_time))
   (setq _lon_calculate_time_max (round __lon_calculate_time_max))
   (setq _ref_curvature (float __ref_curvature))
   (setq _ref_heading (float __ref_heading))
   (setq _current_heading (float __current_heading))
   (setq _heading_error (float __heading_error))
   (setq _heading_error_rate (float __heading_error_rate))
   (setq _lateral_error (float __lateral_error))
   (setq _lateral_error_rate (float __lateral_error_rate))
   (setq _lon_error (float __lon_error))
   (setq _front_steering_value_fd (float __front_steering_value_fd))
   (setq _front_steering_target (float __front_steering_target))
   (setq _front_steering_rate (float __front_steering_rate))
   (setq _front_steer_angle_feedforward (float __front_steer_angle_feedforward))
   (setq _front_steer_angle_feedback (float __front_steer_angle_feedback))
   (setq _front_steer_angle_lateral_contribution (float __front_steer_angle_lateral_contribution))
   (setq _front_steer_angle_lateral_rate_contribution (float __front_steer_angle_lateral_rate_contribution))
   (setq _front_steer_angle_heading_contribution (float __front_steer_angle_heading_contribution))
   (setq _front_steer_angle_heading_rate_contribution (float __front_steer_angle_heading_rate_contribution))
   (setq _rear_steering_value_fd (float __rear_steering_value_fd))
   (setq _rear_steering_target (float __rear_steering_target))
   (setq _rear_steering_rate (float __rear_steering_rate))
   (setq _rear_steer_angle_feedforward (float __rear_steer_angle_feedforward))
   (setq _rear_steer_angle_feedback (float __rear_steer_angle_feedback))
   (setq _rear_steer_angle_lateral_contribution (float __rear_steer_angle_lateral_contribution))
   (setq _rear_steer_angle_lateral_rate_contribution (float __rear_steer_angle_lateral_rate_contribution))
   (setq _rear_steer_angle_heading_contribution (float __rear_steer_angle_heading_contribution))
   (setq _rear_steer_angle_heading_rate_contribution (float __rear_steer_angle_heading_rate_contribution))
   (setq _matrix_k_00 (float __matrix_k_00))
   (setq _matrix_k_01 (float __matrix_k_01))
   (setq _matrix_k_02 (float __matrix_k_02))
   (setq _matrix_k_03 (float __matrix_k_03))
   (setq _matrix_k_10 (float __matrix_k_10))
   (setq _matrix_k_11 (float __matrix_k_11))
   (setq _matrix_k_12 (float __matrix_k_12))
   (setq _matrix_k_13 (float __matrix_k_13))
   (setq _matrix_state_0 (float __matrix_state_0))
   (setq _matrix_state_1 (float __matrix_state_1))
   (setq _matrix_state_2 (float __matrix_state_2))
   (setq _matrix_state_3 (float __matrix_state_3))
   (setq _matrix_q_updated_0 (float __matrix_q_updated_0))
   (setq _matrix_q_updated_1 (float __matrix_q_updated_1))
   (setq _matrix_q_updated_2 (float __matrix_q_updated_2))
   (setq _matrix_q_updated_3 (float __matrix_q_updated_3))
   (setq _current_x (float __current_x))
   (setq _current_y (float __current_y))
   (setq _target_point_x (float __target_point_x))
   (setq _target_point_y (float __target_point_y))
   (setq _lat_target_point_s (float __lat_target_point_s))
   (setq _lqr_calculate_time (round __lqr_calculate_time))
   (setq _lqr_calculate_time_max (round __lqr_calculate_time_max))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:driving_mode_fd
   (&optional __driving_mode_fd)
   (if __driving_mode_fd (setq _driving_mode_fd __driving_mode_fd)) _driving_mode_fd)
  (:gear_location_fd
   (&optional __gear_location_fd)
   (if __gear_location_fd (setq _gear_location_fd __gear_location_fd)) _gear_location_fd)
  (:gear_location_cmd
   (&optional __gear_location_cmd)
   (if __gear_location_cmd (setq _gear_location_cmd __gear_location_cmd)) _gear_location_cmd)
  (:epb_level_fd
   (&optional __epb_level_fd)
   (if __epb_level_fd (setq _epb_level_fd __epb_level_fd)) _epb_level_fd)
  (:epb_level_cmd
   (&optional __epb_level_cmd)
   (if __epb_level_cmd (setq _epb_level_cmd __epb_level_cmd)) _epb_level_cmd)
  (:speed_mps
   (&optional __speed_mps)
   (if __speed_mps (setq _speed_mps __speed_mps)) _speed_mps)
  (:speed_reference
   (&optional __speed_reference)
   (if __speed_reference (setq _speed_reference __speed_reference)) _speed_reference)
  (:accel_value_fd
   (&optional __accel_value_fd)
   (if __accel_value_fd (setq _accel_value_fd __accel_value_fd)) _accel_value_fd)
  (:accel_value_cmd
   (&optional __accel_value_cmd)
   (if __accel_value_cmd (setq _accel_value_cmd __accel_value_cmd)) _accel_value_cmd)
  (:brake_value_fd
   (&optional __brake_value_fd)
   (if __brake_value_fd (setq _brake_value_fd __brake_value_fd)) _brake_value_fd)
  (:brake_value_cmd
   (&optional __brake_value_cmd)
   (if __brake_value_cmd (setq _brake_value_cmd __brake_value_cmd)) _brake_value_cmd)
  (:path_remain
   (&optional __path_remain)
   (if __path_remain (setq _path_remain __path_remain)) _path_remain)
  (:has_stop_point
   (&optional __has_stop_point)
   (if __has_stop_point (setq _has_stop_point __has_stop_point)) _has_stop_point)
  (:is_full_stop
   (&optional __is_full_stop)
   (if __is_full_stop (setq _is_full_stop __is_full_stop)) _is_full_stop)
  (:is_stopped
   (&optional __is_stopped)
   (if __is_stopped (setq _is_stopped __is_stopped)) _is_stopped)
  (:lon_acc_jerk
   (&optional __lon_acc_jerk)
   (if __lon_acc_jerk (setq _lon_acc_jerk __lon_acc_jerk)) _lon_acc_jerk)
  (:acceleration_cmd
   (&optional __acceleration_cmd)
   (if __acceleration_cmd (setq _acceleration_cmd __acceleration_cmd)) _acceleration_cmd)
  (:acceleration_cmd_closeloop
   (&optional __acceleration_cmd_closeloop)
   (if __acceleration_cmd_closeloop (setq _acceleration_cmd_closeloop __acceleration_cmd_closeloop)) _acceleration_cmd_closeloop)
  (:preview_acceleration_reference
   (&optional __preview_acceleration_reference)
   (if __preview_acceleration_reference (setq _preview_acceleration_reference __preview_acceleration_reference)) _preview_acceleration_reference)
  (:slope_offset_compensation
   (&optional __slope_offset_compensation)
   (if __slope_offset_compensation (setq _slope_offset_compensation __slope_offset_compensation)) _slope_offset_compensation)
  (:turning_offset_compensation
   (&optional __turning_offset_compensation)
   (if __turning_offset_compensation (setq _turning_offset_compensation __turning_offset_compensation)) _turning_offset_compensation)
  (:speed_error_limited
   (&optional __speed_error_limited)
   (if __speed_error_limited (setq _speed_error_limited __speed_error_limited)) _speed_error_limited)
  (:speed_error
   (&optional __speed_error)
   (if __speed_error (setq _speed_error __speed_error)) _speed_error)
  (:speed_offset
   (&optional __speed_offset)
   (if __speed_offset (setq _speed_offset __speed_offset)) _speed_offset)
  (:station_error_limited
   (&optional __station_error_limited)
   (if __station_error_limited (setq _station_error_limited __station_error_limited)) _station_error_limited)
  (:station_error
   (&optional __station_error)
   (if __station_error (setq _station_error __station_error)) _station_error)
  (:lon_target_point_s
   (&optional __lon_target_point_s)
   (if __lon_target_point_s (setq _lon_target_point_s __lon_target_point_s)) _lon_target_point_s)
  (:lon_calculate_time
   (&optional __lon_calculate_time)
   (if __lon_calculate_time (setq _lon_calculate_time __lon_calculate_time)) _lon_calculate_time)
  (:lon_calculate_time_max
   (&optional __lon_calculate_time_max)
   (if __lon_calculate_time_max (setq _lon_calculate_time_max __lon_calculate_time_max)) _lon_calculate_time_max)
  (:ref_curvature
   (&optional __ref_curvature)
   (if __ref_curvature (setq _ref_curvature __ref_curvature)) _ref_curvature)
  (:ref_heading
   (&optional __ref_heading)
   (if __ref_heading (setq _ref_heading __ref_heading)) _ref_heading)
  (:current_heading
   (&optional __current_heading)
   (if __current_heading (setq _current_heading __current_heading)) _current_heading)
  (:heading_error
   (&optional __heading_error)
   (if __heading_error (setq _heading_error __heading_error)) _heading_error)
  (:heading_error_rate
   (&optional __heading_error_rate)
   (if __heading_error_rate (setq _heading_error_rate __heading_error_rate)) _heading_error_rate)
  (:lateral_error
   (&optional __lateral_error)
   (if __lateral_error (setq _lateral_error __lateral_error)) _lateral_error)
  (:lateral_error_rate
   (&optional __lateral_error_rate)
   (if __lateral_error_rate (setq _lateral_error_rate __lateral_error_rate)) _lateral_error_rate)
  (:lon_error
   (&optional __lon_error)
   (if __lon_error (setq _lon_error __lon_error)) _lon_error)
  (:front_steering_value_fd
   (&optional __front_steering_value_fd)
   (if __front_steering_value_fd (setq _front_steering_value_fd __front_steering_value_fd)) _front_steering_value_fd)
  (:front_steering_target
   (&optional __front_steering_target)
   (if __front_steering_target (setq _front_steering_target __front_steering_target)) _front_steering_target)
  (:front_steering_rate
   (&optional __front_steering_rate)
   (if __front_steering_rate (setq _front_steering_rate __front_steering_rate)) _front_steering_rate)
  (:front_steer_angle_feedforward
   (&optional __front_steer_angle_feedforward)
   (if __front_steer_angle_feedforward (setq _front_steer_angle_feedforward __front_steer_angle_feedforward)) _front_steer_angle_feedforward)
  (:front_steer_angle_feedback
   (&optional __front_steer_angle_feedback)
   (if __front_steer_angle_feedback (setq _front_steer_angle_feedback __front_steer_angle_feedback)) _front_steer_angle_feedback)
  (:front_steer_angle_lateral_contribution
   (&optional __front_steer_angle_lateral_contribution)
   (if __front_steer_angle_lateral_contribution (setq _front_steer_angle_lateral_contribution __front_steer_angle_lateral_contribution)) _front_steer_angle_lateral_contribution)
  (:front_steer_angle_lateral_rate_contribution
   (&optional __front_steer_angle_lateral_rate_contribution)
   (if __front_steer_angle_lateral_rate_contribution (setq _front_steer_angle_lateral_rate_contribution __front_steer_angle_lateral_rate_contribution)) _front_steer_angle_lateral_rate_contribution)
  (:front_steer_angle_heading_contribution
   (&optional __front_steer_angle_heading_contribution)
   (if __front_steer_angle_heading_contribution (setq _front_steer_angle_heading_contribution __front_steer_angle_heading_contribution)) _front_steer_angle_heading_contribution)
  (:front_steer_angle_heading_rate_contribution
   (&optional __front_steer_angle_heading_rate_contribution)
   (if __front_steer_angle_heading_rate_contribution (setq _front_steer_angle_heading_rate_contribution __front_steer_angle_heading_rate_contribution)) _front_steer_angle_heading_rate_contribution)
  (:rear_steering_value_fd
   (&optional __rear_steering_value_fd)
   (if __rear_steering_value_fd (setq _rear_steering_value_fd __rear_steering_value_fd)) _rear_steering_value_fd)
  (:rear_steering_target
   (&optional __rear_steering_target)
   (if __rear_steering_target (setq _rear_steering_target __rear_steering_target)) _rear_steering_target)
  (:rear_steering_rate
   (&optional __rear_steering_rate)
   (if __rear_steering_rate (setq _rear_steering_rate __rear_steering_rate)) _rear_steering_rate)
  (:rear_steer_angle_feedforward
   (&optional __rear_steer_angle_feedforward)
   (if __rear_steer_angle_feedforward (setq _rear_steer_angle_feedforward __rear_steer_angle_feedforward)) _rear_steer_angle_feedforward)
  (:rear_steer_angle_feedback
   (&optional __rear_steer_angle_feedback)
   (if __rear_steer_angle_feedback (setq _rear_steer_angle_feedback __rear_steer_angle_feedback)) _rear_steer_angle_feedback)
  (:rear_steer_angle_lateral_contribution
   (&optional __rear_steer_angle_lateral_contribution)
   (if __rear_steer_angle_lateral_contribution (setq _rear_steer_angle_lateral_contribution __rear_steer_angle_lateral_contribution)) _rear_steer_angle_lateral_contribution)
  (:rear_steer_angle_lateral_rate_contribution
   (&optional __rear_steer_angle_lateral_rate_contribution)
   (if __rear_steer_angle_lateral_rate_contribution (setq _rear_steer_angle_lateral_rate_contribution __rear_steer_angle_lateral_rate_contribution)) _rear_steer_angle_lateral_rate_contribution)
  (:rear_steer_angle_heading_contribution
   (&optional __rear_steer_angle_heading_contribution)
   (if __rear_steer_angle_heading_contribution (setq _rear_steer_angle_heading_contribution __rear_steer_angle_heading_contribution)) _rear_steer_angle_heading_contribution)
  (:rear_steer_angle_heading_rate_contribution
   (&optional __rear_steer_angle_heading_rate_contribution)
   (if __rear_steer_angle_heading_rate_contribution (setq _rear_steer_angle_heading_rate_contribution __rear_steer_angle_heading_rate_contribution)) _rear_steer_angle_heading_rate_contribution)
  (:matrix_k_00
   (&optional __matrix_k_00)
   (if __matrix_k_00 (setq _matrix_k_00 __matrix_k_00)) _matrix_k_00)
  (:matrix_k_01
   (&optional __matrix_k_01)
   (if __matrix_k_01 (setq _matrix_k_01 __matrix_k_01)) _matrix_k_01)
  (:matrix_k_02
   (&optional __matrix_k_02)
   (if __matrix_k_02 (setq _matrix_k_02 __matrix_k_02)) _matrix_k_02)
  (:matrix_k_03
   (&optional __matrix_k_03)
   (if __matrix_k_03 (setq _matrix_k_03 __matrix_k_03)) _matrix_k_03)
  (:matrix_k_10
   (&optional __matrix_k_10)
   (if __matrix_k_10 (setq _matrix_k_10 __matrix_k_10)) _matrix_k_10)
  (:matrix_k_11
   (&optional __matrix_k_11)
   (if __matrix_k_11 (setq _matrix_k_11 __matrix_k_11)) _matrix_k_11)
  (:matrix_k_12
   (&optional __matrix_k_12)
   (if __matrix_k_12 (setq _matrix_k_12 __matrix_k_12)) _matrix_k_12)
  (:matrix_k_13
   (&optional __matrix_k_13)
   (if __matrix_k_13 (setq _matrix_k_13 __matrix_k_13)) _matrix_k_13)
  (:matrix_state_0
   (&optional __matrix_state_0)
   (if __matrix_state_0 (setq _matrix_state_0 __matrix_state_0)) _matrix_state_0)
  (:matrix_state_1
   (&optional __matrix_state_1)
   (if __matrix_state_1 (setq _matrix_state_1 __matrix_state_1)) _matrix_state_1)
  (:matrix_state_2
   (&optional __matrix_state_2)
   (if __matrix_state_2 (setq _matrix_state_2 __matrix_state_2)) _matrix_state_2)
  (:matrix_state_3
   (&optional __matrix_state_3)
   (if __matrix_state_3 (setq _matrix_state_3 __matrix_state_3)) _matrix_state_3)
  (:matrix_q_updated_0
   (&optional __matrix_q_updated_0)
   (if __matrix_q_updated_0 (setq _matrix_q_updated_0 __matrix_q_updated_0)) _matrix_q_updated_0)
  (:matrix_q_updated_1
   (&optional __matrix_q_updated_1)
   (if __matrix_q_updated_1 (setq _matrix_q_updated_1 __matrix_q_updated_1)) _matrix_q_updated_1)
  (:matrix_q_updated_2
   (&optional __matrix_q_updated_2)
   (if __matrix_q_updated_2 (setq _matrix_q_updated_2 __matrix_q_updated_2)) _matrix_q_updated_2)
  (:matrix_q_updated_3
   (&optional __matrix_q_updated_3)
   (if __matrix_q_updated_3 (setq _matrix_q_updated_3 __matrix_q_updated_3)) _matrix_q_updated_3)
  (:current_x
   (&optional __current_x)
   (if __current_x (setq _current_x __current_x)) _current_x)
  (:current_y
   (&optional __current_y)
   (if __current_y (setq _current_y __current_y)) _current_y)
  (:target_point_x
   (&optional __target_point_x)
   (if __target_point_x (setq _target_point_x __target_point_x)) _target_point_x)
  (:target_point_y
   (&optional __target_point_y)
   (if __target_point_y (setq _target_point_y __target_point_y)) _target_point_y)
  (:lat_target_point_s
   (&optional __lat_target_point_s)
   (if __lat_target_point_s (setq _lat_target_point_s __lat_target_point_s)) _lat_target_point_s)
  (:lqr_calculate_time
   (&optional __lqr_calculate_time)
   (if __lqr_calculate_time (setq _lqr_calculate_time __lqr_calculate_time)) _lqr_calculate_time)
  (:lqr_calculate_time_max
   (&optional __lqr_calculate_time_max)
   (if __lqr_calculate_time_max (setq _lqr_calculate_time_max __lqr_calculate_time_max)) _lqr_calculate_time_max)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _driving_mode
    4
    ;; int32 _driving_mode_fd
    4
    ;; int32 _gear_location_fd
    4
    ;; int32 _gear_location_cmd
    4
    ;; int32 _epb_level_fd
    4
    ;; int32 _epb_level_cmd
    4
    ;; float64 _speed_mps
    8
    ;; float64 _speed_reference
    8
    ;; float64 _accel_value_fd
    8
    ;; float64 _accel_value_cmd
    8
    ;; float64 _brake_value_fd
    8
    ;; float64 _brake_value_cmd
    8
    ;; float64 _path_remain
    8
    ;; bool _has_stop_point
    1
    ;; bool _is_full_stop
    1
    ;; bool _is_stopped
    1
    ;; float64 _lon_acc_jerk
    8
    ;; float64 _acceleration_cmd
    8
    ;; float64 _acceleration_cmd_closeloop
    8
    ;; float64 _preview_acceleration_reference
    8
    ;; float64 _slope_offset_compensation
    8
    ;; float64 _turning_offset_compensation
    8
    ;; float64 _speed_error_limited
    8
    ;; float64 _speed_error
    8
    ;; float64 _speed_offset
    8
    ;; float64 _station_error_limited
    8
    ;; float64 _station_error
    8
    ;; float64 _lon_target_point_s
    8
    ;; int64 _lon_calculate_time
    8
    ;; int64 _lon_calculate_time_max
    8
    ;; float64 _ref_curvature
    8
    ;; float64 _ref_heading
    8
    ;; float64 _current_heading
    8
    ;; float64 _heading_error
    8
    ;; float64 _heading_error_rate
    8
    ;; float64 _lateral_error
    8
    ;; float64 _lateral_error_rate
    8
    ;; float64 _lon_error
    8
    ;; float64 _front_steering_value_fd
    8
    ;; float64 _front_steering_target
    8
    ;; float64 _front_steering_rate
    8
    ;; float64 _front_steer_angle_feedforward
    8
    ;; float64 _front_steer_angle_feedback
    8
    ;; float64 _front_steer_angle_lateral_contribution
    8
    ;; float64 _front_steer_angle_lateral_rate_contribution
    8
    ;; float64 _front_steer_angle_heading_contribution
    8
    ;; float64 _front_steer_angle_heading_rate_contribution
    8
    ;; float64 _rear_steering_value_fd
    8
    ;; float64 _rear_steering_target
    8
    ;; float64 _rear_steering_rate
    8
    ;; float64 _rear_steer_angle_feedforward
    8
    ;; float64 _rear_steer_angle_feedback
    8
    ;; float64 _rear_steer_angle_lateral_contribution
    8
    ;; float64 _rear_steer_angle_lateral_rate_contribution
    8
    ;; float64 _rear_steer_angle_heading_contribution
    8
    ;; float64 _rear_steer_angle_heading_rate_contribution
    8
    ;; float64 _matrix_k_00
    8
    ;; float64 _matrix_k_01
    8
    ;; float64 _matrix_k_02
    8
    ;; float64 _matrix_k_03
    8
    ;; float64 _matrix_k_10
    8
    ;; float64 _matrix_k_11
    8
    ;; float64 _matrix_k_12
    8
    ;; float64 _matrix_k_13
    8
    ;; float64 _matrix_state_0
    8
    ;; float64 _matrix_state_1
    8
    ;; float64 _matrix_state_2
    8
    ;; float64 _matrix_state_3
    8
    ;; float64 _matrix_q_updated_0
    8
    ;; float64 _matrix_q_updated_1
    8
    ;; float64 _matrix_q_updated_2
    8
    ;; float64 _matrix_q_updated_3
    8
    ;; float64 _current_x
    8
    ;; float64 _current_y
    8
    ;; float64 _target_point_x
    8
    ;; float64 _target_point_y
    8
    ;; float64 _lat_target_point_s
    8
    ;; int64 _lqr_calculate_time
    8
    ;; int64 _lqr_calculate_time_max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _driving_mode
       (write-long _driving_mode s)
     ;; int32 _driving_mode_fd
       (write-long _driving_mode_fd s)
     ;; int32 _gear_location_fd
       (write-long _gear_location_fd s)
     ;; int32 _gear_location_cmd
       (write-long _gear_location_cmd s)
     ;; int32 _epb_level_fd
       (write-long _epb_level_fd s)
     ;; int32 _epb_level_cmd
       (write-long _epb_level_cmd s)
     ;; float64 _speed_mps
       (sys::poke _speed_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_reference
       (sys::poke _speed_reference (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_value_fd
       (sys::poke _accel_value_fd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_value_cmd
       (sys::poke _accel_value_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_value_fd
       (sys::poke _brake_value_fd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_value_cmd
       (sys::poke _brake_value_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _path_remain
       (sys::poke _path_remain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _has_stop_point
       (if _has_stop_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_full_stop
       (if _is_full_stop (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_stopped
       (if _is_stopped (write-byte -1 s) (write-byte 0 s))
     ;; float64 _lon_acc_jerk
       (sys::poke _lon_acc_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_cmd
       (sys::poke _acceleration_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_cmd_closeloop
       (sys::poke _acceleration_cmd_closeloop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _preview_acceleration_reference
       (sys::poke _preview_acceleration_reference (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _slope_offset_compensation
       (sys::poke _slope_offset_compensation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _turning_offset_compensation
       (sys::poke _turning_offset_compensation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_error_limited
       (sys::poke _speed_error_limited (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_error
       (sys::poke _speed_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_offset
       (sys::poke _speed_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _station_error_limited
       (sys::poke _station_error_limited (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _station_error
       (sys::poke _station_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon_target_point_s
       (sys::poke _lon_target_point_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _lon_calculate_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lon_calculate_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lon_calculate_time) (= (length (_lon_calculate_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lon_calculate_time . bv) 0) 0) s)
              (write-long (ash (elt (_lon_calculate_time . bv) 1) -1) s))
             ((and (class _lon_calculate_time) (= (length (_lon_calculate_time . bv)) 1)) ;; big1
              (write-long (elt (_lon_calculate_time . bv) 0) s)
              (write-long (if (>= _lon_calculate_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lon_calculate_time s)(write-long (if (>= _lon_calculate_time 0) 0 #xffffffff) s)))
     ;; int64 _lon_calculate_time_max
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lon_calculate_time_max (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lon_calculate_time_max) (= (length (_lon_calculate_time_max . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lon_calculate_time_max . bv) 0) 0) s)
              (write-long (ash (elt (_lon_calculate_time_max . bv) 1) -1) s))
             ((and (class _lon_calculate_time_max) (= (length (_lon_calculate_time_max . bv)) 1)) ;; big1
              (write-long (elt (_lon_calculate_time_max . bv) 0) s)
              (write-long (if (>= _lon_calculate_time_max 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lon_calculate_time_max s)(write-long (if (>= _lon_calculate_time_max 0) 0 #xffffffff) s)))
     ;; float64 _ref_curvature
       (sys::poke _ref_curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ref_heading
       (sys::poke _ref_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_heading
       (sys::poke _current_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_error
       (sys::poke _heading_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_error_rate
       (sys::poke _heading_error_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_error
       (sys::poke _lateral_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_error_rate
       (sys::poke _lateral_error_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon_error
       (sys::poke _lon_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steering_value_fd
       (sys::poke _front_steering_value_fd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steering_target
       (sys::poke _front_steering_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steering_rate
       (sys::poke _front_steering_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steer_angle_feedforward
       (sys::poke _front_steer_angle_feedforward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steer_angle_feedback
       (sys::poke _front_steer_angle_feedback (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steer_angle_lateral_contribution
       (sys::poke _front_steer_angle_lateral_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steer_angle_lateral_rate_contribution
       (sys::poke _front_steer_angle_lateral_rate_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steer_angle_heading_contribution
       (sys::poke _front_steer_angle_heading_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steer_angle_heading_rate_contribution
       (sys::poke _front_steer_angle_heading_rate_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_value_fd
       (sys::poke _rear_steering_value_fd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_target
       (sys::poke _rear_steering_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_rate
       (sys::poke _rear_steering_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer_angle_feedforward
       (sys::poke _rear_steer_angle_feedforward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer_angle_feedback
       (sys::poke _rear_steer_angle_feedback (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer_angle_lateral_contribution
       (sys::poke _rear_steer_angle_lateral_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer_angle_lateral_rate_contribution
       (sys::poke _rear_steer_angle_lateral_rate_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer_angle_heading_contribution
       (sys::poke _rear_steer_angle_heading_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steer_angle_heading_rate_contribution
       (sys::poke _rear_steer_angle_heading_rate_contribution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_00
       (sys::poke _matrix_k_00 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_01
       (sys::poke _matrix_k_01 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_02
       (sys::poke _matrix_k_02 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_03
       (sys::poke _matrix_k_03 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_10
       (sys::poke _matrix_k_10 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_11
       (sys::poke _matrix_k_11 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_12
       (sys::poke _matrix_k_12 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_k_13
       (sys::poke _matrix_k_13 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_state_0
       (sys::poke _matrix_state_0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_state_1
       (sys::poke _matrix_state_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_state_2
       (sys::poke _matrix_state_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_state_3
       (sys::poke _matrix_state_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_q_updated_0
       (sys::poke _matrix_q_updated_0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_q_updated_1
       (sys::poke _matrix_q_updated_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_q_updated_2
       (sys::poke _matrix_q_updated_2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _matrix_q_updated_3
       (sys::poke _matrix_q_updated_3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_x
       (sys::poke _current_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_y
       (sys::poke _current_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_point_x
       (sys::poke _target_point_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_point_y
       (sys::poke _target_point_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat_target_point_s
       (sys::poke _lat_target_point_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _lqr_calculate_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lqr_calculate_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lqr_calculate_time) (= (length (_lqr_calculate_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lqr_calculate_time . bv) 0) 0) s)
              (write-long (ash (elt (_lqr_calculate_time . bv) 1) -1) s))
             ((and (class _lqr_calculate_time) (= (length (_lqr_calculate_time . bv)) 1)) ;; big1
              (write-long (elt (_lqr_calculate_time . bv) 0) s)
              (write-long (if (>= _lqr_calculate_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lqr_calculate_time s)(write-long (if (>= _lqr_calculate_time 0) 0 #xffffffff) s)))
     ;; int64 _lqr_calculate_time_max
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _lqr_calculate_time_max (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _lqr_calculate_time_max) (= (length (_lqr_calculate_time_max . bv)) 2)) ;; bignum
              (write-long (ash (elt (_lqr_calculate_time_max . bv) 0) 0) s)
              (write-long (ash (elt (_lqr_calculate_time_max . bv) 1) -1) s))
             ((and (class _lqr_calculate_time_max) (= (length (_lqr_calculate_time_max . bv)) 1)) ;; big1
              (write-long (elt (_lqr_calculate_time_max . bv) 0) s)
              (write-long (if (>= _lqr_calculate_time_max 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _lqr_calculate_time_max s)(write-long (if (>= _lqr_calculate_time_max 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driving_mode_fd
     (setq _driving_mode_fd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_location_fd
     (setq _gear_location_fd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_location_cmd
     (setq _gear_location_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epb_level_fd
     (setq _epb_level_fd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epb_level_cmd
     (setq _epb_level_cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _speed_mps
     (setq _speed_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_reference
     (setq _speed_reference (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_value_fd
     (setq _accel_value_fd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_value_cmd
     (setq _accel_value_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_value_fd
     (setq _brake_value_fd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_value_cmd
     (setq _brake_value_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _path_remain
     (setq _path_remain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _has_stop_point
     (setq _has_stop_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_full_stop
     (setq _is_full_stop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_stopped
     (setq _is_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _lon_acc_jerk
     (setq _lon_acc_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration_cmd
     (setq _acceleration_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration_cmd_closeloop
     (setq _acceleration_cmd_closeloop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _preview_acceleration_reference
     (setq _preview_acceleration_reference (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _slope_offset_compensation
     (setq _slope_offset_compensation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _turning_offset_compensation
     (setq _turning_offset_compensation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_error_limited
     (setq _speed_error_limited (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_error
     (setq _speed_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_offset
     (setq _speed_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _station_error_limited
     (setq _station_error_limited (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _station_error
     (setq _station_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon_target_point_s
     (setq _lon_target_point_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _lon_calculate_time
#+(or :alpha :irix6 :x86_64)
      (setf _lon_calculate_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lon_calculate_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lon_calculate_time_max
#+(or :alpha :irix6 :x86_64)
      (setf _lon_calculate_time_max (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lon_calculate_time_max (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _ref_curvature
     (setq _ref_curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ref_heading
     (setq _ref_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_heading
     (setq _current_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_error
     (setq _heading_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_error_rate
     (setq _heading_error_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_error
     (setq _lateral_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_error_rate
     (setq _lateral_error_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon_error
     (setq _lon_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steering_value_fd
     (setq _front_steering_value_fd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steering_target
     (setq _front_steering_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steering_rate
     (setq _front_steering_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steer_angle_feedforward
     (setq _front_steer_angle_feedforward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steer_angle_feedback
     (setq _front_steer_angle_feedback (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steer_angle_lateral_contribution
     (setq _front_steer_angle_lateral_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steer_angle_lateral_rate_contribution
     (setq _front_steer_angle_lateral_rate_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steer_angle_heading_contribution
     (setq _front_steer_angle_heading_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steer_angle_heading_rate_contribution
     (setq _front_steer_angle_heading_rate_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_value_fd
     (setq _rear_steering_value_fd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_target
     (setq _rear_steering_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_rate
     (setq _rear_steering_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer_angle_feedforward
     (setq _rear_steer_angle_feedforward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer_angle_feedback
     (setq _rear_steer_angle_feedback (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer_angle_lateral_contribution
     (setq _rear_steer_angle_lateral_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer_angle_lateral_rate_contribution
     (setq _rear_steer_angle_lateral_rate_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer_angle_heading_contribution
     (setq _rear_steer_angle_heading_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steer_angle_heading_rate_contribution
     (setq _rear_steer_angle_heading_rate_contribution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_00
     (setq _matrix_k_00 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_01
     (setq _matrix_k_01 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_02
     (setq _matrix_k_02 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_03
     (setq _matrix_k_03 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_10
     (setq _matrix_k_10 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_11
     (setq _matrix_k_11 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_12
     (setq _matrix_k_12 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_k_13
     (setq _matrix_k_13 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_state_0
     (setq _matrix_state_0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_state_1
     (setq _matrix_state_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_state_2
     (setq _matrix_state_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_state_3
     (setq _matrix_state_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_q_updated_0
     (setq _matrix_q_updated_0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_q_updated_1
     (setq _matrix_q_updated_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_q_updated_2
     (setq _matrix_q_updated_2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _matrix_q_updated_3
     (setq _matrix_q_updated_3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_x
     (setq _current_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_y
     (setq _current_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_point_x
     (setq _target_point_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_point_y
     (setq _target_point_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat_target_point_s
     (setq _lat_target_point_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _lqr_calculate_time
#+(or :alpha :irix6 :x86_64)
      (setf _lqr_calculate_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lqr_calculate_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _lqr_calculate_time_max
#+(or :alpha :irix6 :x86_64)
      (setf _lqr_calculate_time_max (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _lqr_calculate_time_max (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get ros_interface::ControlAnalysis :md5sum-) "6457731febea5c324804cbbe27562bf5")
(setf (get ros_interface::ControlAnalysis :datatype-) "ros_interface/ControlAnalysis")
(setf (get ros_interface::ControlAnalysis :definition-)
      "Header   header     #  
int32   driving_mode     # 驾驶模式
int32   driving_mode_fd     # 驾驶模式反馈
int32   gear_location_fd     # 档位反馈
int32   gear_location_cmd     # 档位命令
int32   epb_level_fd     # EPB状态反馈
int32   epb_level_cmd     # EPB命令
float64   speed_mps     # 车辆速度
float64   speed_reference     # 参考速度
float64   accel_value_fd     # 油门反馈
float64   accel_value_cmd     # 油门命令
float64   brake_value_fd     # 刹车反馈
float64   brake_value_cmd     # 刹车命令
float64   path_remain     # 剩余轨迹里程
bool   has_stop_point     # 是否有停车点
bool   is_full_stop     # 是否有停车轨迹
bool   is_stopped     # 是否停车
float64   lon_acc_jerk     # 纵向加加速度
float64   acceleration_cmd     # 加速度命令
float64   acceleration_cmd_closeloop     # 闭环加速度命令
float64   preview_acceleration_reference     # 预描参考加速度
float64   slope_offset_compensation     # 坡道补偿
float64   turning_offset_compensation     # 转向补偿
float64   speed_error_limited     # 速度差限值
float64   speed_error     # 速度差
float64   speed_offset     #  
float64   station_error_limited     # 位置误差限值
float64   station_error     # 位置误差
float64   lon_target_point_s     # 纵向控制目标点里程
int64   lon_calculate_time     # 纵向计算时间
int64   lon_calculate_time_max     # 纵向时间限值
float64   ref_curvature     # 参考曲率
float64   ref_heading     # 参考航向角
float64   current_heading     # 当前航向角
float64   heading_error     # 航向角误差
float64   heading_error_rate     # 航向角误差率
float64   lateral_error     # 横向误差
float64   lateral_error_rate     # 横向误差率
float64   lon_error     # 纵向误差
float64   front_steering_value_fd     # 前轮转向反馈
float64   front_steering_target     # 前轮目标转向
float64   front_steering_rate     # 前轮转向角速率
float64   front_steer_angle_feedforward     # 前轮前馈计算
float64   front_steer_angle_feedback     # 前轮反馈计算
float64   front_steer_angle_lateral_contribution     # 前轮横向误差贡献
float64   front_steer_angle_lateral_rate_contribution     # 前轮横向误差率贡献
float64   front_steer_angle_heading_contribution     # 前轮航向角误差贡献
float64   front_steer_angle_heading_rate_contribution     # 前轮航向角误差率贡献
float64   rear_steering_value_fd     # 后轮转向反馈
float64   rear_steering_target     # 后轮目标转向
float64   rear_steering_rate     # 后轮转向角速率
float64   rear_steer_angle_feedforward     # 后轮前馈计算
float64   rear_steer_angle_feedback     # 后轮反馈计算
float64   rear_steer_angle_lateral_contribution     # 后轮横向误差贡献
float64   rear_steer_angle_lateral_rate_contribution     # 后轮横向误差率贡献
float64   rear_steer_angle_heading_contribution     # 后轮航向角误差贡献
float64   rear_steer_angle_heading_rate_contribution     # 后轮航向角误差率贡献
float64   matrix_k_00     # k矩阵
float64   matrix_k_01     # k矩阵
float64   matrix_k_02     # k矩阵
float64   matrix_k_03     # k矩阵
float64   matrix_k_10     # k矩阵
float64   matrix_k_11     # k矩阵
float64   matrix_k_12     # k矩阵
float64   matrix_k_13     # k矩阵
float64   matrix_state_0     # 状态矩阵
float64   matrix_state_1     # 状态矩阵
float64   matrix_state_2     # 状态矩阵
float64   matrix_state_3     # 状态矩阵
float64   matrix_q_updated_0     # 权重矩阵
float64   matrix_q_updated_1     # 权重矩阵
float64   matrix_q_updated_2     # 权重矩阵
float64   matrix_q_updated_3     # 权重矩阵
float64   current_x     # 当前位置x
float64   current_y     # 当前位置y
float64   target_point_x     # 目标点x
float64   target_point_y     # 目标点y
float64   lat_target_point_s     # 横向目标点里程
int64   lqr_calculate_time     # LQR计算时间
int64   lqr_calculate_time_max     # LQR计算时间限值

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

")



(provide :ros_interface/ControlAnalysis "6457731febea5c324804cbbe27562bf5")


