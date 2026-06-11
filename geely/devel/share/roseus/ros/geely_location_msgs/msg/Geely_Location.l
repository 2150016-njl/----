;; Auto-generated. Do not edit!


(when (boundp 'geely_location_msgs::Geely_Location)
  (if (not (find-package "GEELY_LOCATION_MSGS"))
    (make-package "GEELY_LOCATION_MSGS"))
  (shadow 'Geely_Location (find-package "GEELY_LOCATION_MSGS")))
(unless (find-package "GEELY_LOCATION_MSGS::GEELY_LOCATION")
  (make-package "GEELY_LOCATION_MSGS::GEELY_LOCATION"))

(in-package "ROS")
;;//! \htmlinclude Geely_Location.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass geely_location_msgs::Geely_Location
  :super ros::object
  :slots (_time _header _position _pitch _roll _heading _linear_velocity _linear_acceleration _angular_velocity _rtk_flag _odom_type _auxiliary_type _location_valid_flag _origin_lat _origin_lon _utm_position _change_origin_flag _utm_position_next _position_std_dev _orientation_std_dev _linear_velocity_std_dev _linear_acceleration_std_dev _angular_velocity_std_dev ))

(defmethod geely_location_msgs::Geely_Location
  (:init
   (&key
    ((:time __time) 0.0)
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:heading __heading) 0.0)
    ((:linear_velocity __linear_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:rtk_flag __rtk_flag) 0)
    ((:odom_type __odom_type) 0)
    ((:auxiliary_type __auxiliary_type) 0)
    ((:location_valid_flag __location_valid_flag) 0)
    ((:origin_lat __origin_lat) 0.0)
    ((:origin_lon __origin_lon) 0.0)
    ((:utm_position __utm_position) (instance geometry_msgs::Point :init))
    ((:change_origin_flag __change_origin_flag) 0)
    ((:utm_position_next __utm_position_next) (instance geometry_msgs::Point :init))
    ((:position_std_dev __position_std_dev) (instance geometry_msgs::Vector3 :init))
    ((:orientation_std_dev __orientation_std_dev) (instance geometry_msgs::Vector3 :init))
    ((:linear_velocity_std_dev __linear_velocity_std_dev) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration_std_dev __linear_acceleration_std_dev) (instance geometry_msgs::Vector3 :init))
    ((:angular_velocity_std_dev __angular_velocity_std_dev) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _header __header)
   (setq _position __position)
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _heading (float __heading))
   (setq _linear_velocity __linear_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _rtk_flag (round __rtk_flag))
   (setq _odom_type (round __odom_type))
   (setq _auxiliary_type (round __auxiliary_type))
   (setq _location_valid_flag (round __location_valid_flag))
   (setq _origin_lat (float __origin_lat))
   (setq _origin_lon (float __origin_lon))
   (setq _utm_position __utm_position)
   (setq _change_origin_flag (round __change_origin_flag))
   (setq _utm_position_next __utm_position_next)
   (setq _position_std_dev __position_std_dev)
   (setq _orientation_std_dev __orientation_std_dev)
   (setq _linear_velocity_std_dev __linear_velocity_std_dev)
   (setq _linear_acceleration_std_dev __linear_acceleration_std_dev)
   (setq _angular_velocity_std_dev __angular_velocity_std_dev)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:linear_velocity
   (&rest __linear_velocity)
   (if (keywordp (car __linear_velocity))
       (send* _linear_velocity __linear_velocity)
     (progn
       (if __linear_velocity (setq _linear_velocity (car __linear_velocity)))
       _linear_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:rtk_flag
   (&optional __rtk_flag)
   (if __rtk_flag (setq _rtk_flag __rtk_flag)) _rtk_flag)
  (:odom_type
   (&optional __odom_type)
   (if __odom_type (setq _odom_type __odom_type)) _odom_type)
  (:auxiliary_type
   (&optional __auxiliary_type)
   (if __auxiliary_type (setq _auxiliary_type __auxiliary_type)) _auxiliary_type)
  (:location_valid_flag
   (&optional __location_valid_flag)
   (if __location_valid_flag (setq _location_valid_flag __location_valid_flag)) _location_valid_flag)
  (:origin_lat
   (&optional __origin_lat)
   (if __origin_lat (setq _origin_lat __origin_lat)) _origin_lat)
  (:origin_lon
   (&optional __origin_lon)
   (if __origin_lon (setq _origin_lon __origin_lon)) _origin_lon)
  (:utm_position
   (&rest __utm_position)
   (if (keywordp (car __utm_position))
       (send* _utm_position __utm_position)
     (progn
       (if __utm_position (setq _utm_position (car __utm_position)))
       _utm_position)))
  (:change_origin_flag
   (&optional __change_origin_flag)
   (if __change_origin_flag (setq _change_origin_flag __change_origin_flag)) _change_origin_flag)
  (:utm_position_next
   (&rest __utm_position_next)
   (if (keywordp (car __utm_position_next))
       (send* _utm_position_next __utm_position_next)
     (progn
       (if __utm_position_next (setq _utm_position_next (car __utm_position_next)))
       _utm_position_next)))
  (:position_std_dev
   (&rest __position_std_dev)
   (if (keywordp (car __position_std_dev))
       (send* _position_std_dev __position_std_dev)
     (progn
       (if __position_std_dev (setq _position_std_dev (car __position_std_dev)))
       _position_std_dev)))
  (:orientation_std_dev
   (&rest __orientation_std_dev)
   (if (keywordp (car __orientation_std_dev))
       (send* _orientation_std_dev __orientation_std_dev)
     (progn
       (if __orientation_std_dev (setq _orientation_std_dev (car __orientation_std_dev)))
       _orientation_std_dev)))
  (:linear_velocity_std_dev
   (&rest __linear_velocity_std_dev)
   (if (keywordp (car __linear_velocity_std_dev))
       (send* _linear_velocity_std_dev __linear_velocity_std_dev)
     (progn
       (if __linear_velocity_std_dev (setq _linear_velocity_std_dev (car __linear_velocity_std_dev)))
       _linear_velocity_std_dev)))
  (:linear_acceleration_std_dev
   (&rest __linear_acceleration_std_dev)
   (if (keywordp (car __linear_acceleration_std_dev))
       (send* _linear_acceleration_std_dev __linear_acceleration_std_dev)
     (progn
       (if __linear_acceleration_std_dev (setq _linear_acceleration_std_dev (car __linear_acceleration_std_dev)))
       _linear_acceleration_std_dev)))
  (:angular_velocity_std_dev
   (&rest __angular_velocity_std_dev)
   (if (keywordp (car __angular_velocity_std_dev))
       (send* _angular_velocity_std_dev __angular_velocity_std_dev)
     (progn
       (if __angular_velocity_std_dev (setq _angular_velocity_std_dev (car __angular_velocity_std_dev)))
       _angular_velocity_std_dev)))
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _heading
    8
    ;; geometry_msgs/Vector3 _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; int32 _rtk_flag
    4
    ;; int32 _odom_type
    4
    ;; int32 _auxiliary_type
    4
    ;; int32 _location_valid_flag
    4
    ;; float64 _origin_lat
    8
    ;; float64 _origin_lon
    8
    ;; geometry_msgs/Point _utm_position
    (send _utm_position :serialization-length)
    ;; int32 _change_origin_flag
    4
    ;; geometry_msgs/Point _utm_position_next
    (send _utm_position_next :serialization-length)
    ;; geometry_msgs/Vector3 _position_std_dev
    (send _position_std_dev :serialization-length)
    ;; geometry_msgs/Vector3 _orientation_std_dev
    (send _orientation_std_dev :serialization-length)
    ;; geometry_msgs/Vector3 _linear_velocity_std_dev
    (send _linear_velocity_std_dev :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration_std_dev
    (send _linear_acceleration_std_dev :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity_std_dev
    (send _angular_velocity_std_dev :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _linear_velocity
       (send _linear_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; int32 _rtk_flag
       (write-long _rtk_flag s)
     ;; int32 _odom_type
       (write-long _odom_type s)
     ;; int32 _auxiliary_type
       (write-long _auxiliary_type s)
     ;; int32 _location_valid_flag
       (write-long _location_valid_flag s)
     ;; float64 _origin_lat
       (sys::poke _origin_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _origin_lon
       (sys::poke _origin_lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _utm_position
       (send _utm_position :serialize s)
     ;; int32 _change_origin_flag
       (write-long _change_origin_flag s)
     ;; geometry_msgs/Point _utm_position_next
       (send _utm_position_next :serialize s)
     ;; geometry_msgs/Vector3 _position_std_dev
       (send _position_std_dev :serialize s)
     ;; geometry_msgs/Vector3 _orientation_std_dev
       (send _orientation_std_dev :serialize s)
     ;; geometry_msgs/Vector3 _linear_velocity_std_dev
       (send _linear_velocity_std_dev :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration_std_dev
       (send _linear_acceleration_std_dev :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity_std_dev
       (send _angular_velocity_std_dev :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; int32 _rtk_flag
     (setq _rtk_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _odom_type
     (setq _odom_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _auxiliary_type
     (setq _auxiliary_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _location_valid_flag
     (setq _location_valid_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _origin_lat
     (setq _origin_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _origin_lon
     (setq _origin_lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _utm_position
     (send _utm_position :deserialize buf ptr-) (incf ptr- (send _utm_position :serialization-length))
   ;; int32 _change_origin_flag
     (setq _change_origin_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _utm_position_next
     (send _utm_position_next :deserialize buf ptr-) (incf ptr- (send _utm_position_next :serialization-length))
   ;; geometry_msgs/Vector3 _position_std_dev
     (send _position_std_dev :deserialize buf ptr-) (incf ptr- (send _position_std_dev :serialization-length))
   ;; geometry_msgs/Vector3 _orientation_std_dev
     (send _orientation_std_dev :deserialize buf ptr-) (incf ptr- (send _orientation_std_dev :serialization-length))
   ;; geometry_msgs/Vector3 _linear_velocity_std_dev
     (send _linear_velocity_std_dev :deserialize buf ptr-) (incf ptr- (send _linear_velocity_std_dev :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration_std_dev
     (send _linear_acceleration_std_dev :deserialize buf ptr-) (incf ptr- (send _linear_acceleration_std_dev :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity_std_dev
     (send _angular_velocity_std_dev :deserialize buf ptr-) (incf ptr- (send _angular_velocity_std_dev :serialization-length))
   ;;
   self)
  )

(setf (get geely_location_msgs::Geely_Location :md5sum-) "87793f2358c4810e566e37606b1cc817")
(setf (get geely_location_msgs::Geely_Location :datatype-) "geely_location_msgs/Geely_Location")
(setf (get geely_location_msgs::Geely_Location :definition-)
      "# Geely_Location.msg
# /localization/global_fusion/Location/tju 对应的消息类型

# 时间戳
float64 time

# 标准 ROS 头
std_msgs/Header header

# 原始经纬高
# 约定：x=lon, y=lat, z=height（仅占位，不影响UTM使用）
geometry_msgs/Point position

# 姿态（弧度）
float64 pitch
float64 roll
float64 heading

# ENU 速度/加速度/角速度（单位：m/s, m/s^2, rad/s）
geometry_msgs/Vector3 linear_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 angular_velocity

# 状态标志
int32 rtk_flag
int32 odom_type
int32 auxiliary_type
int32 location_valid_flag

# 原点信息
float64 origin_lat
float64 origin_lon

# UTM 位置（m）：x=East, y=North, z=Up
geometry_msgs/Point utm_position

# 原点切换标记与下一帧UTM
int32 change_origin_flag
geometry_msgs/Point utm_position_next

# 各类标准差（Vector3）
geometry_msgs/Vector3 position_std_dev
geometry_msgs/Vector3 orientation_std_dev
geometry_msgs/Vector3 linear_velocity_std_dev
geometry_msgs/Vector3 linear_acceleration_std_dev
geometry_msgs/Vector3 angular_velocity_std_dev

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :geely_location_msgs/Geely_Location "87793f2358c4810e566e37606b1cc817")


