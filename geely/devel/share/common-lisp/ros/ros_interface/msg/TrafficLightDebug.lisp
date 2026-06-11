; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TrafficLightDebug.msg.html

(cl:defclass <TrafficLightDebug> (roslisp-msg-protocol:ros-message)
  ((cropbox
    :reader cropbox
    :initarg :cropbox
    :type ros_interface-msg:TrafficLightBox
    :initform (cl:make-instance 'ros_interface-msg:TrafficLightBox))
   (box
    :reader box
    :initarg :box
    :type (cl:vector ros_interface-msg:TrafficLightBox)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrafficLightBox :initial-element (cl:make-instance 'ros_interface-msg:TrafficLightBox)))
   (signal_num
    :reader signal_num
    :initarg :signal_num
    :type cl:integer
    :initform 0)
   (valid_pos
    :reader valid_pos
    :initarg :valid_pos
    :type cl:integer
    :initform 0)
   (ts_diff_pos
    :reader ts_diff_pos
    :initarg :ts_diff_pos
    :type cl:float
    :initform 0.0)
   (ts_diff_sys
    :reader ts_diff_sys
    :initarg :ts_diff_sys
    :type cl:float
    :initform 0.0)
   (project_error
    :reader project_error
    :initarg :project_error
    :type cl:integer
    :initform 0)
   (distance_to_stop_line
    :reader distance_to_stop_line
    :initarg :distance_to_stop_line
    :type cl:float
    :initform 0.0)
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:integer
    :initform 0)
   (crop_roi
    :reader crop_roi
    :initarg :crop_roi
    :type (cl:vector ros_interface-msg:TrafficLightBox)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrafficLightBox :initial-element (cl:make-instance 'ros_interface-msg:TrafficLightBox)))
   (projected_roi
    :reader projected_roi
    :initarg :projected_roi
    :type (cl:vector ros_interface-msg:TrafficLightBox)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrafficLightBox :initial-element (cl:make-instance 'ros_interface-msg:TrafficLightBox)))
   (rectified_roi
    :reader rectified_roi
    :initarg :rectified_roi
    :type (cl:vector ros_interface-msg:TrafficLightBox)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrafficLightBox :initial-element (cl:make-instance 'ros_interface-msg:TrafficLightBox)))
   (debug_roi
    :reader debug_roi
    :initarg :debug_roi
    :type (cl:vector ros_interface-msg:TrafficLightBox)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrafficLightBox :initial-element (cl:make-instance 'ros_interface-msg:TrafficLightBox))))
)

(cl:defclass TrafficLightDebug (<TrafficLightDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TrafficLightDebug> is deprecated: use ros_interface-msg:TrafficLightDebug instead.")))

(cl:ensure-generic-function 'cropbox-val :lambda-list '(m))
(cl:defmethod cropbox-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:cropbox-val is deprecated.  Use ros_interface-msg:cropbox instead.")
  (cropbox m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:box-val is deprecated.  Use ros_interface-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'signal_num-val :lambda-list '(m))
(cl:defmethod signal_num-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:signal_num-val is deprecated.  Use ros_interface-msg:signal_num instead.")
  (signal_num m))

(cl:ensure-generic-function 'valid_pos-val :lambda-list '(m))
(cl:defmethod valid_pos-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:valid_pos-val is deprecated.  Use ros_interface-msg:valid_pos instead.")
  (valid_pos m))

(cl:ensure-generic-function 'ts_diff_pos-val :lambda-list '(m))
(cl:defmethod ts_diff_pos-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ts_diff_pos-val is deprecated.  Use ros_interface-msg:ts_diff_pos instead.")
  (ts_diff_pos m))

(cl:ensure-generic-function 'ts_diff_sys-val :lambda-list '(m))
(cl:defmethod ts_diff_sys-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ts_diff_sys-val is deprecated.  Use ros_interface-msg:ts_diff_sys instead.")
  (ts_diff_sys m))

(cl:ensure-generic-function 'project_error-val :lambda-list '(m))
(cl:defmethod project_error-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:project_error-val is deprecated.  Use ros_interface-msg:project_error instead.")
  (project_error m))

(cl:ensure-generic-function 'distance_to_stop_line-val :lambda-list '(m))
(cl:defmethod distance_to_stop_line-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:distance_to_stop_line-val is deprecated.  Use ros_interface-msg:distance_to_stop_line instead.")
  (distance_to_stop_line m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:camera_id-val is deprecated.  Use ros_interface-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'crop_roi-val :lambda-list '(m))
(cl:defmethod crop_roi-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:crop_roi-val is deprecated.  Use ros_interface-msg:crop_roi instead.")
  (crop_roi m))

(cl:ensure-generic-function 'projected_roi-val :lambda-list '(m))
(cl:defmethod projected_roi-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:projected_roi-val is deprecated.  Use ros_interface-msg:projected_roi instead.")
  (projected_roi m))

(cl:ensure-generic-function 'rectified_roi-val :lambda-list '(m))
(cl:defmethod rectified_roi-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rectified_roi-val is deprecated.  Use ros_interface-msg:rectified_roi instead.")
  (rectified_roi m))

(cl:ensure-generic-function 'debug_roi-val :lambda-list '(m))
(cl:defmethod debug_roi-val ((m <TrafficLightDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:debug_roi-val is deprecated.  Use ros_interface-msg:debug_roi instead.")
  (debug_roi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightDebug>) ostream)
  "Serializes a message object of type '<TrafficLightDebug>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cropbox) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'box))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'box))
  (cl:let* ((signed (cl:slot-value msg 'signal_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'valid_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ts_diff_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ts_diff_sys))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'project_error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_stop_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'camera_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'crop_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'crop_roi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'projected_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'projected_roi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rectified_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rectified_roi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'debug_roi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'debug_roi))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightDebug>) istream)
  "Deserializes a message object of type '<TrafficLightDebug>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cropbox) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'box) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'box)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrafficLightBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'valid_pos) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ts_diff_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ts_diff_sys) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'project_error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_stop_line) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'crop_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'crop_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrafficLightBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'projected_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'projected_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrafficLightBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rectified_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rectified_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrafficLightBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'debug_roi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'debug_roi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrafficLightBox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightDebug>)))
  "Returns string type for a message object of type '<TrafficLightDebug>"
  "ros_interface/TrafficLightDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightDebug)))
  "Returns string type for a message object of type 'TrafficLightDebug"
  "ros_interface/TrafficLightDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightDebug>)))
  "Returns md5sum for a message object of type '<TrafficLightDebug>"
  "f6bafdc05f8e0cd03dd05affb896f154")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightDebug)))
  "Returns md5sum for a message object of type 'TrafficLightDebug"
  "f6bafdc05f8e0cd03dd05affb896f154")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightDebug>)))
  "Returns full string definition for message of type '<TrafficLightDebug>"
  (cl:format cl:nil "TrafficLightBox   cropbox     #  ~%TrafficLightBox[] box #  ~%int32   signal_num     #  ~%int32   valid_pos     #  ~%float64   ts_diff_pos     #  ~%float64   ts_diff_sys     #  ~%int32   project_error     #  ~%float64   distance_to_stop_line     #  ~%int32   camera_id     #  ~%TrafficLightBox[] crop_roi #  ~%TrafficLightBox[] projected_roi #  ~%TrafficLightBox[] rectified_roi #  ~%TrafficLightBox[] debug_roi #  ~%~%================================================================================~%MSG: ros_interface/TrafficLightBox~%int32   x     # 交通灯目标在图像上中心点横向方向像素位置~%int32   y     # 交通灯目标在图像上中心点纵向方向像素位置~%int32   width     # 交通灯目标在图像上宽度~%int32   height     # 交通灯目标在图像上高度~%int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%bool   selected     # 是否选择~%string   camera_name     # 相机名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightDebug)))
  "Returns full string definition for message of type 'TrafficLightDebug"
  (cl:format cl:nil "TrafficLightBox   cropbox     #  ~%TrafficLightBox[] box #  ~%int32   signal_num     #  ~%int32   valid_pos     #  ~%float64   ts_diff_pos     #  ~%float64   ts_diff_sys     #  ~%int32   project_error     #  ~%float64   distance_to_stop_line     #  ~%int32   camera_id     #  ~%TrafficLightBox[] crop_roi #  ~%TrafficLightBox[] projected_roi #  ~%TrafficLightBox[] rectified_roi #  ~%TrafficLightBox[] debug_roi #  ~%~%================================================================================~%MSG: ros_interface/TrafficLightBox~%int32   x     # 交通灯目标在图像上中心点横向方向像素位置~%int32   y     # 交通灯目标在图像上中心点纵向方向像素位置~%int32   width     # 交通灯目标在图像上宽度~%int32   height     # 交通灯目标在图像上高度~%int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%bool   selected     # 是否选择~%string   camera_name     # 相机名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightDebug>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cropbox))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'box) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     8
     8
     4
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'crop_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'projected_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rectified_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'debug_roi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightDebug
    (cl:cons ':cropbox (cropbox msg))
    (cl:cons ':box (box msg))
    (cl:cons ':signal_num (signal_num msg))
    (cl:cons ':valid_pos (valid_pos msg))
    (cl:cons ':ts_diff_pos (ts_diff_pos msg))
    (cl:cons ':ts_diff_sys (ts_diff_sys msg))
    (cl:cons ':project_error (project_error msg))
    (cl:cons ':distance_to_stop_line (distance_to_stop_line msg))
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':crop_roi (crop_roi msg))
    (cl:cons ':projected_roi (projected_roi msg))
    (cl:cons ':rectified_roi (rectified_roi msg))
    (cl:cons ':debug_roi (debug_roi msg))
))
