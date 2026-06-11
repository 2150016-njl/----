;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrafficLightMsg)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrafficLightMsg (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAFFICLIGHTMSG")
  (make-package "ROS_INTERFACE::TRAFFICLIGHTMSG"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::TrafficLightMsg
  :super ros::object
  :slots (_header _traffic_light _traffic_light_debug _contain_lights _camera_id _is_valid ))

(defmethod ros_interface::TrafficLightMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:traffic_light __traffic_light) (let (r) (dotimes (i 0) (push (instance ros_interface::TrafficLight :init) r)) r))
    ((:traffic_light_debug __traffic_light_debug) (instance ros_interface::TrafficLightDebug :init))
    ((:contain_lights __contain_lights) nil)
    ((:camera_id __camera_id) 0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _traffic_light __traffic_light)
   (setq _traffic_light_debug __traffic_light_debug)
   (setq _contain_lights __contain_lights)
   (setq _camera_id (round __camera_id))
   (setq _is_valid __is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:traffic_light
   (&rest __traffic_light)
   (if (keywordp (car __traffic_light))
       (send* _traffic_light __traffic_light)
     (progn
       (if __traffic_light (setq _traffic_light (car __traffic_light)))
       _traffic_light)))
  (:traffic_light_debug
   (&rest __traffic_light_debug)
   (if (keywordp (car __traffic_light_debug))
       (send* _traffic_light_debug __traffic_light_debug)
     (progn
       (if __traffic_light_debug (setq _traffic_light_debug (car __traffic_light_debug)))
       _traffic_light_debug)))
  (:contain_lights
   (&optional __contain_lights)
   (if __contain_lights (setq _contain_lights __contain_lights)) _contain_lights)
  (:camera_id
   (&optional __camera_id)
   (if __camera_id (setq _camera_id __camera_id)) _camera_id)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/TrafficLight[] _traffic_light
    (apply #'+ (send-all _traffic_light :serialization-length)) 4
    ;; ros_interface/TrafficLightDebug _traffic_light_debug
    (send _traffic_light_debug :serialization-length)
    ;; bool _contain_lights
    1
    ;; int32 _camera_id
    4
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/TrafficLight[] _traffic_light
     (write-long (length _traffic_light) s)
     (dolist (elem _traffic_light)
       (send elem :serialize s)
       )
     ;; ros_interface/TrafficLightDebug _traffic_light_debug
       (send _traffic_light_debug :serialize s)
     ;; bool _contain_lights
       (if _contain_lights (write-byte -1 s) (write-byte 0 s))
     ;; int32 _camera_id
       (write-long _camera_id s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/TrafficLight[] _traffic_light
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light (let (r) (dotimes (i n) (push (instance ros_interface::TrafficLight :init) r)) r))
     (dolist (elem- _traffic_light)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrafficLightDebug _traffic_light_debug
     (send _traffic_light_debug :deserialize buf ptr-) (incf ptr- (send _traffic_light_debug :serialization-length))
   ;; bool _contain_lights
     (setq _contain_lights (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _camera_id
     (setq _camera_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::TrafficLightMsg :md5sum-) "e6be2f3c99e26b2711d35cc48d38d8ea")
(setf (get ros_interface::TrafficLightMsg :datatype-) "ros_interface/TrafficLightMsg")
(setf (get ros_interface::TrafficLightMsg :definition-)
      "Header   header     # 消息头
TrafficLight[] traffic_light # 检出的交通灯数组
TrafficLightDebug   traffic_light_debug     # 交通灯数组调试
bool   contain_lights     # 是否包含交通灯
int32   camera_id     # CAMERA_FRONT_LONG = 0; CAMERA_FRONT_NARROW = 1; CAMERA_FRONT_SHORT = 2; CAMERA_FRONT_WIDE = 3;
bool   is_valid     # true: valid  false: invalid

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/TrafficLight
int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
uint32   id     # light id
int32   type     # STRAIGHT = 0; TURN_LEFT = 1; TURN_RIGHT = 2; STRAIGHT_TURN_LEFT = 3; STRAIGHT_TURN_RIGHT =4; CIRCULAR = 5; PEDESTRIAN = 6; CYCLIST = 7; UNKNOWN = 8;
float64   confidence     # 置信度confdence: [0-1]
ImageRect   light_rect     # 交通灯矩形框light rect
Point3D   position     # 交通灯位置position of light
float64   distance     # 距离distance between light and stop line
int32[] light_lanes # corresponding lanes of light
float64   tracking_time     # duration of a light since track
bool   blink     # true:
float64   blinking_time     # duration of a light blinking
float64   remaining_time     # V2X time of light
Time   create_time     # time of light detected

================================================================================
MSG: ros_interface/ImageRect
int32   x     # coordinate x of left-top point of image rect
int32   y     # coordinate y of left-top point of image rect
int32   width     # width of image rect
int32   height     # height of image rect

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

================================================================================
MSG: ros_interface/TrafficLightDebug
TrafficLightBox   cropbox     #  
TrafficLightBox[] box #  
int32   signal_num     #  
int32   valid_pos     #  
float64   ts_diff_pos     #  
float64   ts_diff_sys     #  
int32   project_error     #  
float64   distance_to_stop_line     #  
int32   camera_id     #  
TrafficLightBox[] crop_roi #  
TrafficLightBox[] projected_roi #  
TrafficLightBox[] rectified_roi #  
TrafficLightBox[] debug_roi #  

================================================================================
MSG: ros_interface/TrafficLightBox
int32   x     # 交通灯目标在图像上中心点横向方向像素位置
int32   y     # 交通灯目标在图像上中心点纵向方向像素位置
int32   width     # 交通灯目标在图像上宽度
int32   height     # 交通灯目标在图像上高度
int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
bool   selected     # 是否选择
string   camera_name     # 相机名称

")



(provide :ros_interface/TrafficLightMsg "e6be2f3c99e26b2711d35cc48d38d8ea")


