;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Pose)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Pose (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POSE")
  (make-package "ROS_INTERFACE::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html


(defclass ros_interface::Pose
  :super ros::object
  :slots (_position _orientation _linear_velocity _linear_acceleration _angular_velocity _heading _linear_acceleration_vrf _angular_velocity_vrf _euler_angles ))

(defmethod ros_interface::Pose
  (:init
   (&key
    ((:position __position) (instance ros_interface::PointENU :init))
    ((:orientation __orientation) (instance ros_interface::Quaternion :init))
    ((:linear_velocity __linear_velocity) (instance ros_interface::Point3D :init))
    ((:linear_acceleration __linear_acceleration) (instance ros_interface::Point3D :init))
    ((:angular_velocity __angular_velocity) (instance ros_interface::Point3D :init))
    ((:heading __heading) 0.0)
    ((:linear_acceleration_vrf __linear_acceleration_vrf) (instance ros_interface::Point3D :init))
    ((:angular_velocity_vrf __angular_velocity_vrf) (instance ros_interface::Point3D :init))
    ((:euler_angles __euler_angles) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _linear_velocity __linear_velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _angular_velocity __angular_velocity)
   (setq _heading (float __heading))
   (setq _linear_acceleration_vrf __linear_acceleration_vrf)
   (setq _angular_velocity_vrf __angular_velocity_vrf)
   (setq _euler_angles __euler_angles)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
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
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:linear_acceleration_vrf
   (&rest __linear_acceleration_vrf)
   (if (keywordp (car __linear_acceleration_vrf))
       (send* _linear_acceleration_vrf __linear_acceleration_vrf)
     (progn
       (if __linear_acceleration_vrf (setq _linear_acceleration_vrf (car __linear_acceleration_vrf)))
       _linear_acceleration_vrf)))
  (:angular_velocity_vrf
   (&rest __angular_velocity_vrf)
   (if (keywordp (car __angular_velocity_vrf))
       (send* _angular_velocity_vrf __angular_velocity_vrf)
     (progn
       (if __angular_velocity_vrf (setq _angular_velocity_vrf (car __angular_velocity_vrf)))
       _angular_velocity_vrf)))
  (:euler_angles
   (&rest __euler_angles)
   (if (keywordp (car __euler_angles))
       (send* _euler_angles __euler_angles)
     (progn
       (if __euler_angles (setq _euler_angles (car __euler_angles)))
       _euler_angles)))
  (:serialization-length
   ()
   (+
    ;; ros_interface/PointENU _position
    (send _position :serialization-length)
    ;; ros_interface/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; ros_interface/Point3D _linear_velocity
    (send _linear_velocity :serialization-length)
    ;; ros_interface/Point3D _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; ros_interface/Point3D _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; float64 _heading
    8
    ;; ros_interface/Point3D _linear_acceleration_vrf
    (send _linear_acceleration_vrf :serialization-length)
    ;; ros_interface/Point3D _angular_velocity_vrf
    (send _angular_velocity_vrf :serialization-length)
    ;; ros_interface/Point3D _euler_angles
    (send _euler_angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/PointENU _position
       (send _position :serialize s)
     ;; ros_interface/Quaternion _orientation
       (send _orientation :serialize s)
     ;; ros_interface/Point3D _linear_velocity
       (send _linear_velocity :serialize s)
     ;; ros_interface/Point3D _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; ros_interface/Point3D _angular_velocity
       (send _angular_velocity :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D _linear_acceleration_vrf
       (send _linear_acceleration_vrf :serialize s)
     ;; ros_interface/Point3D _angular_velocity_vrf
       (send _angular_velocity_vrf :serialize s)
     ;; ros_interface/Point3D _euler_angles
       (send _euler_angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/PointENU _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ros_interface/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; ros_interface/Point3D _linear_velocity
     (send _linear_velocity :deserialize buf ptr-) (incf ptr- (send _linear_velocity :serialization-length))
   ;; ros_interface/Point3D _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; ros_interface/Point3D _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D _linear_acceleration_vrf
     (send _linear_acceleration_vrf :deserialize buf ptr-) (incf ptr- (send _linear_acceleration_vrf :serialization-length))
   ;; ros_interface/Point3D _angular_velocity_vrf
     (send _angular_velocity_vrf :deserialize buf ptr-) (incf ptr- (send _angular_velocity_vrf :serialization-length))
   ;; ros_interface/Point3D _euler_angles
     (send _euler_angles :deserialize buf ptr-) (incf ptr- (send _euler_angles :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::Pose :md5sum-) "0c21debd869f05bb5d743b9f76884b06")
(setf (get ros_interface::Pose :datatype-) "ros_interface/Pose")
(setf (get ros_interface::Pose :definition-)
      "PointENU   position     # Position of the vehicle reference point (VRP) in the map reference frame.   The VRP is the center of rear axle.
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



(provide :ros_interface/Pose "0c21debd869f05bb5d743b9f76884b06")


