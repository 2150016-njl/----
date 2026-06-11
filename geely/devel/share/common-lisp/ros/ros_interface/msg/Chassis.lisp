; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Chassis.msg.html

(cl:defclass <Chassis> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (moving_status
    :reader moving_status
    :initarg :moving_status
    :type cl:integer
    :initform 0)
   (driving_mode
    :reader driving_mode
    :initarg :driving_mode
    :type cl:integer
    :initform 0)
   (steer_driving_mode
    :reader steer_driving_mode
    :initarg :steer_driving_mode
    :type cl:integer
    :initform 0)
   (steering_status
    :reader steering_status
    :initarg :steering_status
    :type cl:integer
    :initform 0)
   (front_steering_value
    :reader front_steering_value
    :initarg :front_steering_value
    :type cl:float
    :initform 0.0)
   (rear_steering_value
    :reader rear_steering_value
    :initarg :rear_steering_value
    :type cl:float
    :initform 0.0)
   (steering_torque_nm
    :reader steering_torque_nm
    :initarg :steering_torque_nm
    :type cl:float
    :initform 0.0)
   (front_steering_rate_dps
    :reader front_steering_rate_dps
    :initarg :front_steering_rate_dps
    :type cl:float
    :initform 0.0)
   (rear_steering_rate_dps
    :reader rear_steering_rate_dps
    :initarg :rear_steering_rate_dps
    :type cl:float
    :initform 0.0)
   (accel_driving_mode
    :reader accel_driving_mode
    :initarg :accel_driving_mode
    :type cl:integer
    :initform 0)
   (accel_status
    :reader accel_status
    :initarg :accel_status
    :type cl:integer
    :initform 0)
   (accel_value
    :reader accel_value
    :initarg :accel_value
    :type cl:float
    :initform 0.0)
   (brake_driving_mode
    :reader brake_driving_mode
    :initarg :brake_driving_mode
    :type cl:integer
    :initform 0)
   (brake_status
    :reader brake_status
    :initarg :brake_status
    :type cl:integer
    :initform 0)
   (brake_value
    :reader brake_value
    :initarg :brake_value
    :type cl:float
    :initform 0.0)
   (backup_brake_driving_mode
    :reader backup_brake_driving_mode
    :initarg :backup_brake_driving_mode
    :type cl:integer
    :initform 0)
   (backup_brake_status
    :reader backup_brake_status
    :initarg :backup_brake_status
    :type cl:integer
    :initform 0)
   (backup_brake_value
    :reader backup_brake_value
    :initarg :backup_brake_value
    :type cl:float
    :initform 0.0)
   (epb_driving_mode
    :reader epb_driving_mode
    :initarg :epb_driving_mode
    :type cl:integer
    :initform 0)
   (epb_status
    :reader epb_status
    :initarg :epb_status
    :type cl:integer
    :initform 0)
   (epb_level
    :reader epb_level
    :initarg :epb_level
    :type cl:integer
    :initform 0)
   (engine_status
    :reader engine_status
    :initarg :engine_status
    :type cl:integer
    :initform 0)
   (engine_rpm
    :reader engine_rpm
    :initarg :engine_rpm
    :type cl:float
    :initform 0.0)
   (engine_torque
    :reader engine_torque
    :initarg :engine_torque
    :type cl:float
    :initform 0.0)
   (speed_mps
    :reader speed_mps
    :initarg :speed_mps
    :type cl:float
    :initform 0.0)
   (odometer_m
    :reader odometer_m
    :initarg :odometer_m
    :type cl:float
    :initform 0.0)
   (fuel_range_m
    :reader fuel_range_m
    :initarg :fuel_range_m
    :type cl:integer
    :initform 0)
   (gear_driving_mode
    :reader gear_driving_mode
    :initarg :gear_driving_mode
    :type cl:integer
    :initform 0)
   (gear_status
    :reader gear_status
    :initarg :gear_status
    :type cl:integer
    :initform 0)
   (gear_location
    :reader gear_location
    :initarg :gear_location
    :type cl:integer
    :initform 0)
   (driver_seat_belt
    :reader driver_seat_belt
    :initarg :driver_seat_belt
    :type cl:integer
    :initform 0)
   (high_beam_status
    :reader high_beam_status
    :initarg :high_beam_status
    :type cl:integer
    :initform 0)
   (low_beam_status
    :reader low_beam_status
    :initarg :low_beam_status
    :type cl:integer
    :initform 0)
   (horn_status
    :reader horn_status
    :initarg :horn_status
    :type cl:integer
    :initform 0)
   (turn_lamp_status
    :reader turn_lamp_status
    :initarg :turn_lamp_status
    :type cl:integer
    :initform 0)
   (front_wiper_status
    :reader front_wiper_status
    :initarg :front_wiper_status
    :type cl:integer
    :initform 0)
   (rear_wiper_status
    :reader rear_wiper_status
    :initarg :rear_wiper_status
    :type cl:integer
    :initform 0)
   (position_lamp_status
    :reader position_lamp_status
    :initarg :position_lamp_status
    :type cl:integer
    :initform 0)
   (front_fog_lamp_status
    :reader front_fog_lamp_status
    :initarg :front_fog_lamp_status
    :type cl:integer
    :initform 0)
   (rear_fog_lamp_status
    :reader rear_fog_lamp_status
    :initarg :rear_fog_lamp_status
    :type cl:integer
    :initform 0)
   (brake_lamp_status
    :reader brake_lamp_status
    :initarg :brake_lamp_status
    :type cl:integer
    :initform 0)
   (alarm_lamp_status
    :reader alarm_lamp_status
    :initarg :alarm_lamp_status
    :type cl:integer
    :initform 0)
   (lf_door_status
    :reader lf_door_status
    :initarg :lf_door_status
    :type cl:integer
    :initform 0)
   (rf_door_status
    :reader rf_door_status
    :initarg :rf_door_status
    :type cl:integer
    :initform 0)
   (lr_door_status
    :reader lr_door_status
    :initarg :lr_door_status
    :type cl:integer
    :initform 0)
   (rr_door_status
    :reader rr_door_status
    :initarg :rr_door_status
    :type cl:integer
    :initform 0)
   (rearview_mirror_status
    :reader rearview_mirror_status
    :initarg :rearview_mirror_status
    :type cl:integer
    :initform 0)
   (trunk_status
    :reader trunk_status
    :initarg :trunk_status
    :type cl:integer
    :initform 0)
   (engine_bay_door_status
    :reader engine_bay_door_status
    :initarg :engine_bay_door_status
    :type cl:integer
    :initform 0)
   (wheel_direction_rr
    :reader wheel_direction_rr
    :initarg :wheel_direction_rr
    :type cl:integer
    :initform 0)
   (wheel_spd_rr
    :reader wheel_spd_rr
    :initarg :wheel_spd_rr
    :type cl:float
    :initform 0.0)
   (wheel_direction_rl
    :reader wheel_direction_rl
    :initarg :wheel_direction_rl
    :type cl:integer
    :initform 0)
   (wheel_spd_rl
    :reader wheel_spd_rl
    :initarg :wheel_spd_rl
    :type cl:float
    :initform 0.0)
   (wheel_direction_fr
    :reader wheel_direction_fr
    :initarg :wheel_direction_fr
    :type cl:integer
    :initform 0)
   (wheel_spd_fr
    :reader wheel_spd_fr
    :initarg :wheel_spd_fr
    :type cl:float
    :initform 0.0)
   (wheel_direction_fl
    :reader wheel_direction_fl
    :initarg :wheel_direction_fl
    :type cl:integer
    :initform 0)
   (wheel_spd_fl
    :reader wheel_spd_fl
    :initarg :wheel_spd_fl
    :type cl:float
    :initform 0.0)
   (is_tire_pressure_ok
    :reader is_tire_pressure_ok
    :initarg :is_tire_pressure_ok
    :type cl:integer
    :initform 0)
   (is_tire_pressure_lf_valid
    :reader is_tire_pressure_lf_valid
    :initarg :is_tire_pressure_lf_valid
    :type cl:integer
    :initform 0)
   (tire_pressure_lf
    :reader tire_pressure_lf
    :initarg :tire_pressure_lf
    :type cl:float
    :initform 0.0)
   (is_tire_pressure_rf_valid
    :reader is_tire_pressure_rf_valid
    :initarg :is_tire_pressure_rf_valid
    :type cl:integer
    :initform 0)
   (tire_pressure_rf
    :reader tire_pressure_rf
    :initarg :tire_pressure_rf
    :type cl:float
    :initform 0.0)
   (is_tire_pressure_lr_valid
    :reader is_tire_pressure_lr_valid
    :initarg :is_tire_pressure_lr_valid
    :type cl:integer
    :initform 0)
   (tire_pressure_lr
    :reader tire_pressure_lr
    :initarg :tire_pressure_lr
    :type cl:float
    :initform 0.0)
   (is_tire_pressure_rr_valid
    :reader is_tire_pressure_rr_valid
    :initarg :is_tire_pressure_rr_valid
    :type cl:integer
    :initform 0)
   (tire_pressure_rr
    :reader tire_pressure_rr
    :initarg :tire_pressure_rr
    :type cl:float
    :initform 0.0)
   (battery_power_percentage
    :reader battery_power_percentage
    :initarg :battery_power_percentage
    :type cl:float
    :initform 0.0)
   (air_bag_status
    :reader air_bag_status
    :initarg :air_bag_status
    :type cl:integer
    :initform 0)
   (charging_gun_status
    :reader charging_gun_status
    :initarg :charging_gun_status
    :type cl:integer
    :initform 0)
   (vehicle_power_status
    :reader vehicle_power_status
    :initarg :vehicle_power_status
    :type cl:integer
    :initform 0)
   (chassis_error_code
    :reader chassis_error_code
    :initarg :chassis_error_code
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Chassis (<Chassis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Chassis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Chassis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Chassis> is deprecated: use ros_interface-msg:Chassis instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'moving_status-val :lambda-list '(m))
(cl:defmethod moving_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:moving_status-val is deprecated.  Use ros_interface-msg:moving_status instead.")
  (moving_status m))

(cl:ensure-generic-function 'driving_mode-val :lambda-list '(m))
(cl:defmethod driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:driving_mode-val is deprecated.  Use ros_interface-msg:driving_mode instead.")
  (driving_mode m))

(cl:ensure-generic-function 'steer_driving_mode-val :lambda-list '(m))
(cl:defmethod steer_driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steer_driving_mode-val is deprecated.  Use ros_interface-msg:steer_driving_mode instead.")
  (steer_driving_mode m))

(cl:ensure-generic-function 'steering_status-val :lambda-list '(m))
(cl:defmethod steering_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steering_status-val is deprecated.  Use ros_interface-msg:steering_status instead.")
  (steering_status m))

(cl:ensure-generic-function 'front_steering_value-val :lambda-list '(m))
(cl:defmethod front_steering_value-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_steering_value-val is deprecated.  Use ros_interface-msg:front_steering_value instead.")
  (front_steering_value m))

(cl:ensure-generic-function 'rear_steering_value-val :lambda-list '(m))
(cl:defmethod rear_steering_value-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rear_steering_value-val is deprecated.  Use ros_interface-msg:rear_steering_value instead.")
  (rear_steering_value m))

(cl:ensure-generic-function 'steering_torque_nm-val :lambda-list '(m))
(cl:defmethod steering_torque_nm-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steering_torque_nm-val is deprecated.  Use ros_interface-msg:steering_torque_nm instead.")
  (steering_torque_nm m))

(cl:ensure-generic-function 'front_steering_rate_dps-val :lambda-list '(m))
(cl:defmethod front_steering_rate_dps-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_steering_rate_dps-val is deprecated.  Use ros_interface-msg:front_steering_rate_dps instead.")
  (front_steering_rate_dps m))

(cl:ensure-generic-function 'rear_steering_rate_dps-val :lambda-list '(m))
(cl:defmethod rear_steering_rate_dps-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rear_steering_rate_dps-val is deprecated.  Use ros_interface-msg:rear_steering_rate_dps instead.")
  (rear_steering_rate_dps m))

(cl:ensure-generic-function 'accel_driving_mode-val :lambda-list '(m))
(cl:defmethod accel_driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:accel_driving_mode-val is deprecated.  Use ros_interface-msg:accel_driving_mode instead.")
  (accel_driving_mode m))

(cl:ensure-generic-function 'accel_status-val :lambda-list '(m))
(cl:defmethod accel_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:accel_status-val is deprecated.  Use ros_interface-msg:accel_status instead.")
  (accel_status m))

(cl:ensure-generic-function 'accel_value-val :lambda-list '(m))
(cl:defmethod accel_value-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:accel_value-val is deprecated.  Use ros_interface-msg:accel_value instead.")
  (accel_value m))

(cl:ensure-generic-function 'brake_driving_mode-val :lambda-list '(m))
(cl:defmethod brake_driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:brake_driving_mode-val is deprecated.  Use ros_interface-msg:brake_driving_mode instead.")
  (brake_driving_mode m))

(cl:ensure-generic-function 'brake_status-val :lambda-list '(m))
(cl:defmethod brake_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:brake_status-val is deprecated.  Use ros_interface-msg:brake_status instead.")
  (brake_status m))

(cl:ensure-generic-function 'brake_value-val :lambda-list '(m))
(cl:defmethod brake_value-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:brake_value-val is deprecated.  Use ros_interface-msg:brake_value instead.")
  (brake_value m))

(cl:ensure-generic-function 'backup_brake_driving_mode-val :lambda-list '(m))
(cl:defmethod backup_brake_driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:backup_brake_driving_mode-val is deprecated.  Use ros_interface-msg:backup_brake_driving_mode instead.")
  (backup_brake_driving_mode m))

(cl:ensure-generic-function 'backup_brake_status-val :lambda-list '(m))
(cl:defmethod backup_brake_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:backup_brake_status-val is deprecated.  Use ros_interface-msg:backup_brake_status instead.")
  (backup_brake_status m))

(cl:ensure-generic-function 'backup_brake_value-val :lambda-list '(m))
(cl:defmethod backup_brake_value-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:backup_brake_value-val is deprecated.  Use ros_interface-msg:backup_brake_value instead.")
  (backup_brake_value m))

(cl:ensure-generic-function 'epb_driving_mode-val :lambda-list '(m))
(cl:defmethod epb_driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:epb_driving_mode-val is deprecated.  Use ros_interface-msg:epb_driving_mode instead.")
  (epb_driving_mode m))

(cl:ensure-generic-function 'epb_status-val :lambda-list '(m))
(cl:defmethod epb_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:epb_status-val is deprecated.  Use ros_interface-msg:epb_status instead.")
  (epb_status m))

(cl:ensure-generic-function 'epb_level-val :lambda-list '(m))
(cl:defmethod epb_level-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:epb_level-val is deprecated.  Use ros_interface-msg:epb_level instead.")
  (epb_level m))

(cl:ensure-generic-function 'engine_status-val :lambda-list '(m))
(cl:defmethod engine_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:engine_status-val is deprecated.  Use ros_interface-msg:engine_status instead.")
  (engine_status m))

(cl:ensure-generic-function 'engine_rpm-val :lambda-list '(m))
(cl:defmethod engine_rpm-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:engine_rpm-val is deprecated.  Use ros_interface-msg:engine_rpm instead.")
  (engine_rpm m))

(cl:ensure-generic-function 'engine_torque-val :lambda-list '(m))
(cl:defmethod engine_torque-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:engine_torque-val is deprecated.  Use ros_interface-msg:engine_torque instead.")
  (engine_torque m))

(cl:ensure-generic-function 'speed_mps-val :lambda-list '(m))
(cl:defmethod speed_mps-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:speed_mps-val is deprecated.  Use ros_interface-msg:speed_mps instead.")
  (speed_mps m))

(cl:ensure-generic-function 'odometer_m-val :lambda-list '(m))
(cl:defmethod odometer_m-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:odometer_m-val is deprecated.  Use ros_interface-msg:odometer_m instead.")
  (odometer_m m))

(cl:ensure-generic-function 'fuel_range_m-val :lambda-list '(m))
(cl:defmethod fuel_range_m-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:fuel_range_m-val is deprecated.  Use ros_interface-msg:fuel_range_m instead.")
  (fuel_range_m m))

(cl:ensure-generic-function 'gear_driving_mode-val :lambda-list '(m))
(cl:defmethod gear_driving_mode-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:gear_driving_mode-val is deprecated.  Use ros_interface-msg:gear_driving_mode instead.")
  (gear_driving_mode m))

(cl:ensure-generic-function 'gear_status-val :lambda-list '(m))
(cl:defmethod gear_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:gear_status-val is deprecated.  Use ros_interface-msg:gear_status instead.")
  (gear_status m))

(cl:ensure-generic-function 'gear_location-val :lambda-list '(m))
(cl:defmethod gear_location-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:gear_location-val is deprecated.  Use ros_interface-msg:gear_location instead.")
  (gear_location m))

(cl:ensure-generic-function 'driver_seat_belt-val :lambda-list '(m))
(cl:defmethod driver_seat_belt-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:driver_seat_belt-val is deprecated.  Use ros_interface-msg:driver_seat_belt instead.")
  (driver_seat_belt m))

(cl:ensure-generic-function 'high_beam_status-val :lambda-list '(m))
(cl:defmethod high_beam_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:high_beam_status-val is deprecated.  Use ros_interface-msg:high_beam_status instead.")
  (high_beam_status m))

(cl:ensure-generic-function 'low_beam_status-val :lambda-list '(m))
(cl:defmethod low_beam_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:low_beam_status-val is deprecated.  Use ros_interface-msg:low_beam_status instead.")
  (low_beam_status m))

(cl:ensure-generic-function 'horn_status-val :lambda-list '(m))
(cl:defmethod horn_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:horn_status-val is deprecated.  Use ros_interface-msg:horn_status instead.")
  (horn_status m))

(cl:ensure-generic-function 'turn_lamp_status-val :lambda-list '(m))
(cl:defmethod turn_lamp_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:turn_lamp_status-val is deprecated.  Use ros_interface-msg:turn_lamp_status instead.")
  (turn_lamp_status m))

(cl:ensure-generic-function 'front_wiper_status-val :lambda-list '(m))
(cl:defmethod front_wiper_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_wiper_status-val is deprecated.  Use ros_interface-msg:front_wiper_status instead.")
  (front_wiper_status m))

(cl:ensure-generic-function 'rear_wiper_status-val :lambda-list '(m))
(cl:defmethod rear_wiper_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rear_wiper_status-val is deprecated.  Use ros_interface-msg:rear_wiper_status instead.")
  (rear_wiper_status m))

(cl:ensure-generic-function 'position_lamp_status-val :lambda-list '(m))
(cl:defmethod position_lamp_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_lamp_status-val is deprecated.  Use ros_interface-msg:position_lamp_status instead.")
  (position_lamp_status m))

(cl:ensure-generic-function 'front_fog_lamp_status-val :lambda-list '(m))
(cl:defmethod front_fog_lamp_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_fog_lamp_status-val is deprecated.  Use ros_interface-msg:front_fog_lamp_status instead.")
  (front_fog_lamp_status m))

(cl:ensure-generic-function 'rear_fog_lamp_status-val :lambda-list '(m))
(cl:defmethod rear_fog_lamp_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rear_fog_lamp_status-val is deprecated.  Use ros_interface-msg:rear_fog_lamp_status instead.")
  (rear_fog_lamp_status m))

(cl:ensure-generic-function 'brake_lamp_status-val :lambda-list '(m))
(cl:defmethod brake_lamp_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:brake_lamp_status-val is deprecated.  Use ros_interface-msg:brake_lamp_status instead.")
  (brake_lamp_status m))

(cl:ensure-generic-function 'alarm_lamp_status-val :lambda-list '(m))
(cl:defmethod alarm_lamp_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_lamp_status-val is deprecated.  Use ros_interface-msg:alarm_lamp_status instead.")
  (alarm_lamp_status m))

(cl:ensure-generic-function 'lf_door_status-val :lambda-list '(m))
(cl:defmethod lf_door_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lf_door_status-val is deprecated.  Use ros_interface-msg:lf_door_status instead.")
  (lf_door_status m))

(cl:ensure-generic-function 'rf_door_status-val :lambda-list '(m))
(cl:defmethod rf_door_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rf_door_status-val is deprecated.  Use ros_interface-msg:rf_door_status instead.")
  (rf_door_status m))

(cl:ensure-generic-function 'lr_door_status-val :lambda-list '(m))
(cl:defmethod lr_door_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lr_door_status-val is deprecated.  Use ros_interface-msg:lr_door_status instead.")
  (lr_door_status m))

(cl:ensure-generic-function 'rr_door_status-val :lambda-list '(m))
(cl:defmethod rr_door_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rr_door_status-val is deprecated.  Use ros_interface-msg:rr_door_status instead.")
  (rr_door_status m))

(cl:ensure-generic-function 'rearview_mirror_status-val :lambda-list '(m))
(cl:defmethod rearview_mirror_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rearview_mirror_status-val is deprecated.  Use ros_interface-msg:rearview_mirror_status instead.")
  (rearview_mirror_status m))

(cl:ensure-generic-function 'trunk_status-val :lambda-list '(m))
(cl:defmethod trunk_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trunk_status-val is deprecated.  Use ros_interface-msg:trunk_status instead.")
  (trunk_status m))

(cl:ensure-generic-function 'engine_bay_door_status-val :lambda-list '(m))
(cl:defmethod engine_bay_door_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:engine_bay_door_status-val is deprecated.  Use ros_interface-msg:engine_bay_door_status instead.")
  (engine_bay_door_status m))

(cl:ensure-generic-function 'wheel_direction_rr-val :lambda-list '(m))
(cl:defmethod wheel_direction_rr-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_rr-val is deprecated.  Use ros_interface-msg:wheel_direction_rr instead.")
  (wheel_direction_rr m))

(cl:ensure-generic-function 'wheel_spd_rr-val :lambda-list '(m))
(cl:defmethod wheel_spd_rr-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_rr-val is deprecated.  Use ros_interface-msg:wheel_spd_rr instead.")
  (wheel_spd_rr m))

(cl:ensure-generic-function 'wheel_direction_rl-val :lambda-list '(m))
(cl:defmethod wheel_direction_rl-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_rl-val is deprecated.  Use ros_interface-msg:wheel_direction_rl instead.")
  (wheel_direction_rl m))

(cl:ensure-generic-function 'wheel_spd_rl-val :lambda-list '(m))
(cl:defmethod wheel_spd_rl-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_rl-val is deprecated.  Use ros_interface-msg:wheel_spd_rl instead.")
  (wheel_spd_rl m))

(cl:ensure-generic-function 'wheel_direction_fr-val :lambda-list '(m))
(cl:defmethod wheel_direction_fr-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_fr-val is deprecated.  Use ros_interface-msg:wheel_direction_fr instead.")
  (wheel_direction_fr m))

(cl:ensure-generic-function 'wheel_spd_fr-val :lambda-list '(m))
(cl:defmethod wheel_spd_fr-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_fr-val is deprecated.  Use ros_interface-msg:wheel_spd_fr instead.")
  (wheel_spd_fr m))

(cl:ensure-generic-function 'wheel_direction_fl-val :lambda-list '(m))
(cl:defmethod wheel_direction_fl-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_fl-val is deprecated.  Use ros_interface-msg:wheel_direction_fl instead.")
  (wheel_direction_fl m))

(cl:ensure-generic-function 'wheel_spd_fl-val :lambda-list '(m))
(cl:defmethod wheel_spd_fl-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_fl-val is deprecated.  Use ros_interface-msg:wheel_spd_fl instead.")
  (wheel_spd_fl m))

(cl:ensure-generic-function 'is_tire_pressure_ok-val :lambda-list '(m))
(cl:defmethod is_tire_pressure_ok-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_tire_pressure_ok-val is deprecated.  Use ros_interface-msg:is_tire_pressure_ok instead.")
  (is_tire_pressure_ok m))

(cl:ensure-generic-function 'is_tire_pressure_lf_valid-val :lambda-list '(m))
(cl:defmethod is_tire_pressure_lf_valid-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_tire_pressure_lf_valid-val is deprecated.  Use ros_interface-msg:is_tire_pressure_lf_valid instead.")
  (is_tire_pressure_lf_valid m))

(cl:ensure-generic-function 'tire_pressure_lf-val :lambda-list '(m))
(cl:defmethod tire_pressure_lf-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:tire_pressure_lf-val is deprecated.  Use ros_interface-msg:tire_pressure_lf instead.")
  (tire_pressure_lf m))

(cl:ensure-generic-function 'is_tire_pressure_rf_valid-val :lambda-list '(m))
(cl:defmethod is_tire_pressure_rf_valid-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_tire_pressure_rf_valid-val is deprecated.  Use ros_interface-msg:is_tire_pressure_rf_valid instead.")
  (is_tire_pressure_rf_valid m))

(cl:ensure-generic-function 'tire_pressure_rf-val :lambda-list '(m))
(cl:defmethod tire_pressure_rf-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:tire_pressure_rf-val is deprecated.  Use ros_interface-msg:tire_pressure_rf instead.")
  (tire_pressure_rf m))

(cl:ensure-generic-function 'is_tire_pressure_lr_valid-val :lambda-list '(m))
(cl:defmethod is_tire_pressure_lr_valid-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_tire_pressure_lr_valid-val is deprecated.  Use ros_interface-msg:is_tire_pressure_lr_valid instead.")
  (is_tire_pressure_lr_valid m))

(cl:ensure-generic-function 'tire_pressure_lr-val :lambda-list '(m))
(cl:defmethod tire_pressure_lr-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:tire_pressure_lr-val is deprecated.  Use ros_interface-msg:tire_pressure_lr instead.")
  (tire_pressure_lr m))

(cl:ensure-generic-function 'is_tire_pressure_rr_valid-val :lambda-list '(m))
(cl:defmethod is_tire_pressure_rr_valid-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_tire_pressure_rr_valid-val is deprecated.  Use ros_interface-msg:is_tire_pressure_rr_valid instead.")
  (is_tire_pressure_rr_valid m))

(cl:ensure-generic-function 'tire_pressure_rr-val :lambda-list '(m))
(cl:defmethod tire_pressure_rr-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:tire_pressure_rr-val is deprecated.  Use ros_interface-msg:tire_pressure_rr instead.")
  (tire_pressure_rr m))

(cl:ensure-generic-function 'battery_power_percentage-val :lambda-list '(m))
(cl:defmethod battery_power_percentage-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:battery_power_percentage-val is deprecated.  Use ros_interface-msg:battery_power_percentage instead.")
  (battery_power_percentage m))

(cl:ensure-generic-function 'air_bag_status-val :lambda-list '(m))
(cl:defmethod air_bag_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:air_bag_status-val is deprecated.  Use ros_interface-msg:air_bag_status instead.")
  (air_bag_status m))

(cl:ensure-generic-function 'charging_gun_status-val :lambda-list '(m))
(cl:defmethod charging_gun_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:charging_gun_status-val is deprecated.  Use ros_interface-msg:charging_gun_status instead.")
  (charging_gun_status m))

(cl:ensure-generic-function 'vehicle_power_status-val :lambda-list '(m))
(cl:defmethod vehicle_power_status-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:vehicle_power_status-val is deprecated.  Use ros_interface-msg:vehicle_power_status instead.")
  (vehicle_power_status m))

(cl:ensure-generic-function 'chassis_error_code-val :lambda-list '(m))
(cl:defmethod chassis_error_code-val ((m <Chassis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:chassis_error_code-val is deprecated.  Use ros_interface-msg:chassis_error_code instead.")
  (chassis_error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Chassis>) ostream)
  "Serializes a message object of type '<Chassis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'moving_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steering_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_steering_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rear_steering_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_torque_nm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_steering_rate_dps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rear_steering_rate_dps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'accel_driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'accel_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'accel_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'brake_driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'backup_brake_driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'backup_brake_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'backup_brake_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'epb_driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'epb_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'epb_level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'engine_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engine_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engine_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_mps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'odometer_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'fuel_range_m)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear_driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear_location)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'driver_seat_belt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'high_beam_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'low_beam_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'horn_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turn_lamp_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_wiper_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_wiper_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position_lamp_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_fog_lamp_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_fog_lamp_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake_lamp_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alarm_lamp_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lf_door_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rf_door_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lr_door_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rr_door_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rearview_mirror_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'trunk_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'engine_bay_door_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wheel_direction_rr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_spd_rr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wheel_direction_rl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_spd_rl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wheel_direction_fr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_spd_fr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wheel_direction_fl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_spd_fl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'is_tire_pressure_ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'is_tire_pressure_lf_valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tire_pressure_lf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'is_tire_pressure_rf_valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tire_pressure_rf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'is_tire_pressure_lr_valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tire_pressure_lr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'is_tire_pressure_rr_valid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tire_pressure_rr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery_power_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'air_bag_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charging_gun_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vehicle_power_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'chassis_error_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'chassis_error_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Chassis>) istream)
  "Deserializes a message object of type '<Chassis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moving_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_steering_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_steering_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_torque_nm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_steering_rate_dps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_steering_rate_dps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accel_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'accel_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'backup_brake_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'backup_brake_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backup_brake_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epb_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epb_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epb_level) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engine_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_rpm) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_mps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odometer_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fuel_range_m) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear_location) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driver_seat_belt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'high_beam_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'low_beam_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'horn_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_lamp_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_wiper_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_wiper_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_lamp_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_fog_lamp_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_fog_lamp_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_lamp_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_lamp_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lf_door_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rf_door_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lr_door_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rr_door_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rearview_mirror_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trunk_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engine_bay_door_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_direction_rr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_spd_rr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_direction_rl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_spd_rl) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_direction_fr) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_spd_fr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_direction_fl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_spd_fl) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_tire_pressure_ok) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_tire_pressure_lf_valid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tire_pressure_lf) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_tire_pressure_rf_valid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tire_pressure_rf) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_tire_pressure_lr_valid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tire_pressure_lr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_tire_pressure_rr_valid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tire_pressure_rr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_power_percentage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'air_bag_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charging_gun_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vehicle_power_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'chassis_error_code) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'chassis_error_code)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Chassis>)))
  "Returns string type for a message object of type '<Chassis>"
  "ros_interface/Chassis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Chassis)))
  "Returns string type for a message object of type 'Chassis"
  "ros_interface/Chassis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Chassis>)))
  "Returns md5sum for a message object of type '<Chassis>"
  "1317f867e7ec2fbfa7cc1f5b9d053a00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Chassis)))
  "Returns md5sum for a message object of type 'Chassis"
  "1317f867e7ec2fbfa7cc1f5b9d053a00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Chassis>)))
  "Returns full string definition for message of type '<Chassis>"
  (cl:format cl:nil "Header   header     #  ~%int32   moving_status     # 移动状态~%int32   driving_mode     # 驾驶状态~%int32   steer_driving_mode     # 线控转向驾驶模式~%int32   steering_status     # 线控转向执行器状态~%float64   front_steering_value     # 方向盘转角~%float64   rear_steering_value     # 后轮转角~%float64   steering_torque_nm     # 方向盘扭矩~%float64   front_steering_rate_dps     # 方向盘转速~%float64   rear_steering_rate_dps     # 方向盘转速~%int32   accel_driving_mode     # 线控驱动驾驶模式~%int32   accel_status     # 线控驱动状态~%float64   accel_value     # 线控驱动值（油门值）~%int32   brake_driving_mode     # 线控制动驾驶模式~%int32   brake_status     # 线控制动状态~%float64   brake_value     # 线控制动值（刹车值）~%int32   backup_brake_driving_mode     # 备用线控制动驾驶模式~%int32   backup_brake_status     # 备用线控制动状态~%float64   backup_brake_value     # 备用线控制动值~%int32   epb_driving_mode     # EPB驾驶模式~%int32   epb_status     # EPB状态~%int32   epb_level     # EPB档位~%int32   engine_status     # 发动机状态~%float64   engine_rpm     # 发动机转速~%float64   engine_torque     # 发动机扭矩~%float64   speed_mps     # 车速（m/s）~%float64   odometer_m     # 里程(m)~%int32   fuel_range_m     # 油表值~%int32   gear_driving_mode     # 档位驾驶模式~%int32   gear_status     # 档位状态~%int32   gear_location     # 档位值~%int32   driver_seat_belt     # 主驾驶位安全带状态~%int32   high_beam_status     # 远光灯状态~%int32   low_beam_status     # 近光灯状态~%int32   horn_status     # 喇叭状态~%int32   turn_lamp_status     # 转向灯状态~%int32   front_wiper_status     # 前雨刮器状态~%int32   rear_wiper_status     # 后雨刮器状态~%int32   position_lamp_status     # 位置灯状态~%int32   front_fog_lamp_status     # 前雾灯状态~%int32   rear_fog_lamp_status     # 后雾灯状态~%int32   brake_lamp_status     # 刹车灯状态~%int32   alarm_lamp_status     # 报警灯状态~%int32   lf_door_status     # 左前门状态~%int32   rf_door_status     # 右前门状态~%int32   lr_door_status     # 左后门状态~%int32   rr_door_status     # 右后门状态~%int32   rearview_mirror_status     # 后视镜状态~%int32   trunk_status     # 后备箱盖状态~%int32   engine_bay_door_status     # 发送机舱盖状态~%int32   wheel_direction_rr     # 右后轮方向~%float64   wheel_spd_rr     # 右后轮速~%int32   wheel_direction_rl     # 左后轮方向~%float64   wheel_spd_rl     # 左后轮值~%int32   wheel_direction_fr     # 右前轮方向~%float64   wheel_spd_fr     # 右前轮速~%int32   wheel_direction_fl     # 左前轮方向~%float64   wheel_spd_fl     # 左前轮速~%int32   is_tire_pressure_ok     # 胎压是否正常~%int32   is_tire_pressure_lf_valid     # 左前轮胎压是否有效~%float64   tire_pressure_lf     # 左前轮胎压~%int32   is_tire_pressure_rf_valid     # 右前轮胎压是否有效~%float64   tire_pressure_rf     # 右前轮胎压~%int32   is_tire_pressure_lr_valid     # 左后轮胎压是否有效~%float64   tire_pressure_lr     # 左后轮胎压~%int32   is_tire_pressure_rr_valid     # 右后轮胎压是否有效~%float64   tire_pressure_rr     # 右后轮胎压~%float64   battery_power_percentage     # 电池电量值~%int32   air_bag_status     # 气囊状态~%int32   charging_gun_status     # 充电枪状态~%int32   vehicle_power_status     # 电量表状态~%int32[] chassis_error_code # 底盘错误码~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Chassis)))
  "Returns full string definition for message of type 'Chassis"
  (cl:format cl:nil "Header   header     #  ~%int32   moving_status     # 移动状态~%int32   driving_mode     # 驾驶状态~%int32   steer_driving_mode     # 线控转向驾驶模式~%int32   steering_status     # 线控转向执行器状态~%float64   front_steering_value     # 方向盘转角~%float64   rear_steering_value     # 后轮转角~%float64   steering_torque_nm     # 方向盘扭矩~%float64   front_steering_rate_dps     # 方向盘转速~%float64   rear_steering_rate_dps     # 方向盘转速~%int32   accel_driving_mode     # 线控驱动驾驶模式~%int32   accel_status     # 线控驱动状态~%float64   accel_value     # 线控驱动值（油门值）~%int32   brake_driving_mode     # 线控制动驾驶模式~%int32   brake_status     # 线控制动状态~%float64   brake_value     # 线控制动值（刹车值）~%int32   backup_brake_driving_mode     # 备用线控制动驾驶模式~%int32   backup_brake_status     # 备用线控制动状态~%float64   backup_brake_value     # 备用线控制动值~%int32   epb_driving_mode     # EPB驾驶模式~%int32   epb_status     # EPB状态~%int32   epb_level     # EPB档位~%int32   engine_status     # 发动机状态~%float64   engine_rpm     # 发动机转速~%float64   engine_torque     # 发动机扭矩~%float64   speed_mps     # 车速（m/s）~%float64   odometer_m     # 里程(m)~%int32   fuel_range_m     # 油表值~%int32   gear_driving_mode     # 档位驾驶模式~%int32   gear_status     # 档位状态~%int32   gear_location     # 档位值~%int32   driver_seat_belt     # 主驾驶位安全带状态~%int32   high_beam_status     # 远光灯状态~%int32   low_beam_status     # 近光灯状态~%int32   horn_status     # 喇叭状态~%int32   turn_lamp_status     # 转向灯状态~%int32   front_wiper_status     # 前雨刮器状态~%int32   rear_wiper_status     # 后雨刮器状态~%int32   position_lamp_status     # 位置灯状态~%int32   front_fog_lamp_status     # 前雾灯状态~%int32   rear_fog_lamp_status     # 后雾灯状态~%int32   brake_lamp_status     # 刹车灯状态~%int32   alarm_lamp_status     # 报警灯状态~%int32   lf_door_status     # 左前门状态~%int32   rf_door_status     # 右前门状态~%int32   lr_door_status     # 左后门状态~%int32   rr_door_status     # 右后门状态~%int32   rearview_mirror_status     # 后视镜状态~%int32   trunk_status     # 后备箱盖状态~%int32   engine_bay_door_status     # 发送机舱盖状态~%int32   wheel_direction_rr     # 右后轮方向~%float64   wheel_spd_rr     # 右后轮速~%int32   wheel_direction_rl     # 左后轮方向~%float64   wheel_spd_rl     # 左后轮值~%int32   wheel_direction_fr     # 右前轮方向~%float64   wheel_spd_fr     # 右前轮速~%int32   wheel_direction_fl     # 左前轮方向~%float64   wheel_spd_fl     # 左前轮速~%int32   is_tire_pressure_ok     # 胎压是否正常~%int32   is_tire_pressure_lf_valid     # 左前轮胎压是否有效~%float64   tire_pressure_lf     # 左前轮胎压~%int32   is_tire_pressure_rf_valid     # 右前轮胎压是否有效~%float64   tire_pressure_rf     # 右前轮胎压~%int32   is_tire_pressure_lr_valid     # 左后轮胎压是否有效~%float64   tire_pressure_lr     # 左后轮胎压~%int32   is_tire_pressure_rr_valid     # 右后轮胎压是否有效~%float64   tire_pressure_rr     # 右后轮胎压~%float64   battery_power_percentage     # 电池电量值~%int32   air_bag_status     # 气囊状态~%int32   charging_gun_status     # 充电枪状态~%int32   vehicle_power_status     # 电量表状态~%int32[] chassis_error_code # 底盘错误码~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Chassis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     8
     8
     8
     8
     8
     4
     4
     8
     4
     4
     8
     4
     4
     8
     4
     4
     4
     4
     8
     8
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     8
     4
     8
     4
     8
     4
     8
     4
     4
     8
     4
     8
     4
     8
     4
     8
     8
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'chassis_error_code) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Chassis>))
  "Converts a ROS message object to a list"
  (cl:list 'Chassis
    (cl:cons ':header (header msg))
    (cl:cons ':moving_status (moving_status msg))
    (cl:cons ':driving_mode (driving_mode msg))
    (cl:cons ':steer_driving_mode (steer_driving_mode msg))
    (cl:cons ':steering_status (steering_status msg))
    (cl:cons ':front_steering_value (front_steering_value msg))
    (cl:cons ':rear_steering_value (rear_steering_value msg))
    (cl:cons ':steering_torque_nm (steering_torque_nm msg))
    (cl:cons ':front_steering_rate_dps (front_steering_rate_dps msg))
    (cl:cons ':rear_steering_rate_dps (rear_steering_rate_dps msg))
    (cl:cons ':accel_driving_mode (accel_driving_mode msg))
    (cl:cons ':accel_status (accel_status msg))
    (cl:cons ':accel_value (accel_value msg))
    (cl:cons ':brake_driving_mode (brake_driving_mode msg))
    (cl:cons ':brake_status (brake_status msg))
    (cl:cons ':brake_value (brake_value msg))
    (cl:cons ':backup_brake_driving_mode (backup_brake_driving_mode msg))
    (cl:cons ':backup_brake_status (backup_brake_status msg))
    (cl:cons ':backup_brake_value (backup_brake_value msg))
    (cl:cons ':epb_driving_mode (epb_driving_mode msg))
    (cl:cons ':epb_status (epb_status msg))
    (cl:cons ':epb_level (epb_level msg))
    (cl:cons ':engine_status (engine_status msg))
    (cl:cons ':engine_rpm (engine_rpm msg))
    (cl:cons ':engine_torque (engine_torque msg))
    (cl:cons ':speed_mps (speed_mps msg))
    (cl:cons ':odometer_m (odometer_m msg))
    (cl:cons ':fuel_range_m (fuel_range_m msg))
    (cl:cons ':gear_driving_mode (gear_driving_mode msg))
    (cl:cons ':gear_status (gear_status msg))
    (cl:cons ':gear_location (gear_location msg))
    (cl:cons ':driver_seat_belt (driver_seat_belt msg))
    (cl:cons ':high_beam_status (high_beam_status msg))
    (cl:cons ':low_beam_status (low_beam_status msg))
    (cl:cons ':horn_status (horn_status msg))
    (cl:cons ':turn_lamp_status (turn_lamp_status msg))
    (cl:cons ':front_wiper_status (front_wiper_status msg))
    (cl:cons ':rear_wiper_status (rear_wiper_status msg))
    (cl:cons ':position_lamp_status (position_lamp_status msg))
    (cl:cons ':front_fog_lamp_status (front_fog_lamp_status msg))
    (cl:cons ':rear_fog_lamp_status (rear_fog_lamp_status msg))
    (cl:cons ':brake_lamp_status (brake_lamp_status msg))
    (cl:cons ':alarm_lamp_status (alarm_lamp_status msg))
    (cl:cons ':lf_door_status (lf_door_status msg))
    (cl:cons ':rf_door_status (rf_door_status msg))
    (cl:cons ':lr_door_status (lr_door_status msg))
    (cl:cons ':rr_door_status (rr_door_status msg))
    (cl:cons ':rearview_mirror_status (rearview_mirror_status msg))
    (cl:cons ':trunk_status (trunk_status msg))
    (cl:cons ':engine_bay_door_status (engine_bay_door_status msg))
    (cl:cons ':wheel_direction_rr (wheel_direction_rr msg))
    (cl:cons ':wheel_spd_rr (wheel_spd_rr msg))
    (cl:cons ':wheel_direction_rl (wheel_direction_rl msg))
    (cl:cons ':wheel_spd_rl (wheel_spd_rl msg))
    (cl:cons ':wheel_direction_fr (wheel_direction_fr msg))
    (cl:cons ':wheel_spd_fr (wheel_spd_fr msg))
    (cl:cons ':wheel_direction_fl (wheel_direction_fl msg))
    (cl:cons ':wheel_spd_fl (wheel_spd_fl msg))
    (cl:cons ':is_tire_pressure_ok (is_tire_pressure_ok msg))
    (cl:cons ':is_tire_pressure_lf_valid (is_tire_pressure_lf_valid msg))
    (cl:cons ':tire_pressure_lf (tire_pressure_lf msg))
    (cl:cons ':is_tire_pressure_rf_valid (is_tire_pressure_rf_valid msg))
    (cl:cons ':tire_pressure_rf (tire_pressure_rf msg))
    (cl:cons ':is_tire_pressure_lr_valid (is_tire_pressure_lr_valid msg))
    (cl:cons ':tire_pressure_lr (tire_pressure_lr msg))
    (cl:cons ':is_tire_pressure_rr_valid (is_tire_pressure_rr_valid msg))
    (cl:cons ':tire_pressure_rr (tire_pressure_rr msg))
    (cl:cons ':battery_power_percentage (battery_power_percentage msg))
    (cl:cons ':air_bag_status (air_bag_status msg))
    (cl:cons ':charging_gun_status (charging_gun_status msg))
    (cl:cons ':vehicle_power_status (vehicle_power_status msg))
    (cl:cons ':chassis_error_code (chassis_error_code msg))
))
