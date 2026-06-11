; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Location.msg.html

(cl:defclass <Location> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type ros_interface-msg:PointLLH
    :initform (cl:make-instance 'ros_interface-msg:PointLLH))
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (rtk_flag
    :reader rtk_flag
    :initarg :rtk_flag
    :type cl:integer
    :initform 0)
   (odom_type
    :reader odom_type
    :initarg :odom_type
    :type cl:integer
    :initform 0)
   (auxiliary_type
    :reader auxiliary_type
    :initarg :auxiliary_type
    :type cl:integer
    :initform 0)
   (location_valid_flag
    :reader location_valid_flag
    :initarg :location_valid_flag
    :type cl:integer
    :initform 0)
   (origin_lat
    :reader origin_lat
    :initarg :origin_lat
    :type cl:float
    :initform 0.0)
   (origin_lon
    :reader origin_lon
    :initarg :origin_lon
    :type cl:float
    :initform 0.0)
   (utm_position
    :reader utm_position
    :initarg :utm_position
    :type ros_interface-msg:PointENU
    :initform (cl:make-instance 'ros_interface-msg:PointENU))
   (change_origin_flag
    :reader change_origin_flag
    :initarg :change_origin_flag
    :type cl:integer
    :initform 0)
   (utm_position_next
    :reader utm_position_next
    :initarg :utm_position_next
    :type ros_interface-msg:PointENU
    :initform (cl:make-instance 'ros_interface-msg:PointENU))
   (position_std_dev
    :reader position_std_dev
    :initarg :position_std_dev
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (orientation_std_dev
    :reader orientation_std_dev
    :initarg :orientation_std_dev
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (linear_velocity_std_dev
    :reader linear_velocity_std_dev
    :initarg :linear_velocity_std_dev
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (linear_acceleration_std_dev
    :reader linear_acceleration_std_dev
    :initarg :linear_acceleration_std_dev
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (angular_velocity_std_dev
    :reader angular_velocity_std_dev
    :initarg :angular_velocity_std_dev
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass Location (<Location>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Location>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Location)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Location> is deprecated: use ros_interface-msg:Location instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position-val is deprecated.  Use ros_interface-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pitch-val is deprecated.  Use ros_interface-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:roll-val is deprecated.  Use ros_interface-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:heading-val is deprecated.  Use ros_interface-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_velocity-val is deprecated.  Use ros_interface-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_acceleration-val is deprecated.  Use ros_interface-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angular_velocity-val is deprecated.  Use ros_interface-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'rtk_flag-val :lambda-list '(m))
(cl:defmethod rtk_flag-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rtk_flag-val is deprecated.  Use ros_interface-msg:rtk_flag instead.")
  (rtk_flag m))

(cl:ensure-generic-function 'odom_type-val :lambda-list '(m))
(cl:defmethod odom_type-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:odom_type-val is deprecated.  Use ros_interface-msg:odom_type instead.")
  (odom_type m))

(cl:ensure-generic-function 'auxiliary_type-val :lambda-list '(m))
(cl:defmethod auxiliary_type-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:auxiliary_type-val is deprecated.  Use ros_interface-msg:auxiliary_type instead.")
  (auxiliary_type m))

(cl:ensure-generic-function 'location_valid_flag-val :lambda-list '(m))
(cl:defmethod location_valid_flag-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:location_valid_flag-val is deprecated.  Use ros_interface-msg:location_valid_flag instead.")
  (location_valid_flag m))

(cl:ensure-generic-function 'origin_lat-val :lambda-list '(m))
(cl:defmethod origin_lat-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:origin_lat-val is deprecated.  Use ros_interface-msg:origin_lat instead.")
  (origin_lat m))

(cl:ensure-generic-function 'origin_lon-val :lambda-list '(m))
(cl:defmethod origin_lon-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:origin_lon-val is deprecated.  Use ros_interface-msg:origin_lon instead.")
  (origin_lon m))

(cl:ensure-generic-function 'utm_position-val :lambda-list '(m))
(cl:defmethod utm_position-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:utm_position-val is deprecated.  Use ros_interface-msg:utm_position instead.")
  (utm_position m))

(cl:ensure-generic-function 'change_origin_flag-val :lambda-list '(m))
(cl:defmethod change_origin_flag-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:change_origin_flag-val is deprecated.  Use ros_interface-msg:change_origin_flag instead.")
  (change_origin_flag m))

(cl:ensure-generic-function 'utm_position_next-val :lambda-list '(m))
(cl:defmethod utm_position_next-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:utm_position_next-val is deprecated.  Use ros_interface-msg:utm_position_next instead.")
  (utm_position_next m))

(cl:ensure-generic-function 'position_std_dev-val :lambda-list '(m))
(cl:defmethod position_std_dev-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_std_dev-val is deprecated.  Use ros_interface-msg:position_std_dev instead.")
  (position_std_dev m))

(cl:ensure-generic-function 'orientation_std_dev-val :lambda-list '(m))
(cl:defmethod orientation_std_dev-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:orientation_std_dev-val is deprecated.  Use ros_interface-msg:orientation_std_dev instead.")
  (orientation_std_dev m))

(cl:ensure-generic-function 'linear_velocity_std_dev-val :lambda-list '(m))
(cl:defmethod linear_velocity_std_dev-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_velocity_std_dev-val is deprecated.  Use ros_interface-msg:linear_velocity_std_dev instead.")
  (linear_velocity_std_dev m))

(cl:ensure-generic-function 'linear_acceleration_std_dev-val :lambda-list '(m))
(cl:defmethod linear_acceleration_std_dev-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_acceleration_std_dev-val is deprecated.  Use ros_interface-msg:linear_acceleration_std_dev instead.")
  (linear_acceleration_std_dev m))

(cl:ensure-generic-function 'angular_velocity_std_dev-val :lambda-list '(m))
(cl:defmethod angular_velocity_std_dev-val ((m <Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angular_velocity_std_dev-val is deprecated.  Use ros_interface-msg:angular_velocity_std_dev instead.")
  (angular_velocity_std_dev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Location>) ostream)
  "Serializes a message object of type '<Location>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rtk_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'odom_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'auxiliary_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'location_valid_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'origin_lon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utm_position) ostream)
  (cl:let* ((signed (cl:slot-value msg 'change_origin_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utm_position_next) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_std_dev) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_std_dev) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity_std_dev) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration_std_dev) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity_std_dev) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Location>) istream)
  "Deserializes a message object of type '<Location>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rtk_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'odom_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'auxiliary_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location_valid_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'origin_lon) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utm_position) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'change_origin_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utm_position_next) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_std_dev) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_std_dev) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity_std_dev) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration_std_dev) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity_std_dev) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Location>)))
  "Returns string type for a message object of type '<Location>"
  "ros_interface/Location")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Location)))
  "Returns string type for a message object of type 'Location"
  "ros_interface/Location")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Location>)))
  "Returns md5sum for a message object of type '<Location>"
  "6b25c2b9af6ab35d68c43d9abb43d342")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Location)))
  "Returns md5sum for a message object of type 'Location"
  "6b25c2b9af6ab35d68c43d9abb43d342")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Location>)))
  "Returns full string definition for message of type '<Location>"
  (cl:format cl:nil "Header   header     # 消息头~%PointLLH   position     # 经纬度高程~%float64   pitch     # 方向(单位弧度，-π～π,正东:0, 逆时针。都满足右手定则)~%float64   roll     #  ~%float64   heading     #  ~%Point3D   linear_velocity     # 线速度（m/s，北东地坐标系）~%Point3D   linear_acceleration     # 线加速度（m/s2，前右下坐标系）~%Point3D   angular_velocity     # 角速度（度/s，前右下，满足右手定则）~%int32   rtk_flag     # RTK标志值~%int32   odom_type     # 融合标志:0-(纯ins) 1-(纯轮速) 2-(泊车递推) 3-(无) 4-(orb匹配定位)~%int32   auxiliary_type     # 辅助方式:0-NULL(无辅助方式) 1-laneliine_map(车道线/标识牌)2-feature_map(lidar)3-feature_map(lidar_camera)~%int32   location_valid_flag     # Location有效性标志位0: invalid； 1: valid~%float64   origin_lat     # 参考点纬度 GCJ-02格式~%float64   origin_lon     # 参考点经度 GCJ-02格式~%PointENU   utm_position     # 相对参考点xyz坐标~%int32   change_origin_flag     # 0::无坐标系切换 1:坐标系切换成功2:坐标系切换中3:坐标系切换故障~%PointENU   utm_position_next     # 相对参考点坐标(切换状态下，为新的原点坐标系下)~%Point3D   position_std_dev     # 位置标准差~%Point3D   orientation_std_dev     # 方向标准差~%Point3D   linear_velocity_std_dev     # 速度标准差~%Point3D   linear_acceleration_std_dev     # 加速度标准差~%Point3D   angular_velocity_std_dev     # 角速度标准差~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/PointLLH~%float64   lon     # Longitude in degrees, ranging from -180 to 180.~%float64   lat     # Latitude in degrees, ranging from -90 to 90.~%float64   height     # WGS-84 ellipsoid height in meters.~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/PointENU~%float64   x     # East from the origin, in meters.~%float64   y     # North from the origin, in meters.~%float64   z     # Up from the WGS-84 ellipsoid, in meters.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Location)))
  "Returns full string definition for message of type 'Location"
  (cl:format cl:nil "Header   header     # 消息头~%PointLLH   position     # 经纬度高程~%float64   pitch     # 方向(单位弧度，-π～π,正东:0, 逆时针。都满足右手定则)~%float64   roll     #  ~%float64   heading     #  ~%Point3D   linear_velocity     # 线速度（m/s，北东地坐标系）~%Point3D   linear_acceleration     # 线加速度（m/s2，前右下坐标系）~%Point3D   angular_velocity     # 角速度（度/s，前右下，满足右手定则）~%int32   rtk_flag     # RTK标志值~%int32   odom_type     # 融合标志:0-(纯ins) 1-(纯轮速) 2-(泊车递推) 3-(无) 4-(orb匹配定位)~%int32   auxiliary_type     # 辅助方式:0-NULL(无辅助方式) 1-laneliine_map(车道线/标识牌)2-feature_map(lidar)3-feature_map(lidar_camera)~%int32   location_valid_flag     # Location有效性标志位0: invalid； 1: valid~%float64   origin_lat     # 参考点纬度 GCJ-02格式~%float64   origin_lon     # 参考点经度 GCJ-02格式~%PointENU   utm_position     # 相对参考点xyz坐标~%int32   change_origin_flag     # 0::无坐标系切换 1:坐标系切换成功2:坐标系切换中3:坐标系切换故障~%PointENU   utm_position_next     # 相对参考点坐标(切换状态下，为新的原点坐标系下)~%Point3D   position_std_dev     # 位置标准差~%Point3D   orientation_std_dev     # 方向标准差~%Point3D   linear_velocity_std_dev     # 速度标准差~%Point3D   linear_acceleration_std_dev     # 加速度标准差~%Point3D   angular_velocity_std_dev     # 角速度标准差~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/PointLLH~%float64   lon     # Longitude in degrees, ranging from -180 to 180.~%float64   lat     # Latitude in degrees, ranging from -90 to 90.~%float64   height     # WGS-84 ellipsoid height in meters.~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/PointENU~%float64   x     # East from the origin, in meters.~%float64   y     # North from the origin, in meters.~%float64   z     # Up from the WGS-84 ellipsoid, in meters.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Location>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     4
     4
     4
     4
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utm_position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utm_position_next))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_std_dev))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_std_dev))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity_std_dev))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration_std_dev))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity_std_dev))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Location>))
  "Converts a ROS message object to a list"
  (cl:list 'Location
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':rtk_flag (rtk_flag msg))
    (cl:cons ':odom_type (odom_type msg))
    (cl:cons ':auxiliary_type (auxiliary_type msg))
    (cl:cons ':location_valid_flag (location_valid_flag msg))
    (cl:cons ':origin_lat (origin_lat msg))
    (cl:cons ':origin_lon (origin_lon msg))
    (cl:cons ':utm_position (utm_position msg))
    (cl:cons ':change_origin_flag (change_origin_flag msg))
    (cl:cons ':utm_position_next (utm_position_next msg))
    (cl:cons ':position_std_dev (position_std_dev msg))
    (cl:cons ':orientation_std_dev (orientation_std_dev msg))
    (cl:cons ':linear_velocity_std_dev (linear_velocity_std_dev msg))
    (cl:cons ':linear_acceleration_std_dev (linear_acceleration_std_dev msg))
    (cl:cons ':angular_velocity_std_dev (angular_velocity_std_dev msg))
))
