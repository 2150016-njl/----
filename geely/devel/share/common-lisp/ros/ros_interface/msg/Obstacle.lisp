; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Obstacle.msg.html

(cl:defclass <Obstacle> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type ros_interface-msg:Time
    :initform (cl:make-instance 'ros_interface-msg:Time))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (existence_prob
    :reader existence_prob
    :initarg :existence_prob
    :type cl:float
    :initform 0.0)
   (create_time
    :reader create_time
    :initarg :create_time
    :type ros_interface-msg:Time
    :initform (cl:make-instance 'ros_interface-msg:Time))
   (last_updated_time
    :reader last_updated_time
    :initarg :last_updated_time
    :type ros_interface-msg:Time
    :initform (cl:make-instance 'ros_interface-msg:Time))
   (center_pos_vehicle
    :reader center_pos_vehicle
    :initarg :center_pos_vehicle
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (center_pos_abs
    :reader center_pos_abs
    :initarg :center_pos_abs
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (theta_vehicle
    :reader theta_vehicle
    :initarg :theta_vehicle
    :type cl:float
    :initform 0.0)
   (theta_abs
    :reader theta_abs
    :initarg :theta_abs
    :type cl:float
    :initform 0.0)
   (velocity_vehicle
    :reader velocity_vehicle
    :initarg :velocity_vehicle
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (velocity_abs
    :reader velocity_abs
    :initarg :velocity_abs
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (image_key_points
    :reader image_key_points
    :initarg :image_key_points
    :type (cl:vector ros_interface-msg:ImageKeyPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:ImageKeyPoint :initial-element (cl:make-instance 'ros_interface-msg:ImageKeyPoint)))
   (polygon_point_abs
    :reader polygon_point_abs
    :initarg :polygon_point_abs
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D)))
   (polygon_point_vehicle
    :reader polygon_point_vehicle
    :initarg :polygon_point_vehicle
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D)))
   (tracking_time
    :reader tracking_time
    :initarg :tracking_time
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (confidence_type
    :reader confidence_type
    :initarg :confidence_type
    :type cl:integer
    :initform 0)
   (drops
    :reader drops
    :initarg :drops
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D)))
   (acceleration_vehicle
    :reader acceleration_vehicle
    :initarg :acceleration_vehicle
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (acceleration_abs
    :reader acceleration_abs
    :initarg :acceleration_abs
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (anchor_point_image
    :reader anchor_point_image
    :initarg :anchor_point_image
    :type ros_interface-msg:Point2D
    :initform (cl:make-instance 'ros_interface-msg:Point2D))
   (anchor_point_vehicle
    :reader anchor_point_vehicle
    :initarg :anchor_point_vehicle
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (anchor_point_abs
    :reader anchor_point_abs
    :initarg :anchor_point_abs
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (bbox2d
    :reader bbox2d
    :initarg :bbox2d
    :type ros_interface-msg:BBox2D
    :initform (cl:make-instance 'ros_interface-msg:BBox2D))
   (bbox2d_rear
    :reader bbox2d_rear
    :initarg :bbox2d_rear
    :type ros_interface-msg:BBox2D
    :initform (cl:make-instance 'ros_interface-msg:BBox2D))
   (sub_type
    :reader sub_type
    :initarg :sub_type
    :type cl:integer
    :initform 0)
   (height_above_ground
    :reader height_above_ground
    :initarg :height_above_ground
    :type cl:float
    :initform 0.0)
   (position_abs_covariance
    :reader position_abs_covariance
    :initarg :position_abs_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (velocity_abs_covariance
    :reader velocity_abs_covariance
    :initarg :velocity_abs_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (acceleration_abs_covariance
    :reader acceleration_abs_covariance
    :initarg :acceleration_abs_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (theta_abs_covariance
    :reader theta_abs_covariance
    :initarg :theta_abs_covariance
    :type cl:float
    :initform 0.0)
   (position_vehicle_covariance
    :reader position_vehicle_covariance
    :initarg :position_vehicle_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (velocity_vehicle_covariance
    :reader velocity_vehicle_covariance
    :initarg :velocity_vehicle_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (acceleration_vehicle_covariance
    :reader acceleration_vehicle_covariance
    :initarg :acceleration_vehicle_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (theta_vehicle_covariance
    :reader theta_vehicle_covariance
    :initarg :theta_vehicle_covariance
    :type cl:float
    :initform 0.0)
   (sensor_calibrator
    :reader sensor_calibrator
    :initarg :sensor_calibrator
    :type ros_interface-msg:SensorCalibrator
    :initform (cl:make-instance 'ros_interface-msg:SensorCalibrator))
   (cipv_flag
    :reader cipv_flag
    :initarg :cipv_flag
    :type cl:fixnum
    :initform 0)
   (lane_position
    :reader lane_position
    :initarg :lane_position
    :type cl:integer
    :initform 0)
   (pihp_percentage
    :reader pihp_percentage
    :initarg :pihp_percentage
    :type cl:float
    :initform 0.0)
   (blinker_flag
    :reader blinker_flag
    :initarg :blinker_flag
    :type cl:integer
    :initform 0)
   (fusion_type
    :reader fusion_type
    :initarg :fusion_type
    :type cl:integer
    :initform 0))
)

(cl:defclass Obstacle (<Obstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Obstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Obstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Obstacle> is deprecated: use ros_interface-msg:Obstacle instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:timestamp-val is deprecated.  Use ros_interface-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:id-val is deprecated.  Use ros_interface-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'existence_prob-val :lambda-list '(m))
(cl:defmethod existence_prob-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:existence_prob-val is deprecated.  Use ros_interface-msg:existence_prob instead.")
  (existence_prob m))

(cl:ensure-generic-function 'create_time-val :lambda-list '(m))
(cl:defmethod create_time-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:create_time-val is deprecated.  Use ros_interface-msg:create_time instead.")
  (create_time m))

(cl:ensure-generic-function 'last_updated_time-val :lambda-list '(m))
(cl:defmethod last_updated_time-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:last_updated_time-val is deprecated.  Use ros_interface-msg:last_updated_time instead.")
  (last_updated_time m))

(cl:ensure-generic-function 'center_pos_vehicle-val :lambda-list '(m))
(cl:defmethod center_pos_vehicle-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:center_pos_vehicle-val is deprecated.  Use ros_interface-msg:center_pos_vehicle instead.")
  (center_pos_vehicle m))

(cl:ensure-generic-function 'center_pos_abs-val :lambda-list '(m))
(cl:defmethod center_pos_abs-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:center_pos_abs-val is deprecated.  Use ros_interface-msg:center_pos_abs instead.")
  (center_pos_abs m))

(cl:ensure-generic-function 'theta_vehicle-val :lambda-list '(m))
(cl:defmethod theta_vehicle-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta_vehicle-val is deprecated.  Use ros_interface-msg:theta_vehicle instead.")
  (theta_vehicle m))

(cl:ensure-generic-function 'theta_abs-val :lambda-list '(m))
(cl:defmethod theta_abs-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta_abs-val is deprecated.  Use ros_interface-msg:theta_abs instead.")
  (theta_abs m))

(cl:ensure-generic-function 'velocity_vehicle-val :lambda-list '(m))
(cl:defmethod velocity_vehicle-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:velocity_vehicle-val is deprecated.  Use ros_interface-msg:velocity_vehicle instead.")
  (velocity_vehicle m))

(cl:ensure-generic-function 'velocity_abs-val :lambda-list '(m))
(cl:defmethod velocity_abs-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:velocity_abs-val is deprecated.  Use ros_interface-msg:velocity_abs instead.")
  (velocity_abs m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:length-val is deprecated.  Use ros_interface-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:width-val is deprecated.  Use ros_interface-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:height-val is deprecated.  Use ros_interface-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'image_key_points-val :lambda-list '(m))
(cl:defmethod image_key_points-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:image_key_points-val is deprecated.  Use ros_interface-msg:image_key_points instead.")
  (image_key_points m))

(cl:ensure-generic-function 'polygon_point_abs-val :lambda-list '(m))
(cl:defmethod polygon_point_abs-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:polygon_point_abs-val is deprecated.  Use ros_interface-msg:polygon_point_abs instead.")
  (polygon_point_abs m))

(cl:ensure-generic-function 'polygon_point_vehicle-val :lambda-list '(m))
(cl:defmethod polygon_point_vehicle-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:polygon_point_vehicle-val is deprecated.  Use ros_interface-msg:polygon_point_vehicle instead.")
  (polygon_point_vehicle m))

(cl:ensure-generic-function 'tracking_time-val :lambda-list '(m))
(cl:defmethod tracking_time-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:tracking_time-val is deprecated.  Use ros_interface-msg:tracking_time instead.")
  (tracking_time m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:type-val is deprecated.  Use ros_interface-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:confidence-val is deprecated.  Use ros_interface-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'confidence_type-val :lambda-list '(m))
(cl:defmethod confidence_type-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:confidence_type-val is deprecated.  Use ros_interface-msg:confidence_type instead.")
  (confidence_type m))

(cl:ensure-generic-function 'drops-val :lambda-list '(m))
(cl:defmethod drops-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:drops-val is deprecated.  Use ros_interface-msg:drops instead.")
  (drops m))

(cl:ensure-generic-function 'acceleration_vehicle-val :lambda-list '(m))
(cl:defmethod acceleration_vehicle-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acceleration_vehicle-val is deprecated.  Use ros_interface-msg:acceleration_vehicle instead.")
  (acceleration_vehicle m))

(cl:ensure-generic-function 'acceleration_abs-val :lambda-list '(m))
(cl:defmethod acceleration_abs-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acceleration_abs-val is deprecated.  Use ros_interface-msg:acceleration_abs instead.")
  (acceleration_abs m))

(cl:ensure-generic-function 'anchor_point_image-val :lambda-list '(m))
(cl:defmethod anchor_point_image-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:anchor_point_image-val is deprecated.  Use ros_interface-msg:anchor_point_image instead.")
  (anchor_point_image m))

(cl:ensure-generic-function 'anchor_point_vehicle-val :lambda-list '(m))
(cl:defmethod anchor_point_vehicle-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:anchor_point_vehicle-val is deprecated.  Use ros_interface-msg:anchor_point_vehicle instead.")
  (anchor_point_vehicle m))

(cl:ensure-generic-function 'anchor_point_abs-val :lambda-list '(m))
(cl:defmethod anchor_point_abs-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:anchor_point_abs-val is deprecated.  Use ros_interface-msg:anchor_point_abs instead.")
  (anchor_point_abs m))

(cl:ensure-generic-function 'bbox2d-val :lambda-list '(m))
(cl:defmethod bbox2d-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:bbox2d-val is deprecated.  Use ros_interface-msg:bbox2d instead.")
  (bbox2d m))

(cl:ensure-generic-function 'bbox2d_rear-val :lambda-list '(m))
(cl:defmethod bbox2d_rear-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:bbox2d_rear-val is deprecated.  Use ros_interface-msg:bbox2d_rear instead.")
  (bbox2d_rear m))

(cl:ensure-generic-function 'sub_type-val :lambda-list '(m))
(cl:defmethod sub_type-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sub_type-val is deprecated.  Use ros_interface-msg:sub_type instead.")
  (sub_type m))

(cl:ensure-generic-function 'height_above_ground-val :lambda-list '(m))
(cl:defmethod height_above_ground-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:height_above_ground-val is deprecated.  Use ros_interface-msg:height_above_ground instead.")
  (height_above_ground m))

(cl:ensure-generic-function 'position_abs_covariance-val :lambda-list '(m))
(cl:defmethod position_abs_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_abs_covariance-val is deprecated.  Use ros_interface-msg:position_abs_covariance instead.")
  (position_abs_covariance m))

(cl:ensure-generic-function 'velocity_abs_covariance-val :lambda-list '(m))
(cl:defmethod velocity_abs_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:velocity_abs_covariance-val is deprecated.  Use ros_interface-msg:velocity_abs_covariance instead.")
  (velocity_abs_covariance m))

(cl:ensure-generic-function 'acceleration_abs_covariance-val :lambda-list '(m))
(cl:defmethod acceleration_abs_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acceleration_abs_covariance-val is deprecated.  Use ros_interface-msg:acceleration_abs_covariance instead.")
  (acceleration_abs_covariance m))

(cl:ensure-generic-function 'theta_abs_covariance-val :lambda-list '(m))
(cl:defmethod theta_abs_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta_abs_covariance-val is deprecated.  Use ros_interface-msg:theta_abs_covariance instead.")
  (theta_abs_covariance m))

(cl:ensure-generic-function 'position_vehicle_covariance-val :lambda-list '(m))
(cl:defmethod position_vehicle_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:position_vehicle_covariance-val is deprecated.  Use ros_interface-msg:position_vehicle_covariance instead.")
  (position_vehicle_covariance m))

(cl:ensure-generic-function 'velocity_vehicle_covariance-val :lambda-list '(m))
(cl:defmethod velocity_vehicle_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:velocity_vehicle_covariance-val is deprecated.  Use ros_interface-msg:velocity_vehicle_covariance instead.")
  (velocity_vehicle_covariance m))

(cl:ensure-generic-function 'acceleration_vehicle_covariance-val :lambda-list '(m))
(cl:defmethod acceleration_vehicle_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:acceleration_vehicle_covariance-val is deprecated.  Use ros_interface-msg:acceleration_vehicle_covariance instead.")
  (acceleration_vehicle_covariance m))

(cl:ensure-generic-function 'theta_vehicle_covariance-val :lambda-list '(m))
(cl:defmethod theta_vehicle_covariance-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta_vehicle_covariance-val is deprecated.  Use ros_interface-msg:theta_vehicle_covariance instead.")
  (theta_vehicle_covariance m))

(cl:ensure-generic-function 'sensor_calibrator-val :lambda-list '(m))
(cl:defmethod sensor_calibrator-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:sensor_calibrator-val is deprecated.  Use ros_interface-msg:sensor_calibrator instead.")
  (sensor_calibrator m))

(cl:ensure-generic-function 'cipv_flag-val :lambda-list '(m))
(cl:defmethod cipv_flag-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cipv_flag-val is deprecated.  Use ros_interface-msg:cipv_flag instead.")
  (cipv_flag m))

(cl:ensure-generic-function 'lane_position-val :lambda-list '(m))
(cl:defmethod lane_position-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_position-val is deprecated.  Use ros_interface-msg:lane_position instead.")
  (lane_position m))

(cl:ensure-generic-function 'pihp_percentage-val :lambda-list '(m))
(cl:defmethod pihp_percentage-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pihp_percentage-val is deprecated.  Use ros_interface-msg:pihp_percentage instead.")
  (pihp_percentage m))

(cl:ensure-generic-function 'blinker_flag-val :lambda-list '(m))
(cl:defmethod blinker_flag-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:blinker_flag-val is deprecated.  Use ros_interface-msg:blinker_flag instead.")
  (blinker_flag m))

(cl:ensure-generic-function 'fusion_type-val :lambda-list '(m))
(cl:defmethod fusion_type-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:fusion_type-val is deprecated.  Use ros_interface-msg:fusion_type instead.")
  (fusion_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Obstacle>) ostream)
  "Serializes a message object of type '<Obstacle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timestamp) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'existence_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'create_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'last_updated_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_pos_vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_pos_abs) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta_vehicle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_abs) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_key_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_key_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_point_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_point_abs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_point_vehicle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_point_vehicle))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tracking_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'confidence_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'drops))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'drops))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_abs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor_point_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor_point_vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'anchor_point_abs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox2d) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bbox2d_rear) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sub_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height_above_ground))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_abs_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position_abs_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity_abs_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'velocity_abs_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acceleration_abs_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'acceleration_abs_covariance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta_abs_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'position_vehicle_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position_vehicle_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'velocity_vehicle_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'velocity_vehicle_covariance))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acceleration_vehicle_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'acceleration_vehicle_covariance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta_vehicle_covariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor_calibrator) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cipv_flag)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'lane_position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pihp_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'blinker_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Obstacle>) istream)
  "Deserializes a message object of type '<Obstacle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timestamp) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'existence_prob) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'create_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'last_updated_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_pos_vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_pos_abs) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_vehicle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_abs) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_abs) istream)
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
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_key_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_key_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:ImageKeyPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon_point_abs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_point_abs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon_point_vehicle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_point_vehicle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tracking_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'confidence_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'drops) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'drops)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_abs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor_point_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor_point_vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'anchor_point_abs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox2d) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bbox2d_rear) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sub_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_above_ground) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_abs_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_abs_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity_abs_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity_abs_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acceleration_abs_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acceleration_abs_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_abs_covariance) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_vehicle_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'position_vehicle_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'velocity_vehicle_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'velocity_vehicle_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acceleration_vehicle_covariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acceleration_vehicle_covariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta_vehicle_covariance) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor_calibrator) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cipv_flag)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pihp_percentage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'blinker_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Obstacle>)))
  "Returns string type for a message object of type '<Obstacle>"
  "ros_interface/Obstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Obstacle)))
  "Returns string type for a message object of type 'Obstacle"
  "ros_interface/Obstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Obstacle>)))
  "Returns md5sum for a message object of type '<Obstacle>"
  "540c5953bd92bdf84eafae61ed094918")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Obstacle)))
  "Returns md5sum for a message object of type 'Obstacle"
  "540c5953bd92bdf84eafae61ed094918")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Obstacle>)))
  "Returns full string definition for message of type '<Obstacle>"
  (cl:format cl:nil "Time   timestamp     # 时间戳~%int32   id     # 障碍物id~%float64   existence_prob     # 障碍物存在的概率~%Time   create_time     # 障碍物被识别的时间戳~%Time   last_updated_time     # 障碍物上一次更新的时间~%Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置~%Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置~%float64   theta_vehicle     # 车辆坐标系下障碍物的朝向~%float64   theta_abs     # 世界坐标系下障碍物的朝向~%Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度~%Point3D   velocity_abs     # 世界坐标系下障碍物的速度~%float64   length     # 障碍物长度~%float64   width     # 障碍物宽度~%float64   height     # 障碍物高度~%ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形~%Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形~%Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形~%float64   tracking_time     # 障碍物被追踪的时间~%int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;~%float64   confidence     # 障碍物类别置信度~%int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;~%Point3D[] drops # 障碍物轨迹点~%Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度~%Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度~%Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)~%Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)~%Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)~%BBox2D   bbox2d     # 障碍物图像框~%BBox2D   bbox2d_rear     # 障碍物图像尾框~%int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;~%float64   height_above_ground     # 障碍物近地点到地面的高度~%float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵~%float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵~%float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵~%float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵~%SensorCalibrator   sensor_calibrator     # 传感器标定参数~%uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   pihp_percentage     # 临车道车辆压线比例~%int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN~%int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ImageKeyPoint~%float64   x     # 车位图像关键点x坐标~%float64   y     # 车位图像关键点y坐标~%float64   confidence     # 置信度~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%================================================================================~%MSG: ros_interface/SensorCalibrator~%Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Obstacle)))
  "Returns full string definition for message of type 'Obstacle"
  (cl:format cl:nil "Time   timestamp     # 时间戳~%int32   id     # 障碍物id~%float64   existence_prob     # 障碍物存在的概率~%Time   create_time     # 障碍物被识别的时间戳~%Time   last_updated_time     # 障碍物上一次更新的时间~%Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置~%Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置~%float64   theta_vehicle     # 车辆坐标系下障碍物的朝向~%float64   theta_abs     # 世界坐标系下障碍物的朝向~%Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度~%Point3D   velocity_abs     # 世界坐标系下障碍物的速度~%float64   length     # 障碍物长度~%float64   width     # 障碍物宽度~%float64   height     # 障碍物高度~%ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形~%Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形~%Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形~%float64   tracking_time     # 障碍物被追踪的时间~%int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;~%float64   confidence     # 障碍物类别置信度~%int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;~%Point3D[] drops # 障碍物轨迹点~%Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度~%Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度~%Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)~%Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)~%Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)~%BBox2D   bbox2d     # 障碍物图像框~%BBox2D   bbox2d_rear     # 障碍物图像尾框~%int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;~%float64   height_above_ground     # 障碍物近地点到地面的高度~%float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵~%float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵~%float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵~%float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵~%float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵~%float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵~%SensorCalibrator   sensor_calibrator     # 传感器标定参数~%uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）~%int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN~%float64   pihp_percentage     # 临车道车辆压线比例~%int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN~%int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/ImageKeyPoint~%float64   x     # 车位图像关键点x坐标~%float64   y     # 车位图像关键点y坐标~%float64   confidence     # 置信度~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/BBox2D~%int16   xmin     # 图像框左上角的x坐标~%int16   ymin     # 图像框左上角的y坐标~%int16   xmax     # 图像框右下角的x坐标~%int16   ymax     # 图像框右下角的y坐标~%~%================================================================================~%MSG: ros_interface/SensorCalibrator~%Point3D   pose     # 传感器安装位置(相对于后轴中心点)~%Point3D   angle     # 传感器安装角度(车体坐标系)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Obstacle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timestamp))
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'create_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'last_updated_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_pos_vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_pos_abs))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_abs))
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_key_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_point_abs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_point_vehicle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     4
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'drops) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_abs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor_point_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor_point_vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'anchor_point_abs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox2d))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bbox2d_rear))
     4
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_abs_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity_abs_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration_abs_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'position_vehicle_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity_vehicle_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration_vehicle_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor_calibrator))
     1
     4
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Obstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'Obstacle
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':existence_prob (existence_prob msg))
    (cl:cons ':create_time (create_time msg))
    (cl:cons ':last_updated_time (last_updated_time msg))
    (cl:cons ':center_pos_vehicle (center_pos_vehicle msg))
    (cl:cons ':center_pos_abs (center_pos_abs msg))
    (cl:cons ':theta_vehicle (theta_vehicle msg))
    (cl:cons ':theta_abs (theta_abs msg))
    (cl:cons ':velocity_vehicle (velocity_vehicle msg))
    (cl:cons ':velocity_abs (velocity_abs msg))
    (cl:cons ':length (length msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':image_key_points (image_key_points msg))
    (cl:cons ':polygon_point_abs (polygon_point_abs msg))
    (cl:cons ':polygon_point_vehicle (polygon_point_vehicle msg))
    (cl:cons ':tracking_time (tracking_time msg))
    (cl:cons ':type (type msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':confidence_type (confidence_type msg))
    (cl:cons ':drops (drops msg))
    (cl:cons ':acceleration_vehicle (acceleration_vehicle msg))
    (cl:cons ':acceleration_abs (acceleration_abs msg))
    (cl:cons ':anchor_point_image (anchor_point_image msg))
    (cl:cons ':anchor_point_vehicle (anchor_point_vehicle msg))
    (cl:cons ':anchor_point_abs (anchor_point_abs msg))
    (cl:cons ':bbox2d (bbox2d msg))
    (cl:cons ':bbox2d_rear (bbox2d_rear msg))
    (cl:cons ':sub_type (sub_type msg))
    (cl:cons ':height_above_ground (height_above_ground msg))
    (cl:cons ':position_abs_covariance (position_abs_covariance msg))
    (cl:cons ':velocity_abs_covariance (velocity_abs_covariance msg))
    (cl:cons ':acceleration_abs_covariance (acceleration_abs_covariance msg))
    (cl:cons ':theta_abs_covariance (theta_abs_covariance msg))
    (cl:cons ':position_vehicle_covariance (position_vehicle_covariance msg))
    (cl:cons ':velocity_vehicle_covariance (velocity_vehicle_covariance msg))
    (cl:cons ':acceleration_vehicle_covariance (acceleration_vehicle_covariance msg))
    (cl:cons ':theta_vehicle_covariance (theta_vehicle_covariance msg))
    (cl:cons ':sensor_calibrator (sensor_calibrator msg))
    (cl:cons ':cipv_flag (cipv_flag msg))
    (cl:cons ':lane_position (lane_position msg))
    (cl:cons ':pihp_percentage (pihp_percentage msg))
    (cl:cons ':blinker_flag (blinker_flag msg))
    (cl:cons ':fusion_type (fusion_type msg))
))
