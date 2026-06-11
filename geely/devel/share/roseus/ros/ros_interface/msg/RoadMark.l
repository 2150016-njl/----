;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RoadMark)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RoadMark (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ROADMARK")
  (make-package "ROS_INTERFACE::ROADMARK"))

(in-package "ROS")
;;//! \htmlinclude RoadMark.msg.html


(defclass ros_interface::RoadMark
  :super ros::object
  :slots (_longitude_dist _lateral_dist _x _y _z _confidence _type ))

(defmethod ros_interface::RoadMark
  (:init
   (&key
    ((:longitude_dist __longitude_dist) 0.0)
    ((:lateral_dist __lateral_dist) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:confidence __confidence) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _longitude_dist (float __longitude_dist))
   (setq _lateral_dist (float __lateral_dist))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _confidence (float __confidence))
   (setq _type (round __type))
   self)
  (:longitude_dist
   (&optional __longitude_dist)
   (if __longitude_dist (setq _longitude_dist __longitude_dist)) _longitude_dist)
  (:lateral_dist
   (&optional __lateral_dist)
   (if __lateral_dist (setq _lateral_dist __lateral_dist)) _lateral_dist)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float64 _longitude_dist
    8
    ;; float64 _lateral_dist
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _confidence
    8
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _longitude_dist
       (sys::poke _longitude_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_dist
       (sys::poke _lateral_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _longitude_dist
     (setq _longitude_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_dist
     (setq _lateral_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::RoadMark :md5sum-) "1eab58881f87a0f5c354efa8d4f36c41")
(setf (get ros_interface::RoadMark :datatype-) "ros_interface/RoadMark")
(setf (get ros_interface::RoadMark :definition-)
      "float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m
float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m
float64   x     # 质心坐标x
float64   y     # 质心坐标y
float64   z     # 质心坐标z
float64   confidence     # 置信度[0 - 1]
int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字

")



(provide :ros_interface/RoadMark "1eab58881f87a0f5c354efa8d4f36c41")


