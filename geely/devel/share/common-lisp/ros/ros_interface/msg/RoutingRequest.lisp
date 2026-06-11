; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude RoutingRequest.msg.html

(cl:defclass <RoutingRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request_source
    :reader request_source
    :initarg :request_source
    :type cl:string
    :initform "")
   (request_type
    :reader request_type
    :initarg :request_type
    :type cl:fixnum
    :initform 0)
   (num_of_kp
    :reader num_of_kp
    :initarg :num_of_kp
    :type cl:fixnum
    :initform 0)
   (key_point_list
    :reader key_point_list
    :initarg :key_point_list
    :type (cl:vector ros_interface-msg:KeyPoint)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:KeyPoint :initial-element (cl:make-instance 'ros_interface-msg:KeyPoint))))
)

(cl:defclass RoutingRequest (<RoutingRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<RoutingRequest> is deprecated: use ros_interface-msg:RoutingRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_source-val :lambda-list '(m))
(cl:defmethod request_source-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:request_source-val is deprecated.  Use ros_interface-msg:request_source instead.")
  (request_source m))

(cl:ensure-generic-function 'request_type-val :lambda-list '(m))
(cl:defmethod request_type-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:request_type-val is deprecated.  Use ros_interface-msg:request_type instead.")
  (request_type m))

(cl:ensure-generic-function 'num_of_kp-val :lambda-list '(m))
(cl:defmethod num_of_kp-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:num_of_kp-val is deprecated.  Use ros_interface-msg:num_of_kp instead.")
  (num_of_kp m))

(cl:ensure-generic-function 'key_point_list-val :lambda-list '(m))
(cl:defmethod key_point_list-val ((m <RoutingRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:key_point_list-val is deprecated.  Use ros_interface-msg:key_point_list instead.")
  (key_point_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingRequest>) ostream)
  "Serializes a message object of type '<RoutingRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_source))
  (cl:let* ((signed (cl:slot-value msg 'request_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_of_kp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'key_point_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'key_point_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingRequest>) istream)
  "Deserializes a message object of type '<RoutingRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request_source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_of_kp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'key_point_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'key_point_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:KeyPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingRequest>)))
  "Returns string type for a message object of type '<RoutingRequest>"
  "ros_interface/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingRequest)))
  "Returns string type for a message object of type 'RoutingRequest"
  "ros_interface/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingRequest>)))
  "Returns md5sum for a message object of type '<RoutingRequest>"
  "1771a80ac13a976ae23dbca9cd7f5386")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingRequest)))
  "Returns md5sum for a message object of type 'RoutingRequest"
  "1771a80ac13a976ae23dbca9cd7f5386")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingRequest>)))
  "Returns full string definition for message of type '<RoutingRequest>"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%string   request_source     # 发起请求的来源名称~%int8   request_type     # REQUEST_TYPE=0//无效 REQUEST_TYPE=1//正常路由 REQUEST_TYPE=2//泊车路由~%int16   num_of_kp     # 关键点数量~%KeyPoint[] key_point_list # 关键点列表，第一个为起点，最后一个为终点，中间为途经点~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/KeyPoint~%int16   id     # 关键点id~%float64   latitude     # 关键点纬度~%float64   longitude     # 关键点经度~%float64   ele     # 关键点海拔~%float64   heading     # 关键点航向角（与北方向夹角，顺时针方向为正，单位为°）~%string   name     # 关键点名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingRequest)))
  "Returns full string definition for message of type 'RoutingRequest"
  (cl:format cl:nil "Header   header     # timestamp is included in header~%string   request_source     # 发起请求的来源名称~%int8   request_type     # REQUEST_TYPE=0//无效 REQUEST_TYPE=1//正常路由 REQUEST_TYPE=2//泊车路由~%int16   num_of_kp     # 关键点数量~%KeyPoint[] key_point_list # 关键点列表，第一个为起点，最后一个为终点，中间为途经点~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/KeyPoint~%int16   id     # 关键点id~%float64   latitude     # 关键点纬度~%float64   longitude     # 关键点经度~%float64   ele     # 关键点海拔~%float64   heading     # 关键点航向角（与北方向夹角，顺时针方向为正，单位为°）~%string   name     # 关键点名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'request_source))
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'key_point_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingRequest
    (cl:cons ':header (header msg))
    (cl:cons ':request_source (request_source msg))
    (cl:cons ':request_type (request_type msg))
    (cl:cons ':num_of_kp (num_of_kp msg))
    (cl:cons ':key_point_list (key_point_list msg))
))
