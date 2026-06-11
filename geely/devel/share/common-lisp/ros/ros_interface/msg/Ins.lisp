; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Ins.msg.html

(cl:defclass <Ins> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0)
   (utm_position
    :reader utm_position
    :initarg :utm_position
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (utm_zone_mumber
    :reader utm_zone_mumber
    :initarg :utm_zone_mumber
    :type cl:integer
    :initform 0)
   (utm_zone_char
    :reader utm_zone_char
    :initarg :utm_zone_char
    :type cl:fixnum
    :initform 0)
   (attitude
    :reader attitude
    :initarg :attitude
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (linear_velocity
    :reader linear_velocity
    :initarg :linear_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (sd_position
    :reader sd_position
    :initarg :sd_position
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (sd_attitude
    :reader sd_attitude
    :initarg :sd_attitude
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (sd_velocity
    :reader sd_velocity
    :initarg :sd_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (cep68
    :reader cep68
    :initarg :cep68
    :type cl:float
    :initform 0.0)
   (cep95
    :reader cep95
    :initarg :cep95
    :type cl:float
    :initform 0.0)
   (second
    :reader second
    :initarg :second
    :type cl:float
    :initform 0.0)
   (sat_use_num
    :reader sat_use_num
    :initarg :sat_use_num
    :type cl:integer
    :initform 0)
   (sat_in_view_num
    :reader sat_in_view_num
    :initarg :sat_in_view_num
    :type cl:integer
    :initform 0)
   (solution_status
    :reader solution_status
    :initarg :solution_status
    :type cl:fixnum
    :initform 0)
   (position_type
    :reader position_type
    :initarg :position_type
    :type cl:fixnum
    :initform 0)
   (p_dop
    :reader p_dop
    :initarg :p_dop
    :type cl:float
    :initform 0.0)
   (h_dop
    :reader h_dop
    :initarg :h_dop
    :type cl:float
    :initform 0.0)
   (v_dop
    :reader v_dop
    :initarg :v_dop
    :type cl:float
    :initform 0.0)
   (attitude_dual
    :reader attitude_dual
    :initarg :attitude_dual
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (sd_angle_dual
    :reader sd_angle_dual
    :initarg :sd_angle_dual
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (base_line_length_dual
    :reader base_line_length_dual
    :initarg :base_line_length_dual
    :type cl:float
    :initform 0.0)
   (solution_status_dual
    :reader solution_status_dual
    :initarg :solution_status_dual
    :type cl:integer
    :initform 0)
   (position_type_dual
    :reader position_type_dual
    :initarg :position_type_dual
    :type cl:integer
    :initform 0)
   (solution_source_dual
    :reader solution_source_dual
    :initarg :solution_source_dual
    :type cl:integer
    :initform 0)
   (aoc
    :reader aoc
    :initarg :aoc
    :type cl:integer
    :initform 0)
   (rtk_baseline
    :reader rtk_baseline
    :initarg :rtk_baseline
    :type cl:integer
    :initform 0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D)))
)

(cl:defclass Ins (<Ins>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ins>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ins)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Ins> is deprecated: use ros_interface-msg:Ins instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:latitude-val is deprecated.  Use ros_interface-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:longitude-val is deprecated.  Use ros_interface-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:elevation-val is deprecated.  Use ros_interface-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'utm_position-val :lambda-list '(m))
(cl:defmethod utm_position-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:utm_position-val is deprecated.  Use ros_interface-msg:utm_position instead.")
  (utm_position m))

(cl:ensure-generic-function 'utm_zone_mumber-val :lambda-list '(m))
(cl:defmethod utm_zone_mumber-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:utm_zone_mumber-val is deprecated.  Use ros_interface-msg:utm_zone_mumber instead.")
  (utm_zone_mumber m))

(cl:ensure-generic-function 'utm_zone_char-val :lambda-list '(m))
(cl:defmethod utm_zone_char-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:utm_zone_char-val is deprecated.  Use ros_interface-msg:utm_zone_char instead.")
  (utm_zone_char m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:attitude-val is deprecated.  Use ros_interface-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'linear_velocity-val :lambda-list '(m))
(cl:defmethod linear_velocity-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:linear_velocity-val is deprecated.  Use ros_interface-msg:linear_velocity instead.")
  (linear_velocity m))

(cl:ensure-generic-function 'sd_position-val :lambda-list '(m))
(cl:defmethod sd_position-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sd_position-val is deprecated.  Use ros_interface-msg:sd_position instead.")
  (sd_position m))

(cl:ensure-generic-function 'sd_attitude-val :lambda-list '(m))
(cl:defmethod sd_attitude-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sd_attitude-val is deprecated.  Use ros_interface-msg:sd_attitude instead.")
  (sd_attitude m))

(cl:ensure-generic-function 'sd_velocity-val :lambda-list '(m))
(cl:defmethod sd_velocity-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sd_velocity-val is deprecated.  Use ros_interface-msg:sd_velocity instead.")
  (sd_velocity m))

(cl:ensure-generic-function 'cep68-val :lambda-list '(m))
(cl:defmethod cep68-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cep68-val is deprecated.  Use ros_interface-msg:cep68 instead.")
  (cep68 m))

(cl:ensure-generic-function 'cep95-val :lambda-list '(m))
(cl:defmethod cep95-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cep95-val is deprecated.  Use ros_interface-msg:cep95 instead.")
  (cep95 m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:second-val is deprecated.  Use ros_interface-msg:second instead.")
  (second m))

(cl:ensure-generic-function 'sat_use_num-val :lambda-list '(m))
(cl:defmethod sat_use_num-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sat_use_num-val is deprecated.  Use ros_interface-msg:sat_use_num instead.")
  (sat_use_num m))

(cl:ensure-generic-function 'sat_in_view_num-val :lambda-list '(m))
(cl:defmethod sat_in_view_num-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sat_in_view_num-val is deprecated.  Use ros_interface-msg:sat_in_view_num instead.")
  (sat_in_view_num m))

(cl:ensure-generic-function 'solution_status-val :lambda-list '(m))
(cl:defmethod solution_status-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:solution_status-val is deprecated.  Use ros_interface-msg:solution_status instead.")
  (solution_status m))

(cl:ensure-generic-function 'position_type-val :lambda-list '(m))
(cl:defmethod position_type-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_type-val is deprecated.  Use ros_interface-msg:position_type instead.")
  (position_type m))

(cl:ensure-generic-function 'p_dop-val :lambda-list '(m))
(cl:defmethod p_dop-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:p_dop-val is deprecated.  Use ros_interface-msg:p_dop instead.")
  (p_dop m))

(cl:ensure-generic-function 'h_dop-val :lambda-list '(m))
(cl:defmethod h_dop-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:h_dop-val is deprecated.  Use ros_interface-msg:h_dop instead.")
  (h_dop m))

(cl:ensure-generic-function 'v_dop-val :lambda-list '(m))
(cl:defmethod v_dop-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:v_dop-val is deprecated.  Use ros_interface-msg:v_dop instead.")
  (v_dop m))

(cl:ensure-generic-function 'attitude_dual-val :lambda-list '(m))
(cl:defmethod attitude_dual-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:attitude_dual-val is deprecated.  Use ros_interface-msg:attitude_dual instead.")
  (attitude_dual m))

(cl:ensure-generic-function 'sd_angle_dual-val :lambda-list '(m))
(cl:defmethod sd_angle_dual-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sd_angle_dual-val is deprecated.  Use ros_interface-msg:sd_angle_dual instead.")
  (sd_angle_dual m))

(cl:ensure-generic-function 'base_line_length_dual-val :lambda-list '(m))
(cl:defmethod base_line_length_dual-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:base_line_length_dual-val is deprecated.  Use ros_interface-msg:base_line_length_dual instead.")
  (base_line_length_dual m))

(cl:ensure-generic-function 'solution_status_dual-val :lambda-list '(m))
(cl:defmethod solution_status_dual-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:solution_status_dual-val is deprecated.  Use ros_interface-msg:solution_status_dual instead.")
  (solution_status_dual m))

(cl:ensure-generic-function 'position_type_dual-val :lambda-list '(m))
(cl:defmethod position_type_dual-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_type_dual-val is deprecated.  Use ros_interface-msg:position_type_dual instead.")
  (position_type_dual m))

(cl:ensure-generic-function 'solution_source_dual-val :lambda-list '(m))
(cl:defmethod solution_source_dual-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:solution_source_dual-val is deprecated.  Use ros_interface-msg:solution_source_dual instead.")
  (solution_source_dual m))

(cl:ensure-generic-function 'aoc-val :lambda-list '(m))
(cl:defmethod aoc-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:aoc-val is deprecated.  Use ros_interface-msg:aoc instead.")
  (aoc m))

(cl:ensure-generic-function 'rtk_baseline-val :lambda-list '(m))
(cl:defmethod rtk_baseline-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rtk_baseline-val is deprecated.  Use ros_interface-msg:rtk_baseline instead.")
  (rtk_baseline m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:angular_velocity-val is deprecated.  Use ros_interface-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <Ins>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acceleration-val is deprecated.  Use ros_interface-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ins>) ostream)
  "Serializes a message object of type '<Ins>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utm_position) ostream)
  (cl:let* ((signed (cl:slot-value msg 'utm_zone_mumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'utm_zone_char)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sd_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sd_attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sd_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cep68))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cep95))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'sat_use_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sat_in_view_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'p_dop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'h_dop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'v_dop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude_dual) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sd_angle_dual) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'base_line_length_dual))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'solution_status_dual)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position_type_dual)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'solution_source_dual)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aoc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'aoc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'aoc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'aoc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_baseline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rtk_baseline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rtk_baseline)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rtk_baseline)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ins>) istream)
  "Deserializes a message object of type '<Ins>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utm_position) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'utm_zone_mumber) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'utm_zone_char)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sd_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sd_attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sd_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cep68) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cep95) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sat_use_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sat_in_view_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'solution_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'p_dop) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h_dop) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_dop) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude_dual) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sd_angle_dual) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'base_line_length_dual) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution_status_dual) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_type_dual) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'solution_source_dual) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aoc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'aoc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'aoc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'aoc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtk_baseline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rtk_baseline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rtk_baseline)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rtk_baseline)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ins>)))
  "Returns string type for a message object of type '<Ins>"
  "ros_interface/Ins")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ins)))
  "Returns string type for a message object of type 'Ins"
  "ros_interface/Ins")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ins>)))
  "Returns md5sum for a message object of type '<Ins>"
  "a208bce72b0cc6abb54188331564ad26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ins)))
  "Returns md5sum for a message object of type 'Ins"
  "a208bce72b0cc6abb54188331564ad26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ins>)))
  "Returns full string definition for message of type '<Ins>"
  (cl:format cl:nil "Header   header     # 头部信息~%bool   is_valid     # 数据有效性标志位~%float64   latitude     # 纬度信息~%float64   longitude     # 经度信息~%float64   elevation     # 海拔信息~%Point3D   utm_position     # UTM坐标位置~%int32   utm_zone_mumber     # UTM区号~%uint8   utm_zone_char     # UTM区号~%Point3D   attitude     # 三轴姿态~%Point3D   linear_velocity     # 线速度信息~%Point3D   sd_position     # 位置标准差~%Point3D   sd_attitude     # 姿态标准差~%Point3D   sd_velocity     # 速度标准差~%float64   cep68     # cep68数据位~%float64   cep95     # cep95数据位~%float64   second     # 时间~%int32   sat_use_num     # 使用卫星数~%int32   sat_in_view_num     # 可见卫星数~%uint16   solution_status     # 求解状态~%uint16   position_type     # 定位状态~%float64   p_dop     # pDop数据位~%float64   h_dop     # hDop数据位~%float64   v_dop     # vDop数据位~%Point3D   attitude_dual     # 双天线姿态~%Point3D   sd_angle_dual     # 双天线角度标准差~%float64   base_line_length_dual     # 双天线距离~%int32   solution_status_dual     # 双天线求解状态~%int32   position_type_dual     # 双天线定位状态~%int32   solution_source_dual     # 双天线求解源~%uint32   aoc     # Aoc数据位~%uint32   rtk_baseline     # RTK基线信息~%Point3D   angular_velocity     # 角速度信息~%Point3D   acceleration     # 加速度信息~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ins)))
  "Returns full string definition for message of type 'Ins"
  (cl:format cl:nil "Header   header     # 头部信息~%bool   is_valid     # 数据有效性标志位~%float64   latitude     # 纬度信息~%float64   longitude     # 经度信息~%float64   elevation     # 海拔信息~%Point3D   utm_position     # UTM坐标位置~%int32   utm_zone_mumber     # UTM区号~%uint8   utm_zone_char     # UTM区号~%Point3D   attitude     # 三轴姿态~%Point3D   linear_velocity     # 线速度信息~%Point3D   sd_position     # 位置标准差~%Point3D   sd_attitude     # 姿态标准差~%Point3D   sd_velocity     # 速度标准差~%float64   cep68     # cep68数据位~%float64   cep95     # cep95数据位~%float64   second     # 时间~%int32   sat_use_num     # 使用卫星数~%int32   sat_in_view_num     # 可见卫星数~%uint16   solution_status     # 求解状态~%uint16   position_type     # 定位状态~%float64   p_dop     # pDop数据位~%float64   h_dop     # hDop数据位~%float64   v_dop     # vDop数据位~%Point3D   attitude_dual     # 双天线姿态~%Point3D   sd_angle_dual     # 双天线角度标准差~%float64   base_line_length_dual     # 双天线距离~%int32   solution_status_dual     # 双天线求解状态~%int32   position_type_dual     # 双天线定位状态~%int32   solution_source_dual     # 双天线求解源~%uint32   aoc     # Aoc数据位~%uint32   rtk_baseline     # RTK基线信息~%Point3D   angular_velocity     # 角速度信息~%Point3D   acceleration     # 加速度信息~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ins>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utm_position))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sd_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sd_attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sd_velocity))
     8
     8
     8
     4
     4
     2
     2
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude_dual))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sd_angle_dual))
     8
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ins>))
  "Converts a ROS message object to a list"
  (cl:list 'Ins
    (cl:cons ':header (header msg))
    (cl:cons ':is_valid (is_valid msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':utm_position (utm_position msg))
    (cl:cons ':utm_zone_mumber (utm_zone_mumber msg))
    (cl:cons ':utm_zone_char (utm_zone_char msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':linear_velocity (linear_velocity msg))
    (cl:cons ':sd_position (sd_position msg))
    (cl:cons ':sd_attitude (sd_attitude msg))
    (cl:cons ':sd_velocity (sd_velocity msg))
    (cl:cons ':cep68 (cep68 msg))
    (cl:cons ':cep95 (cep95 msg))
    (cl:cons ':second (second msg))
    (cl:cons ':sat_use_num (sat_use_num msg))
    (cl:cons ':sat_in_view_num (sat_in_view_num msg))
    (cl:cons ':solution_status (solution_status msg))
    (cl:cons ':position_type (position_type msg))
    (cl:cons ':p_dop (p_dop msg))
    (cl:cons ':h_dop (h_dop msg))
    (cl:cons ':v_dop (v_dop msg))
    (cl:cons ':attitude_dual (attitude_dual msg))
    (cl:cons ':sd_angle_dual (sd_angle_dual msg))
    (cl:cons ':base_line_length_dual (base_line_length_dual msg))
    (cl:cons ':solution_status_dual (solution_status_dual msg))
    (cl:cons ':position_type_dual (position_type_dual msg))
    (cl:cons ':solution_source_dual (solution_source_dual msg))
    (cl:cons ':aoc (aoc msg))
    (cl:cons ':rtk_baseline (rtk_baseline msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
