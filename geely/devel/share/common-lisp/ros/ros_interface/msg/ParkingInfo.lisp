; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude ParkingInfo.msg.html

(cl:defclass <ParkingInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parking_space_id
    :reader parking_space_id
    :initarg :parking_space_id
    :type cl:integer
    :initform 0)
   (parking_type
    :reader parking_type
    :initarg :parking_type
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (center_point_of_parking
    :reader center_point_of_parking
    :initarg :center_point_of_parking
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
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
   (yaw_offset
    :reader yaw_offset
    :initarg :yaw_offset
    :type cl:float
    :initform 0.0)
   (polygon
    :reader polygon
    :initarg :polygon
    :type ros_interface-msg:Polygon3D
    :initform (cl:make-instance 'ros_interface-msg:Polygon3D))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:integer
    :initform 0)
   (is_lane_width_valid
    :reader is_lane_width_valid
    :initarg :is_lane_width_valid
    :type cl:boolean
    :initform cl:nil)
   (lane_width
    :reader lane_width
    :initarg :lane_width
    :type cl:float
    :initform 0.0)
   (parking_stoppers
    :reader parking_stoppers
    :initarg :parking_stoppers
    :type (cl:vector ros_interface-msg:ParkingStopper)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:ParkingStopper :initial-element (cl:make-instance 'ros_interface-msg:ParkingStopper)))
   (parking_direction_type
    :reader parking_direction_type
    :initarg :parking_direction_type
    :type cl:integer
    :initform 0)
   (parking_source_type
    :reader parking_source_type
    :initarg :parking_source_type
    :type cl:integer
    :initform 0))
)

(cl:defclass ParkingInfo (<ParkingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<ParkingInfo> is deprecated: use ros_interface-msg:ParkingInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parking_space_id-val :lambda-list '(m))
(cl:defmethod parking_space_id-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_space_id-val is deprecated.  Use ros_interface-msg:parking_space_id instead.")
  (parking_space_id m))

(cl:ensure-generic-function 'parking_type-val :lambda-list '(m))
(cl:defmethod parking_type-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_type-val is deprecated.  Use ros_interface-msg:parking_type instead.")
  (parking_type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:confidence-val is deprecated.  Use ros_interface-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'center_point_of_parking-val :lambda-list '(m))
(cl:defmethod center_point_of_parking-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:center_point_of_parking-val is deprecated.  Use ros_interface-msg:center_point_of_parking instead.")
  (center_point_of_parking m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta-val is deprecated.  Use ros_interface-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:width-val is deprecated.  Use ros_interface-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:length-val is deprecated.  Use ros_interface-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'yaw_offset-val :lambda-list '(m))
(cl:defmethod yaw_offset-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:yaw_offset-val is deprecated.  Use ros_interface-msg:yaw_offset instead.")
  (yaw_offset m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:polygon-val is deprecated.  Use ros_interface-msg:polygon instead.")
  (polygon m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_id-val is deprecated.  Use ros_interface-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'is_lane_width_valid-val :lambda-list '(m))
(cl:defmethod is_lane_width_valid-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_lane_width_valid-val is deprecated.  Use ros_interface-msg:is_lane_width_valid instead.")
  (is_lane_width_valid m))

(cl:ensure-generic-function 'lane_width-val :lambda-list '(m))
(cl:defmethod lane_width-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_width-val is deprecated.  Use ros_interface-msg:lane_width instead.")
  (lane_width m))

(cl:ensure-generic-function 'parking_stoppers-val :lambda-list '(m))
(cl:defmethod parking_stoppers-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_stoppers-val is deprecated.  Use ros_interface-msg:parking_stoppers instead.")
  (parking_stoppers m))

(cl:ensure-generic-function 'parking_direction_type-val :lambda-list '(m))
(cl:defmethod parking_direction_type-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_direction_type-val is deprecated.  Use ros_interface-msg:parking_direction_type instead.")
  (parking_direction_type m))

(cl:ensure-generic-function 'parking_source_type-val :lambda-list '(m))
(cl:defmethod parking_source_type-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_source_type-val is deprecated.  Use ros_interface-msg:parking_source_type instead.")
  (parking_source_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingInfo>) ostream)
  "Serializes a message object of type '<ParkingInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parking_space_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parking_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point_of_parking) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sensor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_lane_width_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_stoppers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_stoppers))
  (cl:let* ((signed (cl:slot-value msg 'parking_direction_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parking_source_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingInfo>) istream)
  "Deserializes a message object of type '<ParkingInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_space_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point_of_parking) istream)
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
    (cl:setf (cl:slot-value msg 'yaw_offset) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_lane_width_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_width) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_stoppers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_stoppers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:ParkingStopper))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_direction_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_source_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingInfo>)))
  "Returns string type for a message object of type '<ParkingInfo>"
  "ros_interface/ParkingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingInfo)))
  "Returns string type for a message object of type 'ParkingInfo"
  "ros_interface/ParkingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingInfo>)))
  "Returns md5sum for a message object of type '<ParkingInfo>"
  "9c7785e504d091d658cd31aca35c7f91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingInfo)))
  "Returns md5sum for a message object of type 'ParkingInfo"
  "9c7785e504d091d658cd31aca35c7f91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingInfo>)))
  "Returns full string definition for message of type '<ParkingInfo>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   parking_space_id     # 停车位id~%int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//水平泊车 PARKING_TYPE=2//垂直泊车 PARKING_TYPE=3//倾斜泊车~%float64   confidence     # 车位置信度~%Point3D   center_point_of_parking     # 世界坐标系下停车位中心点~%float64   theta     # 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角~%float64   width     # 停车位宽（单位m）~%float64   length     # 停车位长单位m）~%float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角,(单位m）~%Polygon3D   polygon     # 世界坐标系下的车位多边形~%int32   sensor_id     # 车位数据来自相机id 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机 8-相机融合~%bool   is_lane_width_valid     # 车道宽度是否有效~%float64   lane_width     # 泊车可用(双)车道宽度~%ParkingStopper[] parking_stoppers # 车位内部的限位器数组~%int32   parking_direction_type     #   DIR_INVALID = 0,   LEFT = 1,   UP = 2,   RIGHT = 3,   DOWN = 4,~%int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Polygon3D~%int32   coordinate_system     # 坐标系~%Point3D[] points # 三维点集~%~%================================================================================~%MSG: ros_interface/ParkingStopper~%Header   header     # timestamp is  included in header~%Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标~%Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标~%Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点~%Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingInfo)))
  "Returns full string definition for message of type 'ParkingInfo"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%int32   parking_space_id     # 停车位id~%int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//水平泊车 PARKING_TYPE=2//垂直泊车 PARKING_TYPE=3//倾斜泊车~%float64   confidence     # 车位置信度~%Point3D   center_point_of_parking     # 世界坐标系下停车位中心点~%float64   theta     # 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角~%float64   width     # 停车位宽（单位m）~%float64   length     # 停车位长单位m）~%float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角,(单位m）~%Polygon3D   polygon     # 世界坐标系下的车位多边形~%int32   sensor_id     # 车位数据来自相机id 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机 8-相机融合~%bool   is_lane_width_valid     # 车道宽度是否有效~%float64   lane_width     # 泊车可用(双)车道宽度~%ParkingStopper[] parking_stoppers # 车位内部的限位器数组~%int32   parking_direction_type     #   DIR_INVALID = 0,   LEFT = 1,   UP = 2,   RIGHT = 3,   DOWN = 4,~%int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Polygon3D~%int32   coordinate_system     # 坐标系~%Point3D[] points # 三维点集~%~%================================================================================~%MSG: ros_interface/ParkingStopper~%Header   header     # timestamp is  included in header~%Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标~%Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标~%Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点~%Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point_of_parking))
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
     4
     1
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_stoppers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingInfo
    (cl:cons ':header (header msg))
    (cl:cons ':parking_space_id (parking_space_id msg))
    (cl:cons ':parking_type (parking_type msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':center_point_of_parking (center_point_of_parking msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':width (width msg))
    (cl:cons ':length (length msg))
    (cl:cons ':yaw_offset (yaw_offset msg))
    (cl:cons ':polygon (polygon msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':is_lane_width_valid (is_lane_width_valid msg))
    (cl:cons ':lane_width (lane_width msg))
    (cl:cons ':parking_stoppers (parking_stoppers msg))
    (cl:cons ':parking_direction_type (parking_direction_type msg))
    (cl:cons ':parking_source_type (parking_source_type msg))
))
