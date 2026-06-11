; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude LaneInfo.msg.html

(cl:defclass <LaneInfo> (roslisp-msg-protocol:ros-message)
  ((priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (global_id
    :reader global_id
    :initarg :global_id
    :type cl:fixnum
    :initform 0)
   (predecessor_id
    :reader predecessor_id
    :initarg :predecessor_id
    :type cl:fixnum
    :initform 0)
   (successor_id
    :reader successor_id
    :initarg :successor_id
    :type cl:fixnum
    :initform 0)
   (left_neighbor_id
    :reader left_neighbor_id
    :initarg :left_neighbor_id
    :type cl:fixnum
    :initform 0)
   (right_neighbor_id
    :reader right_neighbor_id
    :initarg :right_neighbor_id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (lane_points
    :reader lane_points
    :initarg :lane_points
    :type (cl:vector ros_interface-msg:LanePoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:LanePoint :initial-element (cl:make-instance 'ros_interface-msg:LanePoint))))
)

(cl:defclass LaneInfo (<LaneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<LaneInfo> is deprecated: use ros_interface-msg:LaneInfo instead.")))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:priority-val is deprecated.  Use ros_interface-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'global_id-val :lambda-list '(m))
(cl:defmethod global_id-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:global_id-val is deprecated.  Use ros_interface-msg:global_id instead.")
  (global_id m))

(cl:ensure-generic-function 'predecessor_id-val :lambda-list '(m))
(cl:defmethod predecessor_id-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:predecessor_id-val is deprecated.  Use ros_interface-msg:predecessor_id instead.")
  (predecessor_id m))

(cl:ensure-generic-function 'successor_id-val :lambda-list '(m))
(cl:defmethod successor_id-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:successor_id-val is deprecated.  Use ros_interface-msg:successor_id instead.")
  (successor_id m))

(cl:ensure-generic-function 'left_neighbor_id-val :lambda-list '(m))
(cl:defmethod left_neighbor_id-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:left_neighbor_id-val is deprecated.  Use ros_interface-msg:left_neighbor_id instead.")
  (left_neighbor_id m))

(cl:ensure-generic-function 'right_neighbor_id-val :lambda-list '(m))
(cl:defmethod right_neighbor_id-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:right_neighbor_id-val is deprecated.  Use ros_interface-msg:right_neighbor_id instead.")
  (right_neighbor_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:type-val is deprecated.  Use ros_interface-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'lane_points-val :lambda-list '(m))
(cl:defmethod lane_points-val ((m <LaneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:lane_points-val is deprecated.  Use ros_interface-msg:lane_points instead.")
  (lane_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneInfo>) ostream)
  "Serializes a message object of type '<LaneInfo>"
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'global_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'predecessor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'successor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_neighbor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_neighbor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneInfo>) istream)
  "Deserializes a message object of type '<LaneInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'global_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'predecessor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'successor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_neighbor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_neighbor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:LanePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneInfo>)))
  "Returns string type for a message object of type '<LaneInfo>"
  "ros_interface/LaneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneInfo)))
  "Returns string type for a message object of type 'LaneInfo"
  "ros_interface/LaneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneInfo>)))
  "Returns md5sum for a message object of type '<LaneInfo>"
  "0ef29114104627b60d3c8213d422ab75")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneInfo)))
  "Returns md5sum for a message object of type 'LaneInfo"
  "0ef29114104627b60d3c8213d422ab75")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneInfo>)))
  "Returns full string definition for message of type '<LaneInfo>"
  (cl:format cl:nil "int8   priority     # 道路优先级~%int8   global_id     # 道路全局id（从左至右，从0开始）~%int8 predecessor_id # 上一车道id~%int8 successor_id # 下一车道id~%int8 left_neighbor_id # 左边相邻车道id~%int8 right_neighbor_id # 右边相邻车道id~%int8   type     # 类型（预留）~%LanePoint[] lane_points # 道路参考线（z）~%~%================================================================================~%MSG: ros_interface/LanePoint~%Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%float64   mileage     # 总体里程~%float64   limit_speed     # 地图限速（单位m/s）~%float64   left_road_width     # 左边车道宽~%float64   right_road_width     # 右边车道宽~%int32   left_line_type     # 左边车线线型~%int32   right_line_type     # 右边车线线型~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneInfo)))
  "Returns full string definition for message of type 'LaneInfo"
  (cl:format cl:nil "int8   priority     # 道路优先级~%int8   global_id     # 道路全局id（从左至右，从0开始）~%int8 predecessor_id # 上一车道id~%int8 successor_id # 下一车道id~%int8 left_neighbor_id # 左边相邻车道id~%int8 right_neighbor_id # 右边相邻车道id~%int8   type     # 类型（预留）~%LanePoint[] lane_points # 道路参考线（z）~%~%================================================================================~%MSG: ros_interface/LanePoint~%Point3D   point     # 点xyz~%float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）~%float64   mileage     # 总体里程~%float64   limit_speed     # 地图限速（单位m/s）~%float64   left_road_width     # 左边车道宽~%float64   right_road_width     # 右边车道宽~%int32   left_line_type     # 左边车线线型~%int32   right_line_type     # 右边车线线型~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneInfo>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneInfo
    (cl:cons ':priority (priority msg))
    (cl:cons ':global_id (global_id msg))
    (cl:cons ':predecessor_id (predecessor_id msg))
    (cl:cons ':successor_id (successor_id msg))
    (cl:cons ':left_neighbor_id (left_neighbor_id msg))
    (cl:cons ':right_neighbor_id (right_neighbor_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':lane_points (lane_points msg))
))
