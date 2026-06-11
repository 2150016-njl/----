;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RadarObstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RadarObstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::RADAROBSTACLE")
  (make-package "ROS_INTERFACE::RADAROBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude RadarObstacle.msg.html


(defclass ros_interface::RadarObstacle
  :super ros::object
  :slots (_id _life_time _relative_position _relative_position_rms _relative_velocity _relative_velocity_rms _relative_acceleration _relative_acceleration_rms _rcs _snr _moving_status _width _length _height _theta _absolute_position _absolute_position_rms _absolute_velocity _absolute_velocity_rms _absolute_acceleration _absolute_acceleration_rms _orientation _orient_rms _yaw _yaw_rms _count _moving_frames_count _status _underpass_probability _overpass_probability _exist_probability _mov_property _track_state _track_type ))

(defmethod ros_interface::RadarObstacle
  (:init
   (&key
    ((:id __id) 0)
    ((:life_time __life_time) 0)
    ((:relative_position __relative_position) (instance ros_interface::Point2D :init))
    ((:relative_position_rms __relative_position_rms) (instance ros_interface::Point2D :init))
    ((:relative_velocity __relative_velocity) (instance ros_interface::Point2D :init))
    ((:relative_velocity_rms __relative_velocity_rms) (instance ros_interface::Point2D :init))
    ((:relative_acceleration __relative_acceleration) (instance ros_interface::Point2D :init))
    ((:relative_acceleration_rms __relative_acceleration_rms) (instance ros_interface::Point2D :init))
    ((:rcs __rcs) 0.0)
    ((:snr __snr) 0.0)
    ((:moving_status __moving_status) 0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    ((:theta __theta) 0.0)
    ((:absolute_position __absolute_position) (instance ros_interface::Point2D :init))
    ((:absolute_position_rms __absolute_position_rms) (instance ros_interface::Point2D :init))
    ((:absolute_velocity __absolute_velocity) (instance ros_interface::Point2D :init))
    ((:absolute_velocity_rms __absolute_velocity_rms) (instance ros_interface::Point2D :init))
    ((:absolute_acceleration __absolute_acceleration) (instance ros_interface::Point2D :init))
    ((:absolute_acceleration_rms __absolute_acceleration_rms) (instance ros_interface::Point2D :init))
    ((:orientation __orientation) 0.0)
    ((:orient_rms __orient_rms) 0.0)
    ((:yaw __yaw) 0.0)
    ((:yaw_rms __yaw_rms) 0.0)
    ((:count __count) 0)
    ((:moving_frames_count __moving_frames_count) 0)
    ((:status __status) (instance ros_interface::Status :init))
    ((:underpass_probability __underpass_probability) 0.0)
    ((:overpass_probability __overpass_probability) 0.0)
    ((:exist_probability __exist_probability) 0)
    ((:mov_property __mov_property) 0)
    ((:track_state __track_state) 0)
    ((:track_type __track_type) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _life_time (round __life_time))
   (setq _relative_position __relative_position)
   (setq _relative_position_rms __relative_position_rms)
   (setq _relative_velocity __relative_velocity)
   (setq _relative_velocity_rms __relative_velocity_rms)
   (setq _relative_acceleration __relative_acceleration)
   (setq _relative_acceleration_rms __relative_acceleration_rms)
   (setq _rcs (float __rcs))
   (setq _snr (float __snr))
   (setq _moving_status (round __moving_status))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _height (float __height))
   (setq _theta (float __theta))
   (setq _absolute_position __absolute_position)
   (setq _absolute_position_rms __absolute_position_rms)
   (setq _absolute_velocity __absolute_velocity)
   (setq _absolute_velocity_rms __absolute_velocity_rms)
   (setq _absolute_acceleration __absolute_acceleration)
   (setq _absolute_acceleration_rms __absolute_acceleration_rms)
   (setq _orientation (float __orientation))
   (setq _orient_rms (float __orient_rms))
   (setq _yaw (float __yaw))
   (setq _yaw_rms (float __yaw_rms))
   (setq _count (round __count))
   (setq _moving_frames_count (round __moving_frames_count))
   (setq _status __status)
   (setq _underpass_probability (float __underpass_probability))
   (setq _overpass_probability (float __overpass_probability))
   (setq _exist_probability (round __exist_probability))
   (setq _mov_property (round __mov_property))
   (setq _track_state (round __track_state))
   (setq _track_type (round __track_type))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:life_time
   (&optional __life_time)
   (if __life_time (setq _life_time __life_time)) _life_time)
  (:relative_position
   (&rest __relative_position)
   (if (keywordp (car __relative_position))
       (send* _relative_position __relative_position)
     (progn
       (if __relative_position (setq _relative_position (car __relative_position)))
       _relative_position)))
  (:relative_position_rms
   (&rest __relative_position_rms)
   (if (keywordp (car __relative_position_rms))
       (send* _relative_position_rms __relative_position_rms)
     (progn
       (if __relative_position_rms (setq _relative_position_rms (car __relative_position_rms)))
       _relative_position_rms)))
  (:relative_velocity
   (&rest __relative_velocity)
   (if (keywordp (car __relative_velocity))
       (send* _relative_velocity __relative_velocity)
     (progn
       (if __relative_velocity (setq _relative_velocity (car __relative_velocity)))
       _relative_velocity)))
  (:relative_velocity_rms
   (&rest __relative_velocity_rms)
   (if (keywordp (car __relative_velocity_rms))
       (send* _relative_velocity_rms __relative_velocity_rms)
     (progn
       (if __relative_velocity_rms (setq _relative_velocity_rms (car __relative_velocity_rms)))
       _relative_velocity_rms)))
  (:relative_acceleration
   (&rest __relative_acceleration)
   (if (keywordp (car __relative_acceleration))
       (send* _relative_acceleration __relative_acceleration)
     (progn
       (if __relative_acceleration (setq _relative_acceleration (car __relative_acceleration)))
       _relative_acceleration)))
  (:relative_acceleration_rms
   (&rest __relative_acceleration_rms)
   (if (keywordp (car __relative_acceleration_rms))
       (send* _relative_acceleration_rms __relative_acceleration_rms)
     (progn
       (if __relative_acceleration_rms (setq _relative_acceleration_rms (car __relative_acceleration_rms)))
       _relative_acceleration_rms)))
  (:rcs
   (&optional __rcs)
   (if __rcs (setq _rcs __rcs)) _rcs)
  (:snr
   (&optional __snr)
   (if __snr (setq _snr __snr)) _snr)
  (:moving_status
   (&optional __moving_status)
   (if __moving_status (setq _moving_status __moving_status)) _moving_status)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:absolute_position
   (&rest __absolute_position)
   (if (keywordp (car __absolute_position))
       (send* _absolute_position __absolute_position)
     (progn
       (if __absolute_position (setq _absolute_position (car __absolute_position)))
       _absolute_position)))
  (:absolute_position_rms
   (&rest __absolute_position_rms)
   (if (keywordp (car __absolute_position_rms))
       (send* _absolute_position_rms __absolute_position_rms)
     (progn
       (if __absolute_position_rms (setq _absolute_position_rms (car __absolute_position_rms)))
       _absolute_position_rms)))
  (:absolute_velocity
   (&rest __absolute_velocity)
   (if (keywordp (car __absolute_velocity))
       (send* _absolute_velocity __absolute_velocity)
     (progn
       (if __absolute_velocity (setq _absolute_velocity (car __absolute_velocity)))
       _absolute_velocity)))
  (:absolute_velocity_rms
   (&rest __absolute_velocity_rms)
   (if (keywordp (car __absolute_velocity_rms))
       (send* _absolute_velocity_rms __absolute_velocity_rms)
     (progn
       (if __absolute_velocity_rms (setq _absolute_velocity_rms (car __absolute_velocity_rms)))
       _absolute_velocity_rms)))
  (:absolute_acceleration
   (&rest __absolute_acceleration)
   (if (keywordp (car __absolute_acceleration))
       (send* _absolute_acceleration __absolute_acceleration)
     (progn
       (if __absolute_acceleration (setq _absolute_acceleration (car __absolute_acceleration)))
       _absolute_acceleration)))
  (:absolute_acceleration_rms
   (&rest __absolute_acceleration_rms)
   (if (keywordp (car __absolute_acceleration_rms))
       (send* _absolute_acceleration_rms __absolute_acceleration_rms)
     (progn
       (if __absolute_acceleration_rms (setq _absolute_acceleration_rms (car __absolute_acceleration_rms)))
       _absolute_acceleration_rms)))
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:orient_rms
   (&optional __orient_rms)
   (if __orient_rms (setq _orient_rms __orient_rms)) _orient_rms)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rms
   (&optional __yaw_rms)
   (if __yaw_rms (setq _yaw_rms __yaw_rms)) _yaw_rms)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:moving_frames_count
   (&optional __moving_frames_count)
   (if __moving_frames_count (setq _moving_frames_count __moving_frames_count)) _moving_frames_count)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:underpass_probability
   (&optional __underpass_probability)
   (if __underpass_probability (setq _underpass_probability __underpass_probability)) _underpass_probability)
  (:overpass_probability
   (&optional __overpass_probability)
   (if __overpass_probability (setq _overpass_probability __overpass_probability)) _overpass_probability)
  (:exist_probability
   (&optional __exist_probability)
   (if __exist_probability (setq _exist_probability __exist_probability)) _exist_probability)
  (:mov_property
   (&optional __mov_property)
   (if __mov_property (setq _mov_property __mov_property)) _mov_property)
  (:track_state
   (&optional __track_state)
   (if __track_state (setq _track_state __track_state)) _track_state)
  (:track_type
   (&optional __track_type)
   (if __track_type (setq _track_type __track_type)) _track_type)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; uint8 _life_time
    1
    ;; ros_interface/Point2D _relative_position
    (send _relative_position :serialization-length)
    ;; ros_interface/Point2D _relative_position_rms
    (send _relative_position_rms :serialization-length)
    ;; ros_interface/Point2D _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; ros_interface/Point2D _relative_velocity_rms
    (send _relative_velocity_rms :serialization-length)
    ;; ros_interface/Point2D _relative_acceleration
    (send _relative_acceleration :serialization-length)
    ;; ros_interface/Point2D _relative_acceleration_rms
    (send _relative_acceleration_rms :serialization-length)
    ;; float64 _rcs
    8
    ;; float64 _snr
    8
    ;; int32 _moving_status
    4
    ;; float64 _width
    8
    ;; float64 _length
    8
    ;; float64 _height
    8
    ;; float64 _theta
    8
    ;; ros_interface/Point2D _absolute_position
    (send _absolute_position :serialization-length)
    ;; ros_interface/Point2D _absolute_position_rms
    (send _absolute_position_rms :serialization-length)
    ;; ros_interface/Point2D _absolute_velocity
    (send _absolute_velocity :serialization-length)
    ;; ros_interface/Point2D _absolute_velocity_rms
    (send _absolute_velocity_rms :serialization-length)
    ;; ros_interface/Point2D _absolute_acceleration
    (send _absolute_acceleration :serialization-length)
    ;; ros_interface/Point2D _absolute_acceleration_rms
    (send _absolute_acceleration_rms :serialization-length)
    ;; float64 _orientation
    8
    ;; float64 _orient_rms
    8
    ;; float64 _yaw
    8
    ;; float64 _yaw_rms
    8
    ;; int32 _count
    4
    ;; int32 _moving_frames_count
    4
    ;; ros_interface/Status _status
    (send _status :serialization-length)
    ;; float64 _underpass_probability
    8
    ;; float64 _overpass_probability
    8
    ;; uint8 _exist_probability
    1
    ;; uint8 _mov_property
    1
    ;; uint8 _track_state
    1
    ;; uint8 _track_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; uint8 _life_time
       (write-byte _life_time s)
     ;; ros_interface/Point2D _relative_position
       (send _relative_position :serialize s)
     ;; ros_interface/Point2D _relative_position_rms
       (send _relative_position_rms :serialize s)
     ;; ros_interface/Point2D _relative_velocity
       (send _relative_velocity :serialize s)
     ;; ros_interface/Point2D _relative_velocity_rms
       (send _relative_velocity_rms :serialize s)
     ;; ros_interface/Point2D _relative_acceleration
       (send _relative_acceleration :serialize s)
     ;; ros_interface/Point2D _relative_acceleration_rms
       (send _relative_acceleration_rms :serialize s)
     ;; float64 _rcs
       (sys::poke _rcs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _snr
       (sys::poke _snr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _moving_status
       (write-long _moving_status s)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point2D _absolute_position
       (send _absolute_position :serialize s)
     ;; ros_interface/Point2D _absolute_position_rms
       (send _absolute_position_rms :serialize s)
     ;; ros_interface/Point2D _absolute_velocity
       (send _absolute_velocity :serialize s)
     ;; ros_interface/Point2D _absolute_velocity_rms
       (send _absolute_velocity_rms :serialize s)
     ;; ros_interface/Point2D _absolute_acceleration
       (send _absolute_acceleration :serialize s)
     ;; ros_interface/Point2D _absolute_acceleration_rms
       (send _absolute_acceleration_rms :serialize s)
     ;; float64 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orient_rms
       (sys::poke _orient_rms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rms
       (sys::poke _yaw_rms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _count
       (write-long _count s)
     ;; int32 _moving_frames_count
       (write-long _moving_frames_count s)
     ;; ros_interface/Status _status
       (send _status :serialize s)
     ;; float64 _underpass_probability
       (sys::poke _underpass_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _overpass_probability
       (sys::poke _overpass_probability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _exist_probability
       (write-byte _exist_probability s)
     ;; uint8 _mov_property
       (write-byte _mov_property s)
     ;; uint8 _track_state
       (write-byte _track_state s)
     ;; uint8 _track_type
       (write-byte _track_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _life_time
     (setq _life_time (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ros_interface/Point2D _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; ros_interface/Point2D _relative_position_rms
     (send _relative_position_rms :deserialize buf ptr-) (incf ptr- (send _relative_position_rms :serialization-length))
   ;; ros_interface/Point2D _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; ros_interface/Point2D _relative_velocity_rms
     (send _relative_velocity_rms :deserialize buf ptr-) (incf ptr- (send _relative_velocity_rms :serialization-length))
   ;; ros_interface/Point2D _relative_acceleration
     (send _relative_acceleration :deserialize buf ptr-) (incf ptr- (send _relative_acceleration :serialization-length))
   ;; ros_interface/Point2D _relative_acceleration_rms
     (send _relative_acceleration_rms :deserialize buf ptr-) (incf ptr- (send _relative_acceleration_rms :serialization-length))
   ;; float64 _rcs
     (setq _rcs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _snr
     (setq _snr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _moving_status
     (setq _moving_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point2D _absolute_position
     (send _absolute_position :deserialize buf ptr-) (incf ptr- (send _absolute_position :serialization-length))
   ;; ros_interface/Point2D _absolute_position_rms
     (send _absolute_position_rms :deserialize buf ptr-) (incf ptr- (send _absolute_position_rms :serialization-length))
   ;; ros_interface/Point2D _absolute_velocity
     (send _absolute_velocity :deserialize buf ptr-) (incf ptr- (send _absolute_velocity :serialization-length))
   ;; ros_interface/Point2D _absolute_velocity_rms
     (send _absolute_velocity_rms :deserialize buf ptr-) (incf ptr- (send _absolute_velocity_rms :serialization-length))
   ;; ros_interface/Point2D _absolute_acceleration
     (send _absolute_acceleration :deserialize buf ptr-) (incf ptr- (send _absolute_acceleration :serialization-length))
   ;; ros_interface/Point2D _absolute_acceleration_rms
     (send _absolute_acceleration_rms :deserialize buf ptr-) (incf ptr- (send _absolute_acceleration_rms :serialization-length))
   ;; float64 _orientation
     (setq _orientation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orient_rms
     (setq _orient_rms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rms
     (setq _yaw_rms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _moving_frames_count
     (setq _moving_frames_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Status _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _underpass_probability
     (setq _underpass_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _overpass_probability
     (setq _overpass_probability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _exist_probability
     (setq _exist_probability (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mov_property
     (setq _mov_property (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _track_state
     (setq _track_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _track_type
     (setq _track_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::RadarObstacle :md5sum-) "d415f3f1097d79c4238ba7b7df30ac73")
(setf (get ros_interface::RadarObstacle :datatype-) "ros_interface/RadarObstacle")
(setf (get ros_interface::RadarObstacle :definition-)
      "int32   id     # obstacle ID.
uint8   life_time     # 障碍物存在时间
Point2D   relative_position     # 雷达坐标系障碍物位置
Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差
Point2D   relative_velocity     # 雷达坐标系障碍物速度
Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差
Point2D   relative_acceleration     # 雷达坐标系障碍物加速度
Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差
float64   rcs     # 雷达散射面积
float64   snr     #  
int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;
float64   width     # 雷达障碍物宽度
float64   length     # 雷达障碍物长度
float64   height     # 雷达障碍物高度
float64   theta     #  
Point2D   absolute_position     # obstacle position in map coordinate system
Point2D   absolute_position_rms     #  
Point2D   absolute_velocity     # obstacle position in map coordinate system
Point2D   absolute_velocity_rms     #  
Point2D   absolute_acceleration     #  
Point2D   absolute_acceleration_rms     #  
float64   orientation     # 雷达障碍物方位角
float64   orient_rms     # 雷达障碍物方位角标准差
float64   yaw     #  
float64   yaw_rms     #  
int32   count     #  
int32   moving_frames_count     #  
Status   status     # 状态码
float64   underpass_probability     #  
float64   overpass_probability     #  
uint8   exist_probability     # 障碍物存在的概率
uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7
uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；
uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

================================================================================
MSG: ros_interface/Status
int32   error_code     # 错误码
string   msg     # 错误码描述

")



(provide :ros_interface/RadarObstacle "d415f3f1097d79c4238ba7b7df30ac73")


