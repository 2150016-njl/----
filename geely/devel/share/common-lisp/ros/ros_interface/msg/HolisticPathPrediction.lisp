; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HolisticPathPrediction.msg.html

(cl:defclass <HolisticPathPrediction> (roslisp-msg-protocol:ros-message)
  ((hpp
    :reader hpp
    :initarg :hpp
    :type ros_interface-msg:LaneLineCubicCurve
    :initform (cl:make-instance 'ros_interface-msg:LaneLineCubicCurve))
   (planning_source
    :reader planning_source
    :initarg :planning_source
    :type cl:integer
    :initform 0)
   (ego_lane_width
    :reader ego_lane_width
    :initarg :ego_lane_width
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass HolisticPathPrediction (<HolisticPathPrediction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HolisticPathPrediction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HolisticPathPrediction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HolisticPathPrediction> is deprecated: use ros_interface-msg:HolisticPathPrediction instead.")))

(cl:ensure-generic-function 'hpp-val :lambda-list '(m))
(cl:defmethod hpp-val ((m <HolisticPathPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:hpp-val is deprecated.  Use ros_interface-msg:hpp instead.")
  (hpp m))

(cl:ensure-generic-function 'planning_source-val :lambda-list '(m))
(cl:defmethod planning_source-val ((m <HolisticPathPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:planning_source-val is deprecated.  Use ros_interface-msg:planning_source instead.")
  (planning_source m))

(cl:ensure-generic-function 'ego_lane_width-val :lambda-list '(m))
(cl:defmethod ego_lane_width-val ((m <HolisticPathPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:ego_lane_width-val is deprecated.  Use ros_interface-msg:ego_lane_width instead.")
  (ego_lane_width m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <HolisticPathPrediction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:confidence-val is deprecated.  Use ros_interface-msg:confidence instead.")
  (confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HolisticPathPrediction>) ostream)
  "Serializes a message object of type '<HolisticPathPrediction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hpp) ostream)
  (cl:let* ((signed (cl:slot-value msg 'planning_source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ego_lane_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HolisticPathPrediction>) istream)
  "Deserializes a message object of type '<HolisticPathPrediction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hpp) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_source) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ego_lane_width) (roslisp-utils:decode-double-float-bits bits)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HolisticPathPrediction>)))
  "Returns string type for a message object of type '<HolisticPathPrediction>"
  "ros_interface/HolisticPathPrediction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HolisticPathPrediction)))
  "Returns string type for a message object of type 'HolisticPathPrediction"
  "ros_interface/HolisticPathPrediction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HolisticPathPrediction>)))
  "Returns md5sum for a message object of type '<HolisticPathPrediction>"
  "4a3802277f8181f1f0dd82eebaecee41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HolisticPathPrediction)))
  "Returns md5sum for a message object of type 'HolisticPathPrediction"
  "4a3802277f8181f1f0dd82eebaecee41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HolisticPathPrediction>)))
  "Returns full string definition for message of type '<HolisticPathPrediction>"
  (cl:format cl:nil "LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；~%int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测~%float64   ego_lane_width     # 自车道宽度~%float64   confidence     # 置信度[0 - 1]~%~%================================================================================~%MSG: ros_interface/LaneLineCubicCurve~%float64   start_x     # 车道线起始位置~%float64   end_x     # 车道线结束位置~%float64   a     # 三次曲线系数~%float64   b     #  ~%float64   c     #  ~%float64   d     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HolisticPathPrediction)))
  "Returns full string definition for message of type 'HolisticPathPrediction"
  (cl:format cl:nil "LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；~%int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测~%float64   ego_lane_width     # 自车道宽度~%float64   confidence     # 置信度[0 - 1]~%~%================================================================================~%MSG: ros_interface/LaneLineCubicCurve~%float64   start_x     # 车道线起始位置~%float64   end_x     # 车道线结束位置~%float64   a     # 三次曲线系数~%float64   b     #  ~%float64   c     #  ~%float64   d     #  ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HolisticPathPrediction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hpp))
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HolisticPathPrediction>))
  "Converts a ROS message object to a list"
  (cl:list 'HolisticPathPrediction
    (cl:cons ':hpp (hpp msg))
    (cl:cons ':planning_source (planning_source msg))
    (cl:cons ':ego_lane_width (ego_lane_width msg))
    (cl:cons ':confidence (confidence msg))
))
