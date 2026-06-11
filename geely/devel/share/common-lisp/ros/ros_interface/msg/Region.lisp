; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude Region.msg.html

(cl:defclass <Region> (roslisp-msg-protocol:ros-message)
  ((name_region
    :reader name_region
    :initarg :name_region
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (rank_risk
    :reader rank_risk
    :initarg :rank_risk
    :type cl:integer
    :initform 0)
   (region_polygon
    :reader region_polygon
    :initarg :region_polygon
    :type (cl:vector ros_interface-msg:Point3D)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:Point3D :initial-element (cl:make-instance 'ros_interface-msg:Point3D))))
)

(cl:defclass Region (<Region>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Region>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Region)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<Region> is deprecated: use ros_interface-msg:Region instead.")))

(cl:ensure-generic-function 'name_region-val :lambda-list '(m))
(cl:defmethod name_region-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:name_region-val is deprecated.  Use ros_interface-msg:name_region instead.")
  (name_region m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:score-val is deprecated.  Use ros_interface-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'rank_risk-val :lambda-list '(m))
(cl:defmethod rank_risk-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:rank_risk-val is deprecated.  Use ros_interface-msg:rank_risk instead.")
  (rank_risk m))

(cl:ensure-generic-function 'region_polygon-val :lambda-list '(m))
(cl:defmethod region_polygon-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:region_polygon-val is deprecated.  Use ros_interface-msg:region_polygon instead.")
  (region_polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Region>) ostream)
  "Serializes a message object of type '<Region>"
  (cl:let* ((signed (cl:slot-value msg 'name_region)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'rank_risk)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'region_polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'region_polygon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Region>) istream)
  "Deserializes a message object of type '<Region>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_region) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rank_risk) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'region_polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'region_polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:Point3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Region>)))
  "Returns string type for a message object of type '<Region>"
  "ros_interface/Region")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Region)))
  "Returns string type for a message object of type 'Region"
  "ros_interface/Region")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Region>)))
  "Returns md5sum for a message object of type '<Region>"
  "e67108b17f0dbf5c3d9cd0e59ac3108e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Region)))
  "Returns md5sum for a message object of type 'Region"
  "e67108b17f0dbf5c3d9cd0e59ac3108e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Region>)))
  "Returns full string definition for message of type '<Region>"
  (cl:format cl:nil "int32   name_region     # 前后左右区域~%float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)~%int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)~%Point3D[] region_polygon # 世界坐标系下的区域多边形~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Region)))
  "Returns full string definition for message of type 'Region"
  (cl:format cl:nil "int32   name_region     # 前后左右区域~%float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)~%int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)~%Point3D[] region_polygon # 世界坐标系下的区域多边形~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Region>))
  (cl:+ 0
     4
     8
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'region_polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Region>))
  "Converts a ROS message object to a list"
  (cl:list 'Region
    (cl:cons ':name_region (name_region msg))
    (cl:cons ':score (score msg))
    (cl:cons ':rank_risk (rank_risk msg))
    (cl:cons ':region_polygon (region_polygon msg))
))
