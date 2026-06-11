; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RadarState.msg.html

(cl:defclass <RadarState> (roslisp-msg-protocol:ros-message)
  ((sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:fixnum
    :initform 0)
   (nvm_read_status
    :reader nvm_read_status
    :initarg :nvm_read_status
    :type cl:fixnum
    :initform 0)
   (nvm_write_status
    :reader nvm_write_status
    :initarg :nvm_write_status
    :type cl:fixnum
    :initform 0)
   (radar_state_error
    :reader radar_state_error
    :initarg :radar_state_error
    :type ros_interface-msg:RadarStateError
    :initform (cl:make-instance 'ros_interface-msg:RadarStateError))
   (radar_state_mode
    :reader radar_state_mode
    :initarg :radar_state_mode
    :type ros_interface-msg:RadarStateMode
    :initform (cl:make-instance 'ros_interface-msg:RadarStateMode))
   (max_distance
    :reader max_distance
    :initarg :max_distance
    :type cl:fixnum
    :initform 0)
   (sort_index
    :reader sort_index
    :initarg :sort_index
    :type cl:fixnum
    :initform 0)
   (radar_power
    :reader radar_power
    :initarg :radar_power
    :type cl:fixnum
    :initform 0)
   (ctl_relay
    :reader ctl_relay
    :initarg :ctl_relay
    :type cl:fixnum
    :initform 0)
   (output_type
    :reader output_type
    :initarg :output_type
    :type cl:fixnum
    :initform 0)
   (send_quality
    :reader send_quality
    :initarg :send_quality
    :type cl:fixnum
    :initform 0)
   (send_extinfo
    :reader send_extinfo
    :initarg :send_extinfo
    :type cl:fixnum
    :initform 0)
   (motion_rx_state
    :reader motion_rx_state
    :initarg :motion_rx_state
    :type cl:fixnum
    :initform 0)
   (rcs_threshold
    :reader rcs_threshold
    :initarg :rcs_threshold
    :type cl:fixnum
    :initform 0)
   (connector_direction
    :reader connector_direction
    :initarg :connector_direction
    :type cl:fixnum
    :initform 0)
   (radar_position
    :reader radar_position
    :initarg :radar_position
    :type cl:fixnum
    :initform 0)
   (hw_error
    :reader hw_error
    :initarg :hw_error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarState (<RadarState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RadarState> is deprecated: use ros_interface-msg:RadarState instead.")))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_id-val is deprecated.  Use ros_interface-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'nvm_read_status-val :lambda-list '(m))
(cl:defmethod nvm_read_status-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:nvm_read_status-val is deprecated.  Use ros_interface-msg:nvm_read_status instead.")
  (nvm_read_status m))

(cl:ensure-generic-function 'nvm_write_status-val :lambda-list '(m))
(cl:defmethod nvm_write_status-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:nvm_write_status-val is deprecated.  Use ros_interface-msg:nvm_write_status instead.")
  (nvm_write_status m))

(cl:ensure-generic-function 'radar_state_error-val :lambda-list '(m))
(cl:defmethod radar_state_error-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:radar_state_error-val is deprecated.  Use ros_interface-msg:radar_state_error instead.")
  (radar_state_error m))

(cl:ensure-generic-function 'radar_state_mode-val :lambda-list '(m))
(cl:defmethod radar_state_mode-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:radar_state_mode-val is deprecated.  Use ros_interface-msg:radar_state_mode instead.")
  (radar_state_mode m))

(cl:ensure-generic-function 'max_distance-val :lambda-list '(m))
(cl:defmethod max_distance-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:max_distance-val is deprecated.  Use ros_interface-msg:max_distance instead.")
  (max_distance m))

(cl:ensure-generic-function 'sort_index-val :lambda-list '(m))
(cl:defmethod sort_index-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sort_index-val is deprecated.  Use ros_interface-msg:sort_index instead.")
  (sort_index m))

(cl:ensure-generic-function 'radar_power-val :lambda-list '(m))
(cl:defmethod radar_power-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:radar_power-val is deprecated.  Use ros_interface-msg:radar_power instead.")
  (radar_power m))

(cl:ensure-generic-function 'ctl_relay-val :lambda-list '(m))
(cl:defmethod ctl_relay-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ctl_relay-val is deprecated.  Use ros_interface-msg:ctl_relay instead.")
  (ctl_relay m))

(cl:ensure-generic-function 'output_type-val :lambda-list '(m))
(cl:defmethod output_type-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:output_type-val is deprecated.  Use ros_interface-msg:output_type instead.")
  (output_type m))

(cl:ensure-generic-function 'send_quality-val :lambda-list '(m))
(cl:defmethod send_quality-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:send_quality-val is deprecated.  Use ros_interface-msg:send_quality instead.")
  (send_quality m))

(cl:ensure-generic-function 'send_extinfo-val :lambda-list '(m))
(cl:defmethod send_extinfo-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:send_extinfo-val is deprecated.  Use ros_interface-msg:send_extinfo instead.")
  (send_extinfo m))

(cl:ensure-generic-function 'motion_rx_state-val :lambda-list '(m))
(cl:defmethod motion_rx_state-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:motion_rx_state-val is deprecated.  Use ros_interface-msg:motion_rx_state instead.")
  (motion_rx_state m))

(cl:ensure-generic-function 'rcs_threshold-val :lambda-list '(m))
(cl:defmethod rcs_threshold-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rcs_threshold-val is deprecated.  Use ros_interface-msg:rcs_threshold instead.")
  (rcs_threshold m))

(cl:ensure-generic-function 'connector_direction-val :lambda-list '(m))
(cl:defmethod connector_direction-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:connector_direction-val is deprecated.  Use ros_interface-msg:connector_direction instead.")
  (connector_direction m))

(cl:ensure-generic-function 'radar_position-val :lambda-list '(m))
(cl:defmethod radar_position-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:radar_position-val is deprecated.  Use ros_interface-msg:radar_position instead.")
  (radar_position m))

(cl:ensure-generic-function 'hw_error-val :lambda-list '(m))
(cl:defmethod hw_error-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hw_error-val is deprecated.  Use ros_interface-msg:hw_error instead.")
  (hw_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarState>) ostream)
  "Serializes a message object of type '<RadarState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nvm_read_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nvm_write_status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radar_state_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radar_state_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sort_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctl_relay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_extinfo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_rx_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcs_threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connector_direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hw_error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarState>) istream)
  "Deserializes a message object of type '<RadarState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nvm_read_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nvm_write_status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radar_state_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radar_state_mode) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sort_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctl_relay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_extinfo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_rx_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcs_threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connector_direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hw_error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarState>)))
  "Returns string type for a message object of type '<RadarState>"
  "ros_interface/RadarState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarState)))
  "Returns string type for a message object of type 'RadarState"
  "ros_interface/RadarState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarState>)))
  "Returns md5sum for a message object of type '<RadarState>"
  "00e0b3643bf386c2d41f0895e61c5428")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarState)))
  "Returns md5sum for a message object of type 'RadarState"
  "00e0b3643bf386c2d41f0895e61c5428")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarState>)))
  "Returns full string definition for message of type '<RadarState>"
  (cl:format cl:nil "uint8   sensor_id     #  ~%uint8   nvm_read_status     #  ~%uint8   nvm_write_status     #  ~%RadarStateError   radar_state_error     #  ~%RadarStateMode   radar_state_mode     #  ~%uint16   max_distance     #  ~%uint8   sort_index     #  ~%uint8   radar_power     #  ~%uint8   ctl_relay     #  ~%uint8   output_type     #  ~%uint8   send_quality     #  ~%uint8   send_extinfo     #  ~%uint8   motion_rx_state     #  ~%uint8   rcs_threshold     #  ~%uint8   connector_direction     #  ~%uint8   radar_position     #  ~%uint8   hw_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateError~%uint8   persistent_error     #  ~%uint8   temporary_error     #  ~%uint8   interference_error     #  ~%uint8   temperature_error     #  ~%uint8   voltage_error     #  ~%uint8   block_error     #  ~%uint8   broadcast_error     #  ~%uint8   electric_axis_error     #  ~%uint8   config_error     #  ~%uint8   calibration_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateMode~%uint8   can0_work_mode     # can0工作模式~%uint8   can1_work_mode     # can1工作模式~%uint8   dual_can_mode     # 双总线工作模式~%uint8   timming_mode     # 计时模式~%uint8   power_mode     # 电源模式~%uint8   performance_mode     # 效能模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarState)))
  "Returns full string definition for message of type 'RadarState"
  (cl:format cl:nil "uint8   sensor_id     #  ~%uint8   nvm_read_status     #  ~%uint8   nvm_write_status     #  ~%RadarStateError   radar_state_error     #  ~%RadarStateMode   radar_state_mode     #  ~%uint16   max_distance     #  ~%uint8   sort_index     #  ~%uint8   radar_power     #  ~%uint8   ctl_relay     #  ~%uint8   output_type     #  ~%uint8   send_quality     #  ~%uint8   send_extinfo     #  ~%uint8   motion_rx_state     #  ~%uint8   rcs_threshold     #  ~%uint8   connector_direction     #  ~%uint8   radar_position     #  ~%uint8   hw_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateError~%uint8   persistent_error     #  ~%uint8   temporary_error     #  ~%uint8   interference_error     #  ~%uint8   temperature_error     #  ~%uint8   voltage_error     #  ~%uint8   block_error     #  ~%uint8   broadcast_error     #  ~%uint8   electric_axis_error     #  ~%uint8   config_error     #  ~%uint8   calibration_error     #  ~%~%================================================================================~%MSG: ros_interface/RadarStateMode~%uint8   can0_work_mode     # can0工作模式~%uint8   can1_work_mode     # can1工作模式~%uint8   dual_can_mode     # 双总线工作模式~%uint8   timming_mode     # 计时模式~%uint8   power_mode     # 电源模式~%uint8   performance_mode     # 效能模式~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarState>))
  (cl:+ 0
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radar_state_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radar_state_mode))
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarState>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarState
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':nvm_read_status (nvm_read_status msg))
    (cl:cons ':nvm_write_status (nvm_write_status msg))
    (cl:cons ':radar_state_error (radar_state_error msg))
    (cl:cons ':radar_state_mode (radar_state_mode msg))
    (cl:cons ':max_distance (max_distance msg))
    (cl:cons ':sort_index (sort_index msg))
    (cl:cons ':radar_power (radar_power msg))
    (cl:cons ':ctl_relay (ctl_relay msg))
    (cl:cons ':output_type (output_type msg))
    (cl:cons ':send_quality (send_quality msg))
    (cl:cons ':send_extinfo (send_extinfo msg))
    (cl:cons ':motion_rx_state (motion_rx_state msg))
    (cl:cons ':rcs_threshold (rcs_threshold msg))
    (cl:cons ':connector_direction (connector_direction msg))
    (cl:cons ':radar_position (radar_position msg))
    (cl:cons ':hw_error (hw_error msg))
))
