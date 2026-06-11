;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::SensorCalibrator)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'SensorCalibrator (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::SENSORCALIBRATOR")
  (make-package "ROS_INTERFACE::SENSORCALIBRATOR"))

(in-package "ROS")
;;//! \htmlinclude SensorCalibrator.msg.html


(defclass ros_interface::SensorCalibrator
  :super ros::object
  :slots (_pose _angle ))

(defmethod ros_interface::SensorCalibrator
  (:init
   (&key
    ((:pose __pose) (instance ros_interface::Point3D :init))
    ((:angle __angle) (instance ros_interface::Point3D :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _angle __angle)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:angle
   (&rest __angle)
   (if (keywordp (car __angle))
       (send* _angle __angle)
     (progn
       (if __angle (setq _angle (car __angle)))
       _angle)))
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point3D _pose
    (send _pose :serialization-length)
    ;; ros_interface/Point3D _angle
    (send _angle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point3D _pose
       (send _pose :serialize s)
     ;; ros_interface/Point3D _angle
       (send _angle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point3D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; ros_interface/Point3D _angle
     (send _angle :deserialize buf ptr-) (incf ptr- (send _angle :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::SensorCalibrator :md5sum-) "8973a94a8ceb6b4c6fa358ef1bfb5314")
(setf (get ros_interface::SensorCalibrator :datatype-) "ros_interface/SensorCalibrator")
(setf (get ros_interface::SensorCalibrator :definition-)
      "Point3D   pose     # 传感器安装位置(相对于后轴中心点)
Point3D   angle     # 传感器安装角度(车体坐标系)

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/SensorCalibrator "8973a94a8ceb6b4c6fa358ef1bfb5314")


