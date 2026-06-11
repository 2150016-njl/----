; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude HMIParkingInfoList.msg.html

(cl:defclass <HMIParkingInfoList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parking_info
    :reader parking_info
    :initarg :parking_info
    :type (cl:vector ros_interface-msg:HMIParkingInfo)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:HMIParkingInfo :initial-element (cl:make-instance 'ros_interface-msg:HMIParkingInfo)))
   (parking_out_enable
    :reader parking_out_enable
    :initarg :parking_out_enable
    :type cl:boolean
    :initform cl:nil)
   (parking_out_direction
    :reader parking_out_direction
    :initarg :parking_out_direction
    :type cl:integer
    :initform 0)
   (parking_out_id
    :reader parking_out_id
    :initarg :parking_out_id
    :type cl:integer
    :initform 0))
)

(cl:defclass HMIParkingInfoList (<HMIParkingInfoList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HMIParkingInfoList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HMIParkingInfoList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<HMIParkingInfoList> is deprecated: use ros_interface-msg:HMIParkingInfoList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HMIParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parking_info-val :lambda-list '(m))
(cl:defmethod parking_info-val ((m <HMIParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_info-val is deprecated.  Use ros_interface-msg:parking_info instead.")
  (parking_info m))

(cl:ensure-generic-function 'parking_out_enable-val :lambda-list '(m))
(cl:defmethod parking_out_enable-val ((m <HMIParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_enable-val is deprecated.  Use ros_interface-msg:parking_out_enable instead.")
  (parking_out_enable m))

(cl:ensure-generic-function 'parking_out_direction-val :lambda-list '(m))
(cl:defmethod parking_out_direction-val ((m <HMIParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_direction-val is deprecated.  Use ros_interface-msg:parking_out_direction instead.")
  (parking_out_direction m))

(cl:ensure-generic-function 'parking_out_id-val :lambda-list '(m))
(cl:defmethod parking_out_id-val ((m <HMIParkingInfoList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:parking_out_id-val is deprecated.  Use ros_interface-msg:parking_out_id instead.")
  (parking_out_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HMIParkingInfoList>) ostream)
  "Serializes a message object of type '<HMIParkingInfoList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parking_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'parking_info))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'parking_out_enable) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'parking_out_direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'parking_out_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HMIParkingInfoList>) istream)
  "Deserializes a message object of type '<HMIParkingInfoList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parking_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parking_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:HMIParkingInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'parking_out_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_out_direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_out_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HMIParkingInfoList>)))
  "Returns string type for a message object of type '<HMIParkingInfoList>"
  "ros_interface/HMIParkingInfoList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HMIParkingInfoList)))
  "Returns string type for a message object of type 'HMIParkingInfoList"
  "ros_interface/HMIParkingInfoList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HMIParkingInfoList>)))
  "Returns md5sum for a message object of type '<HMIParkingInfoList>"
  "3ee1c963e4488266db67d36b454f5473")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HMIParkingInfoList)))
  "Returns md5sum for a message object of type 'HMIParkingInfoList"
  "3ee1c963e4488266db67d36b454f5473")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HMIParkingInfoList>)))
  "Returns full string definition for message of type '<HMIParkingInfoList>"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%HMIParkingInfo[] parking_info #  ~%bool   parking_out_enable     #  ~%int32   parking_out_direction     #  ~%int32   parking_out_id     #  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/HMIParkingInfo~%Header   header     # timestamp is  included in header~%int32   parking_space_id     # // 停车位id~%int32   parking_type     # // PARKING_TYPE=0 //无效泊车 PARKING_TYPE=1 //水平泊车 PARKING_TYPE=2 //垂直泊车 PARKING_TYPE=3 //倾斜泊车~%bool   is_parking_enable     # // true可泊车，false不可泊车~%Point3D   center_point_of_parking     # // 世界坐标系下停车位中心点~%float64   theta     # // 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角~%float64   width     # // 停车位宽（单位m）~%float64   length     # // 停车位长单位m）~%bool   is_custom_parking     # // 是否是自定义车位~%Polygon3D   polygon     # 世界坐标系下的车位多边形~%int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Polygon3D~%int32   coordinate_system     # 坐标系~%Point3D[] points # 三维点集~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HMIParkingInfoList)))
  "Returns full string definition for message of type 'HMIParkingInfoList"
  (cl:format cl:nil "Header   header     # timestamp is  included in header~%HMIParkingInfo[] parking_info #  ~%bool   parking_out_enable     #  ~%int32   parking_out_direction     #  ~%int32   parking_out_id     #  ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/HMIParkingInfo~%Header   header     # timestamp is  included in header~%int32   parking_space_id     # // 停车位id~%int32   parking_type     # // PARKING_TYPE=0 //无效泊车 PARKING_TYPE=1 //水平泊车 PARKING_TYPE=2 //垂直泊车 PARKING_TYPE=3 //倾斜泊车~%bool   is_parking_enable     # // true可泊车，false不可泊车~%Point3D   center_point_of_parking     # // 世界坐标系下停车位中心点~%float64   theta     # // 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角~%float64   width     # // 停车位宽（单位m）~%float64   length     # // 停车位长单位m）~%bool   is_custom_parking     # // 是否是自定义车位~%Polygon3D   polygon     # 世界坐标系下的车位多边形~%int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Polygon3D~%int32   coordinate_system     # 坐标系~%Point3D[] points # 三维点集~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HMIParkingInfoList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parking_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HMIParkingInfoList>))
  "Converts a ROS message object to a list"
  (cl:list 'HMIParkingInfoList
    (cl:cons ':header (header msg))
    (cl:cons ':parking_info (parking_info msg))
    (cl:cons ':parking_out_enable (parking_out_enable msg))
    (cl:cons ':parking_out_direction (parking_out_direction msg))
    (cl:cons ':parking_out_id (parking_out_id msg))
))
