;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Grid)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Grid (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::GRID")
  (make-package "ROS_INTERFACE::GRID"))

(in-package "ROS")
;;//! \htmlinclude Grid.msg.html


(defclass ros_interface::Grid
  :super ros::object
  :slots (_x _y _sl_point _yaw _potential _region_id ))

(defmethod ros_interface::Grid
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:sl_point __sl_point) (instance ros_interface::SLPoint :init))
    ((:yaw __yaw) 0.0)
    ((:potential __potential) 0.0)
    ((:region_id __region_id) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _sl_point __sl_point)
   (setq _yaw (float __yaw))
   (setq _potential (float __potential))
   (setq _region_id (round __region_id))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:sl_point
   (&rest __sl_point)
   (if (keywordp (car __sl_point))
       (send* _sl_point __sl_point)
     (progn
       (if __sl_point (setq _sl_point (car __sl_point)))
       _sl_point)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:potential
   (&optional __potential)
   (if __potential (setq _potential __potential)) _potential)
  (:region_id
   (&optional __region_id)
   (if __region_id (setq _region_id __region_id)) _region_id)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; ros_interface/SLPoint _sl_point
    (send _sl_point :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _potential
    8
    ;; int32 _region_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/SLPoint _sl_point
       (send _sl_point :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _potential
       (sys::poke _potential (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _region_id
       (write-long _region_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/SLPoint _sl_point
     (send _sl_point :deserialize buf ptr-) (incf ptr- (send _sl_point :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _potential
     (setq _potential (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _region_id
     (setq _region_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::Grid :md5sum-) "9568bcb9570b90eb25fe5d5c120e6ee7")
(setf (get ros_interface::Grid :datatype-) "ros_interface/Grid")
(setf (get ros_interface::Grid :definition-)
      "float64   x     # 世界坐标系下的x
float64   y     # 世界坐标系下的y
SLPoint   sl_point     # Frenet坐标系下的x
float64   yaw     #  
float64   potential     # 势场值
int32   region_id     # 区域编号

================================================================================
MSG: ros_interface/SLPoint
float64   s     # 纵向位移
float64   l     # 横向位移

")



(provide :ros_interface/Grid "9568bcb9570b90eb25fe5d5c120e6ee7")


