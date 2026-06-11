;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LaneLineCubicCurve)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LaneLineCubicCurve (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LANELINECUBICCURVE")
  (make-package "ROS_INTERFACE::LANELINECUBICCURVE"))

(in-package "ROS")
;;//! \htmlinclude LaneLineCubicCurve.msg.html


(defclass ros_interface::LaneLineCubicCurve
  :super ros::object
  :slots (_start_x _end_x _a _b _c _d ))

(defmethod ros_interface::LaneLineCubicCurve
  (:init
   (&key
    ((:start_x __start_x) 0.0)
    ((:end_x __end_x) 0.0)
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:d __d) 0.0)
    )
   (send-super :init)
   (setq _start_x (float __start_x))
   (setq _end_x (float __end_x))
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _d (float __d))
   self)
  (:start_x
   (&optional __start_x)
   (if __start_x (setq _start_x __start_x)) _start_x)
  (:end_x
   (&optional __end_x)
   (if __end_x (setq _end_x __end_x)) _end_x)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:d
   (&optional __d)
   (if __d (setq _d __d)) _d)
  (:serialization-length
   ()
   (+
    ;; float64 _start_x
    8
    ;; float64 _end_x
    8
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ;; float64 _d
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _start_x
       (sys::poke _start_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_x
       (sys::poke _end_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d
       (sys::poke _d (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _start_x
     (setq _start_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_x
     (setq _end_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d
     (setq _d (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::LaneLineCubicCurve :md5sum-) "7e94886c488278072d4c339f97356ea0")
(setf (get ros_interface::LaneLineCubicCurve :datatype-) "ros_interface/LaneLineCubicCurve")
(setf (get ros_interface::LaneLineCubicCurve :definition-)
      "float64   start_x     # 车道线起始位置
float64   end_x     # 车道线结束位置
float64   a     # 三次曲线系数
float64   b     #  
float64   c     #  
float64   d     #  

")



(provide :ros_interface/LaneLineCubicCurve "7e94886c488278072d4c339f97356ea0")


