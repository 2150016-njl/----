;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::StopPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'StopPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::STOPPOINT")
  (make-package "ROS_INTERFACE::STOPPOINT"))

(in-package "ROS")
;;//! \htmlinclude StopPoint.msg.html


(defclass ros_interface::StopPoint
  :super ros::object
  :slots (_point _theta _type _stop_distance ))

(defmethod ros_interface::StopPoint
  (:init
   (&key
    ((:point __point) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    ((:type __type) 0)
    ((:stop_distance __stop_distance) 0.0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _theta (float __theta))
   (setq _type (round __type))
   (setq _stop_distance (float __stop_distance))
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:stop_distance
   (&optional __stop_distance)
   (if __stop_distance (setq _stop_distance __stop_distance)) _stop_distance)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point3D _point
    (send _point :serialization-length)
    ;; float64 _theta
    8
    ;; int8 _type
    1
    ;; float64 _stop_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point3D _point
       (send _point :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _type
       (write-byte _type s)
     ;; float64 _stop_distance
       (sys::poke _stop_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point3D _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float64 _stop_distance
     (setq _stop_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::StopPoint :md5sum-) "0f7f748188c196901f90cc702c2618c4")
(setf (get ros_interface::StopPoint :datatype-) "ros_interface/StopPoint")
(setf (get ros_interface::StopPoint :definition-)
      "Point3D   point     # 点xyz
float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
int8   type     # STOP_TYPE_TERMINAL=0 //目的地终点 STOP_TYPE_JUNCTION=1 //路口停止线
float64   stop_distance     # 距停止点多少米停车

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/StopPoint "0f7f748188c196901f90cc702c2618c4")


