;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Gnss)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Gnss (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::GNSS")
  (make-package "ROS_INTERFACE::GNSS"))

(in-package "ROS")
;;//! \htmlinclude Gnss.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Gnss
  :super ros::object
  :slots (_is_valid _header _latitude _longitude _elevation _utm_position _utm_zone_num _utm_zone_char _attitude _sd_position _sd_velocity _sd_attitude _second _sat_use_num _sat_in_view_num _solution_status _position_type _linear_velocity _attitude_dual _sd_angle_dual _base_line_length_dual _solution_status_dual _position_type_dual _solution_source_dual _cep68 _cep95 _p_dop _h_dop _v_dop ))

(defmethod ros_interface::Gnss
  (:init
   (&key
    ((:is_valid __is_valid) nil)
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:elevation __elevation) 0.0)
    ((:utm_position __utm_position) (instance ros_interface::Point3D :init))
    ((:utm_zone_num __utm_zone_num) 0)
    ((:utm_zone_char __utm_zone_char) 0)
    ((:attitude __attitude) (instance ros_interface::Point3D :init))
    ((:sd_position __sd_position) (instance ros_interface::Point3D :init))
    ((:sd_velocity __sd_velocity) (instance ros_interface::Point3D :init))
    ((:sd_attitude __sd_attitude) (instance ros_interface::Point3D :init))
    ((:second __second) 0.0)
    ((:sat_use_num __sat_use_num) 0)
    ((:sat_in_view_num __sat_in_view_num) 0)
    ((:solution_status __solution_status) 0)
    ((:position_type __position_type) 0)
    ((:linear_velocity __linear_velocity) (instance ros_interface::Point3D :init))
    ((:attitude_dual __attitude_dual) (instance ros_interface::Point3D :init))
    ((:sd_angle_dual __sd_angle_dual) (instance ros_interface::Point3D :init))
    ((:base_line_length_dual __base_line_length_dual) 0.0)
    ((:solution_status_dual __solution_status_dual) 0)
    ((:position_type_dual __position_type_dual) 0)
    ((:solution_source_dual __solution_source_dual) 0)
    ((:cep68 __cep68) 0.0)
    ((:cep95 __cep95) 0.0)
    ((:p_dop __p_dop) 0.0)
    ((:h_dop __h_dop) 0.0)
    ((:v_dop __v_dop) 0.0)
    )
   (send-super :init)
   (setq _is_valid __is_valid)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _elevation (float __elevation))
   (setq _utm_position __utm_position)
   (setq _utm_zone_num (round __utm_zone_num))
   (setq _utm_zone_char (round __utm_zone_char))
   (setq _attitude __attitude)
   (setq _sd_position __sd_position)
   (setq _sd_velocity __sd_velocity)
   (setq _sd_attitude __sd_attitude)
   (setq _second (float __second))
   (setq _sat_use_num (round __sat_use_num))
   (setq _sat_in_view_num (round __sat_in_view_num))
   (setq _solution_status (round __solution_status))
   (setq _position_type (round __position_type))
   (setq _linear_velocity __linear_velocity)
   (setq _attitude_dual __attitude_dual)
   (setq _sd_angle_dual __sd_angle_dual)
   (setq _base_line_length_dual (float __base_line_length_dual))
   (setq _solution_status_dual (round __solution_status_dual))
   (setq _position_type_dual (round __position_type_dual))
   (setq _solution_source_dual (round __solution_source_dual))
   (setq _cep68 (float __cep68))
   (setq _cep95 (float __cep95))
   (setq _p_dop (float __p_dop))
   (setq _h_dop (float __h_dop))
   (setq _v_dop (float __v_dop))
   self)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:utm_position
   (&rest __utm_position)
   (if (keywordp (car __utm_position))
       (send* _utm_position __utm_position)
     (progn
       (if __utm_position (setq _utm_position (car __utm_position)))
       _utm_position)))
  (:utm_zone_num
   (&optional __utm_zone_num)
   (if __utm_zone_num (setq _utm_zone_num __utm_zone_num)) _utm_zone_num)
  (:utm_zone_char
   (&optional __utm_zone_char)
   (if __utm_zone_char (setq _utm_zone_char __utm_zone_char)) _utm_zone_char)
  (:attitude
   (&rest __attitude)
   (if (keywordp (car __attitude))
       (send* _attitude __attitude)
     (progn
       (if __attitude (setq _attitude (car __attitude)))
       _attitude)))
  (:sd_position
   (&rest __sd_position)
   (if (keywordp (car __sd_position))
       (send* _sd_position __sd_position)
     (progn
       (if __sd_position (setq _sd_position (car __sd_position)))
       _sd_position)))
  (:sd_velocity
   (&rest __sd_velocity)
   (if (keywordp (car __sd_velocity))
       (send* _sd_velocity __sd_velocity)
     (progn
       (if __sd_velocity (setq _sd_velocity (car __sd_velocity)))
       _sd_velocity)))
  (:sd_attitude
   (&rest __sd_attitude)
   (if (keywordp (car __sd_attitude))
       (send* _sd_attitude __sd_attitude)
     (progn
       (if __sd_attitude (setq _sd_attitude (car __sd_attitude)))
       _sd_attitude)))
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:sat_use_num
   (&optional __sat_use_num)
   (if __sat_use_num (setq _sat_use_num __sat_use_num)) _sat_use_num)
  (:sat_in_view_num
   (&optional __sat_in_view_num)
   (if __sat_in_view_num (setq _sat_in_view_num __sat_in_view_num)) _sat_in_view_num)
  (:solution_status
   (&optional __solution_status)
   (if __solution_status (setq _solution_status __solution_status)) _solution_status)
  (:position_type
   (&optional __position_type)
   (if __position_type (setq _position_type __position_type)) _position_type)
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:attitude_dual
   (&rest __attitude_dual)
   (if (keywordp (car __attitude_dual))
       (send* _attitude_dual __attitude_dual)
     (progn
       (if __attitude_dual (setq _attitude_dual (car __attitude_dual)))
       _attitude_dual)))
  (:sd_angle_dual
   (&rest __sd_angle_dual)
   (if (keywordp (car __sd_angle_dual))
       (send* _sd_angle_dual __sd_angle_dual)
     (progn
       (if __sd_angle_dual (setq _sd_angle_dual (car __sd_angle_dual)))
       _sd_angle_dual)))
  (:base_line_length_dual
   (&optional __base_line_length_dual)
   (if __base_line_length_dual (setq _base_line_length_dual __base_line_length_dual)) _base_line_length_dual)
  (:solution_status_dual
   (&optional __solution_status_dual)
   (if __solution_status_dual (setq _solution_status_dual __solution_status_dual)) _solution_status_dual)
  (:position_type_dual
   (&optional __position_type_dual)
   (if __position_type_dual (setq _position_type_dual __position_type_dual)) _position_type_dual)
  (:solution_source_dual
   (&optional __solution_source_dual)
   (if __solution_source_dual (setq _solution_source_dual __solution_source_dual)) _solution_source_dual)
  (:cep68
   (&optional __cep68)
   (if __cep68 (setq _cep68 __cep68)) _cep68)
  (:cep95
   (&optional __cep95)
   (if __cep95 (setq _cep95 __cep95)) _cep95)
  (:p_dop
   (&optional __p_dop)
   (if __p_dop (setq _p_dop __p_dop)) _p_dop)
  (:h_dop
   (&optional __h_dop)
   (if __h_dop (setq _h_dop __h_dop)) _h_dop)
  (:v_dop
   (&optional __v_dop)
   (if __v_dop (setq _v_dop __v_dop)) _v_dop)
  (:serialization-length
   ()
   (+
    ;; bool _is_valid
    1
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _elevation
    8
    ;; ros_interface/Point3D _utm_position
    (send _utm_position :serialization-length)
    ;; int32 _utm_zone_num
    4
    ;; uint8 _utm_zone_char
    1
    ;; ros_interface/Point3D _attitude
    (send _attitude :serialization-length)
    ;; ros_interface/Point3D _sd_position
    (send _sd_position :serialization-length)
    ;; ros_interface/Point3D _sd_velocity
    (send _sd_velocity :serialization-length)
    ;; ros_interface/Point3D _sd_attitude
    (send _sd_attitude :serialization-length)
    ;; float64 _second
    8
    ;; int32 _sat_use_num
    4
    ;; int32 _sat_in_view_num
    4
    ;; uint16 _solution_status
    2
    ;; uint16 _position_type
    2
    ;; ros_interface/Point3D _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; ros_interface/Point3D _attitude_dual
    (send _attitude_dual :serialization-length)
    ;; ros_interface/Point3D _sd_angle_dual
    (send _sd_angle_dual :serialization-length)
    ;; float64 _base_line_length_dual
    8
    ;; int32 _solution_status_dual
    4
    ;; int32 _position_type_dual
    4
    ;; int32 _solution_source_dual
    4
    ;; float64 _cep68
    8
    ;; float64 _cep95
    8
    ;; float64 _p_dop
    8
    ;; float64 _h_dop
    8
    ;; float64 _v_dop
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _utm_position
       (send _utm_position :serialize s)
     ;; int32 _utm_zone_num
       (write-long _utm_zone_num s)
     ;; uint8 _utm_zone_char
       (write-byte _utm_zone_char s)
     ;; ros_interface/Point3D _attitude
       (send _attitude :serialize s)
     ;; ros_interface/Point3D _sd_position
       (send _sd_position :serialize s)
     ;; ros_interface/Point3D _sd_velocity
       (send _sd_velocity :serialize s)
     ;; ros_interface/Point3D _sd_attitude
       (send _sd_attitude :serialize s)
     ;; float64 _second
       (sys::poke _second (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _sat_use_num
       (write-long _sat_use_num s)
     ;; int32 _sat_in_view_num
       (write-long _sat_in_view_num s)
     ;; uint16 _solution_status
       (write-word _solution_status s)
     ;; uint16 _position_type
       (write-word _position_type s)
     ;; ros_interface/Point3D _linear_velocity
       (send _linear_velocity :serialize s)
     ;; ros_interface/Point3D _attitude_dual
       (send _attitude_dual :serialize s)
     ;; ros_interface/Point3D _sd_angle_dual
       (send _sd_angle_dual :serialize s)
     ;; float64 _base_line_length_dual
       (sys::poke _base_line_length_dual (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _solution_status_dual
       (write-long _solution_status_dual s)
     ;; int32 _position_type_dual
       (write-long _position_type_dual s)
     ;; int32 _solution_source_dual
       (write-long _solution_source_dual s)
     ;; float64 _cep68
       (sys::poke _cep68 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cep95
       (sys::poke _cep95 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _p_dop
       (sys::poke _p_dop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _h_dop
       (sys::poke _h_dop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_dop
       (sys::poke _v_dop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elevation
     (setq _elevation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _utm_position
     (send _utm_position :deserialize buf ptr-) (incf ptr- (send _utm_position :serialization-length))
   ;; int32 _utm_zone_num
     (setq _utm_zone_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _utm_zone_char
     (setq _utm_zone_char (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ros_interface/Point3D _attitude
     (send _attitude :deserialize buf ptr-) (incf ptr- (send _attitude :serialization-length))
   ;; ros_interface/Point3D _sd_position
     (send _sd_position :deserialize buf ptr-) (incf ptr- (send _sd_position :serialization-length))
   ;; ros_interface/Point3D _sd_velocity
     (send _sd_velocity :deserialize buf ptr-) (incf ptr- (send _sd_velocity :serialization-length))
   ;; ros_interface/Point3D _sd_attitude
     (send _sd_attitude :deserialize buf ptr-) (incf ptr- (send _sd_attitude :serialization-length))
   ;; float64 _second
     (setq _second (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _sat_use_num
     (setq _sat_use_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sat_in_view_num
     (setq _sat_in_view_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _solution_status
     (setq _solution_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _position_type
     (setq _position_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ros_interface/Point3D _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; ros_interface/Point3D _attitude_dual
     (send _attitude_dual :deserialize buf ptr-) (incf ptr- (send _attitude_dual :serialization-length))
   ;; ros_interface/Point3D _sd_angle_dual
     (send _sd_angle_dual :deserialize buf ptr-) (incf ptr- (send _sd_angle_dual :serialization-length))
   ;; float64 _base_line_length_dual
     (setq _base_line_length_dual (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _solution_status_dual
     (setq _solution_status_dual (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position_type_dual
     (setq _position_type_dual (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _solution_source_dual
     (setq _solution_source_dual (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _cep68
     (setq _cep68 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cep95
     (setq _cep95 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _p_dop
     (setq _p_dop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _h_dop
     (setq _h_dop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_dop
     (setq _v_dop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::Gnss :md5sum-) "cee5447731c2d35cf9bffbd23aa840f5")
(setf (get ros_interface::Gnss :datatype-) "ros_interface/Gnss")
(setf (get ros_interface::Gnss :definition-)
      "bool   is_valid     # 数据有效性标志位
Header   header     # 头部信息
float64   latitude     # 纬度信息
float64   longitude     # 经度信息
float64   elevation     # 海拔信息
Point3D   utm_position     # UTM坐标位置
int32   utm_zone_num     # UTM区号
uint8   utm_zone_char     # UTM区号
Point3D   attitude     # 三轴姿态
Point3D   sd_position     # 位置标准差
Point3D   sd_velocity     # 速度标准差
Point3D   sd_attitude     # 姿态标准差
float64   second     # 时间
int32   sat_use_num     # 使用卫星数
int32   sat_in_view_num     # 可见卫星数
uint16   solution_status     # 求解状态
uint16   position_type     # 定位状态
Point3D   linear_velocity     # 线速度信息
Point3D   attitude_dual     # 双天线姿态
Point3D   sd_angle_dual     # 双天线角度标准差
float64   base_line_length_dual     # 双天线距离
int32   solution_status_dual     # 双天线求解状态
int32   position_type_dual     # 双天线定位状态
int32   solution_source_dual     # 双天线求解源
float64   cep68     # cep68数据位
float64   cep95     # cep95数据位
float64   p_dop     # pDop数据位
float64   h_dop     # hDop数据位
float64   v_dop     # vDop数据位

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
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/Gnss "cee5447731c2d35cf9bffbd23aa840f5")


