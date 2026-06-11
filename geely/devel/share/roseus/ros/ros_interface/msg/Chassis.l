;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Chassis)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Chassis (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::CHASSIS")
  (make-package "ROS_INTERFACE::CHASSIS"))

(in-package "ROS")
;;//! \htmlinclude Chassis.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Chassis
  :super ros::object
  :slots (_header _moving_status _driving_mode _steer_driving_mode _steering_status _front_steering_value _rear_steering_value _steering_torque_nm _front_steering_rate_dps _rear_steering_rate_dps _accel_driving_mode _accel_status _accel_value _brake_driving_mode _brake_status _brake_value _backup_brake_driving_mode _backup_brake_status _backup_brake_value _epb_driving_mode _epb_status _epb_level _engine_status _engine_rpm _engine_torque _speed_mps _odometer_m _fuel_range_m _gear_driving_mode _gear_status _gear_location _driver_seat_belt _high_beam_status _low_beam_status _horn_status _turn_lamp_status _front_wiper_status _rear_wiper_status _position_lamp_status _front_fog_lamp_status _rear_fog_lamp_status _brake_lamp_status _alarm_lamp_status _lf_door_status _rf_door_status _lr_door_status _rr_door_status _rearview_mirror_status _trunk_status _engine_bay_door_status _wheel_direction_rr _wheel_spd_rr _wheel_direction_rl _wheel_spd_rl _wheel_direction_fr _wheel_spd_fr _wheel_direction_fl _wheel_spd_fl _is_tire_pressure_ok _is_tire_pressure_lf_valid _tire_pressure_lf _is_tire_pressure_rf_valid _tire_pressure_rf _is_tire_pressure_lr_valid _tire_pressure_lr _is_tire_pressure_rr_valid _tire_pressure_rr _battery_power_percentage _air_bag_status _charging_gun_status _vehicle_power_status _chassis_error_code ))

