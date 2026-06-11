; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RadarObstacle.msg.html

(cl:defclass <RadarObstacle> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (life_time
    :reader life_time
    :initarg :life_time
    :type cl:fixnum
    :initform 0)
   (relative_position
    :reader relative_position
    :initarg :relative_position
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (relative_position_rms
    :reader relative_position_rms
    :initarg :relative_position_rms
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (relative_velocity
    :reader relative_velocity
    :initarg :relative_velocity
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (relative_velocity_rms
    :reader relative_velocity_rms
    :initarg :relative_velocity_rms
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (relative_acceleration
    :reader relative_acceleration
    :initarg :relative_acceleration
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (relative_acceleration_rms
    :reader relative_acceleration_rms
    :initarg :relative_acceleration_rms
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (rcs
    :reader rcs
    :initarg :rcs
    :type cl:float
    :initform 0.0)
   (snr
    :reader snr
    :initarg :snr
    :type cl:float
    :initform 0.0)
   (moving_status
    :reader moving_status
    :initarg :moving_status
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (absolute_position
    :reader absolute_position
    :initarg :absolute_position
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (absolute_position_rms
    :reader absolute_position_rms
    :initarg :absolute_position_rms
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (absolute_velocity
    :reader absolute_velocity
    :initarg :absolute_velocity
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (absolute_velocity_rms
    :reader absolute_velocity_rms
    :initarg :absolute_velocity_rms
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (absolute_acceleration
    :reader absolute_acceleration
    :initarg :absolute_acceleration
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (absolute_acceleration_rms
    :reader absolute_acceleration_rms
    :initarg :absolute_acceleration_rms
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (orient_rms
    :reader orient_rms
    :initarg :orient_rms
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yaw_rms
    :reader yaw_rms
    :initarg :yaw_rms
    :type cl:float
    :initform 0.0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (moving_frames_count
    :reader moving_frames_count
    :initarg :moving_frames_count
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type ros_interface-msg:Status
    :initform (cl:make-instance 'ros_interface-msg:Status))
   (underpass_probability
    :reader underpass_probability
    :initarg :underpass_probability
    :type cl:float
    :initform 0.0)
   (overpass_probability
    :reader overpass_probability
    :initarg :overpass_probability
    :type cl:float
    :initform 0.0)
   (exist_probability
    :reader exist_probability
    :initarg :exist_probability
    :type cl:fixnum
    :initform 0)
   (mov_property
    :reader mov_property
    :initarg :mov_property
    :type cl:fixnum
    :initform 0)
   (track_state
    :reader track_state
    :initarg :track_state
    :type cl:fixnum
    :initform 0)
   (track_type
    :reader track_type
    :initarg :track_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarObstacle (<RadarObstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarObstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarObstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RadarObstacle> is deprecated: use ros_interface-msg:RadarObstacle instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:id-val is deprecated.  Use ros_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'life_time-val :lambda-list '(m))
(cl:defmethod life_time-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:life_time-val is deprecated.  Use ros_interface-msg:life_time instead.")
  (life_time m))

(cl:ensure-generic-function 'relative_position-val :lambda-list '(m))
(cl:defmethod relative_position-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_position-val is deprecated.  Use ros_interface-msg:relative_position instead.")
  (relative_position m))

(cl:ensure-generic-function 'relative_position_rms-val :lambda-list '(m))
(cl:defmethod relative_position_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_position_rms-val is deprecated.  Use ros_interface-msg:relative_position_rms instead.")
  (relative_position_rms m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_velocity-val is deprecated.  Use ros_interface-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'relative_velocity_rms-val :lambda-list '(m))
(cl:defmethod relative_velocity_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_velocity_rms-val is deprecated.  Use ros_interface-msg:relative_velocity_rms instead.")
  (relative_velocity_rms m))

(cl:ensure-generic-function 'relative_acceleration-val :lambda-list '(m))
(cl:defmethod relative_acceleration-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_acceleration-val is deprecated.  Use ros_interface-msg:relative_acceleration instead.")
  (relative_acceleration m))

(cl:ensure-generic-function 'relative_acceleration_rms-val :lambda-list '(m))
(cl:defmethod relative_acceleration_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:relative_acceleration_rms-val is deprecated.  Use ros_interface-msg:relative_acceleration_rms instead.")
  (relative_acceleration_rms m))

(cl:ensure-generic-function 'rcs-val :lambda-list '(m))
(cl:defmethod rcs-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rcs-val is deprecated.  Use ros_interface-msg:rcs instead.")
  (rcs m))

(cl:ensure-generic-function 'snr-val :lambda-list '(m))
(cl:defmethod snr-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:snr-val is deprecated.  Use ros_interface-msg:snr instead.")
  (snr m))

(cl:ensure-generic-function 'moving_status-val :lambda-list '(m))
(cl:defmethod moving_status-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:moving_status-val is deprecated.  Use ros_interface-msg:moving_status instead.")
  (moving_status m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:width-val is deprecated.  Use ros_interface-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:length-val is deprecated.  Use ros_interface-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:height-val is deprecated.  Use ros_interface-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta-val is deprecated.  Use ros_interface-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'absolute_position-val :lambda-list '(m))
(cl:defmethod absolute_position-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:absolute_position-val is deprecated.  Use ros_interface-msg:absolute_position instead.")
  (absolute_position m))

(cl:ensure-generic-function 'absolute_position_rms-val :lambda-list '(m))
(cl:defmethod absolute_position_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:absolute_position_rms-val is deprecated.  Use ros_interface-msg:absolute_position_rms instead.")
  (absolute_position_rms m))

(cl:ensure-generic-function 'absolute_velocity-val :lambda-list '(m))
(cl:defmethod absolute_velocity-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:absolute_velocity-val is deprecated.  Use ros_interface-msg:absolute_velocity instead.")
  (absolute_velocity m))

(cl:ensure-generic-function 'absolute_velocity_rms-val :lambda-list '(m))
(cl:defmethod absolute_velocity_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:absolute_velocity_rms-val is deprecated.  Use ros_interface-msg:absolute_velocity_rms instead.")
  (absolute_velocity_rms m))

(cl:ensure-generic-function 'absolute_acceleration-val :lambda-list '(m))
(cl:defmethod absolute_acceleration-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:absolute_acceleration-val is deprecated.  Use ros_interface-msg:absolute_acceleration instead.")
  (absolute_acceleration m))

(cl:ensure-generic-function 'absolute_acceleration_rms-val :lambda-list '(m))
(cl:defmethod absolute_acceleration_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:absolute_acceleration_rms-val is deprecated.  Use ros_interface-msg:absolute_acceleration_rms instead.")
  (absolute_acceleration_rms m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:orientation-val is deprecated.  Use ros_interface-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orient_rms-val :lambda-list '(m))
(cl:defmethod orient_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:orient_rms-val is deprecated.  Use ros_interface-msg:orient_rms instead.")
  (orient_rms m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:yaw-val is deprecated.  Use ros_interface-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yaw_rms-val :lambda-list '(m))
(cl:defmethod yaw_rms-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:yaw_rms-val is deprecated.  Use ros_interface-msg:yaw_rms instead.")
  (yaw_rms m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:count-val is deprecated.  Use ros_interface-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'moving_frames_count-val :lambda-list '(m))
(cl:defmethod moving_frames_count-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:moving_frames_count-val is deprecated.  Use ros_interface-msg:moving_frames_count instead.")
  (moving_frames_count m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:status-val is deprecated.  Use ros_interface-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'underpass_probability-val :lambda-list '(m))
(cl:defmethod underpass_probability-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:underpass_probability-val is deprecated.  Use ros_interface-msg:underpass_probability instead.")
  (underpass_probability m))

(cl:ensure-generic-function 'overpass_probability-val :lambda-list '(m))
(cl:defmethod overpass_probability-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:overpass_probability-val is deprecated.  Use ros_interface-msg:overpass_probability instead.")
  (overpass_probability m))

(cl:ensure-generic-function 'exist_probability-val :lambda-list '(m))
(cl:defmethod exist_probability-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:exist_probability-val is deprecated.  Use ros_interface-msg:exist_probability instead.")
  (exist_probability m))

(cl:ensure-generic-function 'mov_property-val :lambda-list '(m))
(cl:defmethod mov_property-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:mov_property-val is deprecated.  Use ros_interface-msg:mov_property instead.")
  (mov_property m))

(cl:ensure-generic-function 'track_state-val :lambda-list '(m))
(cl:defmethod track_state-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:track_state-val is deprecated.  Use ros_interface-msg:track_state instead.")
  (track_state m))

(cl:ensure-generic-function 'track_type-val :lambda-list '(m))
(cl:defmethod track_type-val ((m <RadarObstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:track_type-val is deprecated.  Use ros_interface-msg:track_type instead.")
  (track_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarObstacle>) ostream)
  "Serializes a message object of type '<RadarObstacle>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'life_time)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration_rms) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rcs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'snr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'moving_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_position_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_velocity_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_acceleration_rms) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'orient_rms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_rms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'moving_frames_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'underpass_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'overpass_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exist_probability)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mov_property)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarObstacle>) istream)
  "Deserializes a message object of type '<RadarObstacle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'life_time)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration_rms) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'snr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moving_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_position_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_velocity_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_acceleration_rms) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orient_rms) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rms) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moving_frames_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'underpass_probability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'overpass_probability) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exist_probability)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mov_property)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'track_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarObstacle>)))
  "Returns string type for a message object of type '<RadarObstacle>"
  "ros_interface/RadarObstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarObstacle)))
  "Returns string type for a message object of type 'RadarObstacle"
  "ros_interface/RadarObstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarObstacle>)))
  "Returns md5sum for a message object of type '<RadarObstacle>"
  "d415f3f1097d79c4238ba7b7df30ac73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarObstacle)))
  "Returns md5sum for a message object of type 'RadarObstacle"
  "d415f3f1097d79c4238ba7b7df30ac73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarObstacle>)))
  "Returns full string definition for message of type '<RadarObstacle>"
  (cl:format cl:nil "int32   id     # obstacle ID.~%uint8   life_time     # 障碍物存在时间~%Point2D   relative_position     # 雷达坐标系障碍物位置~%Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差~%Point2D   relative_velocity     # 雷达坐标系障碍物速度~%Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差~%Point2D   relative_acceleration     # 雷达坐标系障碍物加速度~%Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差~%float64   rcs     # 雷达散射面积~%float64   snr     #  ~%int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;~%float64   width     # 雷达障碍物宽度~%float64   length     # 雷达障碍物长度~%float64   height     # 雷达障碍物高度~%float64   theta     #  ~%Point2D   absolute_position     # obstacle position in map coordinate system~%Point2D   absolute_position_rms     #  ~%Point2D   absolute_velocity     # obstacle position in map coordinate system~%Point2D   absolute_velocity_rms     #  ~%Point2D   absolute_acceleration     #  ~%Point2D   absolute_acceleration_rms     #  ~%float64   orientation     # 雷达障碍物方位角~%float64   orient_rms     # 雷达障碍物方位角标准差~%float64   yaw     #  ~%float64   yaw_rms     #  ~%int32   count     #  ~%int32   moving_frames_count     #  ~%Status   status     # 状态码~%float64   underpass_probability     #  ~%float64   overpass_probability     #  ~%uint8   exist_probability     # 障碍物存在的概率~%uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7~%uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；~%uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/Status~%int32   error_code     # 错误码~%string   msg     # 错误码描述~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarObstacle)))
  "Returns full string definition for message of type 'RadarObstacle"
  (cl:format cl:nil "int32   id     # obstacle ID.~%uint8   life_time     # 障碍物存在时间~%Point2D   relative_position     # 雷达坐标系障碍物位置~%Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差~%Point2D   relative_velocity     # 雷达坐标系障碍物速度~%Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差~%Point2D   relative_acceleration     # 雷达坐标系障碍物加速度~%Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差~%float64   rcs     # 雷达散射面积~%float64   snr     #  ~%int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;~%float64   width     # 雷达障碍物宽度~%float64   length     # 雷达障碍物长度~%float64   height     # 雷达障碍物高度~%float64   theta     #  ~%Point2D   absolute_position     # obstacle position in map coordinate system~%Point2D   absolute_position_rms     #  ~%Point2D   absolute_velocity     # obstacle position in map coordinate system~%Point2D   absolute_velocity_rms     #  ~%Point2D   absolute_acceleration     #  ~%Point2D   absolute_acceleration_rms     #  ~%float64   orientation     # 雷达障碍物方位角~%float64   orient_rms     # 雷达障碍物方位角标准差~%float64   yaw     #  ~%float64   yaw_rms     #  ~%int32   count     #  ~%int32   moving_frames_count     #  ~%Status   status     # 状态码~%float64   underpass_probability     #  ~%float64   overpass_probability     #  ~%uint8   exist_probability     # 障碍物存在的概率~%uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7~%uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；~%uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/Status~%int32   error_code     # 错误码~%string   msg     # 错误码描述~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarObstacle>))
  (cl:+ 0
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration_rms))
     8
     8
     4
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_position_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_velocity_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_acceleration_rms))
     8
     8
     8
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     8
     8
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarObstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarObstacle
    (cl:cons ':id (id msg))
    (cl:cons ':life_time (life_time msg))
    (cl:cons ':relative_position (relative_position msg))
    (cl:cons ':relative_position_rms (relative_position_rms msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':relative_velocity_rms (relative_velocity_rms msg))
    (cl:cons ':relative_acceleration (relative_acceleration msg))
    (cl:cons ':relative_acceleration_rms (relative_acceleration_rms msg))
    (cl:cons ':rcs (rcs msg))
    (cl:cons ':snr (snr msg))
    (cl:cons ':moving_status (moving_status msg))
    (cl:cons ':width (width msg))
    (cl:cons ':length (length msg))
    (cl:cons ':height (height msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':absolute_position (absolute_position msg))
    (cl:cons ':absolute_position_rms (absolute_position_rms msg))
    (cl:cons ':absolute_velocity (absolute_velocity msg))
    (cl:cons ':absolute_velocity_rms (absolute_velocity_rms msg))
    (cl:cons ':absolute_acceleration (absolute_acceleration msg))
    (cl:cons ':absolute_acceleration_rms (absolute_acceleration_rms msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orient_rms (orient_rms msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yaw_rms (yaw_rms msg))
    (cl:cons ':count (count msg))
    (cl:cons ':moving_frames_count (moving_frames_count msg))
    (cl:cons ':status (status msg))
    (cl:cons ':underpass_probability (underpass_probability msg))
    (cl:cons ':overpass_probability (overpass_probability msg))
    (cl:cons ':exist_probability (exist_probability msg))
    (cl:cons ':mov_property (mov_property msg))
    (cl:cons ':track_state (track_state msg))
    (cl:cons ':track_type (track_type msg))
))
