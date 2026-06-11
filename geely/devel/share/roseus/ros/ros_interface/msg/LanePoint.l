;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LanePoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LanePoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LANEPOINT")
  (make-package "ROS_INTERFACE::LANEPOINT"))

(in-package "ROS")
;;//! \htmlinclude LanePoint.msg.html


(defclass ros_interface::LanePoint
  :super ros::object
  :slots (_point _theta _mileage _limit_speed _left_road_width _right_road_width _left_line_type _right_line_type ))

(defmethod ros_interface::LanePoint
  (:init
   (&key
    ((:point __point) (instance ros_interface::Point3D :init))
    ((:theta __theta) 0.0)
    ((:mileage __mileage) 0.0)
    ((:limit_speed __limit_speed) 0.0)
    ((:left_road_width __left_road_width) 0.0)
    ((:right_road_width __right_road_width) 0.0)
    ((:left_line_type __left_line_type) 0)
    ((:right_line_type __right_line_type) 0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _theta (float __theta))
   (setq _mileage (float __mileage))
   (setq _limit_speed (float __limit_speed))
   (setq _left_road_width (float __left_road_width))
   (setq _right_road_width (float __right_road_width))
   (setq _left_line_type (round __left_line_type))
   (setq _right_line_type (round __right_line_type))
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
  (:mileage
   (&optional __mileage)
   (if __mileage (setq _mileage __mileage)) _mileage)
  (:limit_speed
   (&optional __limit_speed)
   (if __limit_speed (setq _limit_speed __limit_speed)) _limit_speed)
  (:left_road_width
   (&optional __left_road_width)
   (if __left_road_width (setq _left_road_width __left_road_width)) _left_road_width)
  (:right_road_width
   (&optional __right_road_width)
   (if __right_road_width (setq _right_road_width __right_road_width)) _right_road_width)
  (:left_line_type
   (&optional __left_line_type)
   (if __left_line_type (setq _left_line_type __left_line_type)) _left_line_type)
  (:right_line_type
   (&optional __right_line_type)
   (if __right_line_type (setq _right_line_type __right_line_type)) _right_line_type)
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point3D _point
    (send _point :serialization-length)
    ;; float64 _theta
    8
    ;; float64 _mileage
    8
    ;; float64 _limit_speed
    8
    ;; float64 _left_road_width
    8
    ;; float64 _right_road_width
    8
    ;; int32 _left_line_type
    4
    ;; int32 _right_line_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point3D _point
       (send _point :serialize s)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mileage
       (sys::poke _mileage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _limit_speed
       (sys::poke _limit_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_road_width
       (sys::poke _left_road_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_road_width
       (sys::poke _right_road_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _left_line_type
       (write-long _left_line_type s)
     ;; int32 _right_line_type
       (write-long _right_line_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point3D _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mileage
     (setq _mileage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _limit_speed
     (setq _limit_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_road_width
     (setq _left_road_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_road_width
     (setq _right_road_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _left_line_type
     (setq _left_line_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_line_type
     (setq _right_line_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::LanePoint :md5sum-) "b86492a98e6209595aa1050feb0e5d3b")
(setf (get ros_interface::LanePoint :datatype-) "ros_interface/LanePoint")
(setf (get ros_interface::LanePoint :definition-)
      "Point3D   point     # 点xyz
float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
float64   mileage     # 总体里程
float64   limit_speed     # 地图限速（单位m/s）
float64   left_road_width     # 左边车道宽
float64   right_road_width     # 右边车道宽
int32   left_line_type     # 左边车线线型
int32   right_line_type     # 右边车线线型

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/LanePoint "b86492a98e6209595aa1050feb0e5d3b")


