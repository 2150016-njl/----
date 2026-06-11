; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude LaneLine.msg.html

(cl:defclass <LaneLine> (roslisp-msg-protocol:ros-message)
  ((lane_type
    :reader lane_type
    :initarg :lane_type
    :type cl:integer
    :initform 0)
   (lane_color
    :reader lane_color
    :initarg :lane_color
    :type cl:integer
    :initform 0)
   (pos_type
    :reader pos_type
    :initarg :pos_type
    :type cl:integer
    :initform 0)
   (curve_vehicle
    :reader curve_vehicle
    :initarg :curve_vehicle
    :type ros_interface-msg:LaneLineCubicCurve
    :initform (cl:make-instance 'ros_interface-msg:LaneLineCubicCurve))
   (curve_image
    :reader curve_image
    :initarg :curve_image
    :type ros_interface-msg:LaneLineCubicCurve
    :initform (cl:make-instance 'ros_interface-msg:LaneLineCubicCurve))
   (curve_abs
    :reader curve_abs
    :initarg :curve_abs
    :type ros_interface-msg:LaneLineCubicCurve
    :initform (cl:make-instance 'ros_interface-msg:LaneLineCubicCurve))
   (pts_vehicle
    :reader pts_vehicle
    :initarg :pts_vehicle
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D)))
   (pts_image
    :reader pts_image
    :initarg :pts_image
    :type (cl:vector ros_interface-msg:Point2D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point2D :initial-element (cl:make-instance 'ros_interface-msg:Point2D)))
   (pts_abs
    :reader pts_abs
    :initarg :pts_abs
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D)))
   (image_end_point
    :reader image_end_point
    :initarg :image_end_point
    :type ros_interface-msg:EndPoints
    :initform (cl:make-instance 'ros_interface-msg:EndPoints))
   (pts_key
    :reader pts_key
    :initarg :pts_key
    :type (cl:vector ros_interface-msg:Point2D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point2D :initial-element (cl:make-instance 'ros_interface-msg:Point2D)))
   (hd_lane_id
    :reader hd_lane_id
    :initarg :hd_lane_id
    :type cl:fixnum
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (lane_quality
    :reader lane_quality
    :initarg :lane_quality
    :type cl:integer
    :initform 0)
   (fused_lane_type
    :reader fused_lane_type
    :initarg :fused_lane_type
    :type cl:integer
    :initform 0)
   (homography_mat
    :reader homography_mat
    :initarg :homography_mat
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (homography_mat_inv
    :reader homography_mat_inv
    :initarg :homography_mat_inv
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lane_coordinate_type
    :reader lane_coordinate_type
    :initarg :lane_coordinate_type
    :type cl:integer
    :initform 0)
   (use_type
    :reader use_type
    :initarg :use_type
    :type cl:integer
    :initform 0)
   (create_time
    :reader create_time
    :initarg :create_time
    :type ros_interface-msg:Time
    :initform (cl:make-instance 'ros_interface-msg:Time)))
)

(cl:defclass LaneLine (<LaneLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<LaneLine> is deprecated: use ros_interface-msg:LaneLine instead.")))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_type-val is deprecated.  Use ros_interface-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'lane_color-val :lambda-list '(m))
(cl:defmethod lane_color-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_color-val is deprecated.  Use ros_interface-msg:lane_color instead.")
  (lane_color m))

(cl:ensure-generic-function 'pos_type-val :lambda-list '(m))
(cl:defmethod pos_type-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pos_type-val is deprecated.  Use ros_interface-msg:pos_type instead.")
  (pos_type m))

(cl:ensure-generic-function 'curve_vehicle-val :lambda-list '(m))
(cl:defmethod curve_vehicle-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:curve_vehicle-val is deprecated.  Use ros_interface-msg:curve_vehicle instead.")
  (curve_vehicle m))

(cl:ensure-generic-function 'curve_image-val :lambda-list '(m))
(cl:defmethod curve_image-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:curve_image-val is deprecated.  Use ros_interface-msg:curve_image instead.")
  (curve_image m))

(cl:ensure-generic-function 'curve_abs-val :lambda-list '(m))
(cl:defmethod curve_abs-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:curve_abs-val is deprecated.  Use ros_interface-msg:curve_abs instead.")
  (curve_abs m))

(cl:ensure-generic-function 'pts_vehicle-val :lambda-list '(m))
(cl:defmethod pts_vehicle-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pts_vehicle-val is deprecated.  Use ros_interface-msg:pts_vehicle instead.")
  (pts_vehicle m))

(cl:ensure-generic-function 'pts_image-val :lambda-list '(m))
(cl:defmethod pts_image-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pts_image-val is deprecated.  Use ros_interface-msg:pts_image instead.")
  (pts_image m))

(cl:ensure-generic-function 'pts_abs-val :lambda-list '(m))
(cl:defmethod pts_abs-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pts_abs-val is deprecated.  Use ros_interface-msg:pts_abs instead.")
  (pts_abs m))

(cl:ensure-generic-function 'image_end_point-val :lambda-list '(m))
(cl:defmethod image_end_point-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:image_end_point-val is deprecated.  Use ros_interface-msg:image_end_point instead.")
  (image_end_point m))

(cl:ensure-generic-function 'pts_key-val :lambda-list '(m))
(cl:defmethod pts_key-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:pts_key-val is deprecated.  Use ros_interface-msg:pts_key instead.")
  (pts_key m))

(cl:ensure-generic-function 'hd_lane_id-val :lambda-list '(m))
(cl:defmethod hd_lane_id-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hd_lane_id-val is deprecated.  Use ros_interface-msg:hd_lane_id instead.")
  (hd_lane_id m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:confidence-val is deprecated.  Use ros_interface-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'lane_quality-val :lambda-list '(m))
(cl:defmethod lane_quality-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_quality-val is deprecated.  Use ros_interface-msg:lane_quality instead.")
  (lane_quality m))

(cl:ensure-generic-function 'fused_lane_type-val :lambda-list '(m))
(cl:defmethod fused_lane_type-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:fused_lane_type-val is deprecated.  Use ros_interface-msg:fused_lane_type instead.")
  (fused_lane_type m))

(cl:ensure-generic-function 'homography_mat-val :lambda-list '(m))
(cl:defmethod homography_mat-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:homography_mat-val is deprecated.  Use ros_interface-msg:homography_mat instead.")
  (homography_mat m))

(cl:ensure-generic-function 'homography_mat_inv-val :lambda-list '(m))
(cl:defmethod homography_mat_inv-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:homography_mat_inv-val is deprecated.  Use ros_interface-msg:homography_mat_inv instead.")
  (homography_mat_inv m))

(cl:ensure-generic-function 'lane_coordinate_type-val :lambda-list '(m))
(cl:defmethod lane_coordinate_type-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_coordinate_type-val is deprecated.  Use ros_interface-msg:lane_coordinate_type instead.")
  (lane_coordinate_type m))

(cl:ensure-generic-function 'use_type-val :lambda-list '(m))
(cl:defmethod use_type-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:use_type-val is deprecated.  Use ros_interface-msg:use_type instead.")
  (use_type m))

(cl:ensure-generic-function 'create_time-val :lambda-list '(m))
(cl:defmethod create_time-val ((m <LaneLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:create_time-val is deprecated.  Use ros_interface-msg:create_time instead.")
  (create_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneLine>) ostream)
  "Serializes a message object of type '<LaneLine>"
  (cl:let* ((signed (cl:slot-value msg 'lane_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_color)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curve_vehicle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curve_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curve_abs) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts_vehicle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts_vehicle))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts_image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts_image))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts_abs))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_end_point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts_key))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts_key))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hd_lane_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lane_quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fused_lane_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'homography_mat))))
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
   (cl:slot-value msg 'homography_mat))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'homography_mat_inv))))
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
   (cl:slot-value msg 'homography_mat_inv))
  (cl:let* ((signed (cl:slot-value msg 'lane_coordinate_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'use_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'create_time) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneLine>) istream)
  "Deserializes a message object of type '<LaneLine>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_color) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curve_vehicle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curve_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curve_abs) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts_vehicle) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts_vehicle)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts_image) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts_image)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts_abs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts_abs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_end_point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts_key) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts_key)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hd_lane_id)) (cl:read-byte istream))
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
      (cl:setf (cl:slot-value msg 'lane_quality) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fused_lane_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'homography_mat) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'homography_mat)))
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
  (cl:setf (cl:slot-value msg 'homography_mat_inv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'homography_mat_inv)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_coordinate_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'use_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'create_time) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneLine>)))
  "Returns string type for a message object of type '<LaneLine>"
  "ros_interface/LaneLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneLine)))
  "Returns string type for a message object of type 'LaneLine"
  "ros_interface/LaneLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneLine>)))
  "Returns md5sum for a message object of type '<LaneLine>"
  "7984d3674f6a82d78f7d9d8a60ded1b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneLine)))
  "Returns md5sum for a message object of type 'LaneLine"
  "7984d3674f6a82d78f7d9d8a60ded1b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneLine>)))
  "Returns full string definition for message of type '<LaneLine>"
  (cl:format cl:nil "int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;~%int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;~%int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background~%LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数~%Point3D[] pts_vehicle # 车辆坐标系车道线点集~%Point2D[] pts_image # 图像坐标系车道线点集~%Point3D[] pts_abs # 世界坐标系车道线点集~%EndPoints   image_end_point     # 车道线上顶点与下顶点~%Point2D[] pts_key # 车道线关键点数组~%uint8   hd_lane_id     # 高精车道线id~%float64   confidence     # 车道线置信度~%int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;~%int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3~%float64[] homography_mat # 透视变换矩阵~%float64[] homography_mat_inv # 透视变换逆矩阵~%int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;~%int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;~%Time   create_time     # 车道线被识别的时间戳~%~%================================================================================~%MSG: ros_interface/LaneLineCubicCurve~%float64   start_x     # 车道线起始位置~%float64   end_x     # 车道线结束位置~%float64   a     # 三次曲线系数~%float64   b     #  ~%float64   c     #  ~%float64   d     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/EndPoints~%Point2D   start     # 车道线上顶点~%Point2D   end     # 车道线下顶点~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneLine)))
  "Returns full string definition for message of type 'LaneLine"
  (cl:format cl:nil "int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;~%int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;~%int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background~%LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数~%LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数~%Point3D[] pts_vehicle # 车辆坐标系车道线点集~%Point2D[] pts_image # 图像坐标系车道线点集~%Point3D[] pts_abs # 世界坐标系车道线点集~%EndPoints   image_end_point     # 车道线上顶点与下顶点~%Point2D[] pts_key # 车道线关键点数组~%uint8   hd_lane_id     # 高精车道线id~%float64   confidence     # 车道线置信度~%int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;~%int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3~%float64[] homography_mat # 透视变换矩阵~%float64[] homography_mat_inv # 透视变换逆矩阵~%int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;~%int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;~%Time   create_time     # 车道线被识别的时间戳~%~%================================================================================~%MSG: ros_interface/LaneLineCubicCurve~%float64   start_x     # 车道线起始位置~%float64   end_x     # 车道线结束位置~%float64   a     # 三次曲线系数~%float64   b     #  ~%float64   c     #  ~%float64   d     #  ~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Point2D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%~%================================================================================~%MSG: ros_interface/EndPoints~%Point2D   start     # 车道线上顶点~%Point2D   end     # 车道线下顶点~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneLine>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curve_vehicle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curve_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curve_abs))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts_vehicle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts_image) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts_abs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_end_point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts_key) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'homography_mat) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'homography_mat_inv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'create_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneLine>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneLine
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':lane_color (lane_color msg))
    (cl:cons ':pos_type (pos_type msg))
    (cl:cons ':curve_vehicle (curve_vehicle msg))
    (cl:cons ':curve_image (curve_image msg))
    (cl:cons ':curve_abs (curve_abs msg))
    (cl:cons ':pts_vehicle (pts_vehicle msg))
    (cl:cons ':pts_image (pts_image msg))
    (cl:cons ':pts_abs (pts_abs msg))
    (cl:cons ':image_end_point (image_end_point msg))
    (cl:cons ':pts_key (pts_key msg))
    (cl:cons ':hd_lane_id (hd_lane_id msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':lane_quality (lane_quality msg))
    (cl:cons ':fused_lane_type (fused_lane_type msg))
    (cl:cons ':homography_mat (homography_mat msg))
    (cl:cons ':homography_mat_inv (homography_mat_inv msg))
    (cl:cons ':lane_coordinate_type (lane_coordinate_type msg))
    (cl:cons ':use_type (use_type msg))
    (cl:cons ':create_time (create_time msg))
))
