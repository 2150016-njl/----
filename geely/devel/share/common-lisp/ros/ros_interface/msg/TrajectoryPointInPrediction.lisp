; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TrajectoryPointInPrediction.msg.html

(cl:defclass <TrajectoryPointInPrediction> (roslisp-msg-protocol:ros-message)
  ((path_point
    :reader path_point
    :initarg :path_point
    :type ros_interface-msg:PathPoint
    :initform (cl:make-instance 'ros_interface-msg:PathPoint))
   (v
    :reader v
    :initarg :v
    :type cl:float
    :initform 0.0)
   (a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (relative_time
    :reader relative_time
    :initarg :relative_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryPointInPrediction (<TrajectoryPointInPrediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPointInPrediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPointInPrediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TrajectoryPointInPrediction> is deprecated: use ros_interface-msg:TrajectoryPointInPrediction instead.")))

(cl:ensure-generic-function 'path_point-val :lambda-list '(m))
(cl:defmethod path_point-val ((m <TrajectoryPointInPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:path_point-val is deprecated.  Use ros_interface-msg:path_point instead.")
  (path_point m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <TrajectoryPointInPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:v-val is deprecated.  Use ros_interface-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <TrajectoryPointInPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:a-val is deprecated.  Use ros_interface-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'relative_time-val :lambda-list '(m))
(cl:defmethod relative_time-val ((m <TrajectoryPointInPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_time-val is deprecated.  Use ros_interface-msg:relative_time instead.")
  (relative_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPointInPrediction>) ostream)
  "Serializes a message object of type '<TrajectoryPointInPrediction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'relative_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPointInPrediction>) istream)
  "Deserializes a message object of type '<TrajectoryPointInPrediction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_point) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPointInPrediction>)))
  "Returns string type for a message object of type '<TrajectoryPointInPrediction>"
  "ros_interface/TrajectoryPointInPrediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPointInPrediction)))
  "Returns string type for a message object of type 'TrajectoryPointInPrediction"
  "ros_interface/TrajectoryPointInPrediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPointInPrediction>)))
  "Returns md5sum for a message object of type '<TrajectoryPointInPrediction>"
  "05fd9f6cc86d21615eadb92a27ce577c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPointInPrediction)))
  "Returns md5sum for a message object of type 'TrajectoryPointInPrediction"
  "05fd9f6cc86d21615eadb92a27ce577c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPointInPrediction>)))
  "Returns full string definition for message of type '<TrajectoryPointInPrediction>"
  (cl:format cl:nil "PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPointInPrediction)))
  "Returns full string definition for message of type 'TrajectoryPointInPrediction"
  (cl:format cl:nil "PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPointInPrediction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_point))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPointInPrediction>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPointInPrediction
    (cl:cons ':path_point (path_point msg))
    (cl:cons ':v (v msg))
    (cl:cons ':a (a msg))
    (cl:cons ':relative_time (relative_time msg))
))
