; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude VehicleConfig.msg.html

(cl:defclass <VehicleConfig> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_param
    :reader vehicle_param
    :initarg :vehicle_param
    :type ros_interface-msg:VehicleParam
    :initform (cl:make-instance 'ros_interface-msg:VehicleParam)))
)

(cl:defclass VehicleConfig (<VehicleConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<VehicleConfig> is deprecated: use ros_interface-msg:VehicleConfig instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_param-val :lambda-list '(m))
(cl:defmethod vehicle_param-val ((m <VehicleConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:vehicle_param-val is deprecated.  Use ros_interface-msg:vehicle_param instead.")
  (vehicle_param m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleConfig>) ostream)
  "Serializes a message object of type '<VehicleConfig>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_param) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleConfig>) istream)
  "Deserializes a message object of type '<VehicleConfig>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_param) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleConfig>)))
  "Returns string type for a message object of type '<VehicleConfig>"
  "ros_interface/VehicleConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleConfig)))
  "Returns string type for a message object of type 'VehicleConfig"
  "ros_interface/VehicleConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleConfig>)))
  "Returns md5sum for a message object of type '<VehicleConfig>"
  "e501d7b1f42705539ce132ff4e593b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleConfig)))
  "Returns md5sum for a message object of type 'VehicleConfig"
  "e501d7b1f42705539ce132ff4e593b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleConfig>)))
  "Returns full string definition for message of type '<VehicleConfig>"
  (cl:format cl:nil "Header   header     #  ~%VehicleParam   vehicle_param     # 车辆参数表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/VehicleParam~%string   brand     #  ~%int32   steer_mode     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%float64   mass_fl     #  ~%float64   mass_fr     #  ~%float64   mass_rl     #  ~%float64   mass_rr     #  ~%float64   wheel_radius     #  ~%float64   wheelbase     #  ~%float64   front_edge_to_center     #  ~%float64   back_edge_to_center     #  ~%float64   lf     #  ~%float64   lr     #  ~%float64   cf     #  ~%float64   cr     #  ~%float64   steer_ratio     #  ~%float64   rolling_coefficient     #  ~%float64   air_density     #  ~%float64   air_damping_coefficient     #  ~%float64   max_front_steer_angle     #  ~%float64   min_front_steer_angle     #  ~%float64   max_rear_steer_angle     #  ~%float64   min_rear_steer_angle     #  ~%float64   speed_limit     #  ~%float64   max_brake_value     #  ~%float64   min_brake_value     #  ~%float64   max_accel_value     #  ~%float64   min_accel_value     #  ~%float64   speed_deadzone     #  ~%float64   standstill_acceleration     #  ~%float64   max_front_steer_angle_rate     #  ~%float64   max_rear_steer_angle_rate     #  ~%float64   max_abs_speed_when_stopped     #  ~%float64   max_abs_speed_when_stopped_duration     #  ~%float64   brake_value_when_gear_transitioning     #  ~%float64   accel_deadzone     #  ~%float64   brake_deadzone     #  ~%float64   acceleration_in_idle     #  ~%float64   deceleration_in_idle     #  ~%float64   max_acceleration_jerk     #  ~%float64   max_acceleration     #  ~%float64   max_deceleration     #  ~%float64   min_turning_radius     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleConfig)))
  "Returns full string definition for message of type 'VehicleConfig"
  (cl:format cl:nil "Header   header     #  ~%VehicleParam   vehicle_param     # 车辆参数表~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/VehicleParam~%string   brand     #  ~%int32   steer_mode     #  ~%float64   length     #  ~%float64   width     #  ~%float64   height     #  ~%float64   mass_fl     #  ~%float64   mass_fr     #  ~%float64   mass_rl     #  ~%float64   mass_rr     #  ~%float64   wheel_radius     #  ~%float64   wheelbase     #  ~%float64   front_edge_to_center     #  ~%float64   back_edge_to_center     #  ~%float64   lf     #  ~%float64   lr     #  ~%float64   cf     #  ~%float64   cr     #  ~%float64   steer_ratio     #  ~%float64   rolling_coefficient     #  ~%float64   air_density     #  ~%float64   air_damping_coefficient     #  ~%float64   max_front_steer_angle     #  ~%float64   min_front_steer_angle     #  ~%float64   max_rear_steer_angle     #  ~%float64   min_rear_steer_angle     #  ~%float64   speed_limit     #  ~%float64   max_brake_value     #  ~%float64   min_brake_value     #  ~%float64   max_accel_value     #  ~%float64   min_accel_value     #  ~%float64   speed_deadzone     #  ~%float64   standstill_acceleration     #  ~%float64   max_front_steer_angle_rate     #  ~%float64   max_rear_steer_angle_rate     #  ~%float64   max_abs_speed_when_stopped     #  ~%float64   max_abs_speed_when_stopped_duration     #  ~%float64   brake_value_when_gear_transitioning     #  ~%float64   accel_deadzone     #  ~%float64   brake_deadzone     #  ~%float64   acceleration_in_idle     #  ~%float64   deceleration_in_idle     #  ~%float64   max_acceleration_jerk     #  ~%float64   max_acceleration     #  ~%float64   max_deceleration     #  ~%float64   min_turning_radius     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleConfig>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_param))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleConfig
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_param (vehicle_param msg))
))
