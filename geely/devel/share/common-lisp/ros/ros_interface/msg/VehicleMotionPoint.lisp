; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude VehicleMotionPoint.msg.html

(cl:defclass <VehicleMotionPoint> (roslisp-msg-protocol:ros-message)
  ((trajectory_point
    :reader trajectory_point
    :initarg :trajectory_point
    :type ros_interface-msg:TrajectoryPoint
    :initform (cl:make-instance 'ros_interface-msg:TrajectoryPoint))
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleMotionPoint (<VehicleMotionPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleMotionPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleMotionPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<VehicleMotionPoint> is deprecated: use ros_interface-msg:VehicleMotionPoint instead.")))

(cl:ensure-generic-function 'trajectory_point-val :lambda-list '(m))
(cl:defmethod trajectory_point-val ((m <VehicleMotionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory_point-val is deprecated.  Use ros_interface-msg:trajectory_point instead.")
  (trajectory_point m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <VehicleMotionPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:steer-val is deprecated.  Use ros_interface-msg:steer instead.")
  (steer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleMotionPoint>) ostream)
  "Serializes a message object of type '<VehicleMotionPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleMotionPoint>) istream)
  "Deserializes a message object of type '<VehicleMotionPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleMotionPoint>)))
  "Returns string type for a message object of type '<VehicleMotionPoint>"
  "ros_interface/VehicleMotionPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleMotionPoint)))
  "Returns string type for a message object of type 'VehicleMotionPoint"
  "ros_interface/VehicleMotionPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleMotionPoint>)))
  "Returns md5sum for a message object of type '<VehicleMotionPoint>"
  "3bd1f282bdb71dadf0b9039f3bb5e35f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleMotionPoint)))
  "Returns md5sum for a message object of type 'VehicleMotionPoint"
  "3bd1f282bdb71dadf0b9039f3bb5e35f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleMotionPoint>)))
  "Returns full string definition for message of type '<VehicleMotionPoint>"
  (cl:format cl:nil "TrajectoryPoint   trajectory_point     # trajectory point~%float64   steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleMotionPoint)))
  "Returns full string definition for message of type 'VehicleMotionPoint"
  (cl:format cl:nil "TrajectoryPoint   trajectory_point     # trajectory point~%float64   steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleMotionPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory_point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleMotionPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleMotionPoint
    (cl:cons ':trajectory_point (trajectory_point msg))
    (cl:cons ':steer (steer msg))
))
