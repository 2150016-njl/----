; Auto-generated. Do not edit!


(cl:in-package ros_interface-msg)


;//! \htmlinclude TrafficLightMsg.msg.html

(cl:defclass <TrafficLightMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (traffic_light
    :reader traffic_light
    :initarg :traffic_light
    :type (cl:vector ros_interface-msg:TrafficLight)
   :initform (cl:make-array 0 :element-type 'ros_interface-msg:TrafficLight :initial-element (cl:make-instance 'ros_interface-msg:TrafficLight)))
   (traffic_light_debug
    :reader traffic_light_debug
    :initarg :traffic_light_debug
    :type ros_interface-msg:TrafficLightDebug
    :initform (cl:make-instance 'ros_interface-msg:TrafficLightDebug))
   (contain_lights
    :reader contain_lights
    :initarg :contain_lights
    :type cl:boolean
    :initform cl:nil)
   (camera_id
    :reader camera_id
    :initarg :camera_id
    :type cl:integer
    :initform 0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TrafficLightMsg (<TrafficLightMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_interface-msg:<TrafficLightMsg> is deprecated: use ros_interface-msg:TrafficLightMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrafficLightMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:header-val is deprecated.  Use ros_interface-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'traffic_light-val :lambda-list '(m))
(cl:defmethod traffic_light-val ((m <TrafficLightMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:traffic_light-val is deprecated.  Use ros_interface-msg:traffic_light instead.")
  (traffic_light m))

(cl:ensure-generic-function 'traffic_light_debug-val :lambda-list '(m))
(cl:defmethod traffic_light_debug-val ((m <TrafficLightMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:traffic_light_debug-val is deprecated.  Use ros_interface-msg:traffic_light_debug instead.")
  (traffic_light_debug m))

(cl:ensure-generic-function 'contain_lights-val :lambda-list '(m))
(cl:defmethod contain_lights-val ((m <TrafficLightMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:contain_lights-val is deprecated.  Use ros_interface-msg:contain_lights instead.")
  (contain_lights m))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <TrafficLightMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:camera_id-val is deprecated.  Use ros_interface-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <TrafficLightMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_interface-msg:is_valid-val is deprecated.  Use ros_interface-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightMsg>) ostream)
  "Serializes a message object of type '<TrafficLightMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_light_debug) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contain_lights) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'camera_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightMsg>) istream)
  "Deserializes a message object of type '<TrafficLightMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_interface-msg:TrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_light_debug) istream)
    (cl:setf (cl:slot-value msg 'contain_lights) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightMsg>)))
  "Returns string type for a message object of type '<TrafficLightMsg>"
  "ros_interface/TrafficLightMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightMsg)))
  "Returns string type for a message object of type 'TrafficLightMsg"
  "ros_interface/TrafficLightMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightMsg>)))
  "Returns md5sum for a message object of type '<TrafficLightMsg>"
  "e6be2f3c99e26b2711d35cc48d38d8ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightMsg)))
  "Returns md5sum for a message object of type 'TrafficLightMsg"
  "e6be2f3c99e26b2711d35cc48d38d8ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightMsg>)))
  "Returns full string definition for message of type '<TrafficLightMsg>"
  (cl:format cl:nil "Header   header     # 消息头~%TrafficLight[] traffic_light # 检出的交通灯数组~%TrafficLightDebug   traffic_light_debug     # 交通灯数组调试~%bool   contain_lights     # 是否包含交通灯~%int32   camera_id     # CAMERA_FRONT_LONG = 0; CAMERA_FRONT_NARROW = 1; CAMERA_FRONT_SHORT = 2; CAMERA_FRONT_WIDE = 3;~%bool   is_valid     # true: valid  false: invalid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/TrafficLight~%int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%uint32   id     # light id~%int32   type     # STRAIGHT = 0; TURN_LEFT = 1; TURN_RIGHT = 2; STRAIGHT_TURN_LEFT = 3; STRAIGHT_TURN_RIGHT =4; CIRCULAR = 5; PEDESTRIAN = 6; CYCLIST = 7; UNKNOWN = 8;~%float64   confidence     # 置信度confdence: [0-1]~%ImageRect   light_rect     # 交通灯矩形框light rect~%Point3D   position     # 交通灯位置position of light~%float64   distance     # 距离distance between light and stop line~%int32[] light_lanes # corresponding lanes of light~%float64   tracking_time     # duration of a light since track~%bool   blink     # true:~%float64   blinking_time     # duration of a light blinking~%float64   remaining_time     # V2X time of light~%Time   create_time     # time of light detected~%~%================================================================================~%MSG: ros_interface/ImageRect~%int32   x     # coordinate x of left-top point of image rect~%int32   y     # coordinate y of left-top point of image rect~%int32   width     # width of image rect~%int32   height     # height of image rect~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/TrafficLightDebug~%TrafficLightBox   cropbox     #  ~%TrafficLightBox[] box #  ~%int32   signal_num     #  ~%int32   valid_pos     #  ~%float64   ts_diff_pos     #  ~%float64   ts_diff_sys     #  ~%int32   project_error     #  ~%float64   distance_to_stop_line     #  ~%int32   camera_id     #  ~%TrafficLightBox[] crop_roi #  ~%TrafficLightBox[] projected_roi #  ~%TrafficLightBox[] rectified_roi #  ~%TrafficLightBox[] debug_roi #  ~%~%================================================================================~%MSG: ros_interface/TrafficLightBox~%int32   x     # 交通灯目标在图像上中心点横向方向像素位置~%int32   y     # 交通灯目标在图像上中心点纵向方向像素位置~%int32   width     # 交通灯目标在图像上宽度~%int32   height     # 交通灯目标在图像上高度~%int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%bool   selected     # 是否选择~%string   camera_name     # 相机名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightMsg)))
  "Returns full string definition for message of type 'TrafficLightMsg"
  (cl:format cl:nil "Header   header     # 消息头~%TrafficLight[] traffic_light # 检出的交通灯数组~%TrafficLightDebug   traffic_light_debug     # 交通灯数组调试~%bool   contain_lights     # 是否包含交通灯~%int32   camera_id     # CAMERA_FRONT_LONG = 0; CAMERA_FRONT_NARROW = 1; CAMERA_FRONT_SHORT = 2; CAMERA_FRONT_WIDE = 3;~%bool   is_valid     # true: valid  false: invalid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ros_interface/TrafficLight~%int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%uint32   id     # light id~%int32   type     # STRAIGHT = 0; TURN_LEFT = 1; TURN_RIGHT = 2; STRAIGHT_TURN_LEFT = 3; STRAIGHT_TURN_RIGHT =4; CIRCULAR = 5; PEDESTRIAN = 6; CYCLIST = 7; UNKNOWN = 8;~%float64   confidence     # 置信度confdence: [0-1]~%ImageRect   light_rect     # 交通灯矩形框light rect~%Point3D   position     # 交通灯位置position of light~%float64   distance     # 距离distance between light and stop line~%int32[] light_lanes # corresponding lanes of light~%float64   tracking_time     # duration of a light since track~%bool   blink     # true:~%float64   blinking_time     # duration of a light blinking~%float64   remaining_time     # V2X time of light~%Time   create_time     # time of light detected~%~%================================================================================~%MSG: ros_interface/ImageRect~%int32   x     # coordinate x of left-top point of image rect~%int32   y     # coordinate y of left-top point of image rect~%int32   width     # width of image rect~%int32   height     # height of image rect~%~%================================================================================~%MSG: ros_interface/Point3D~%float64   x     # 位置坐标x~%float64   y     # 位置坐标y~%float64   z     # 位置坐标z~%~%================================================================================~%MSG: ros_interface/Time~%uint32   sec     # 秒~%uint32   nsec     # 纳秒~%~%================================================================================~%MSG: ros_interface/TrafficLightDebug~%TrafficLightBox   cropbox     #  ~%TrafficLightBox[] box #  ~%int32   signal_num     #  ~%int32   valid_pos     #  ~%float64   ts_diff_pos     #  ~%float64   ts_diff_sys     #  ~%int32   project_error     #  ~%float64   distance_to_stop_line     #  ~%int32   camera_id     #  ~%TrafficLightBox[] crop_roi #  ~%TrafficLightBox[] projected_roi #  ~%TrafficLightBox[] rectified_roi #  ~%TrafficLightBox[] debug_roi #  ~%~%================================================================================~%MSG: ros_interface/TrafficLightBox~%int32   x     # 交通灯目标在图像上中心点横向方向像素位置~%int32   y     # 交通灯目标在图像上中心点纵向方向像素位置~%int32   width     # 交通灯目标在图像上宽度~%int32   height     # 交通灯目标在图像上高度~%int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;~%bool   selected     # 是否选择~%string   camera_name     # 相机名称~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_light_debug))
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightMsg
    (cl:cons ':header (header msg))
    (cl:cons ':traffic_light (traffic_light msg))
    (cl:cons ':traffic_light_debug (traffic_light_debug msg))
    (cl:cons ':contain_lights (contain_lights msg))
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':is_valid (is_valid msg))
))
