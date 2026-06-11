;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Uncertainty)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Uncertainty (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::UNCERTAINTY")
  (make-package "ROS_INTERFACE::UNCERTAINTY"))

(in-package "ROS")
;;//! \htmlinclude Uncertainty.msg.html


(defclass ros_interface::Uncertainty
  :super ros::object
  :slots (_position_std_dev _orientation_std_dev _linear_velocity_std_dev _linear_acceleration_std_dev _angular_velocity_std_dev ))

(defmethod ros_interface::Uncertainty
  (:init
   (&key
    ((:position_std_dev __position_std_dev) (instance ros_interface::Point3D :init))
    ((:orientation_std_dev __orientation_std_dev) (instance ros_interface::Point3D :init))
    ((:linear_velocity_std_dev __linear_velocity_std_dev) (instance ros_interface::Point3D :init))
    ((:linear_acceleration_std_dev __linear_acceleration_std_dev) (instance ros_interface::Point3D :init))
    ((:angular_velocity_std_dev __angular_velocity_std_dev) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
   (setq _position_std_dev __position_std_dev)
   (setq _orientation_std_dev __orientation_std_dev)
   (setq _linear_velocity_std_dev __linear_velocity_std_dev)
   (setq _linear_acceleration_std_dev __linear_acceleration_std_dev)
   (setq _angular_velocity_std_dev __angular_velocity_std_dev)
   self)
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

(setf (get ros_interface::Uncertainty :md5sum-) "0a26c653df4736501b569f3e3f7250e8")
(setf (get ros_interface::Uncertainty :datatype-) "ros_interface/Uncertainty")
(setf (get ros_interface::Uncertainty :definition-)
      "Point3D   position_std_dev     # Standard deviation of position, east/north/up in meters.
Point3D   orientation_std_dev     # Standard deviation of quaternion qx/qy/qz, unitless.
Point3D   linear_velocity_std_dev     # Standard deviation of linear velocity, east/north/up in meters per second.
Point3D   linear_acceleration_std_dev     # Standard deviation of linear acceleration, right/forward/up in meters per square second.
Point3D   angular_velocity_std_dev     # Standard deviation of angular velocity, right/forward/up in radians per second.

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/Uncertainty "0a26c653df4736501b569f3e3f7250e8")


