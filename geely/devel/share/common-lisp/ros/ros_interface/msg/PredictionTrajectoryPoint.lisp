; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude PredictionTrajectoryPoint.msg.html

(cl:defclass <PredictionTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((predition_path_point
    :reader predition_path_point
    :initarg :predition_path_point
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0))
)

(cl:defclass PredictionTrajectoryPoint (<PredictionTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<PredictionTrajectoryPoint> is deprecated: use ros_interface-msg:PredictionTrajectoryPoint instead.")))

(cl:ensure-generic-function 'predition_path_point-val :lambda-list '(m))
(cl:defmethod predition_path_point-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:predition_path_point-val is deprecated.  Use ros_interface-msg:predition_path_point instead.")
  (predition_path_point m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:timestamp-val is deprecated.  Use ros_interface-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionTrajectoryPoint>) ostream)
  "Serializes a message object of type '<PredictionTrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'predition_path_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionTrajectoryPoint>) istream)
  "Deserializes a message object of type '<PredictionTrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'predition_path_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns string type for a message object of type '<PredictionTrajectoryPoint>"
  "ros_interface/PredictionTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionTrajectoryPoint)))
  "Returns string type for a message object of type 'PredictionTrajectoryPoint"
  "ros_interface/PredictionTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<PredictionTrajectoryPoint>"
  "9430389d65624b2a0ee8a6a8be5b0ea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionTrajectoryPoint)))
  "Returns md5sum for a message object of type 'PredictionTrajectoryPoint"
  "9430389d65624b2a0ee8a6a8be5b0ea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns full string definition for message of type '<PredictionTrajectoryPoint>"
  (cl:format cl:nil "Point3D   predition_path_point     #  ~%float64   timestamp     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionTrajectoryPoint)))
  "Returns full string definition for message of type 'PredictionTrajectoryPoint"
  (cl:format cl:nil "Point3D   predition_path_point     #  ~%float64   timestamp     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionTrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'predition_path_point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionTrajectoryPoint
    (cl:cons ':predition_path_point (predition_path_point msg))
    (cl:cons ':timestamp (timestamp msg))
))
