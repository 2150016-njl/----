;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Polygon2D)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Polygon2D (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POLYGON2D")
  (make-package "ROS_INTERFACE::POLYGON2D"))

(in-package "ROS")
;;//! \htmlinclude Polygon2D.msg.html


(defclass ros_interface::Polygon2D
  :super ros::object
  :slots (_coordinate_system _points ))

(defmethod ros_interface::Polygon2D
  (:init
   (&key
    ((:coordinate_system __coordinate_system) 0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance ros_interface::Point2D :init) r)) r))
    )
   (send-super :init)
   (setq _coordinate_system (round __coordinate_system))
   (setq _points __points)
   self)
  (:coordinate_system
   (&optional __coordinate_system)
   (if __coordinate_system (setq _coordinate_system __coordinate_system)) _coordinate_system)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; int32 _coordinate_system
    4
    ;; ros_interface/Point2D[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _coordinate_system
       (write-long _coordinate_system s)
     ;; ros_interface/Point2D[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _coordinate_system
     (setq _coordinate_system (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point2D[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance ros_interface::Point2D :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Polygon2D :md5sum-) "6502ad15c82ae1512ab1ce902d5b26df")
(setf (get ros_interface::Polygon2D :datatype-) "ros_interface/Polygon2D")
(setf (get ros_interface::Polygon2D :definition-)
      "int32   coordinate_system     # 坐标系
Point2D[] points # 二维点集

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

")



(provide :ros_interface/Polygon2D "6502ad15c82ae1512ab1ce902d5b26df")


