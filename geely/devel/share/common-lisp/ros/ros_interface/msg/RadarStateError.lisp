; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RadarStateError.msg.html

(cl:defclass <RadarStateError> (roslisp-msg-protocol:ros-message)
  ((persistent_error
    :reader persistent_error
    :initarg :persistent_error
    :type cl:fixnum
    :initform 0)
   (temporary_error
    :reader temporary_error
    :initarg :temporary_error
    :type cl:fixnum
    :initform 0)
   (interference_error
    :reader interference_error
    :initarg :interference_error
    :type cl:fixnum
    :initform 0)
   (temperature_error
    :reader temperature_error
    :initarg :temperature_error
    :type cl:fixnum
    :initform 0)
   (voltage_error
    :reader voltage_error
    :initarg :voltage_error
    :type cl:fixnum
    :initform 0)
   (block_error
    :reader block_error
    :initarg :block_error
    :type cl:fixnum
    :initform 0)
   (broadcast_error
    :reader broadcast_error
    :initarg :broadcast_error
    :type cl:fixnum
    :initform 0)
   (electric_axis_error
    :reader electric_axis_error
    :initarg :electric_axis_error
    :type cl:fixnum
    :initform 0)
   (config_error
    :reader config_error
    :initarg :config_error
    :type cl:fixnum
    :initform 0)
   (calibration_error
    :reader calibration_error
    :initarg :calibration_error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarStateError (<RadarStateError>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarStateError>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarStateError)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RadarStateError> is deprecated: use ros_interface-msg:RadarStateError instead.")))

(cl:ensure-generic-function 'persistent_error-val :lambda-list '(m))
(cl:defmethod persistent_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:persistent_error-val is deprecated.  Use ros_interface-msg:persistent_error instead.")
  (persistent_error m))

(cl:ensure-generic-function 'temporary_error-val :lambda-list '(m))
(cl:defmethod temporary_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:temporary_error-val is deprecated.  Use ros_interface-msg:temporary_error instead.")
  (temporary_error m))

(cl:ensure-generic-function 'interference_error-val :lambda-list '(m))
(cl:defmethod interference_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:interference_error-val is deprecated.  Use ros_interface-msg:interference_error instead.")
  (interference_error m))

(cl:ensure-generic-function 'temperature_error-val :lambda-list '(m))
(cl:defmethod temperature_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:temperature_error-val is deprecated.  Use ros_interface-msg:temperature_error instead.")
  (temperature_error m))

(cl:ensure-generic-function 'voltage_error-val :lambda-list '(m))
(cl:defmethod voltage_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:voltage_error-val is deprecated.  Use ros_interface-msg:voltage_error instead.")
  (voltage_error m))

(cl:ensure-generic-function 'block_error-val :lambda-list '(m))
(cl:defmethod block_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:block_error-val is deprecated.  Use ros_interface-msg:block_error instead.")
  (block_error m))

(cl:ensure-generic-function 'broadcast_error-val :lambda-list '(m))
(cl:defmethod broadcast_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:broadcast_error-val is deprecated.  Use ros_interface-msg:broadcast_error instead.")
  (broadcast_error m))

(cl:ensure-generic-function 'electric_axis_error-val :lambda-list '(m))
(cl:defmethod electric_axis_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:electric_axis_error-val is deprecated.  Use ros_interface-msg:electric_axis_error instead.")
  (electric_axis_error m))

(cl:ensure-generic-function 'config_error-val :lambda-list '(m))
(cl:defmethod config_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:config_error-val is deprecated.  Use ros_interface-msg:config_error instead.")
  (config_error m))

(cl:ensure-generic-function 'calibration_error-val :lambda-list '(m))
(cl:defmethod calibration_error-val ((m <RadarStateError>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:calibration_error-val is deprecated.  Use ros_interface-msg:calibration_error instead.")
  (calibration_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarStateError>) ostream)
  "Serializes a message object of type '<RadarStateError>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'persistent_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temporary_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interference_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'block_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'broadcast_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'electric_axis_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'config_error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibration_error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarStateError>) istream)
  "Deserializes a message object of type '<RadarStateError>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'persistent_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temporary_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interference_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'block_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'broadcast_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'electric_axis_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'config_error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'calibration_error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarStateError>)))
  "Returns string type for a message object of type '<RadarStateError>"
  "ros_interface/RadarStateError")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarStateError)))
  "Returns string type for a message object of type 'RadarStateError"
  "ros_interface/RadarStateError")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarStateError>)))
  "Returns md5sum for a message object of type '<RadarStateError>"
  "4942ff8a1bc3c01e0fec7de2001e444c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarStateError)))
  "Returns md5sum for a message object of type 'RadarStateError"
  "4942ff8a1bc3c01e0fec7de2001e444c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarStateError>)))
  "Returns full string definition for message of type '<RadarStateError>"
  (cl:format cl:nil "uint8   persistent_error     #  ~%uint8   temporary_error     #  ~%uint8   interference_error     #  ~%uint8   temperature_error     #  ~%uint8   voltage_error     #  ~%uint8   block_error     #  ~%uint8   broadcast_error     #  ~%uint8   electric_axis_error     #  ~%uint8   config_error     #  ~%uint8   calibration_error     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarStateError)))
  "Returns full string definition for message of type 'RadarStateError"
  (cl:format cl:nil "uint8   persistent_error     #  ~%uint8   temporary_error     #  ~%uint8   interference_error     #  ~%uint8   temperature_error     #  ~%uint8   voltage_error     #  ~%uint8   block_error     #  ~%uint8   broadcast_error     #  ~%uint8   electric_axis_error     #  ~%uint8   config_error     #  ~%uint8   calibration_error     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarStateError>))
  (cl:+ 0
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarStateError>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarStateError
    (cl:cons ':persistent_error (persistent_error msg))
    (cl:cons ':temporary_error (temporary_error msg))
    (cl:cons ':interference_error (interference_error msg))
    (cl:cons ':temperature_error (temperature_error msg))
    (cl:cons ':voltage_error (voltage_error msg))
    (cl:cons ':block_error (block_error msg))
    (cl:cons ':broadcast_error (broadcast_error msg))
    (cl:cons ':electric_axis_error (electric_axis_error msg))
    (cl:cons ':config_error (config_error msg))
    (cl:cons ':calibration_error (calibration_error msg))
))
