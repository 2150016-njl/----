; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude VehicleSignal.msg.html

(cl:defclass <VehicleSignal> (roslisp-msg-protocol:ros-message)
  ((turn_signal
    :reader turn_signal
    :initarg :turn_signal
    :type cl:integer
    :initform 0)
   (high_beam
    :reader high_beam
    :initarg :high_beam
    :type cl:boolean
    :initform cl:nil)
   (low_beam
    :reader low_beam
    :initarg :low_beam
    :type cl:boolean
    :initform cl:nil)
   (horn
    :reader horn
    :initarg :horn
    :type cl:boolean
    :initform cl:nil)
   (emergency_light
    :reader emergency_light
    :initarg :emergency_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VehicleSignal (<VehicleSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<VehicleSignal> is deprecated: use ros_interface-msg:VehicleSignal instead.")))

(cl:ensure-generic-function 'turn_signal-val :lambda-list '(m))
(cl:defmethod turn_signal-val ((m <VehicleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:turn_signal-val is deprecated.  Use ros_interface-msg:turn_signal instead.")
  (turn_signal m))

(cl:ensure-generic-function 'high_beam-val :lambda-list '(m))
(cl:defmethod high_beam-val ((m <VehicleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:high_beam-val is deprecated.  Use ros_interface-msg:high_beam instead.")
  (high_beam m))

(cl:ensure-generic-function 'low_beam-val :lambda-list '(m))
(cl:defmethod low_beam-val ((m <VehicleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:low_beam-val is deprecated.  Use ros_interface-msg:low_beam instead.")
  (low_beam m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <VehicleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:horn-val is deprecated.  Use ros_interface-msg:horn instead.")
  (horn m))

(cl:ensure-generic-function 'emergency_light-val :lambda-list '(m))
(cl:defmethod emergency_light-val ((m <VehicleSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:emergency_light-val is deprecated.  Use ros_interface-msg:emergency_light instead.")
  (emergency_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSignal>) ostream)
  "Serializes a message object of type '<VehicleSignal>"
  (cl:let* ((signed (cl:slot-value msg 'turn_signal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'high_beam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_beam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'horn) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSignal>) istream)
  "Deserializes a message object of type '<VehicleSignal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_signal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'high_beam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'low_beam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'horn) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSignal>)))
  "Returns string type for a message object of type '<VehicleSignal>"
  "ros_interface/VehicleSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSignal)))
  "Returns string type for a message object of type 'VehicleSignal"
  "ros_interface/VehicleSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSignal>)))
  "Returns md5sum for a message object of type '<VehicleSignal>"
  "47860a6c8e7e3e428751d2354cd4426d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSignal)))
  "Returns md5sum for a message object of type 'VehicleSignal"
  "47860a6c8e7e3e428751d2354cd4426d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSignal>)))
  "Returns full string definition for message of type '<VehicleSignal>"
  (cl:format cl:nil "int32   turn_signal     # 转向信号~%bool   high_beam     # high beam~%bool   low_beam     # low beam~%bool   horn     # horn~%bool   emergency_light     # emergency light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSignal)))
  "Returns full string definition for message of type 'VehicleSignal"
  (cl:format cl:nil "int32   turn_signal     # 转向信号~%bool   high_beam     # high beam~%bool   low_beam     # low beam~%bool   horn     # horn~%bool   emergency_light     # emergency light~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSignal>))
  (cl:+ 0
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSignal
    (cl:cons ':turn_signal (turn_signal msg))
    (cl:cons ':high_beam (high_beam msg))
    (cl:cons ':low_beam (low_beam msg))
    (cl:cons ':horn (horn msg))
    (cl:cons ':emergency_light (emergency_light msg))
))
