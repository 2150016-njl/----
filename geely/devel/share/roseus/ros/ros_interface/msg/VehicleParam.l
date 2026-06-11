;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::VehicleParam)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'VehicleParam (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::VEHICLEPARAM")
  (make-package "ROS_INTERFACE::VEHICLEPARAM"))

(in-package "ROS")
;;//! \htmlinclude VehicleParam.msg.html


(defclass ros_interface::VehicleParam
  :super ros::object
  :slots (_brand _steer_mode _length _width _height _mass_fl _mass_fr _mass_rl _mass_rr _wheel_radius _wheelbase _front_edge_to_center _back_edge_to_center _lf _lr _cf _cr _steer_ratio _rolling_coefficient _air_density _air_damping_coefficient _max_front_steer_angle _min_front_steer_angle _max_rear_steer_angle _min_rear_steer_angle _speed_limit _max_brake_value _min_brake_value _max_accel_value _min_accel_value _speed_deadzone _standstill_acceleration _max_front_steer_angle_rate _max_rear_steer_angle_rate _max_abs_speed_when_stopped _max_abs_speed_when_stopped_duration _brake_value_when_gear_transitioning _accel_deadzone _brake_deadzone _acceleration_in_idle _deceleration_in_idle _max_acceleration_jerk _max_acceleration _max_deceleration _min_turning_radius ))

