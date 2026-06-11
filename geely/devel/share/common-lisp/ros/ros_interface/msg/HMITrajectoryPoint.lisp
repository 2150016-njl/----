; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMITrajectoryPoint.msg.html

(cl:defclass <HMITrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0))
)

(cl:defclass HMITrajectoryPoint (<HMITrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMITrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMITrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMITrajectoryPoint> is deprecated: use ros_interface-msg:HMITrajectoryPoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <HMITrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:point-val is deprecated.  Use ros_interface-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <HMITrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:v-val is deprecated.  Use ros_interface-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMITrajectoryPoint>) ostream)
  "Serializes a message object of type '<HMITrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMITrajectoryPoint>) istream)
  "Deserializes a message object of type '<HMITrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMITrajectoryPoint>)))
  "Returns string type for a message object of type '<HMITrajectoryPoint>"
  "ros_interface/HMITrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMITrajectoryPoint)))
  "Returns string type for a message object of type 'HMITrajectoryPoint"
  "ros_interface/HMITrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMITrajectoryPoint>)))
  "Returns md5sum for a message object of type '<HMITrajectoryPoint>"
  "ee1cc429c82f6cef953c1a1066bd1db2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMITrajectoryPoint)))
  "Returns md5sum for a message object of type 'HMITrajectoryPoint"
  "ee1cc429c82f6cef953c1a1066bd1db2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMITrajectoryPoint>)))
  "Returns full string definition for message of type '<HMITrajectoryPoint>"
  (cl:format cl:nil "Point3D   point     #  ~%float64   v     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMITrajectoryPoint)))
  "Returns full string definition for message of type 'HMITrajectoryPoint"
  (cl:format cl:nil "Point3D   point     #  ~%float64   v     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMITrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMITrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'HMITrajectoryPoint
    (cl:cons ':point (point msg))
    (cl:cons ':v (v msg))
))
