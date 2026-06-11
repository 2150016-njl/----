; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude WheelInfo.msg.html

(cl:defclass <WheelInfo> (roslisp-msg-protocol:ros-message)
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
   (steer_driving_mode
    :reader steer_driving_mode
    :initarg :steer_driving_mode
    :type cl:integer
    :initform 0)
   (steering_value
    :reader steering_value
    :initarg :steering_value
    :type cl:float
    :initform 0.0)
   (steering_torque_nm
    :reader steering_torque_nm
    :initarg :steering_torque_nm
    :type cl:float
    :initform 0.0)
   (steering_rate_dps
    :reader steering_rate_dps
    :initarg :steering_rate_dps
    :type cl:float
    :initform 0.0)
   (speed_mps
    :reader speed_mps
    :initarg :speed_mps
    :type cl:float
    :initform 0.0)
   (veh_spd_vld
    :reader veh_spd_vld
    :initarg :veh_spd_vld
    :type cl:boolean
    :initform cl:nil)
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0)
   (gear_vld
    :reader gear_vld
    :initarg :gear_vld
    :type cl:boolean
    :initform cl:nil)
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
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (wss_fl_edges_sum
    :reader wss_fl_edges_sum
    :initarg :wss_fl_edges_sum
    :type cl:integer
    :initform 0)
   (wss_fr_edges_sum
    :reader wss_fr_edges_sum
    :initarg :wss_fr_edges_sum
    :type cl:integer
    :initform 0)
   (wss_rl_edges_sum
    :reader wss_rl_edges_sum
    :initarg :wss_rl_edges_sum
    :type cl:integer
    :initform 0)
   (wss_rr_edges_sum
    :reader wss_rr_edges_sum
    :initarg :wss_rr_edges_sum
    :type cl:integer
    :initform 0)
   (wss_fl_edges_sum_vld
    :reader wss_fl_edges_sum_vld
    :initarg :wss_fl_edges_sum_vld
    :type cl:boolean
    :initform cl:nil)
   (wss_fr_edges_sum_vld
    :reader wss_fr_edges_sum_vld
    :initarg :wss_fr_edges_sum_vld
    :type cl:boolean
    :initform cl:nil)
   (wss_rl_edges_sum_vld
    :reader wss_rl_edges_sum_vld
    :initarg :wss_rl_edges_sum_vld
    :type cl:boolean
    :initform cl:nil)
   (wss_rr_edges_sum_vld
    :reader wss_rr_edges_sum_vld
    :initarg :wss_rr_edges_sum_vld
    :type cl:boolean
    :initform cl:nil)
   (veh_lat_accel
    :reader veh_lat_accel
    :initarg :veh_lat_accel
    :type cl:float
    :initform 0.0)
   (veh_lgt_accel
    :reader veh_lgt_accel
    :initarg :veh_lgt_accel
    :type cl:float
    :initform 0.0)
   (veh_lat_accel_vld
    :reader veh_lat_accel_vld
    :initarg :veh_lat_accel_vld
    :type cl:boolean
    :initform cl:nil)
   (veh_lgt_accel_vld
    :reader veh_lgt_accel_vld
    :initarg :veh_lgt_accel_vld
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WheelInfo (<WheelInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<WheelInfo> is deprecated: use ros_interface-msg:WheelInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'moving_status-val :lambda-list '(m))
(cl:defmethod moving_status-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:moving_status-val is deprecated.  Use ros_interface-msg:moving_status instead.")
  (moving_status m))

(cl:ensure-generic-function 'steer_driving_mode-val :lambda-list '(m))
(cl:defmethod steer_driving_mode-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steer_driving_mode-val is deprecated.  Use ros_interface-msg:steer_driving_mode instead.")
  (steer_driving_mode m))

(cl:ensure-generic-function 'steering_value-val :lambda-list '(m))
(cl:defmethod steering_value-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steering_value-val is deprecated.  Use ros_interface-msg:steering_value instead.")
  (steering_value m))

(cl:ensure-generic-function 'steering_torque_nm-val :lambda-list '(m))
(cl:defmethod steering_torque_nm-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steering_torque_nm-val is deprecated.  Use ros_interface-msg:steering_torque_nm instead.")
  (steering_torque_nm m))

(cl:ensure-generic-function 'steering_rate_dps-val :lambda-list '(m))
(cl:defmethod steering_rate_dps-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steering_rate_dps-val is deprecated.  Use ros_interface-msg:steering_rate_dps instead.")
  (steering_rate_dps m))

(cl:ensure-generic-function 'speed_mps-val :lambda-list '(m))
(cl:defmethod speed_mps-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:speed_mps-val is deprecated.  Use ros_interface-msg:speed_mps instead.")
  (speed_mps m))

(cl:ensure-generic-function 'veh_spd_vld-val :lambda-list '(m))
(cl:defmethod veh_spd_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:veh_spd_vld-val is deprecated.  Use ros_interface-msg:veh_spd_vld instead.")
  (veh_spd_vld m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:gear-val is deprecated.  Use ros_interface-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'gear_vld-val :lambda-list '(m))
(cl:defmethod gear_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:gear_vld-val is deprecated.  Use ros_interface-msg:gear_vld instead.")
  (gear_vld m))

(cl:ensure-generic-function 'wheel_direction_rr-val :lambda-list '(m))
(cl:defmethod wheel_direction_rr-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_rr-val is deprecated.  Use ros_interface-msg:wheel_direction_rr instead.")
  (wheel_direction_rr m))

(cl:ensure-generic-function 'wheel_spd_rr-val :lambda-list '(m))
(cl:defmethod wheel_spd_rr-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_rr-val is deprecated.  Use ros_interface-msg:wheel_spd_rr instead.")
  (wheel_spd_rr m))

(cl:ensure-generic-function 'wheel_direction_rl-val :lambda-list '(m))
(cl:defmethod wheel_direction_rl-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_rl-val is deprecated.  Use ros_interface-msg:wheel_direction_rl instead.")
  (wheel_direction_rl m))

(cl:ensure-generic-function 'wheel_spd_rl-val :lambda-list '(m))
(cl:defmethod wheel_spd_rl-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_rl-val is deprecated.  Use ros_interface-msg:wheel_spd_rl instead.")
  (wheel_spd_rl m))

(cl:ensure-generic-function 'wheel_direction_fr-val :lambda-list '(m))
(cl:defmethod wheel_direction_fr-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_fr-val is deprecated.  Use ros_interface-msg:wheel_direction_fr instead.")
  (wheel_direction_fr m))

(cl:ensure-generic-function 'wheel_spd_fr-val :lambda-list '(m))
(cl:defmethod wheel_spd_fr-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_fr-val is deprecated.  Use ros_interface-msg:wheel_spd_fr instead.")
  (wheel_spd_fr m))

(cl:ensure-generic-function 'wheel_direction_fl-val :lambda-list '(m))
(cl:defmethod wheel_direction_fl-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_direction_fl-val is deprecated.  Use ros_interface-msg:wheel_direction_fl instead.")
  (wheel_direction_fl m))

(cl:ensure-generic-function 'wheel_spd_fl-val :lambda-list '(m))
(cl:defmethod wheel_spd_fl-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wheel_spd_fl-val is deprecated.  Use ros_interface-msg:wheel_spd_fl instead.")
  (wheel_spd_fl m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:yaw_rate-val is deprecated.  Use ros_interface-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'wss_fl_edges_sum-val :lambda-list '(m))
(cl:defmethod wss_fl_edges_sum-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_fl_edges_sum-val is deprecated.  Use ros_interface-msg:wss_fl_edges_sum instead.")
  (wss_fl_edges_sum m))

(cl:ensure-generic-function 'wss_fr_edges_sum-val :lambda-list '(m))
(cl:defmethod wss_fr_edges_sum-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_fr_edges_sum-val is deprecated.  Use ros_interface-msg:wss_fr_edges_sum instead.")
  (wss_fr_edges_sum m))

(cl:ensure-generic-function 'wss_rl_edges_sum-val :lambda-list '(m))
(cl:defmethod wss_rl_edges_sum-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_rl_edges_sum-val is deprecated.  Use ros_interface-msg:wss_rl_edges_sum instead.")
  (wss_rl_edges_sum m))

(cl:ensure-generic-function 'wss_rr_edges_sum-val :lambda-list '(m))
(cl:defmethod wss_rr_edges_sum-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_rr_edges_sum-val is deprecated.  Use ros_interface-msg:wss_rr_edges_sum instead.")
  (wss_rr_edges_sum m))

(cl:ensure-generic-function 'wss_fl_edges_sum_vld-val :lambda-list '(m))
(cl:defmethod wss_fl_edges_sum_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_fl_edges_sum_vld-val is deprecated.  Use ros_interface-msg:wss_fl_edges_sum_vld instead.")
  (wss_fl_edges_sum_vld m))

(cl:ensure-generic-function 'wss_fr_edges_sum_vld-val :lambda-list '(m))
(cl:defmethod wss_fr_edges_sum_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_fr_edges_sum_vld-val is deprecated.  Use ros_interface-msg:wss_fr_edges_sum_vld instead.")
  (wss_fr_edges_sum_vld m))

(cl:ensure-generic-function 'wss_rl_edges_sum_vld-val :lambda-list '(m))
(cl:defmethod wss_rl_edges_sum_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_rl_edges_sum_vld-val is deprecated.  Use ros_interface-msg:wss_rl_edges_sum_vld instead.")
  (wss_rl_edges_sum_vld m))

(cl:ensure-generic-function 'wss_rr_edges_sum_vld-val :lambda-list '(m))
(cl:defmethod wss_rr_edges_sum_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:wss_rr_edges_sum_vld-val is deprecated.  Use ros_interface-msg:wss_rr_edges_sum_vld instead.")
  (wss_rr_edges_sum_vld m))

(cl:ensure-generic-function 'veh_lat_accel-val :lambda-list '(m))
(cl:defmethod veh_lat_accel-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:veh_lat_accel-val is deprecated.  Use ros_interface-msg:veh_lat_accel instead.")
  (veh_lat_accel m))

(cl:ensure-generic-function 'veh_lgt_accel-val :lambda-list '(m))
(cl:defmethod veh_lgt_accel-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:veh_lgt_accel-val is deprecated.  Use ros_interface-msg:veh_lgt_accel instead.")
  (veh_lgt_accel m))

(cl:ensure-generic-function 'veh_lat_accel_vld-val :lambda-list '(m))
(cl:defmethod veh_lat_accel_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:veh_lat_accel_vld-val is deprecated.  Use ros_interface-msg:veh_lat_accel_vld instead.")
  (veh_lat_accel_vld m))

(cl:ensure-generic-function 'veh_lgt_accel_vld-val :lambda-list '(m))
(cl:defmethod veh_lgt_accel_vld-val ((m <WheelInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:veh_lgt_accel_vld-val is deprecated.  Use ros_interface-msg:veh_lgt_accel_vld instead.")
  (veh_lgt_accel_vld m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelInfo>) ostream)
  "Serializes a message object of type '<WheelInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'moving_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_value))))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_rate_dps))))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'veh_spd_vld) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gear_vld) 1 0)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'wss_fl_edges_sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wss_fr_edges_sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wss_rl_edges_sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wss_rr_edges_sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wss_fl_edges_sum_vld) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wss_fr_edges_sum_vld) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wss_rl_edges_sum_vld) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wss_rr_edges_sum_vld) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'veh_lat_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'veh_lgt_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'veh_lat_accel_vld) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'veh_lgt_accel_vld) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelInfo>) istream)
  "Deserializes a message object of type '<WheelInfo>"
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
      (cl:setf (cl:slot-value msg 'steer_driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_value) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'steering_rate_dps) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'veh_spd_vld) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'gear_vld) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wss_fl_edges_sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wss_fr_edges_sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wss_rl_edges_sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wss_rr_edges_sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'wss_fl_edges_sum_vld) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wss_fr_edges_sum_vld) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wss_rl_edges_sum_vld) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wss_rr_edges_sum_vld) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_lat_accel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'veh_lgt_accel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'veh_lat_accel_vld) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'veh_lgt_accel_vld) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelInfo>)))
  "Returns string type for a message object of type '<WheelInfo>"
  "ros_interface/WheelInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelInfo)))
  "Returns string type for a message object of type 'WheelInfo"
  "ros_interface/WheelInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelInfo>)))
  "Returns md5sum for a message object of type '<WheelInfo>"
  "89a45d7281d30b62ae7cbb5f0d17e21a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelInfo)))
  "Returns md5sum for a message object of type 'WheelInfo"
  "89a45d7281d30b62ae7cbb5f0d17e21a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelInfo>)))
  "Returns full string definition for message of type '<WheelInfo>"
  (cl:format cl:nil "Header   header     #  ~%int32   moving_status     # 0=UNKNOWN_VEHICLE_STATE  1=STATIONARY  2=MOVING_FORWARD  3=MOVING_BACKWARD~%int32   steer_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE  4=EMERGENCY_MODE~%float64   steering_value     # Real steering location~%float64   steering_torque_nm     # Applied steering torque in [Nm]~%float64   steering_rate_dps     # degree/s~%float64   speed_mps     # Vehicle Speed in meters per second~%bool   veh_spd_vld     # 车速有效性~%int32   gear     # 档位~%bool   gear_vld     # 档位有效性~%int32   wheel_direction_rr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_rr     # Actual speed of the right rear wheel~%int32   wheel_direction_rl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_rl     # Actual speed of the left rear wheel~%int32   wheel_direction_fr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_fr     # Actual speed of the right front wheel~%int32   wheel_direction_fl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_fl     # Actual speed of the left front wheel~%float64   yaw_rate     # Yaw rate[degree/s] [-163.84|163.835]~%int32   wss_fl_edges_sum     # 左前轮边缘和~%int32   wss_fr_edges_sum     # 右前轮边缘和~%int32   wss_rl_edges_sum     # 左后轮边缘和~%int32   wss_rr_edges_sum     # 右后轮边缘和~%bool   wss_fl_edges_sum_vld     # 左前轮边缘和有效位（0：无效 1：有效）~%bool   wss_fr_edges_sum_vld     # 右前轮边缘和有效位（0：无效 1：有效）~%bool   wss_rl_edges_sum_vld     # 左后轮边缘和有效位（0：无效 1：有效）~%bool   wss_rr_edges_sum_vld     # 右后轮边缘和有效位（0：无效 1：有效）~%float64   veh_lat_accel     # 车辆横向加速度~%float64   veh_lgt_accel     # 车辆纵向加速度~%bool   veh_lat_accel_vld     # 车辆横向加速度有效性~%bool   veh_lgt_accel_vld     # 车辆纵向加速度有效性~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelInfo)))
  "Returns full string definition for message of type 'WheelInfo"
  (cl:format cl:nil "Header   header     #  ~%int32   moving_status     # 0=UNKNOWN_VEHICLE_STATE  1=STATIONARY  2=MOVING_FORWARD  3=MOVING_BACKWARD~%int32   steer_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE  4=EMERGENCY_MODE~%float64   steering_value     # Real steering location~%float64   steering_torque_nm     # Applied steering torque in [Nm]~%float64   steering_rate_dps     # degree/s~%float64   speed_mps     # Vehicle Speed in meters per second~%bool   veh_spd_vld     # 车速有效性~%int32   gear     # 档位~%bool   gear_vld     # 档位有效性~%int32   wheel_direction_rr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_rr     # Actual speed of the right rear wheel~%int32   wheel_direction_rl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_rl     # Actual speed of the left rear wheel~%int32   wheel_direction_fr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_fr     # Actual speed of the right front wheel~%int32   wheel_direction_fl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID~%float64   wheel_spd_fl     # Actual speed of the left front wheel~%float64   yaw_rate     # Yaw rate[degree/s] [-163.84|163.835]~%int32   wss_fl_edges_sum     # 左前轮边缘和~%int32   wss_fr_edges_sum     # 右前轮边缘和~%int32   wss_rl_edges_sum     # 左后轮边缘和~%int32   wss_rr_edges_sum     # 右后轮边缘和~%bool   wss_fl_edges_sum_vld     # 左前轮边缘和有效位（0：无效 1：有效）~%bool   wss_fr_edges_sum_vld     # 右前轮边缘和有效位（0：无效 1：有效）~%bool   wss_rl_edges_sum_vld     # 左后轮边缘和有效位（0：无效 1：有效）~%bool   wss_rr_edges_sum_vld     # 右后轮边缘和有效位（0：无效 1：有效）~%float64   veh_lat_accel     # 车辆横向加速度~%float64   veh_lgt_accel     # 车辆纵向加速度~%bool   veh_lat_accel_vld     # 车辆横向加速度有效性~%bool   veh_lgt_accel_vld     # 车辆纵向加速度有效性~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     8
     1
     4
     1
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
     4
     1
     1
     1
     1
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelInfo
    (cl:cons ':header (header msg))
    (cl:cons ':moving_status (moving_status msg))
    (cl:cons ':steer_driving_mode (steer_driving_mode msg))
    (cl:cons ':steering_value (steering_value msg))
    (cl:cons ':steering_torque_nm (steering_torque_nm msg))
    (cl:cons ':steering_rate_dps (steering_rate_dps msg))
    (cl:cons ':speed_mps (speed_mps msg))
    (cl:cons ':veh_spd_vld (veh_spd_vld msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':gear_vld (gear_vld msg))
    (cl:cons ':wheel_direction_rr (wheel_direction_rr msg))
    (cl:cons ':wheel_spd_rr (wheel_spd_rr msg))
    (cl:cons ':wheel_direction_rl (wheel_direction_rl msg))
    (cl:cons ':wheel_spd_rl (wheel_spd_rl msg))
    (cl:cons ':wheel_direction_fr (wheel_direction_fr msg))
    (cl:cons ':wheel_spd_fr (wheel_spd_fr msg))
    (cl:cons ':wheel_direction_fl (wheel_direction_fl msg))
    (cl:cons ':wheel_spd_fl (wheel_spd_fl msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':wss_fl_edges_sum (wss_fl_edges_sum msg))
    (cl:cons ':wss_fr_edges_sum (wss_fr_edges_sum msg))
    (cl:cons ':wss_rl_edges_sum (wss_rl_edges_sum msg))
    (cl:cons ':wss_rr_edges_sum (wss_rr_edges_sum msg))
    (cl:cons ':wss_fl_edges_sum_vld (wss_fl_edges_sum_vld msg))
    (cl:cons ':wss_fr_edges_sum_vld (wss_fr_edges_sum_vld msg))
    (cl:cons ':wss_rl_edges_sum_vld (wss_rl_edges_sum_vld msg))
    (cl:cons ':wss_rr_edges_sum_vld (wss_rr_edges_sum_vld msg))
    (cl:cons ':veh_lat_accel (veh_lat_accel msg))
    (cl:cons ':veh_lgt_accel (veh_lgt_accel msg))
    (cl:cons ':veh_lat_accel_vld (veh_lat_accel_vld msg))
    (cl:cons ':veh_lgt_accel_vld (veh_lgt_accel_vld msg))
))