(defmethod ros_interface::VehicleParam
  (:init
   (&key
    ((:brand __brand) "")
    ((:steer_mode __steer_mode) 0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:mass_fl __mass_fl) 0.0)
    ((:mass_fr __mass_fr) 0.0)
    ((:mass_rl __mass_rl) 0.0)
    ((:mass_rr __mass_rr) 0.0)
    ((:wheel_radius __wheel_radius) 0.0)
    ((:wheelbase __wheelbase) 0.0)
    ((:front_edge_to_center __front_edge_to_center) 0.0)
    ((:back_edge_to_center __back_edge_to_center) 0.0)
    ((:lf __lf) 0.0)
    ((:lr __lr) 0.0)
    ((:cf __cf) 0.0)
    ((:cr __cr) 0.0)
    ((:steer_ratio __steer_ratio) 0.0)
    ((:rolling_coefficient __rolling_coefficient) 0.0)
    ((:air_density __air_density) 0.0)
    ((:air_damping_coefficient __air_damping_coefficient) 0.0)
    ((:max_front_steer_angle __max_front_steer_angle) 0.0)
    ((:min_front_steer_angle __min_front_steer_angle) 0.0)
    ((:max_rear_steer_angle __max_rear_steer_angle) 0.0)
    ((:min_rear_steer_angle __min_rear_steer_angle) 0.0)
    ((:speed_limit __speed_limit) 0.0)
    ((:max_brake_value __max_brake_value) 0.0)
    ((:min_brake_value __min_brake_value) 0.0)
    ((:max_accel_value __max_accel_value) 0.0)
    ((:min_accel_value __min_accel_value) 0.0)
    ((:speed_deadzone __speed_deadzone) 0.0)
    ((:standstill_acceleration __standstill_acceleration) 0.0)
    ((:max_front_steer_angle_rate __max_front_steer_angle_rate) 0.0)
    ((:max_rear_steer_angle_rate __max_rear_steer_angle_rate) 0.0)
    ((:max_abs_speed_when_stopped __max_abs_speed_when_stopped) 0.0)
    ((:max_abs_speed_when_stopped_duration __max_abs_speed_when_stopped_duration) 0.0)
    ((:brake_value_when_gear_transitioning __brake_value_when_gear_transitioning) 0.0)
    ((:accel_deadzone __accel_deadzone) 0.0)
    ((:brake_deadzone __brake_deadzone) 0.0)
    ((:acceleration_in_idle __acceleration_in_idle) 0.0)
    ((:deceleration_in_idle __deceleration_in_idle) 0.0)
    ((:max_acceleration_jerk __max_acceleration_jerk) 0.0)
    ((:max_acceleration __max_acceleration) 0.0)
    ((:max_deceleration __max_deceleration) 0.0)
    ((:min_turning_radius __min_turning_radius) 0.0)
    )
   (send-super :init)
   (setq _brand (string __brand))
   (setq _steer_mode (round __steer_mode))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _mass_fl (float __mass_fl))
   (setq _mass_fr (float __mass_fr))
   (setq _mass_rl (float __mass_rl))
   (setq _mass_rr (float __mass_rr))
   (setq _wheel_radius (float __wheel_radius))
   (setq _wheelbase (float __wheelbase))
   (setq _front_edge_to_center (float __front_edge_to_center))
   (setq _back_edge_to_center (float __back_edge_to_center))
   (setq _lf (float __lf))
   (setq _lr (float __lr))
   (setq _cf (float __cf))
   (setq _cr (float __cr))
   (setq _steer_ratio (float __steer_ratio))
   (setq _rolling_coefficient (float __rolling_coefficient))
   (setq _air_density (float __air_density))
   (setq _air_damping_coefficient (float __air_damping_coefficient))
   (setq _max_front_steer_angle (float __max_front_steer_angle))
   (setq _min_front_steer_angle (float __min_front_steer_angle))
   (setq _max_rear_steer_angle (float __max_rear_steer_angle))
   (setq _min_rear_steer_angle (float __min_rear_steer_angle))
   (setq _speed_limit (float __speed_limit))
   (setq _max_brake_value (float __max_brake_value))
   (setq _min_brake_value (float __min_brake_value))
   (setq _max_accel_value (float __max_accel_value))
   (setq _min_accel_value (float __min_accel_value))
   (setq _speed_deadzone (float __speed_deadzone))
   (setq _standstill_acceleration (float __standstill_acceleration))
   (setq _max_front_steer_angle_rate (float __max_front_steer_angle_rate))
   (setq _max_rear_steer_angle_rate (float __max_rear_steer_angle_rate))
   (setq _max_abs_speed_when_stopped (float __max_abs_speed_when_stopped))
   (setq _max_abs_speed_when_stopped_duration (float __max_abs_speed_when_stopped_duration))
   (setq _brake_value_when_gear_transitioning (float __brake_value_when_gear_transitioning))
   (setq _accel_deadzone (float __accel_deadzone))
   (setq _brake_deadzone (float __brake_deadzone))
   (setq _acceleration_in_idle (float __acceleration_in_idle))
   (setq _deceleration_in_idle (float __deceleration_in_idle))
   (setq _max_acceleration_jerk (float __max_acceleration_jerk))
   (setq _max_acceleration (float __max_acceleration))
   (setq _max_deceleration (float __max_deceleration))
   (setq _min_turning_radius (float __min_turning_radius))
   self)
  (:brand
   (&optional __brand)
   (if __brand (setq _brand __brand)) _brand)
  (:steer_mode
   (&optional __steer_mode)
   (if __steer_mode (setq _steer_mode __steer_mode)) _steer_mode)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:mass_fl
   (&optional __mass_fl)
   (if __mass_fl (setq _mass_fl __mass_fl)) _mass_fl)
  (:mass_fr
   (&optional __mass_fr)
   (if __mass_fr (setq _mass_fr __mass_fr)) _mass_fr)
  (:mass_rl
   (&optional __mass_rl)
   (if __mass_rl (setq _mass_rl __mass_rl)) _mass_rl)
  (:mass_rr
   (&optional __mass_rr)
   (if __mass_rr (setq _mass_rr __mass_rr)) _mass_rr)
  (:wheel_radius
   (&optional __wheel_radius)
   (if __wheel_radius (setq _wheel_radius __wheel_radius)) _wheel_radius)
  (:wheelbase
   (&optional __wheelbase)
   (if __wheelbase (setq _wheelbase __wheelbase)) _wheelbase)
  (:front_edge_to_center
   (&optional __front_edge_to_center)
   (if __front_edge_to_center (setq _front_edge_to_center __front_edge_to_center)) _front_edge_to_center)
  (:back_edge_to_center
   (&optional __back_edge_to_center)
   (if __back_edge_to_center (setq _back_edge_to_center __back_edge_to_center)) _back_edge_to_center)
  (:lf
   (&optional __lf)
   (if __lf (setq _lf __lf)) _lf)
  (:lr
   (&optional __lr)
   (if __lr (setq _lr __lr)) _lr)
  (:cf
   (&optional __cf)
   (if __cf (setq _cf __cf)) _cf)
  (:cr
   (&optional __cr)
   (if __cr (setq _cr __cr)) _cr)
  (:steer_ratio
   (&optional __steer_ratio)
   (if __steer_ratio (setq _steer_ratio __steer_ratio)) _steer_ratio)
  (:rolling_coefficient
   (&optional __rolling_coefficient)
   (if __rolling_coefficient (setq _rolling_coefficient __rolling_coefficient)) _rolling_coefficient)
  (:air_density
   (&optional __air_density)
   (if __air_density (setq _air_density __air_density)) _air_density)
  (:air_damping_coefficient
   (&optional __air_damping_coefficient)
   (if __air_damping_coefficient (setq _air_damping_coefficient __air_damping_coefficient)) _air_damping_coefficient)
  (:max_front_steer_angle
   (&optional __max_front_steer_angle)
   (if __max_front_steer_angle (setq _max_front_steer_angle __max_front_steer_angle)) _max_front_steer_angle)
  (:min_front_steer_angle
   (&optional __min_front_steer_angle)
   (if __min_front_steer_angle (setq _min_front_steer_angle __min_front_steer_angle)) _min_front_steer_angle)
  (:max_rear_steer_angle
   (&optional __max_rear_steer_angle)
   (if __max_rear_steer_angle (setq _max_rear_steer_angle __max_rear_steer_angle)) _max_rear_steer_angle)
  (:min_rear_steer_angle
   (&optional __min_rear_steer_angle)
   (if __min_rear_steer_angle (setq _min_rear_steer_angle __min_rear_steer_angle)) _min_rear_steer_angle)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:max_brake_value
   (&optional __max_brake_value)
   (if __max_brake_value (setq _max_brake_value __max_brake_value)) _max_brake_value)
  (:min_brake_value
   (&optional __min_brake_value)
   (if __min_brake_value (setq _min_brake_value __min_brake_value)) _min_brake_value)
  (:max_accel_value
   (&optional __max_accel_value)
   (if __max_accel_value (setq _max_accel_value __max_accel_value)) _max_accel_value)
  (:min_accel_value
   (&optional __min_accel_value)
   (if __min_accel_value (setq _min_accel_value __min_accel_value)) _min_accel_value)
  (:speed_deadzone
   (&optional __speed_deadzone)
   (if __speed_deadzone (setq _speed_deadzone __speed_deadzone)) _speed_deadzone)
  (:standstill_acceleration
   (&optional __standstill_acceleration)
   (if __standstill_acceleration (setq _standstill_acceleration __standstill_acceleration)) _standstill_acceleration)
  (:max_front_steer_angle_rate
   (&optional __max_front_steer_angle_rate)
   (if __max_front_steer_angle_rate (setq _max_front_steer_angle_rate __max_front_steer_angle_rate)) _max_front_steer_angle_rate)
  (:max_rear_steer_angle_rate
   (&optional __max_rear_steer_angle_rate)
   (if __max_rear_steer_angle_rate (setq _max_rear_steer_angle_rate __max_rear_steer_angle_rate)) _max_rear_steer_angle_rate)
  (:max_abs_speed_when_stopped
   (&optional __max_abs_speed_when_stopped)
   (if __max_abs_speed_when_stopped (setq _max_abs_speed_when_stopped __max_abs_speed_when_stopped)) _max_abs_speed_when_stopped)
  (:max_abs_speed_when_stopped_duration
   (&optional __max_abs_speed_when_stopped_duration)
   (if __max_abs_speed_when_stopped_duration (setq _max_abs_speed_when_stopped_duration __max_abs_speed_when_stopped_duration)) _max_abs_speed_when_stopped_duration)
  (:brake_value_when_gear_transitioning
   (&optional __brake_value_when_gear_transitioning)
   (if __brake_value_when_gear_transitioning (setq _brake_value_when_gear_transitioning __brake_value_when_gear_transitioning)) _brake_value_when_gear_transitioning)
  (:accel_deadzone
   (&optional __accel_deadzone)
   (if __accel_deadzone (setq _accel_deadzone __accel_deadzone)) _accel_deadzone)
  (:brake_deadzone
   (&optional __brake_deadzone)
   (if __brake_deadzone (setq _brake_deadzone __brake_deadzone)) _brake_deadzone)
  (:acceleration_in_idle
   (&optional __acceleration_in_idle)
   (if __acceleration_in_idle (setq _acceleration_in_idle __acceleration_in_idle)) _acceleration_in_idle)
  (:deceleration_in_idle
   (&optional __deceleration_in_idle)
   (if __deceleration_in_idle (setq _deceleration_in_idle __deceleration_in_idle)) _deceleration_in_idle)
  (:max_acceleration_jerk
   (&optional __max_acceleration_jerk)
   (if __max_acceleration_jerk (setq _max_acceleration_jerk __max_acceleration_jerk)) _max_acceleration_jerk)
  (:max_acceleration
   (&optional __max_acceleration)
   (if __max_acceleration (setq _max_acceleration __max_acceleration)) _max_acceleration)
  (:max_deceleration
   (&optional __max_deceleration)
   (if __max_deceleration (setq _max_deceleration __max_deceleration)) _max_deceleration)
  (:min_turning_radius
   (&optional __min_turning_radius)
   (if __min_turning_radius (setq _min_turning_radius __min_turning_radius)) _min_turning_radius)
  (:serialization-length
   ()
   (+
    ;; string _brand
    4 (length _brand)
    ;; int32 _steer_mode
    4
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; float64 _mass_fl
    8
    ;; float64 _mass_fr
    8
    ;; float64 _mass_rl
    8
    ;; float64 _mass_rr
    8
    ;; float64 _wheel_radius
    8
    ;; float64 _wheelbase
    8
    ;; float64 _front_edge_to_center
    8
    ;; float64 _back_edge_to_center
    8
    ;; float64 _lf
    8
    ;; float64 _lr
    8
    ;; float64 _cf
    8
    ;; float64 _cr
    8
    ;; float64 _steer_ratio
    8
    ;; float64 _rolling_coefficient
    8
    ;; float64 _air_density
    8
    ;; float64 _air_damping_coefficient
    8
    ;; float64 _max_front_steer_angle
    8
    ;; float64 _min_front_steer_angle
    8
    ;; float64 _max_rear_steer_angle
    8
    ;; float64 _min_rear_steer_angle
    8
    ;; float64 _speed_limit
    8
    ;; float64 _max_brake_value
    8
    ;; float64 _min_brake_value
    8
    ;; float64 _max_accel_value
    8
    ;; float64 _min_accel_value
    8
    ;; float64 _speed_deadzone
    8
    ;; float64 _standstill_acceleration
    8
    ;; float64 _max_front_steer_angle_rate
    8
    ;; float64 _max_rear_steer_angle_rate
    8
    ;; float64 _max_abs_speed_when_stopped
    8
    ;; float64 _max_abs_speed_when_stopped_duration
    8
    ;; float64 _brake_value_when_gear_transitioning
    8
    ;; float64 _accel_deadzone
    8
    ;; float64 _brake_deadzone
    8
    ;; float64 _acceleration_in_idle
    8
    ;; float64 _deceleration_in_idle
    8
    ;; float64 _max_acceleration_jerk
    8
    ;; float64 _max_acceleration
    8
    ;; float64 _max_deceleration
    8
    ;; float64 _min_turning_radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _brand
       (write-long (length _brand) s) (princ _brand s)
     ;; int32 _steer_mode
       (write-long _steer_mode s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mass_fl
       (sys::poke _mass_fl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mass_fr
       (sys::poke _mass_fr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mass_rl
       (sys::poke _mass_rl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mass_rr
       (sys::poke _mass_rr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wheel_radius
       (sys::poke _wheel_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wheelbase
       (sys::poke _wheelbase (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_edge_to_center
       (sys::poke _front_edge_to_center (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_edge_to_center
       (sys::poke _back_edge_to_center (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lf
       (sys::poke _lf (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lr
       (sys::poke _lr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cf
       (sys::poke _cf (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cr
       (sys::poke _cr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_ratio
       (sys::poke _steer_ratio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rolling_coefficient
       (sys::poke _rolling_coefficient (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _air_density
       (sys::poke _air_density (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _air_damping_coefficient
       (sys::poke _air_damping_coefficient (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_front_steer_angle
       (sys::poke _max_front_steer_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_front_steer_angle
       (sys::poke _min_front_steer_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rear_steer_angle
       (sys::poke _max_rear_steer_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_rear_steer_angle
       (sys::poke _min_rear_steer_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_brake_value
       (sys::poke _max_brake_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_brake_value
       (sys::poke _min_brake_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_accel_value
       (sys::poke _max_accel_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_accel_value
       (sys::poke _min_accel_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_deadzone
       (sys::poke _speed_deadzone (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _standstill_acceleration
       (sys::poke _standstill_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_front_steer_angle_rate
       (sys::poke _max_front_steer_angle_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rear_steer_angle_rate
       (sys::poke _max_rear_steer_angle_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_abs_speed_when_stopped
       (sys::poke _max_abs_speed_when_stopped (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_abs_speed_when_stopped_duration
       (sys::poke _max_abs_speed_when_stopped_duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_value_when_gear_transitioning
       (sys::poke _brake_value_when_gear_transitioning (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accel_deadzone
       (sys::poke _accel_deadzone (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_deadzone
       (sys::poke _brake_deadzone (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_in_idle
       (sys::poke _acceleration_in_idle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _deceleration_in_idle
       (sys::poke _deceleration_in_idle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_acceleration_jerk
       (sys::poke _max_acceleration_jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_acceleration
       (sys::poke _max_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_deceleration
       (sys::poke _max_deceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_turning_radius
       (sys::poke _min_turning_radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _brand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _brand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _steer_mode
     (setq _steer_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mass_fl
     (setq _mass_fl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mass_fr
     (setq _mass_fr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mass_rl
     (setq _mass_rl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mass_rr
     (setq _mass_rr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wheel_radius
     (setq _wheel_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wheelbase
     (setq _wheelbase (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_edge_to_center
     (setq _front_edge_to_center (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_edge_to_center
     (setq _back_edge_to_center (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lf
     (setq _lf (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lr
     (setq _lr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cf
     (setq _cf (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cr
     (setq _cr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_ratio
     (setq _steer_ratio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rolling_coefficient
     (setq _rolling_coefficient (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _air_density
     (setq _air_density (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _air_damping_coefficient
     (setq _air_damping_coefficient (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_front_steer_angle
     (setq _max_front_steer_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_front_steer_angle
     (setq _min_front_steer_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rear_steer_angle
     (setq _max_rear_steer_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_rear_steer_angle
     (setq _min_rear_steer_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_brake_value
     (setq _max_brake_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_brake_value
     (setq _min_brake_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_accel_value
     (setq _max_accel_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_accel_value
     (setq _min_accel_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_deadzone
     (setq _speed_deadzone (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _standstill_acceleration
     (setq _standstill_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_front_steer_angle_rate
     (setq _max_front_steer_angle_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rear_steer_angle_rate
     (setq _max_rear_steer_angle_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_abs_speed_when_stopped
     (setq _max_abs_speed_when_stopped (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_abs_speed_when_stopped_duration
     (setq _max_abs_speed_when_stopped_duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_value_when_gear_transitioning
     (setq _brake_value_when_gear_transitioning (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accel_deadzone
     (setq _accel_deadzone (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_deadzone
     (setq _brake_deadzone (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration_in_idle
     (setq _acceleration_in_idle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _deceleration_in_idle
     (setq _deceleration_in_idle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_acceleration_jerk
     (setq _max_acceleration_jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_acceleration
     (setq _max_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_deceleration
     (setq _max_deceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_turning_radius
     (setq _min_turning_radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::VehicleParam :md5sum-) "af312f82f3e9c18a66abf5e713a2f676")
(setf (get ros_interface::VehicleParam :datatype-) "ros_interface/VehicleParam")
(setf (get ros_interface::VehicleParam :definition-)
      "string   brand     #  
int32   steer_mode     #  
float64   length     #  
float64   width     #  
float64   height     #  
float64   mass_fl     #  
float64   mass_fr     #  
float64   mass_rl     #  
float64   mass_rr     #  
float64   wheel_radius     #  
float64   wheelbase     #  
float64   front_edge_to_center     #  
float64   back_edge_to_center     #  
float64   lf     #  
float64   lr     #  
float64   cf     #  
float64   cr     #  
float64   steer_ratio     #  
float64   rolling_coefficient     #  
float64   air_density     #  
float64   air_damping_coefficient     #  
float64   max_front_steer_angle     #  
float64   min_front_steer_angle     #  
float64   max_rear_steer_angle     #  
float64   min_rear_steer_angle     #  
float64   speed_limit     #  
float64   max_brake_value     #  
float64   min_brake_value     #  
float64   max_accel_value     #  
float64   min_accel_value     #  
float64   speed_deadzone     #  
float64   standstill_acceleration     #  
float64   max_front_steer_angle_rate     #  
float64   max_rear_steer_angle_rate     #  
float64   max_abs_speed_when_stopped     #  
float64   max_abs_speed_when_stopped_duration     #  
float64   brake_value_when_gear_transitioning     #  
float64   accel_deadzone     #  
float64   brake_deadzone     #  
float64   acceleration_in_idle     #  
float64   deceleration_in_idle     #  
float64   max_acceleration_jerk     #  
float64   max_acceleration     #  
float64   max_deceleration     #  
float64   min_turning_radius     #  

")



(provide :ros_interface/VehicleParam "af312f82f3e9c18a66abf5e713a2f676")


