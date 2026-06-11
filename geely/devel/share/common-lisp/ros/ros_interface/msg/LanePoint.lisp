; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude LanePoint.msg.html

(cl:defclass <LanePoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type ros_interface-msg:Point3D
    :initform (cl:make-instance 'ros_interface-msg:Point3D))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (mileage
    :reader mileage
    :initarg :mileage
    :type cl:float
    :initform 0.0)
   (limit_speed
    :reader limit_speed
    :initarg :limit_speed
    :type cl:float
    :initform 0.0)
   (left_road_width
    :reader left_road_width
    :initarg :left_road_width
    :type cl:float
    :initform 0.0)
   (right_road_width
    :reader right_road_width
    :initarg :right_road_width
    :type cl:float
    :initform 0.0)
   (left_line_type
    :reader left_line_type
    :initarg :left_line_type
    :type cl:integer
    :initform 0)
   (right_line_type
    :reader right_line_type
    :initarg :right_line_type
    :type cl:integer
    :initform 0))
)

(cl:defclass LanePoint (<LanePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<LanePoint> is deprecated: use ros_interface-msg:LanePoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:point-val is deprecated.  Use ros_interface-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:theta-val is deprecated.  Use ros_interface-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'mileage-val :lambda-list '(m))
(cl:defmethod mileage-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:mileage-val is deprecated.  Use ros_interface-msg:mileage instead.")
  (mileage m))

(cl:ensure-generic-function 'limit_speed-val :lambda-list '(m))
(cl:defmethod limit_speed-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:limit_speed-val is deprecated.  Use ros_interface-msg:limit_speed instead.")
  (limit_speed m))

(cl:ensure-generic-function 'left_road_width-val :lambda-list '(m))
(cl:defmethod left_road_width-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:left_road_width-val is deprecated.  Use ros_interface-msg:left_road_width instead.")
  (left_road_width m))

(cl:ensure-generic-function 'right_road_width-val :lambda-list '(m))
(cl:defmethod right_road_width-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:right_road_width-val is deprecated.  Use ros_interface-msg:right_road_width instead.")
  (right_road_width m))

(cl:ensure-generic-function 'left_line_type-val :lambda-list '(m))
(cl:defmethod left_line_type-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:left_line_type-val is deprecated.  Use ros_interface-msg:left_line_type instead.")
  (left_line_type m))

(cl:ensure-generic-function 'right_line_type-val :lambda-list '(m))
(cl:defmethod right_line_type-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:right_line_type-val is deprecated.  Use ros_interface-msg:right_line_type instead.")
  (right_line_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePoint>) ostream)
  "Serializes a message object of type '<LanePoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'limit_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_road_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_road_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'left_line_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_line_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePoint>) istream)
  "Deserializes a message object of type '<LanePoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
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
    (cl:setf (cl:slot-value msg 'mileage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_road_width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_road_width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_line_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_line_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePoint>)))
  "Returns string type for a message object of type '<LanePoint>"
  "ros_interface/LanePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePoint)))
  "Returns string type for a message object of type 'LanePoint"
  "ros_interface/LanePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePoint>)))
  "Returns md5sum for a message object of type '<LanePoint>"
  "b86492a98e6209595aa1050feb0e5d3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePoint)))
  "Returns md5sum for a message object of type 'LanePoint"
  "b86492a98e6209595aa1050feb0e5d3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePoint>)))
  "Returns full string definition for message of type '<LanePoint>"
  (cl:format cl:nil "Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%float64   mileage     # 总体里程~%float64   limit_speed     # 地图限速（单位m/s）~%float64   left_road_width     # 左边车道宽~%float64   right_road_width     # 右边车道宽~%int32   left_line_type     # 左边车线线型~%int32   right_line_type     # 右边车线线型~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePoint)))
  "Returns full string definition for message of type 'LanePoint"
  (cl:format cl:nil "Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%float64   mileage     # 总体里程~%float64   limit_speed     # 地图限速（单位m/s）~%float64   left_road_width     # 左边车道宽~%float64   right_road_width     # 右边车道宽~%int32   left_line_type     # 左边车线线型~%int32   right_line_type     # 右边车线线型~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     8
     8
     8
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePoint
    (cl:cons ':point (point msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':mileage (mileage msg))
    (cl:cons ':limit_speed (limit_speed msg))
    (cl:cons ':left_road_width (left_road_width msg))
    (cl:cons ':right_road_width (right_road_width msg))
    (cl:cons ':left_line_type (left_line_type msg))
    (cl:cons ':right_line_type (right_line_type msg))
))
