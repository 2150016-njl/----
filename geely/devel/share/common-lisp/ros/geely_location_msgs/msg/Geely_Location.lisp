; Auto-generated. Do not edit!


(cl:in-package geely_location_msgs-msg)


;//! \htmlinclude Geely_Location.msg.html

(cl:defclass <Geely_Location> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
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
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
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
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (change_origin_flag
    :reader change_origin_flag
    :initarg :change_origin_flag
    :type cl:integer
    :initform 0)
   (utm_position_next
    :reader utm_position_next
    :initarg :utm_position_next
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (position_std_dev
    :reader position_std_dev
    :initarg :position_std_dev
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation_std_dev
    :reader orientation_std_dev
    :initarg :orientation_std_dev
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_velocity_std_dev
    :reader linear_velocity_std_dev
    :initarg :linear_velocity_std_dev
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration_std_dev
    :reader linear_acceleration_std_dev
    :initarg :linear_acceleration_std_dev
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_velocity_std_dev
    :reader angular_velocity_std_dev
    :initarg :angular_velocity_std_dev
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass Geely_Location (<Geely_Location>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Geely_Location>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Geely_Location)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geely_location_msgs-msg:<Geely_Location> is deprecated: use geely_location_msgs-msg:Geely_Location instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:time-val is deprecated.  Use geely_location_msgs-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:header-val is deprecated.  Use geely_location_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:position-val is deprecated.  Use geely_location_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:pitch-val is deprecated.  Use geely_location_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:roll-val is deprecated.  Use geely_location_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:heading-val is deprecated.  Use geely_location_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:linear_velocity-val is deprecated.  Use geely_location_msgs-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:linear_acceleration-val is deprecated.  Use geely_location_msgs-msg:linear_acceleration instead.")
  (linear_acceleration m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:angular_velocity-val is deprecated.  Use geely_location_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'rtk_flag-val :lambda-list '(m))
(cl:defmethod rtk_flag-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:rtk_flag-val is deprecated.  Use geely_location_msgs-msg:rtk_flag instead.")
  (rtk_flag m))

(cl:ensure-generic-function 'odom_type-val :lambda-list '(m))
(cl:defmethod odom_type-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:odom_type-val is deprecated.  Use geely_location_msgs-msg:odom_type instead.")
  (odom_type m))

(cl:ensure-generic-function 'auxiliary_type-val :lambda-list '(m))
(cl:defmethod auxiliary_type-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:auxiliary_type-val is deprecated.  Use geely_location_msgs-msg:auxiliary_type instead.")
  (auxiliary_type m))

(cl:ensure-generic-function 'location_valid_flag-val :lambda-list '(m))
(cl:defmethod location_valid_flag-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:location_valid_flag-val is deprecated.  Use geely_location_msgs-msg:location_valid_flag instead.")
  (location_valid_flag m))

(cl:ensure-generic-function 'origin_lat-val :lambda-list '(m))
(cl:defmethod origin_lat-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:origin_lat-val is deprecated.  Use geely_location_msgs-msg:origin_lat instead.")
  (origin_lat m))

(cl:ensure-generic-function 'origin_lon-val :lambda-list '(m))
(cl:defmethod origin_lon-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:origin_lon-val is deprecated.  Use geely_location_msgs-msg:origin_lon instead.")
  (origin_lon m))

(cl:ensure-generic-function 'utm_position-val :lambda-list '(m))
(cl:defmethod utm_position-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:utm_position-val is deprecated.  Use geely_location_msgs-msg:utm_position instead.")
  (utm_position m))

(cl:ensure-generic-function 'change_origin_flag-val :lambda-list '(m))
(cl:defmethod change_origin_flag-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:change_origin_flag-val is deprecated.  Use geely_location_msgs-msg:change_origin_flag instead.")
  (change_origin_flag m))

(cl:ensure-generic-function 'utm_position_next-val :lambda-list '(m))
(cl:defmethod utm_position_next-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:utm_position_next-val is deprecated.  Use geely_location_msgs-msg:utm_position_next instead.")
  (utm_position_next m))

(cl:ensure-generic-function 'position_std_dev-val :lambda-list '(m))
(cl:defmethod position_std_dev-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:position_std_dev-val is deprecated.  Use geely_location_msgs-msg:position_std_dev instead.")
  (position_std_dev m))

(cl:ensure-generic-function 'orientation_std_dev-val :lambda-list '(m))
(cl:defmethod orientation_std_dev-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:orientation_std_dev-val is deprecated.  Use geely_location_msgs-msg:orientation_std_dev instead.")
  (orientation_std_dev m))

(cl:ensure-generic-function 'linear_velocity_std_dev-val :lambda-list '(m))
(cl:defmethod linear_velocity_std_dev-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:linear_velocity_std_dev-val is deprecated.  Use geely_location_msgs-msg:linear_velocity_std_dev instead.")
  (linear_velocity_std_dev m))

(cl:ensure-generic-function 'linear_acceleration_std_dev-val :lambda-list '(m))
(cl:defmethod linear_acceleration_std_dev-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:linear_acceleration_std_dev-val is deprecated.  Use geely_location_msgs-msg:linear_acceleration_std_dev instead.")
  (linear_acceleration_std_dev m))

(cl:ensure-generic-function 'angular_velocity_std_dev-val :lambda-list '(m))
(cl:defmethod angular_velocity_std_dev-val ((m <Geely_Location>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geely_location_msgs-msg:angular_velocity_std_dev-val is deprecated.  Use geely_location_msgs-msg:angular_velocity_std_dev instead.")
  (angular_velocity_std_dev m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Geely_Location>) ostream)
  "Serializes a message object of type '<Geely_Location>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Geely_Location>) istream)
  "Deserializes a message object of type '<Geely_Location>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Geely_Location>)))
  "Returns string type for a message object of type '<Geely_Location>"
  "geely_location_msgs/Geely_Location")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Geely_Location)))
  "Returns string type for a message object of type 'Geely_Location"
  "geely_location_msgs/Geely_Location")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Geely_Location>)))
  "Returns md5sum for a message object of type '<Geely_Location>"
  "87793f2358c4810e566e37606b1cc817")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Geely_Location)))
  "Returns md5sum for a message object of type 'Geely_Location"
  "87793f2358c4810e566e37606b1cc817")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Geely_Location>)))
  "Returns full string definition for message of type '<Geely_Location>"
  (cl:format cl:nil "# Geely_Location.msg~%# /localization/global_fusion/Location/tju 对应的消息类型~%~%# 时间戳~%float64 time~%~%# 标准 ROS 头~%std_msgs/Header header~%~%# 原始经纬高~%# 约定：x=lon, y=lat, z=height（仅占位，不影响UTM使用）~%geometry_msgs/Point position~%~%# 姿态（弧度）~%float64 pitch~%float64 roll~%float64 heading~%~%# ENU 速度/加速度/角速度（单位：m/s, m/s^2, rad/s）~%geometry_msgs/Vector3 linear_velocity~%geometry_msgs/Vector3 linear_acceleration~%geometry_msgs/Vector3 angular_velocity~%~%# 状态标志~%int32 rtk_flag~%int32 odom_type~%int32 auxiliary_type~%int32 location_valid_flag~%~%# 原点信息~%float64 origin_lat~%float64 origin_lon~%~%# UTM 位置（m）：x=East, y=North, z=Up~%geometry_msgs/Point utm_position~%~%# 原点切换标记与下一帧UTM~%int32 change_origin_flag~%geometry_msgs/Point utm_position_next~%~%# 各类标准差（Vector3）~%geometry_msgs/Vector3 position_std_dev~%geometry_msgs/Vector3 orientation_std_dev~%geometry_msgs/Vector3 linear_velocity_std_dev~%geometry_msgs/Vector3 linear_acceleration_std_dev~%geometry_msgs/Vector3 angular_velocity_std_dev~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Geely_Location)))
  "Returns full string definition for message of type 'Geely_Location"
  (cl:format cl:nil "# Geely_Location.msg~%# /localization/global_fusion/Location/tju 对应的消息类型~%~%# 时间戳~%float64 time~%~%# 标准 ROS 头~%std_msgs/Header header~%~%# 原始经纬高~%# 约定：x=lon, y=lat, z=height（仅占位，不影响UTM使用）~%geometry_msgs/Point position~%~%# 姿态（弧度）~%float64 pitch~%float64 roll~%float64 heading~%~%# ENU 速度/加速度/角速度（单位：m/s, m/s^2, rad/s）~%geometry_msgs/Vector3 linear_velocity~%geometry_msgs/Vector3 linear_acceleration~%geometry_msgs/Vector3 angular_velocity~%~%# 状态标志~%int32 rtk_flag~%int32 odom_type~%int32 auxiliary_type~%int32 location_valid_flag~%~%# 原点信息~%float64 origin_lat~%float64 origin_lon~%~%# UTM 位置（m）：x=East, y=North, z=Up~%geometry_msgs/Point utm_position~%~%# 原点切换标记与下一帧UTM~%int32 change_origin_flag~%geometry_msgs/Point utm_position_next~%~%# 各类标准差（Vector3）~%geometry_msgs/Vector3 position_std_dev~%geometry_msgs/Vector3 orientation_std_dev~%geometry_msgs/Vector3 linear_velocity_std_dev~%geometry_msgs/Vector3 linear_acceleration_std_dev~%geometry_msgs/Vector3 angular_velocity_std_dev~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Geely_Location>))
  (cl:+ 0
     8
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Geely_Location>))
  "Converts a ROS message object to a list"
  (cl:list 'Geely_Location
    (cl:cons ':time (time msg))
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
