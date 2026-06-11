; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude UssObstacleList.msg.html

(cl:defclass <UssObstacleList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uss_obstacles
    :reader uss_obstacles
    :initarg :uss_obstacles
    :type (cl:vector ros_interface-msg:UssObstacle)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:UssObstacle :initial-element (cl:make-instance 'ros_interface-msg:UssObstacle)))
   (uss_ranges
    :reader uss_ranges
    :initarg :uss_ranges
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UssObstacleList (<UssObstacleList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssObstacleList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssObstacleList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<UssObstacleList> is deprecated: use ros_interface-msg:UssObstacleList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UssObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uss_obstacles-val :lambda-list '(m))
(cl:defmethod uss_obstacles-val ((m <UssObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:uss_obstacles-val is deprecated.  Use ros_interface-msg:uss_obstacles instead.")
  (uss_obstacles m))

(cl:ensure-generic-function 'uss_ranges-val :lambda-list '(m))
(cl:defmethod uss_ranges-val ((m <UssObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:uss_ranges-val is deprecated.  Use ros_interface-msg:uss_ranges instead.")
  (uss_ranges m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <UssObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:error_code-val is deprecated.  Use ros_interface-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <UssObstacleList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssObstacleList>) ostream)
  "Serializes a message object of type '<UssObstacleList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_obstacles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_ranges))))
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
   (cl:slot-value msg 'uss_ranges))
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssObstacleList>) istream)
  "Deserializes a message object of type '<UssObstacleList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:UssObstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_ranges)))
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
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssObstacleList>)))
  "Returns string type for a message object of type '<UssObstacleList>"
  "ros_interface/UssObstacleList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssObstacleList)))
  "Returns string type for a message object of type 'UssObstacleList"
  "ros_interface/UssObstacleList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssObstacleList>)))
  "Returns md5sum for a message object of type '<UssObstacleList>"
  "3c1d8a409b9bf173ccc5987b7e4616b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssObstacleList)))
  "Returns md5sum for a message object of type 'UssObstacleList"
  "3c1d8a409b9bf173ccc5987b7e4616b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssObstacleList>)))
  "Returns full string definition for message of type '<UssObstacleList>"
  (cl:format cl:nil "Header   header     # 消息头~%UssObstacle[] uss_obstacles # 检测出的超声波障碍物数组~%float64[] uss_ranges # 超声波检测的距离数组，存放顺序按照FA,FB,FC,FD,FE,FF,RA,RB,RC,RD,RE,RF~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 超声波障碍物数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/UssObstacle~%Header   header     # timestamp is included in header~%int32   uss_obstacle_region     # 超声波障碍物点区域 0-车辆后方区域 1-车辆前方区域 2-车辆右方区域 3-车辆左方区域~%float64   mx     # 车体中心坐标系下，超声波障碍物点x坐标~%float64   my     # 车体中心坐标系下，超声波障碍物点y坐标~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssObstacleList)))
  "Returns full string definition for message of type 'UssObstacleList"
  (cl:format cl:nil "Header   header     # 消息头~%UssObstacle[] uss_obstacles # 检测出的超声波障碍物数组~%float64[] uss_ranges # 超声波检测的距离数组，存放顺序按照FA,FB,FC,FD,FE,FF,RA,RB,RC,RD,RE,RF~%int32   error_code     # 错误码（default = OK）~%bool   is_valid     # 超声波障碍物数据是否合法~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/UssObstacle~%Header   header     # timestamp is included in header~%int32   uss_obstacle_region     # 超声波障碍物点区域 0-车辆后方区域 1-车辆前方区域 2-车辆右方区域 3-车辆左方区域~%float64   mx     # 车体中心坐标系下，超声波障碍物点x坐标~%float64   my     # 车体中心坐标系下，超声波障碍物点y坐标~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssObstacleList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssObstacleList>))
  "Converts a ROS message object to a list"
  (cl:list 'UssObstacleList
    (cl:cons ':header (header msg))
    (cl:cons ':uss_obstacles (uss_obstacles msg))
    (cl:cons ':uss_ranges (uss_ranges msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':is_valid (is_valid msg))
))
