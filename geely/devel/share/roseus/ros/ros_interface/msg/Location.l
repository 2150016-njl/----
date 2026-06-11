;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Location)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Location (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LOCATION")
  (make-package "ROS_INTERFACE::LOCATION"))

(in-package "ROS")
;;//! \htmlinclude Location.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::Location
  :super ros::object
  :slots (_header _position _pitch _roll _heading _linear_velocity _linear_acceleration _angular_velocity _rtk_flag _odom_type _auxiliary_type _location_valid_flag _origin_lat _origin_lon _utm_position _change_origin_flag _utm_position_next _position_std_dev _orientation_std_dev _linear_velocity_std_dev _linear_acceleration_std_dev _angular_velocity_std_dev ))

(defmethod ros_interface::Location
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:position __position) (instance ros_interface::PointLLH :init))
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:heading __heading) 0.0)
    ((:linear_velocity __linear_velocity) (instance ros_interface::Point3D :init))
    ((:linear_acceleration __linear_acceleration) (instance ros_interface::Point3D :init))
    ((:angular_velocity __angular_velocity) (instance ros_interface::Point3D :init))
    ((:rtk_flag __rtk_flag) 0)
    ((:odom_type __odom_type) 0)
    ((:auxiliary_type __auxiliary_type) 0)
    ((:location_valid_flag __location_valid_flag) 0)
    ((:origin_lat __origin_lat) 0.0)
    ((:origin_lon __origin_lon) 0.0)
    ((:utm_position __utm_position) (instance ros_interface::PointENU :init))
    ((:change_origin_flag __change_origin_flag) 0)
    ((:utm_position_next __utm_position_next) (instance ros_interface::PointENU :init))
    ((:position_std_dev __position_std_dev) (instance ros_interface::Point3D :init))
    ((:orientation_std_dev __orientation_std_dev) (instance ros_interface::Point3D :init))
    ((:linear_velocity_std_dev __linear_velocity_std_dev) (instance ros_interface::Point3D :init))
    ((:linear_acceleration_std_dev __linear_acceleration_std_dev) (instance ros_interface::Point3D :init))
    ((:angular_velocity_std_dev __angular_velocity_std_dev) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/PointLLH _position
    (send _position :serialization-length)
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _heading
    8
    ;; ros_interface/Point3D _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; ros_interface/Point3D _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; ros_interface/Point3D _angular_velocity
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
    ;; ros_interface/PointENU _utm_position
    (send _utm_position :serialization-length)
    ;; int32 _change_origin_flag
    4
    ;; ros_interface/PointENU _utm_position_next
    (send _utm_position_next :serialization-length)
    ;; ros_interface/Point3D _position_std_dev
    (send _position_std_dev :serialization-length)
    ;; ros_interface/Point3D _orientation_std_dev
    (send _orientation_std_dev :serialization-length)
    ;; ros_interface/Point3D _linear_velocity_std_dev
    (send _linear_velocity_std_dev :serialization-length)
    ;; ros_interface/Point3D _linear_acceleration_std_dev
    (send _linear_acceleration_std_dev :serialization-length)
    ;; ros_interface/Point3D _angular_velocity_std_dev
    (send _angular_velocity_std_dev :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/PointLLH _position
       (send _position :serialize s)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _linear_velocity
       (send _linear_velocity :serialize s)
     ;; ros_interface/Point3D _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; ros_interface/Point3D _angular_velocity
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
     ;; ros_interface/PointENU _utm_position
       (send _utm_position :serialize s)
     ;; int32 _change_origin_flag
       (write-long _change_origin_flag s)
     ;; ros_interface/PointENU _utm_position_next
       (send _utm_position_next :serialize s)
     ;; ros_interface/Point3D _position_std_dev
       (send _position_std_dev :serialize s)
     ;; ros_interface/Point3D _orientation_std_dev
       (send _orientation_std_dev :serialize s)
     ;; ros_interface/Point3D _linear_velocity_std_dev
       (send _linear_velocity_std_dev :serialize s)
     ;; ros_interface/Point3D _linear_acceleration_std_dev
       (send _linear_acceleration_std_dev :serialize s)
     ;; ros_interface/Point3D _angular_velocity_std_dev
       (send _angular_velocity_std_dev :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/PointLLH _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; ros_interface/Point3D _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; ros_interface/Point3D _angular_velocity
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
   ;; ros_interface/PointENU _utm_position
     (send _utm_position :deserialize buf ptr-) (incf ptr- (send _utm_position :serialization-length))
   ;; int32 _change_origin_flag
     (setq _change_origin_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/PointENU _utm_position_next
     (send _utm_position_next :deserialize buf ptr-) (incf ptr- (send _utm_position_next :serialization-length))
   ;; ros_interface/Point3D _position_std_dev
     (send _position_std_dev :deserialize buf ptr-) (incf ptr- (send _position_std_dev :serialization-length))
   ;; ros_interface/Point3D _orientation_std_dev
     (send _orientation_std_dev :deserialize buf ptr-) (incf ptr- (send _orientation_std_dev :serialization-length))
   ;; ros_interface/Point3D _linear_velocity_std_dev
     (send _linear_velocity_std_dev :deserialize buf ptr-) (incf ptr- (send _linear_velocity_std_dev :serialization-length))
   ;; ros_interface/Point3D _linear_acceleration_std_dev
     (send _linear_acceleration_std_dev :deserialize buf ptr-) (incf ptr- (send _linear_acceleration_std_dev :serialization-length))
   ;; ros_interface/Point3D _angular_velocity_std_dev
     (send _angular_velocity_std_dev :deserialize buf ptr-) (incf ptr- (send _angular_velocity_std_dev :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::Location :md5sum-) "6b25c2b9af6ab35d68c43d9abb43d342")
(setf (get ros_interface::Location :datatype-) "ros_interface/Location")
(setf (get ros_interface::Location :definition-)
      "Header   header     # 消息头
PointLLH   position     # 经纬度高程
float64   pitch     # 方向(单位弧度，-π～π,正东:0, 逆时针。都满足右手定则)
float64   roll     #  
float64   heading     #  
Point3D   linear_velocity     # 线速度（m/s，北东地坐标系）
Point3D   linear_acceleration     # 线加速度（m/s2，前右下坐标系）
Point3D   angular_velocity     # 角速度（度/s，前右下，满足右手定则）
int32   rtk_flag     # RTK标志值
int32   odom_type     # 融合标志:0-(纯ins) 1-(纯轮速) 2-(泊车递推) 3-(无) 4-(orb匹配定位)
int32   auxiliary_type     # 辅助方式:0-NULL(无辅助方式) 1-laneliine_map(车道线/标识牌)2-feature_map(lidar)3-feature_map(lidar_camera)
int32   location_valid_flag     # Location有效性标志位0: invalid； 1: valid
float64   origin_lat     # 参考点纬度 GCJ-02格式
float64   origin_lon     # 参考点经度 GCJ-02格式
PointENU   utm_position     # 相对参考点xyz坐标
int32   change_origin_flag     # 0::无坐标系切换 1:坐标系切换成功2:坐标系切换中3:坐标系切换故障
PointENU   utm_position_next     # 相对参考点坐标(切换状态下，为新的原点坐标系下)
Point3D   position_std_dev     # 位置标准差
Point3D   orientation_std_dev     # 方向标准差
Point3D   linear_velocity_std_dev     # 速度标准差
Point3D   linear_acceleration_std_dev     # 加速度标准差
Point3D   angular_velocity_std_dev     # 角速度标准差

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
MSG: ros_interface/PointLLH
float64   lon     # Longitude in degrees, ranging from -180 to 180.
float64   lat     # Latitude in degrees, ranging from -90 to 90.
float64   height     # WGS-84 ellipsoid height in meters.

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/PointENU
float64   x     # East from the origin, in meters.
float64   y     # North from the origin, in meters.
float64   z     # Up from the WGS-84 ellipsoid, in meters.

")



(provide :ros_interface/Location "6b25c2b9af6ab35d68c43d9abb43d342")