(defmethod ros_interface::Chassis
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:moving_status __moving_status) 0)
    ((:driving_mode __driving_mode) 0)
    ((:steer_driving_mode __steer_driving_mode) 0)
    ((:steering_status __steering_status) 0)
    ((:front_steering_value __front_steering_value) 0.0)
    ((:rear_steering_value __rear_steering_value) 0.0)
    ((:steering_torque_nm __steering_torque_nm) 0.0)
    ((:front_steering_rate_dps __front_steering_rate_dps) 0.0)
    ((:rear_steering_rate_dps __rear_steering_rate_dps) 0.0)
    ((:accel_driving_mode __accel_driving_mode) 0)
    ((:accel_status __accel_status) 0)
    ((:accel_value __accel_value) 0.0)
    ((:brake_driving_mode __brake_driving_mode) 0)
    ((:brake_status __brake_status) 0)
    ((:brake_value __brake_value) 0.0)
    ((:backup_brake_driving_mode __backup_brake_driving_mode) 0)
    ((:backup_brake_status __backup_brake_status) 0)
    ((:backup_brake_value __backup_brake_value) 0.0)
    ((:epb_driving_mode __epb_driving_mode) 0)
    ((:epb_status __epb_status) 0)
    ((:epb_level __epb_level) 0)
    ((:engine_status __engine_status) 0)
    ((:engine_rpm __engine_rpm) 0.0)
    ((:engine_torque __engine_torque) 0.0)
    ((:speed_mps __speed_mps) 0.0)
    ((:odometer_m __odometer_m) 0.0)
    ((:fuel_range_m __fuel_range_m) 0)
    ((:gear_driving_mode __gear_driving_mode) 0)
    ((:gear_status __gear_status) 0)
    ((:gear_location __gear_location) 0)
    ((:driver_seat_belt __driver_seat_belt) 0)
    ((:high_beam_status __high_beam_status) 0)
    ((:low_beam_status __low_beam_status) 0)
    ((:horn_status __horn_status) 0)
    ((:turn_lamp_status __turn_lamp_status) 0)
    ((:front_wiper_status __front_wiper_status) 0)
    ((:rear_wiper_status __rear_wiper_status) 0)
    ((:position_lamp_status __position_lamp_status) 0)
    ((:front_fog_lamp_status __front_fog_lamp_status) 0)
    ((:rear_fog_lamp_status __rear_fog_lamp_status) 0)
    ((:brake_lamp_status __brake_lamp_status) 0)
    ((:alarm_lamp_status __alarm_lamp_status) 0)
    ((:lf_door_status __lf_door_status) 0)
    ((:rf_door_status __rf_door_status) 0)
    ((:lr_door_status __lr_door_status) 0)
    ((:rr_door_status __rr_door_status) 0)
    ((:rearview_mirror_status __rearview_mirror_status) 0)
    ((:trunk_status __trunk_status) 0)
    ((:engine_bay_door_status __engine_bay_door_status) 0)
    ((:wheel_direction_rr __wheel_direction_rr) 0)
    ((:wheel_spd_rr __wheel_spd_rr) 0.0)
    ((:wheel_direction_rl __wheel_direction_rl) 0)
    ((:wheel_spd_rl __wheel_spd_rl) 0.0)
    ((:wheel_direction_fr __wheel_direction_fr) 0)
    ((:wheel_spd_fr __wheel_spd_fr) 0.0)
    ((:wheel_direction_fl __wheel_direction_fl) 0)
    ((:wheel_spd_fl __wheel_spd_fl) 0.0)
    ((:is_tire_pressure_ok __is_tire_pressure_ok) 0)
    ((:is_tire_pressure_lf_valid __is_tire_pressure_lf_valid) 0)
    ((:tire_pressure_lf __tire_pressure_lf) 0.0)
    ((:is_tire_pressure_rf_valid __is_tire_pressure_rf_valid) 0)
    ((:tire_pressure_rf __tire_pressure_rf) 0.0)
    ((:is_tire_pressure_lr_valid __is_tire_pressure_lr_valid) 0)
    ((:tire_pressure_lr __tire_pressure_lr) 0.0)
    ((:is_tire_pressure_rr_valid __is_tire_pressure_rr_valid) 0)
    ((:tire_pressure_rr __tire_pressure_rr) 0.0)
    ((:battery_power_percentage __battery_power_percentage) 0.0)
    ((:air_bag_status __air_bag_status) 0)
    ((:charging_gun_status __charging_gun_status) 0)
    ((:vehicle_power_status __vehicle_power_status) 0)
    ((:chassis_error_code __chassis_error_code) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _moving_status (round __moving_status))
   (setq _driving_mode (round __driving_mode))
   (setq _steer_driving_mode (round __steer_driving_mode))
   (setq _steering_status (round __steering_status))
   (setq _front_steering_value (float __front_steering_value))
   (setq _rear_steering_value (float __rear_steering_value))
   (setq _steering_torque_nm (float __steering_torque_nm))
   (setq _front_steering_rate_dps (float __front_steering_rate_dps))
   (setq _rear_steering_rate_dps (float __rear_steering_rate_dps))
   (setq _accel_driving_mode (round __accel_driving_mode))
   (setq _accel_status (round __accel_status))
   (setq _accel_value (float __accel_value))
   (setq _brake_driving_mode (round __brake_driving_mode))
   (setq _brake_status (round __brake_status))
   (setq _brake_value (float __brake_value))
   (setq _backup_brake_driving_mode (round __backup_brake_driving_mode))
   (setq _backup_brake_status (round __backup_brake_status))
   (setq _backup_brake_value (float __backup_brake_value))
   (setq _epb_driving_mode (round __epb_driving_mode))
   (setq _epb_status (round __epb_status))
   (setq _epb_level (round __epb_level))
   (setq _engine_status (round __engine_status))
   (setq _engine_rpm (float __engine_rpm))
   (setq _engine_torque (float __engine_torque))
   (setq _speed_mps (float __speed_mps))
   (setq _odometer_m (float __odometer_m))
   (setq _fuel_range_m (round __fuel_range_m))
   (setq _gear_driving_mode (round __gear_driving_mode))
   (setq _gear_status (round __gear_status))
   (setq _gear_location (round __gear_location))
   (setq _driver_seat_belt (round __driver_seat_belt))
   (setq _high_beam_status (round __high_beam_status))
   (setq _low_beam_status (round __low_beam_status))
   (setq _horn_status (round __horn_status))
   (setq _turn_lamp_status (round __turn_lamp_status))
   (setq _front_wiper_status (round __front_wiper_status))
   (setq _rear_wiper_status (round __rear_wiper_status))
   (setq _position_lamp_status (round __position_lamp_status))
   (setq _front_fog_lamp_status (round __front_fog_lamp_status))
   (setq _rear_fog_lamp_status (round __rear_fog_lamp_status))
   (setq _brake_lamp_status (round __brake_lamp_status))
   (setq _alarm_lamp_status (round __alarm_lamp_status))
   (setq _lf_door_status (round __lf_door_status))
   (setq _rf_door_status (round __rf_door_status))
   (setq _lr_door_status (round __lr_door_status))
   (setq _rr_door_status (round __rr_door_status))
   (setq _rearview_mirror_status (round __rearview_mirror_status))
   (setq _trunk_status (round __trunk_status))
   (setq _engine_bay_door_status (round __engine_bay_door_status))
   (setq _wheel_direction_rr (round __wheel_direction_rr))
   (setq _wheel_spd_rr (float __wheel_spd_rr))
   (setq _wheel_direction_rl (round __wheel_direction_rl))
   (setq _wheel_spd_rl (float __wheel_spd_rl))
   (setq _wheel_direction_fr (round __wheel_direction_fr))
   (setq _wheel_spd_fr (float __wheel_spd_fr))
   (setq _wheel_direction_fl (round __wheel_direction_fl))
   (setq _wheel_spd_fl (float __wheel_spd_fl))
   (setq _is_tire_pressure_ok (round __is_tire_pressure_ok))
   (setq _is_tire_pressure_lf_valid (round __is_tire_pressure_lf_valid))
   (setq _tire_pressure_lf (float __tire_pressure_lf))
   (setq _is_tire_pressure_rf_valid (round __is_tire_pressure_rf_valid))
   (setq _tire_pressure_rf (float __tire_pressure_rf))
   (setq _is_tire_pressure_lr_valid (round __is_tire_pressure_lr_valid))
   (setq _tire_pressure_lr (float __tire_pressure_lr))
   (setq _is_tire_pressure_rr_valid (round __is_tire_pressure_rr_valid))
   (setq _tire_pressure_rr (float __tire_pressure_rr))
   (setq _battery_power_percentage (float __battery_power_percentage))
   (setq _air_bag_status (round __air_bag_status))
   (setq _charging_gun_status (round __charging_gun_status))
   (setq _vehicle_power_status (round __vehicle_power_status))
   (setq _chassis_error_code __chassis_error_code)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:moving_status
   (&optional __moving_status)
   (if __moving_status (setq _moving_status __moving_status)) _moving_status)
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:steer_driving_mode
   (&optional __steer_driving_mode)
   (if __steer_driving_mode (setq _steer_driving_mode __steer_driving_mode)) _steer_driving_mode)
  (:steering_status
   (&optional __steering_status)
   (if __steering_status (setq _steering_status __steering_status)) _steering_status)
  (:front_steering_value
   (&optional __front_steering_value)
   (if __front_steering_value (setq _front_steering_value __front_steering_value)) _front_steering_value)
  (:rear_steering_value
   (&optional __rear_steering_value)
   (if __rear_steering_value (setq _rear_steering_value __rear_steering_value)) _rear_steering_value)
  (:steering_torque_nm
   (&optional __steering_torque_nm)
   (if __steering_torque_nm (setq _steering_torque_nm __steering_torque_nm)) _steering_torque_nm)
  (:front_steering_rate_dps
   (&optional __front_steering_rate_dps)
   (if __front_steering_rate_dps (setq _front_steering_rate_dps __front_steering_rate_dps)) _front_steering_rate_dps)
  (:rear_steering_rate_dps
   (&optional __rear_steering_rate_dps)
   (if __rear_steering_rate_dps (setq _rear_steering_rate_dps __rear_steering_rate_dps)) _rear_steering_rate_dps)
  (:accel_driving_mode
   (&optional __accel_driving_mode)
   (if __accel_driving_mode (setq _accel_driving_mode __accel_driving_mode)) _accel_driving_mode)
  (:accel_status
   (&optional __accel_status)
   (if __accel_status (setq _accel_status __accel_status)) _accel_status)
  (:accel_value
   (&optional __accel_value)
   (if __accel_value (setq _accel_value __accel_value)) _accel_value)
  (:brake_driving_mode
   (&optional __brake_driving_mode)
   (if __brake_driving_mode (setq _brake_driving_mode __brake_driving_mode)) _brake_driving_mode)
  (:brake_status
   (&optional __brake_status)
   (if __brake_status (setq _brake_status __brake_status)) _brake_status)
  (:brake_value
   (&optional __brake_value)
   (if __brake_value (setq _brake_value __brake_value)) _brake_value)
  (:backup_brake_driving_mode
   (&optional __backup_brake_driving_mode)
   (if __backup_brake_driving_mode (setq _backup_brake_driving_mode __backup_brake_driving_mode)) _backup_brake_driving_mode)
  (:backup_brake_status
   (&optional __backup_brake_status)
   (if __backup_brake_status (setq _backup_brake_status __backup_brake_status)) _backup_brake_status)
  (:backup_brake_value
   (&optional __backup_brake_value)
   (if __backup_brake_value (setq _backup_brake_value __backup_brake_value)) _backup_brake_value)
  (:epb_driving_mode
   (&optional __epb_driving_mode)
   (if __epb_driving_mode (setq _epb_driving_mode __epb_driving_mode)) _epb_driving_mode)
  (:epb_status
   (&optional __epb_status)
   (if __epb_status (setq _epb_status __epb_status)) _epb_status)
  (:epb_level
   (&optional __epb_level)
   (if __epb_level (setq _epb_level __epb_level)) _epb_level)
  (:engine_status
   (&optional __engine_status)
   (if __engine_status (setq _engine_status __engine_status)) _engine_status)
  (:engine_rpm
   (&optional __engine_rpm)
   (if __engine_rpm (setq _engine_rpm __engine_rpm)) _engine_rpm)
  (:engine_torque
   (&optional __engine_torque)
   (if __engine_torque (setq _engine_torque __engine_torque)) _engine_torque)
  (:speed_mps
   (&optional __speed_mps)
   (if __speed_mps (setq _speed_mps __speed_mps)) _speed_mps)
  (:odometer_m
   (&optional __odometer_m)
   (if __odometer_m (setq _odometer_m __odometer_m)) _odometer_m)
  (:fuel_range_m
   (&optional __fuel_range_m)
   (if __fuel_range_m (setq _fuel_range_m __fuel_range_m)) _fuel_range_m)
  (:gear_driving_mode
   (&optional __gear_driving_mode)
   (if __gear_driving_mode (setq _gear_driving_mode __gear_driving_mode)) _gear_driving_mode)
  (:gear_status
   (&optional __gear_status)
   (if __gear_status (setq _gear_status __gear_status)) _gear_status)
  (:gear_location
   (&optional __gear_location)
   (if __gear_location (setq _gear_location __gear_location)) _gear_location)
  (:driver_seat_belt
   (&optional __driver_seat_belt)
   (if __driver_seat_belt (setq _driver_seat_belt __driver_seat_belt)) _driver_seat_belt)
  (:high_beam_status
   (&optional __high_beam_status)
   (if __high_beam_status (setq _high_beam_status __high_beam_status)) _high_beam_status)
  (:low_beam_status
   (&optional __low_beam_status)
   (if __low_beam_status (setq _low_beam_status __low_beam_status)) _low_beam_status)
  (:horn_status
   (&optional __horn_status)
   (if __horn_status (setq _horn_status __horn_status)) _horn_status)
  (:turn_lamp_status
   (&optional __turn_lamp_status)
   (if __turn_lamp_status (setq _turn_lamp_status __turn_lamp_status)) _turn_lamp_status)
  (:front_wiper_status
   (&optional __front_wiper_status)
   (if __front_wiper_status (setq _front_wiper_status __front_wiper_status)) _front_wiper_status)
  (:rear_wiper_status
   (&optional __rear_wiper_status)
   (if __rear_wiper_status (setq _rear_wiper_status __rear_wiper_status)) _rear_wiper_status)
  (:position_lamp_status
   (&optional __position_lamp_status)
   (if __position_lamp_status (setq _position_lamp_status __position_lamp_status)) _position_lamp_status)
  (:front_fog_lamp_status
   (&optional __front_fog_lamp_status)
   (if __front_fog_lamp_status (setq _front_fog_lamp_status __front_fog_lamp_status)) _front_fog_lamp_status)
  (:rear_fog_lamp_status
   (&optional __rear_fog_lamp_status)
   (if __rear_fog_lamp_status (setq _rear_fog_lamp_status __rear_fog_lamp_status)) _rear_fog_lamp_status)
  (:brake_lamp_status
   (&optional __brake_lamp_status)
   (if __brake_lamp_status (setq _brake_lamp_status __brake_lamp_status)) _brake_lamp_status)
  (:alarm_lamp_status
   (&optional __alarm_lamp_status)
   (if __alarm_lamp_status (setq _alarm_lamp_status __alarm_lamp_status)) _alarm_lamp_status)
  (:lf_door_status
   (&optional __lf_door_status)
   (if __lf_door_status (setq _lf_door_status __lf_door_status)) _lf_door_status)
  (:rf_door_status
   (&optional __rf_door_status)
   (if __rf_door_status (setq _rf_door_status __rf_door_status)) _rf_door_status)
  (:lr_door_status
   (&optional __lr_door_status)
   (if __lr_door_status (setq _lr_door_status __lr_door_status)) _lr_door_status)
  (:rr_door_status
   (&optional __rr_door_status)
   (if __rr_door_status (setq _rr_door_status __rr_door_status)) _rr_door_status)
  (:rearview_mirror_status
   (&optional __rearview_mirror_status)
   (if __rearview_mirror_status (setq _rearview_mirror_status __rearview_mirror_status)) _rearview_mirror_status)
  (:trunk_status
   (&optional __trunk_status)
   (if __trunk_status (setq _trunk_status __trunk_status)) _trunk_status)
  (:engine_bay_door_status
   (&optional __engine_bay_door_status)
   (if __engine_bay_door_status (setq _engine_bay_door_status __engine_bay_door_status)) _engine_bay_door_status)
  (:wheel_direction_rr
   (&optional __wheel_direction_rr)
   (if __wheel_direction_rr (setq _wheel_direction_rr __wheel_direction_rr)) _wheel_direction_rr)
  (:wheel_spd_rr
   (&optional __wheel_spd_rr)
   (if __wheel_spd_rr (setq _wheel_spd_rr __wheel_spd_rr)) _wheel_spd_rr)
  (:wheel_direction_rl
   (&optional __wheel_direction_rl)
   (if __wheel_direction_rl (setq _wheel_direction_rl __wheel_direction_rl)) _wheel_direction_rl)
  (:wheel_spd_rl
   (&optional __wheel_spd_rl)
   (if __wheel_spd_rl (setq _wheel_spd_rl __wheel_spd_rl)) _wheel_spd_rl)
  (:wheel_direction_fr
   (&optional __wheel_direction_fr)
   (if __wheel_direction_fr (setq _wheel_direction_fr __wheel_direction_fr)) _wheel_direction_fr)
  (:wheel_spd_fr
   (&optional __wheel_spd_fr)
   (if __wheel_spd_fr (setq _wheel_spd_fr __wheel_spd_fr)) _wheel_spd_fr)
  (:wheel_direction_fl
   (&optional __wheel_direction_fl)
   (if __wheel_direction_fl (setq _wheel_direction_fl __wheel_direction_fl)) _wheel_direction_fl)
  (:wheel_spd_fl
   (&optional __wheel_spd_fl)
   (if __wheel_spd_fl (setq _wheel_spd_fl __wheel_spd_fl)) _wheel_spd_fl)
  (:is_tire_pressure_ok
   (&optional __is_tire_pressure_ok)
   (if __is_tire_pressure_ok (setq _is_tire_pressure_ok __is_tire_pressure_ok)) _is_tire_pressure_ok)
  (:is_tire_pressure_lf_valid
   (&optional __is_tire_pressure_lf_valid)
   (if __is_tire_pressure_lf_valid (setq _is_tire_pressure_lf_valid __is_tire_pressure_lf_valid)) _is_tire_pressure_lf_valid)
  (:tire_pressure_lf
   (&optional __tire_pressure_lf)
   (if __tire_pressure_lf (setq _tire_pressure_lf __tire_pressure_lf)) _tire_pressure_lf)
  (:is_tire_pressure_rf_valid
   (&optional __is_tire_pressure_rf_valid)
   (if __is_tire_pressure_rf_valid (setq _is_tire_pressure_rf_valid __is_tire_pressure_rf_valid)) _is_tire_pressure_rf_valid)
  (:tire_pressure_rf
   (&optional __tire_pressure_rf)
   (if __tire_pressure_rf (setq _tire_pressure_rf __tire_pressure_rf)) _tire_pressure_rf)
  (:is_tire_pressure_lr_valid
   (&optional __is_tire_pressure_lr_valid)
   (if __is_tire_pressure_lr_valid (setq _is_tire_pressure_lr_valid __is_tire_pressure_lr_valid)) _is_tire_pressure_lr_valid)
  (:tire_pressure_lr
   (&optional __tire_pressure_lr)
   (if __tire_pressure_lr (setq _tire_pressure_lr __tire_pressure_lr)) _tire_pressure_lr)
  (:is_tire_pressure_rr_valid
   (&optional __is_tire_pressure_rr_valid)
   (if __is_tire_pressure_rr_valid (setq _is_tire_pressure_rr_valid __is_tire_pressure_rr_valid)) _is_tire_pressure_rr_valid)
  (:tire_pressure_rr
   (&optional __tire_pressure_rr)
   (if __tire_pressure_rr (setq _tire_pressure_rr __tire_pressure_rr)) _tire_pressure_rr)
  (:battery_power_percentage
   (&optional __battery_power_percentage)
   (if __battery_power_percentage (setq _battery_power_percentage __battery_power_percentage)) _battery_power_percentage)
  (:air_bag_status
   (&optional __air_bag_status)
   (if __air_bag_status (setq _air_bag_status __air_bag_status)) _air_bag_status)
  (:charging_gun_status
   (&optional __charging_gun_status)
   (if __charging_gun_status (setq _charging_gun_status __charging_gun_status)) _charging_gun_status)
  (:vehicle_power_status
   (&optional __vehicle_power_status)
   (if __vehicle_power_status (setq _vehicle_power_status __vehicle_power_status)) _vehicle_power_status)
  (:chassis_error_code
   (&optional __chassis_error_code)
   (if __chassis_error_code (setq _chassis_error_code __chassis_error_code)) _chassis_error_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _moving_status
    4
    ;; int32 _driving_mode
    4
    ;; int32 _steer_driving_mode
    4
    ;; int32 _steering_status
    4
    ;; float64 _front_steering_value
    8
    ;; float64 _rear_steering_value
    8
    ;; float64 _steering_torque_nm
    8
    ;; float64 _front_steering_rate_dps
    8
    ;; float64 _rear_steering_rate_dps
    8
    ;; int32 _accel_driving_mode
    4
    ;; int32 _accel_status
    4
    ;; float64 _accel_value
    8
    ;; int32 _brake_driving_mode
    4
    ;; int32 _brake_status
    4
    ;; float64 _brake_value
    8
    ;; int32 _backup_brake_driving_mode
    4
    ;; int32 _backup_brake_status
    4
    ;; float64 _backup_brake_value
    8
    ;; int32 _epb_driving_mode
    4
    ;; int32 _epb_status
    4
    ;; int32 _epb_level
    4
    ;; int32 _engine_status
    4
    ;; float64 _engine_rpm
    8
    ;; float64 _engine_torque
    8
    ;; float64 _speed_mps
    8
    ;; float64 _odometer_m
    8
    ;; int32 _fuel_range_m
    4
    ;; int32 _gear_driving_mode
    4
    ;; int32 _gear_status
    4
    ;; int32 _gear_location
    4
    ;; int32 _driver_seat_belt
    4
    ;; int32 _high_beam_status
    4
    ;; int32 _low_beam_status
    4
    ;; int32 _horn_status
    4
    ;; int32 _turn_lamp_status
    4
    ;; int32 _front_wiper_status
    4
    ;; int32 _rear_wiper_status
    4
    ;; int32 _position_lamp_status
    4
    ;; int32 _front_fog_lamp_status
    4
    ;; int32 _rear_fog_lamp_status
    4
    ;; int32 _brake_lamp_status
    4
    ;; int32 _alarm_lamp_status
    4
    ;; int32 _lf_door_status
    4
    ;; int32 _rf_door_status
    4
    ;; int32 _lr_door_status
    4
    ;; int32 _rr_door_status
    4
    ;; int32 _rearview_mirror_status
    4
    ;; int32 _trunk_status
    4
    ;; int32 _engine_bay_door_status
    4
    ;; int32 _wheel_direction_rr
    4
    ;; float64 _wheel_spd_rr
    8
    ;; int32 _wheel_direction_rl
    4
    ;; float64 _wheel_spd_rl
    8
    ;; int32 _wheel_direction_fr
    4
    ;; float64 _wheel_spd_fr
    8
    ;; int32 _wheel_direction_fl
    4
    ;; float64 _wheel_spd_fl
    8
    ;; int32 _is_tire_pressure_ok
    4
    ;; int32 _is_tire_pressure_lf_valid
    4
    ;; float64 _tire_pressure_lf
    8
    ;; int32 _is_tire_pressure_rf_valid
    4
    ;; float64 _tire_pressure_rf
    8
    ;; int32 _is_tire_pressure_lr_valid
    4
    ;; float64 _tire_pressure_lr
    8
    ;; int32 _is_tire_pressure_rr_valid
    4
    ;; float64 _tire_pressure_rr
    8
    ;; float64 _battery_power_percentage
    8
    ;; int32 _air_bag_status
    4
    ;; int32 _charging_gun_status
    4
    ;; int32 _vehicle_power_status
    4
    ;; int32[] _chassis_error_code
    (* 4    (length _chassis_error_code)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _moving_status
       (write-long _moving_status s)
     ;; int32 _driving_mode
       (write-long _driving_mode s)
     ;; int32 _steer_driving_mode
       (write-long _steer_driving_mode s)
     ;; int32 _steering_status
       (write-long _steering_status s)
     ;; float64 _front_steering_value
       (sys::poke _front_steering_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_value
       (sys::poke _rear_steering_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_torque_nm
       (sys::poke _steering_torque_nm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_steering_rate_dps
       (sys::poke _front_steering_rate_dps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_rate_dps
       (sys::poke _rear_steering_rate_dps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _accel_driving_mode
       (write-long _accel_driving_mode s)
     ;; int32 _accel_status
       (write-long _accel_status s)
     ;; float64 _accel_value
       (sys::poke _accel_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _brake_driving_mode
       (write-long _brake_driving_mode s)
     ;; int32 _brake_status
       (write-long _brake_status s)
     ;; float64 _brake_value
       (sys::poke _brake_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _backup_brake_driving_mode
       (write-long _backup_brake_driving_mode s)
     ;; int32 _backup_brake_status
       (write-long _backup_brake_status s)
     ;; float64 _backup_brake_value
       (sys::poke _backup_brake_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _epb_driving_mode
       (write-long _epb_driving_mode s)
     ;; int32 _epb_status
       (write-long _epb_status s)
     ;; int32 _epb_level
       (write-long _epb_level s)
     ;; int32 _engine_status
       (write-long _engine_status s)
     ;; float64 _engine_rpm
       (sys::poke _engine_rpm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _engine_torque
       (sys::poke _engine_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_mps
       (sys::poke _speed_mps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odometer_m
       (sys::poke _odometer_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _fuel_range_m
       (write-long _fuel_range_m s)
     ;; int32 _gear_driving_mode
       (write-long _gear_driving_mode s)
     ;; int32 _gear_status
       (write-long _gear_status s)
     ;; int32 _gear_location
       (write-long _gear_location s)
     ;; int32 _driver_seat_belt
       (write-long _driver_seat_belt s)
     ;; int32 _high_beam_status
       (write-long _high_beam_status s)
     ;; int32 _low_beam_status
       (write-long _low_beam_status s)
     ;; int32 _horn_status
       (write-long _horn_status s)
     ;; int32 _turn_lamp_status
       (write-long _turn_lamp_status s)
     ;; int32 _front_wiper_status
       (write-long _front_wiper_status s)
     ;; int32 _rear_wiper_status
       (write-long _rear_wiper_status s)
     ;; int32 _position_lamp_status
       (write-long _position_lamp_status s)
     ;; int32 _front_fog_lamp_status
       (write-long _front_fog_lamp_status s)
     ;; int32 _rear_fog_lamp_status
       (write-long _rear_fog_lamp_status s)
     ;; int32 _brake_lamp_status
       (write-long _brake_lamp_status s)
     ;; int32 _alarm_lamp_status
       (write-long _alarm_lamp_status s)
     ;; int32 _lf_door_status
       (write-long _lf_door_status s)
     ;; int32 _rf_door_status
       (write-long _rf_door_status s)
     ;; int32 _lr_door_status
       (write-long _lr_door_status s)
     ;; int32 _rr_door_status
       (write-long _rr_door_status s)
     ;; int32 _rearview_mirror_status
       (write-long _rearview_mirror_status s)
     ;; int32 _trunk_status
       (write-long _trunk_status s)
     ;; int32 _engine_bay_door_status
       (write-long _engine_bay_door_status s)
     ;; int32 _wheel_direction_rr
       (write-long _wheel_direction_rr s)
     ;; float64 _wheel_spd_rr
       (sys::poke _wheel_spd_rr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wheel_direction_rl
       (write-long _wheel_direction_rl s)
     ;; float64 _wheel_spd_rl
       (sys::poke _wheel_spd_rl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wheel_direction_fr
       (write-long _wheel_direction_fr s)
     ;; float64 _wheel_spd_fr
       (sys::poke _wheel_spd_fr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _wheel_direction_fl
       (write-long _wheel_direction_fl s)
     ;; float64 _wheel_spd_fl
       (sys::poke _wheel_spd_fl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _is_tire_pressure_ok
       (write-long _is_tire_pressure_ok s)
     ;; int32 _is_tire_pressure_lf_valid
       (write-long _is_tire_pressure_lf_valid s)
     ;; float64 _tire_pressure_lf
       (sys::poke _tire_pressure_lf (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _is_tire_pressure_rf_valid
       (write-long _is_tire_pressure_rf_valid s)
     ;; float64 _tire_pressure_rf
       (sys::poke _tire_pressure_rf (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _is_tire_pressure_lr_valid
       (write-long _is_tire_pressure_lr_valid s)
     ;; float64 _tire_pressure_lr
       (sys::poke _tire_pressure_lr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _is_tire_pressure_rr_valid
       (write-long _is_tire_pressure_rr_valid s)
     ;; float64 _tire_pressure_rr
       (sys::poke _tire_pressure_rr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_power_percentage
       (sys::poke _battery_power_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _air_bag_status
       (write-long _air_bag_status s)
     ;; int32 _charging_gun_status
       (write-long _charging_gun_status s)
     ;; int32 _vehicle_power_status
       (write-long _vehicle_power_status s)
     ;; int32[] _chassis_error_code
     (write-long (length _chassis_error_code) s)
     (dotimes (i (length _chassis_error_code))
       (write-long (elt _chassis_error_code i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _moving_status
     (setq _moving_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_driving_mode
     (setq _steer_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steering_status
     (setq _steering_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _front_steering_value
     (setq _front_steering_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_value
     (setq _rear_steering_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_torque_nm
     (setq _steering_torque_nm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_steering_rate_dps
     (setq _front_steering_rate_dps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_rate_dps
     (setq _rear_steering_rate_dps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _accel_driving_mode
     (setq _accel_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _accel_status
     (setq _accel_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _accel_value
     (setq _accel_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _brake_driving_mode
     (setq _brake_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _brake_status
     (setq _brake_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _brake_value
     (setq _brake_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _backup_brake_driving_mode
     (setq _backup_brake_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _backup_brake_status
     (setq _backup_brake_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _backup_brake_value
     (setq _backup_brake_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _epb_driving_mode
     (setq _epb_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epb_status
     (setq _epb_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epb_level
     (setq _epb_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _engine_status
     (setq _engine_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _engine_rpm
     (setq _engine_rpm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _engine_torque
     (setq _engine_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_mps
     (setq _speed_mps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odometer_m
     (setq _odometer_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _fuel_range_m
     (setq _fuel_range_m (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_driving_mode
     (setq _gear_driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_status
     (setq _gear_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_location
     (setq _gear_location (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driver_seat_belt
     (setq _driver_seat_belt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _high_beam_status
     (setq _high_beam_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _low_beam_status
     (setq _low_beam_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _horn_status
     (setq _horn_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _turn_lamp_status
     (setq _turn_lamp_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_wiper_status
     (setq _front_wiper_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rear_wiper_status
     (setq _rear_wiper_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position_lamp_status
     (setq _position_lamp_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_fog_lamp_status
     (setq _front_fog_lamp_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rear_fog_lamp_status
     (setq _rear_fog_lamp_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _brake_lamp_status
     (setq _brake_lamp_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _alarm_lamp_status
     (setq _alarm_lamp_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lf_door_status
     (setq _lf_door_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rf_door_status
     (setq _rf_door_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lr_door_status
     (setq _lr_door_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rr_door_status
     (setq _rr_door_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rearview_mirror_status
     (setq _rearview_mirror_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trunk_status
     (setq _trunk_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _engine_bay_door_status
     (setq _engine_bay_door_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wheel_direction_rr
     (setq _wheel_direction_rr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_rr
     (setq _wheel_spd_rr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wheel_direction_rl
     (setq _wheel_direction_rl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_rl
     (setq _wheel_spd_rl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wheel_direction_fr
     (setq _wheel_direction_fr (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_fr
     (setq _wheel_spd_fr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _wheel_direction_fl
     (setq _wheel_direction_fl (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _wheel_spd_fl
     (setq _wheel_spd_fl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _is_tire_pressure_ok
     (setq _is_tire_pressure_ok (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _is_tire_pressure_lf_valid
     (setq _is_tire_pressure_lf_valid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _tire_pressure_lf
     (setq _tire_pressure_lf (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _is_tire_pressure_rf_valid
     (setq _is_tire_pressure_rf_valid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _tire_pressure_rf
     (setq _tire_pressure_rf (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _is_tire_pressure_lr_valid
     (setq _is_tire_pressure_lr_valid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _tire_pressure_lr
     (setq _tire_pressure_lr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _is_tire_pressure_rr_valid
     (setq _is_tire_pressure_rr_valid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _tire_pressure_rr
     (setq _tire_pressure_rr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_power_percentage
     (setq _battery_power_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _air_bag_status
     (setq _air_bag_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charging_gun_status
     (setq _charging_gun_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vehicle_power_status
     (setq _vehicle_power_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _chassis_error_code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _chassis_error_code (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _chassis_error_code i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ros_interface::Chassis :md5sum-) "1317f867e7ec2fbfa7cc1f5b9d053a00")
(setf (get ros_interface::Chassis :datatype-) "ros_interface/Chassis")
(setf (get ros_interface::Chassis :definition-)
      "Header   header     #  
int32   moving_status     # 移动状态
int32   driving_mode     # 驾驶状态
int32   steer_driving_mode     # 线控转向驾驶模式
int32   steering_status     # 线控转向执行器状态
float64   front_steering_value     # 方向盘转角
float64   rear_steering_value     # 后轮转角
float64   steering_torque_nm     # 方向盘扭矩
float64   front_steering_rate_dps     # 方向盘转速
float64   rear_steering_rate_dps     # 方向盘转速
int32   accel_driving_mode     # 线控驱动驾驶模式
int32   accel_status     # 线控驱动状态
float64   accel_value     # 线控驱动值（油门值）
int32   brake_driving_mode     # 线控制动驾驶模式
int32   brake_status     # 线控制动状态
float64   brake_value     # 线控制动值（刹车值）
int32   backup_brake_driving_mode     # 备用线控制动驾驶模式
int32   backup_brake_status     # 备用线控制动状态
float64   backup_brake_value     # 备用线控制动值
int32   epb_driving_mode     # EPB驾驶模式
int32   epb_status     # EPB状态
int32   epb_level     # EPB档位
int32   engine_status     # 发动机状态
float64   engine_rpm     # 发动机转速
float64   engine_torque     # 发动机扭矩
float64   speed_mps     # 车速（m/s）
float64   odometer_m     # 里程(m)
int32   fuel_range_m     # 油表值
int32   gear_driving_mode     # 档位驾驶模式
int32   gear_status     # 档位状态
int32   gear_location     # 档位值
int32   driver_seat_belt     # 主驾驶位安全带状态
int32   high_beam_status     # 远光灯状态
int32   low_beam_status     # 近光灯状态
int32   horn_status     # 喇叭状态
int32   turn_lamp_status     # 转向灯状态
int32   front_wiper_status     # 前雨刮器状态
int32   rear_wiper_status     # 后雨刮器状态
int32   position_lamp_status     # 位置灯状态
int32   front_fog_lamp_status     # 前雾灯状态
int32   rear_fog_lamp_status     # 后雾灯状态
int32   brake_lamp_status     # 刹车灯状态
int32   alarm_lamp_status     # 报警灯状态
int32   lf_door_status     # 左前门状态
int32   rf_door_status     # 右前门状态
int32   lr_door_status     # 左后门状态
int32   rr_door_status     # 右后门状态
int32   rearview_mirror_status     # 后视镜状态
int32   trunk_status     # 后备箱盖状态
int32   engine_bay_door_status     # 发送机舱盖状态
int32   wheel_direction_rr     # 右后轮方向
float64   wheel_spd_rr     # 右后轮速
int32   wheel_direction_rl     # 左后轮方向
float64   wheel_spd_rl     # 左后轮值
int32   wheel_direction_fr     # 右前轮方向
float64   wheel_spd_fr     # 右前轮速
int32   wheel_direction_fl     # 左前轮方向
float64   wheel_spd_fl     # 左前轮速
int32   is_tire_pressure_ok     # 胎压是否正常
int32   is_tire_pressure_lf_valid     # 左前轮胎压是否有效
float64   tire_pressure_lf     # 左前轮胎压
int32   is_tire_pressure_rf_valid     # 右前轮胎压是否有效
float64   tire_pressure_rf     # 右前轮胎压
int32   is_tire_pressure_lr_valid     # 左后轮胎压是否有效
float64   tire_pressure_lr     # 左后轮胎压
int32   is_tire_pressure_rr_valid     # 右后轮胎压是否有效
float64   tire_pressure_rr     # 右后轮胎压
float64   battery_power_percentage     # 电池电量值
int32   air_bag_status     # 气囊状态
int32   charging_gun_status     # 充电枪状态
int32   vehicle_power_status     # 电量表状态
int32[] chassis_error_code # 底盘错误码

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



(provide :ros_interface/Chassis "1317f867e7ec2fbfa7cc1f5b9d053a00")


