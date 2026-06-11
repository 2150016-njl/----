;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::VehicleState)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'VehicleState (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::VEHICLESTATE")
  (make-package "ROS_INTERFACE::VEHICLESTATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::VehicleState
  :super ros::object
  :slots (_header _x _y _z _timestamp _roll _pitch _yaw _heading _kappa _linear_velocity _angular_velocity _linear_acceleration _gear _driving_mode _pose _front_steering_value _rear_steering_value ))

(defmethod ros_interface::VehicleState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:timestamp __timestamp) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:heading __heading) 0.0)
    ((:kappa __kappa) 0.0)
    ((:linear_velocity __linear_velocity) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:linear_acceleration __linear_acceleration) 0.0)
    ((:gear __gear) 0)
    ((:driving_mode __driving_mode) 0)
    ((:pose __pose) (instance ros_interface::Pose :init))
    ((:front_steering_value __front_steering_value) 0.0)
    ((:rear_steering_value __rear_steering_value) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _timestamp (float __timestamp))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _heading (float __heading))
   (setq _kappa (float __kappa))
   (setq _linear_velocity (float __linear_velocity))
   (setq _angular_velocity (float __angular_velocity))
   (setq _linear_acceleration (float __linear_acceleration))
   (setq _gear (round __gear))
   (setq _driving_mode (round __driving_mode))
   (setq _pose __pose)
   (setq _front_steering_value (float __front_steering_value))
   (setq _rear_steering_value (float __rear_steering_value))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:linear_velocity
   (&optional __linear_velocity)
   (if __linear_velocity (setq _linear_velocity __linear_velocity)) _linear_velocity)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:linear_acceleration
   (&optional __linear_acceleration)
   (if __linear_acceleration (setq _linear_acceleration __linear_acceleration)) _linear_acceleration)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:front_steering_value
   (&optional __front_steering_value)
   (if __front_steering_value (setq _front_steering_value __front_steering_value)) _front_steering_value)
  (:rear_steering_value
   (&optional __rear_steering_value)
   (if __rear_steering_value (setq _rear_steering_value __rear_steering_value)) _rear_steering_value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _timestamp
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _heading
    8
    ;; float64 _kappa
    8
    ;; float64 _linear_velocity
    8
    ;; float64 _angular_velocity
    8
    ;; float64 _linear_acceleration
    8
    ;; int32 _gear
    4
    ;; int32 _driving_mode
    4
    ;; ros_interface/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _front_steering_value
    8
    ;; float64 _rear_steering_value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kappa
       (sys::poke _kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_velocity
       (sys::poke _linear_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration
       (sys::poke _linear_acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _gear
       (write-long _gear s)
     ;; int32 _driving_mode
       (write-long _driving_mode s)
     ;; ros_interface/Pose _pose
       (send _pose :serialize s)
     ;; float64 _front_steering_value
       (sys::poke _front_steering_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rear_steering_value
       (sys::poke _rear_steering_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kappa
     (setq _kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_velocity
     (setq _linear_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration
     (setq _linear_acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _front_steering_value
     (setq _front_steering_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rear_steering_value
     (setq _rear_steering_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::VehicleState :md5sum-) "08d2c2b080782b21d4ad592ab6471a80")
(setf (get ros_interface::VehicleState :datatype-) "ros_interface/VehicleState")
(setf (get ros_interface::VehicleState :definition-)
      "Header   header     #  
float64   x     #  
float64   y     #  
float64   z     #  
float64   timestamp     #  
float64   roll     #  
float64   pitch     #  
float64   yaw     #  
float64   heading     #  
float64   kappa     #  
float64   linear_velocity     #  
float64   angular_velocity     #  
float64   linear_acceleration     #  
int32   gear     #  
int32   driving_mode     #  
Pose   pose     #  
float64   front_steering_value     #  
float64   rear_steering_value     #  

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
MSG: ros_interface/Pose
PointENU   position     # Position of the vehicle reference point (VRP) in the map reference frame.   The VRP is the center of rear axle.
Quaternion   orientation     # A quaternion that represents the rotation from the IMU coordinate (Right/Forward/Up) to the world coordinate (East/North/Up).
Point3D   linear_velocity     # Linear velocity of the VRP in the map reference frame.East/north/up in meters per second.
Point3D   linear_acceleration     # Linear acceleration of the VRP in the map reference frame. East/north/up in meters per square second.
Point3D   angular_velocity     # Angular velocity of the vehicle in the map reference frame.Around east/north/up axes in radians per second.
float64   heading     # The heading is zero when the car is facing East and positive when facing North
Point3D   linear_acceleration_vrf     # Linear acceleration of the VRP in the vehicle reference frame.Right/forward/up in meters per square second.
Point3D   angular_velocity_vrf     # Angular velocity of the VRP in the vehicle reference frame. Around right/forward/up axes in radians per second.
Point3D   euler_angles     # // Roll/pitch/yaw that represents a rotation with intrinsic sequence z-x-y.   // in world coordinate (East/North/Up)   // The roll, in (-pi/2, pi/2), corresponds to a rotation around the y-axis.   // The pitch, in [-pi, pi), corresponds to a rotation around the x-axis.   // The yaw, in [-pi, pi), corresponds to a rotation around the z-axis.   // The direction of rotation follows the right-hand rule.

================================================================================
MSG: ros_interface/PointENU
float64   x     # East from the origin, in meters.
float64   y     # North from the origin, in meters.
float64   z     # Up from the WGS-84 ellipsoid, in meters.

================================================================================
MSG: ros_interface/Quaternion
float64   qx     # 四维空间x
float64   qy     # 四维空间y
float64   qz     # 四维空间z
float64   qw     # 四维空间w

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/VehicleState "08d2c2b080782b21d4ad592ab6471a80")


