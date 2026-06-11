; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TrajectoryLimitCommand.msg.html

(cl:defclass <TrajectoryLimitCommand> (roslisp-msg-protocol:ros-message)
  ((speed_limit_enable
    :reader speed_limit_enable
    :initarg :speed_limit_enable
    :type cl:boolean
    :initform cl:nil)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0)
   (kappa_limit_enable
    :reader kappa_limit_enable
    :initarg :kappa_limit_enable
    :type cl:boolean
    :initform cl:nil)
   (kappa_limit
    :reader kappa_limit
    :initarg :kappa_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryLimitCommand (<TrajectoryLimitCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryLimitCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryLimitCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TrajectoryLimitCommand> is deprecated: use ros_interface-msg:TrajectoryLimitCommand instead.")))

(cl:ensure-generic-function 'speed_limit_enable-val :lambda-list '(m))
(cl:defmethod speed_limit_enable-val ((m <TrajectoryLimitCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:speed_limit_enable-val is deprecated.  Use ros_interface-msg:speed_limit_enable instead.")
  (speed_limit_enable m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <TrajectoryLimitCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:speed_limit-val is deprecated.  Use ros_interface-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'kappa_limit_enable-val :lambda-list '(m))
(cl:defmethod kappa_limit_enable-val ((m <TrajectoryLimitCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:kappa_limit_enable-val is deprecated.  Use ros_interface-msg:kappa_limit_enable instead.")
  (kappa_limit_enable m))

(cl:ensure-generic-function 'kappa_limit-val :lambda-list '(m))
(cl:defmethod kappa_limit-val ((m <TrajectoryLimitCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:kappa_limit-val is deprecated.  Use ros_interface-msg:kappa_limit instead.")
  (kappa_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryLimitCommand>) ostream)
  "Serializes a message object of type '<TrajectoryLimitCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'speed_limit_enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'kappa_limit_enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'kappa_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryLimitCommand>) istream)
  "Deserializes a message object of type '<TrajectoryLimitCommand>"
    (cl:setf (cl:slot-value msg 'speed_limit_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'kappa_limit_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'kappa_limit) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryLimitCommand>)))
  "Returns string type for a message object of type '<TrajectoryLimitCommand>"
  "ros_interface/TrajectoryLimitCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryLimitCommand)))
  "Returns string type for a message object of type 'TrajectoryLimitCommand"
  "ros_interface/TrajectoryLimitCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryLimitCommand>)))
  "Returns md5sum for a message object of type '<TrajectoryLimitCommand>"
  "c69ea9264ac7549969c7a946a564e304")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryLimitCommand)))
  "Returns md5sum for a message object of type 'TrajectoryLimitCommand"
  "c69ea9264ac7549969c7a946a564e304")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryLimitCommand>)))
  "Returns full string definition for message of type '<TrajectoryLimitCommand>"
  (cl:format cl:nil "bool   speed_limit_enable     #  ~%float64   speed_limit     # m/s~%bool   kappa_limit_enable     #  ~%float64   kappa_limit     # deg/m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryLimitCommand)))
  "Returns full string definition for message of type 'TrajectoryLimitCommand"
  (cl:format cl:nil "bool   speed_limit_enable     #  ~%float64   speed_limit     # m/s~%bool   kappa_limit_enable     #  ~%float64   kappa_limit     # deg/m~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryLimitCommand>))
  (cl:+ 0
     1
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryLimitCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryLimitCommand
    (cl:cons ':speed_limit_enable (speed_limit_enable msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':kappa_limit_enable (kappa_limit_enable msg))
    (cl:cons ':kappa_limit (kappa_limit msg))
))
