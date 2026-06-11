; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PlanningCmd.msg.html

(cl:defclass <PlanningCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (turn_lamp_ctrl
    :reader turn_lamp_ctrl
    :initarg :turn_lamp_ctrl
    :type cl:integer
    :initform 0)
   (high_beam_ctrl
    :reader high_beam_ctrl
    :initarg :high_beam_ctrl
    :type cl:integer
    :initform 0)
   (low_beam_ctrl
    :reader low_beam_ctrl
    :initarg :low_beam_ctrl
    :type cl:integer
    :initform 0)
   (horn_ctrl
    :reader horn_ctrl
    :initarg :horn_ctrl
    :type cl:integer
    :initform 0)
   (front_wiper_ctrl
    :reader front_wiper_ctrl
    :initarg :front_wiper_ctrl
    :type cl:integer
    :initform 0)
   (rear_wiper_ctrl
    :reader rear_wiper_ctrl
    :initarg :rear_wiper_ctrl
    :type cl:integer
    :initform 0)
   (position_lamp_ctrl
    :reader position_lamp_ctrl
    :initarg :position_lamp_ctrl
    :type cl:integer
    :initform 0)
   (front_fog_lamp_ctrl
    :reader front_fog_lamp_ctrl
    :initarg :front_fog_lamp_ctrl
    :type cl:integer
    :initform 0)
   (rear_fog_lamp_ctrl
    :reader rear_fog_lamp_ctrl
    :initarg :rear_fog_lamp_ctrl
    :type cl:integer
    :initform 0)
   (brake_lamp_ctrl
    :reader brake_lamp_ctrl
    :initarg :brake_lamp_ctrl
    :type cl:integer
    :initform 0)
   (alarm_lamp_ctrl
    :reader alarm_lamp_ctrl
    :initarg :alarm_lamp_ctrl
    :type cl:integer
    :initform 0)
   (lf_door_ctrl
    :reader lf_door_ctrl
    :initarg :lf_door_ctrl
    :type cl:integer
    :initform 0)
   (rf_door_ctrl
    :reader rf_door_ctrl
    :initarg :rf_door_ctrl
    :type cl:integer
    :initform 0)
   (lr_door_ctrl
    :reader lr_door_ctrl
    :initarg :lr_door_ctrl
    :type cl:integer
    :initform 0)
   (rr_door_ctrl
    :reader rr_door_ctrl
    :initarg :rr_door_ctrl
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanningCmd (<PlanningCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PlanningCmd> is deprecated: use ros_interface-msg:PlanningCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'turn_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod turn_lamp_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:turn_lamp_ctrl-val is deprecated.  Use ros_interface-msg:turn_lamp_ctrl instead.")
  (turn_lamp_ctrl m))

(cl:ensure-generic-function 'high_beam_ctrl-val :lambda-list '(m))
(cl:defmethod high_beam_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:high_beam_ctrl-val is deprecated.  Use ros_interface-msg:high_beam_ctrl instead.")
  (high_beam_ctrl m))

(cl:ensure-generic-function 'low_beam_ctrl-val :lambda-list '(m))
(cl:defmethod low_beam_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:low_beam_ctrl-val is deprecated.  Use ros_interface-msg:low_beam_ctrl instead.")
  (low_beam_ctrl m))

(cl:ensure-generic-function 'horn_ctrl-val :lambda-list '(m))
(cl:defmethod horn_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:horn_ctrl-val is deprecated.  Use ros_interface-msg:horn_ctrl instead.")
  (horn_ctrl m))

(cl:ensure-generic-function 'front_wiper_ctrl-val :lambda-list '(m))
(cl:defmethod front_wiper_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_wiper_ctrl-val is deprecated.  Use ros_interface-msg:front_wiper_ctrl instead.")
  (front_wiper_ctrl m))

(cl:ensure-generic-function 'rear_wiper_ctrl-val :lambda-list '(m))
(cl:defmethod rear_wiper_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rear_wiper_ctrl-val is deprecated.  Use ros_interface-msg:rear_wiper_ctrl instead.")
  (rear_wiper_ctrl m))

(cl:ensure-generic-function 'position_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod position_lamp_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_lamp_ctrl-val is deprecated.  Use ros_interface-msg:position_lamp_ctrl instead.")
  (position_lamp_ctrl m))

(cl:ensure-generic-function 'front_fog_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod front_fog_lamp_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:front_fog_lamp_ctrl-val is deprecated.  Use ros_interface-msg:front_fog_lamp_ctrl instead.")
  (front_fog_lamp_ctrl m))

(cl:ensure-generic-function 'rear_fog_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod rear_fog_lamp_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rear_fog_lamp_ctrl-val is deprecated.  Use ros_interface-msg:rear_fog_lamp_ctrl instead.")
  (rear_fog_lamp_ctrl m))

(cl:ensure-generic-function 'brake_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod brake_lamp_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:brake_lamp_ctrl-val is deprecated.  Use ros_interface-msg:brake_lamp_ctrl instead.")
  (brake_lamp_ctrl m))

(cl:ensure-generic-function 'alarm_lamp_ctrl-val :lambda-list '(m))
(cl:defmethod alarm_lamp_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:alarm_lamp_ctrl-val is deprecated.  Use ros_interface-msg:alarm_lamp_ctrl instead.")
  (alarm_lamp_ctrl m))

(cl:ensure-generic-function 'lf_door_ctrl-val :lambda-list '(m))
(cl:defmethod lf_door_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lf_door_ctrl-val is deprecated.  Use ros_interface-msg:lf_door_ctrl instead.")
  (lf_door_ctrl m))

(cl:ensure-generic-function 'rf_door_ctrl-val :lambda-list '(m))
(cl:defmethod rf_door_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rf_door_ctrl-val is deprecated.  Use ros_interface-msg:rf_door_ctrl instead.")
  (rf_door_ctrl m))

(cl:ensure-generic-function 'lr_door_ctrl-val :lambda-list '(m))
(cl:defmethod lr_door_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lr_door_ctrl-val is deprecated.  Use ros_interface-msg:lr_door_ctrl instead.")
  (lr_door_ctrl m))

(cl:ensure-generic-function 'rr_door_ctrl-val :lambda-list '(m))
(cl:defmethod rr_door_ctrl-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rr_door_ctrl-val is deprecated.  Use ros_interface-msg:rr_door_ctrl instead.")
  (rr_door_ctrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningCmd>) ostream)
  "Serializes a message object of type '<PlanningCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'turn_lamp_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'high_beam_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'low_beam_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'horn_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_wiper_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_wiper_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position_lamp_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_fog_lamp_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rear_fog_lamp_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake_lamp_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'alarm_lamp_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lf_door_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rf_door_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lr_door_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rr_door_ctrl)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningCmd>) istream)
  "Deserializes a message object of type '<PlanningCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_lamp_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'high_beam_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'low_beam_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'horn_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_wiper_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_wiper_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_lamp_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_fog_lamp_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rear_fog_lamp_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_lamp_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alarm_lamp_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lf_door_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rf_door_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lr_door_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rr_door_ctrl) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningCmd>)))
  "Returns string type for a message object of type '<PlanningCmd>"
  "ros_interface/PlanningCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningCmd)))
  "Returns string type for a message object of type 'PlanningCmd"
  "ros_interface/PlanningCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningCmd>)))
  "Returns md5sum for a message object of type '<PlanningCmd>"
  "988d2e6545b7aed3c7c802e455b6a331")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningCmd)))
  "Returns md5sum for a message object of type 'PlanningCmd"
  "988d2e6545b7aed3c7c802e455b6a331")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningCmd>)))
  "Returns full string definition for message of type '<PlanningCmd>"
  (cl:format cl:nil "Header   header     #  ~%int32   turn_lamp_ctrl     # 转向灯 TURN_INACTIVE_SIGNAL:0 TURN_LEFT_SIGNAL:1 TURN_RIGHT_SIGNAL:2 TURN_INVALID_SIGNAL:3~%int32   high_beam_ctrl     # 0 关闭 1 开启 2 不响应~%int32   low_beam_ctrl     # 0 关闭 1 开启 2 不响应~%int32   horn_ctrl     # 0 关闭 1 开启 2 不响应~%int32   front_wiper_ctrl     # 前雨刮器 0 关闭 1 开启~%int32   rear_wiper_ctrl     # 后雨刮器 0 关闭 1 开启~%int32   position_lamp_ctrl     # 位置灯 0 关闭 1 开启~%int32   front_fog_lamp_ctrl     # 前雾灯 0 关闭 1 开启~%int32   rear_fog_lamp_ctrl     # 后雾灯 0 关闭 1 开启~%int32   brake_lamp_ctrl     # 刹车灯 一般情况自动控制 0 关闭 1 开启~%int32   alarm_lamp_ctrl     # 警报灯 双闪 0 关闭 1 开启~%int32   lf_door_ctrl     # 左前门控制 0 关闭 1 开启~%int32   rf_door_ctrl     # 右前门控制 0 关闭 1 开启~%int32   lr_door_ctrl     # 左后门控制 0 关闭 1 开启~%int32   rr_door_ctrl     # 右后门控制 0 关闭 1 开启~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningCmd)))
  "Returns full string definition for message of type 'PlanningCmd"
  (cl:format cl:nil "Header   header     #  ~%int32   turn_lamp_ctrl     # 转向灯 TURN_INACTIVE_SIGNAL:0 TURN_LEFT_SIGNAL:1 TURN_RIGHT_SIGNAL:2 TURN_INVALID_SIGNAL:3~%int32   high_beam_ctrl     # 0 关闭 1 开启 2 不响应~%int32   low_beam_ctrl     # 0 关闭 1 开启 2 不响应~%int32   horn_ctrl     # 0 关闭 1 开启 2 不响应~%int32   front_wiper_ctrl     # 前雨刮器 0 关闭 1 开启~%int32   rear_wiper_ctrl     # 后雨刮器 0 关闭 1 开启~%int32   position_lamp_ctrl     # 位置灯 0 关闭 1 开启~%int32   front_fog_lamp_ctrl     # 前雾灯 0 关闭 1 开启~%int32   rear_fog_lamp_ctrl     # 后雾灯 0 关闭 1 开启~%int32   brake_lamp_ctrl     # 刹车灯 一般情况自动控制 0 关闭 1 开启~%int32   alarm_lamp_ctrl     # 警报灯 双闪 0 关闭 1 开启~%int32   lf_door_ctrl     # 左前门控制 0 关闭 1 开启~%int32   rf_door_ctrl     # 右前门控制 0 关闭 1 开启~%int32   lr_door_ctrl     # 左后门控制 0 关闭 1 开启~%int32   rr_door_ctrl     # 右后门控制 0 关闭 1 开启~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningCmd
    (cl:cons ':header (header msg))
    (cl:cons ':turn_lamp_ctrl (turn_lamp_ctrl msg))
    (cl:cons ':high_beam_ctrl (high_beam_ctrl msg))
    (cl:cons ':low_beam_ctrl (low_beam_ctrl msg))
    (cl:cons ':horn_ctrl (horn_ctrl msg))
    (cl:cons ':front_wiper_ctrl (front_wiper_ctrl msg))
    (cl:cons ':rear_wiper_ctrl (rear_wiper_ctrl msg))
    (cl:cons ':position_lamp_ctrl (position_lamp_ctrl msg))
    (cl:cons ':front_fog_lamp_ctrl (front_fog_lamp_ctrl msg))
    (cl:cons ':rear_fog_lamp_ctrl (rear_fog_lamp_ctrl msg))
    (cl:cons ':brake_lamp_ctrl (brake_lamp_ctrl msg))
    (cl:cons ':alarm_lamp_ctrl (alarm_lamp_ctrl msg))
    (cl:cons ':lf_door_ctrl (lf_door_ctrl msg))
    (cl:cons ':rf_door_ctrl (rf_door_ctrl msg))
    (cl:cons ':lr_door_ctrl (lr_door_ctrl msg))
    (cl:cons ':rr_door_ctrl (rr_door_ctrl msg))
))
