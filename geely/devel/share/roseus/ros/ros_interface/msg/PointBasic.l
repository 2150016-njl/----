;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PointBasic)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PointBasic (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POINTBASIC")
  (make-package "ROS_INTERFACE::POINTBASIC"))

(in-package "ROS")
;;//! \htmlinclude PointBasic.msg.html


(defclass ros_interface::PointBasic
  :super ros::object
  :slots (_x _y _z _theta ))

(defmethod ros_interface::PointBasic
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::PointBasic :md5sum-) "a3416018d8343cd7f242efa6d041d5d9")
(setf (get ros_interface::PointBasic :datatype-) "ros_interface/PointBasic")
(setf (get ros_interface::PointBasic :definition-)
      "float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z
float64   theta     # heading(rad)

")



(provide :ros_interface/PointBasic "a3416018d8343cd7f242efa6d041d5d9")


