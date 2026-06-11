; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude VehicleMotion.msg.html

(cl:defclass <VehicleMotion> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (vehicle_motion_point
    :reader vehicle_motion_point
    :initarg :vehicle_motion_point
    :type (cl:vector ros_interface-msg:VehicleMotionPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:VehicleMotionPoint :initial-element (cl:make-instance 'ros_interface-msg:VehicleMotionPoint))))
)

(cl:defclass VehicleMotion (<VehicleMotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleMotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleMotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<VehicleMotion> is deprecated: use ros_interface-msg:VehicleMotion instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <VehicleMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name-val is deprecated.  Use ros_interface-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'vehicle_motion_point-val :lambda-list '(m))
(cl:defmethod vehicle_motion_point-val ((m <VehicleMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:vehicle_motion_point-val is deprecated.  Use ros_interface-msg:vehicle_motion_point instead.")
  (vehicle_motion_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleMotion>) ostream)
  "Serializes a message object of type '<VehicleMotion>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicle_motion_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicle_motion_point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleMotion>) istream)
  "Deserializes a message object of type '<VehicleMotion>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicle_motion_point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicle_motion_point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:VehicleMotionPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleMotion>)))
  "Returns string type for a message object of type '<VehicleMotion>"
  "ros_interface/VehicleMotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleMotion)))
  "Returns string type for a message object of type 'VehicleMotion"
  "ros_interface/VehicleMotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleMotion>)))
  "Returns md5sum for a message object of type '<VehicleMotion>"
  "bf8e94116d427d0fb900e441d5adcce5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleMotion)))
  "Returns md5sum for a message object of type 'VehicleMotion"
  "bf8e94116d427d0fb900e441d5adcce5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleMotion>)))
  "Returns full string definition for message of type '<VehicleMotion>"
  (cl:format cl:nil "string   name     # 名称~%VehicleMotionPoint[] vehicle_motion_point #  ~%~%================================================================================~%MSG: ros_interface/VehicleMotionPoint~%TrajectoryPoint   trajectory_point     # trajectory point~%float64   steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleMotion)))
  "Returns full string definition for message of type 'VehicleMotion"
  (cl:format cl:nil "string   name     # 名称~%VehicleMotionPoint[] vehicle_motion_point #  ~%~%================================================================================~%MSG: ros_interface/VehicleMotionPoint~%TrajectoryPoint   trajectory_point     # trajectory point~%float64   steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleMotion>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicle_motion_point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleMotion>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleMotion
    (cl:cons ':name (name msg))
    (cl:cons ':vehicle_motion_point (vehicle_motion_point msg))
))
