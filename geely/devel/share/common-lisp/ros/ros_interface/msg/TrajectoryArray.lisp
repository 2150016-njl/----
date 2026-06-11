; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TrajectoryArray.msg.html

(cl:defclass <TrajectoryArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (spline_s
    :reader spline_s
    :initarg :spline_s
    :type (cl:vector ros_interface-msg:Path)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Path :initial-element (cl:make-instance 'ros_interface-msg:Path)))
   (qp_smooth
    :reader qp_smooth
    :initarg :qp_smooth
    :type (cl:vector ros_interface-msg:Path)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Path :initial-element (cl:make-instance 'ros_interface-msg:Path)))
   (trajectory_list
    :reader trajectory_list
    :initarg :trajectory_list
    :type (cl:vector ros_interface-msg:Trajectory)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Trajectory :initial-element (cl:make-instance 'ros_interface-msg:Trajectory))))
)

(cl:defclass TrajectoryArray (<TrajectoryArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TrajectoryArray> is deprecated: use ros_interface-msg:TrajectoryArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrajectoryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'spline_s-val :lambda-list '(m))
(cl:defmethod spline_s-val ((m <TrajectoryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:spline_s-val is deprecated.  Use ros_interface-msg:spline_s instead.")
  (spline_s m))

(cl:ensure-generic-function 'qp_smooth-val :lambda-list '(m))
(cl:defmethod qp_smooth-val ((m <TrajectoryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:qp_smooth-val is deprecated.  Use ros_interface-msg:qp_smooth instead.")
  (qp_smooth m))

(cl:ensure-generic-function 'trajectory_list-val :lambda-list '(m))
(cl:defmethod trajectory_list-val ((m <TrajectoryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:trajectory_list-val is deprecated.  Use ros_interface-msg:trajectory_list instead.")
  (trajectory_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryArray>) ostream)
  "Serializes a message object of type '<TrajectoryArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'spline_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'spline_s))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'qp_smooth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'qp_smooth))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryArray>) istream)
  "Deserializes a message object of type '<TrajectoryArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'spline_s) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'spline_s)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'qp_smooth) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'qp_smooth)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Path))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Trajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryArray>)))
  "Returns string type for a message object of type '<TrajectoryArray>"
  "ros_interface/TrajectoryArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryArray)))
  "Returns string type for a message object of type 'TrajectoryArray"
  "ros_interface/TrajectoryArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryArray>)))
  "Returns md5sum for a message object of type '<TrajectoryArray>"
  "f6fa2156da02dea66a565f8c06f54666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryArray)))
  "Returns md5sum for a message object of type 'TrajectoryArray"
  "f6fa2156da02dea66a565f8c06f54666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryArray>)))
  "Returns full string definition for message of type '<TrajectoryArray>"
  (cl:format cl:nil "Header   header     #  ~%Path[] spline_s # 样条拟合曲线~%Path[] qp_smooth # qp参考线拟合~%Trajectory[] trajectory_list # 轨迹簇~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Path~%string   name     # 名称~%PathPoint[] path_points # 路径点集~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/Trajectory~%string   name     # 轨迹名称~%TrajectoryPoint[] trajectory_points # 轨迹点~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryArray)))
  "Returns full string definition for message of type 'TrajectoryArray"
  (cl:format cl:nil "Header   header     #  ~%Path[] spline_s # 样条拟合曲线~%Path[] qp_smooth # qp参考线拟合~%Trajectory[] trajectory_list # 轨迹簇~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Path~%string   name     # 名称~%PathPoint[] path_points # 路径点集~%~%================================================================================~%MSG: ros_interface/PathPoint~%float64   x     # coordinates x~%float64   y     # coordinates y~%float64   z     # coordinates z~%float64   theta     # direction on the x-y plane~%float64   kappa     # curvature on the x-y planning~%float64   s     # accumulated distance from beginning of the path~%float64   dkappa     # derivative of kappa w.r.t s.~%float64   ddkappa     # derivative of derivative of kappa w.r.t s.~%float64   lane_id     # The lane ID where the path point is on~%float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline~%float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline~%~%================================================================================~%MSG: ros_interface/Trajectory~%string   name     # 轨迹名称~%TrajectoryPoint[] trajectory_points # 轨迹点~%~%================================================================================~%MSG: ros_interface/TrajectoryPoint~%PathPoint   path_point     # path point~%float64   v     # linear velocity~%float64   a     # linear acceleration~%float64   relative_time     # relative time from beginning of the trajectory~%float64   da     # longitudinal jerk~%bool   is_steer_valid     # 转向是否有效~%float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis~%float64   rear_steer     # 后轮转角~%int32   gear     # 档位~%GaussianInfo   gaussian_info     # Gaussian probability information~%~%================================================================================~%MSG: ros_interface/GaussianInfo~%float64   sigma_x     # 标准差x~%float64   sigma_y     # 标准差y~%float64   correlation     # 相关性~%float64   area_probability     # Information of representative uncertainty area~%float64   ellipse_a     # 椭圆长轴~%float64   ellipse_b     # 椭圆短轴~%float64   theta_a     # 椭圆朝向~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'spline_s) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'qp_smooth) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryArray
    (cl:cons ':header (header msg))
    (cl:cons ':spline_s (spline_s msg))
    (cl:cons ':qp_smooth (qp_smooth msg))
    (cl:cons ':trajectory_list (trajectory_list msg))
))
