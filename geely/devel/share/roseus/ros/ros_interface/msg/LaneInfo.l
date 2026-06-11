;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LaneInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LaneInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LANEINFO")
  (make-package "ROS_INTERFACE::LANEINFO"))

(in-package "ROS")
;;//! \htmlinclude LaneInfo.msg.html


(defclass ros_interface::LaneInfo
  :super ros::object
  :slots (_priority _global_id _predecessor_id _successor_id _left_neighbor_id _right_neighbor_id _type _lane_points ))

(defmethod ros_interface::LaneInfo
  (:init
   (&key
    ((:priority __priority) 0)
    ((:global_id __global_id) 0)
    ((:predecessor_id __predecessor_id) 0)
    ((:successor_id __successor_id) 0)
    ((:left_neighbor_id __left_neighbor_id) 0)
    ((:right_neighbor_id __right_neighbor_id) 0)
    ((:type __type) 0)
    ((:lane_points __lane_points) (let (r) (dotimes (i 0) (push (instance ros_interface::LanePoint :init) r)) r))
    )
   (send-super :init)
   (setq _priority (round __priority))
   (setq _global_id (round __global_id))
   (setq _predecessor_id (round __predecessor_id))
   (setq _successor_id (round __successor_id))
   (setq _left_neighbor_id (round __left_neighbor_id))
   (setq _right_neighbor_id (round __right_neighbor_id))
   (setq _type (round __type))
   (setq _lane_points __lane_points)
   self)
  (:priority
   (&optional __priority)
   (if __priority (setq _priority __priority)) _priority)
  (:global_id
   (&optional __global_id)
   (if __global_id (setq _global_id __global_id)) _global_id)
  (:predecessor_id
   (&optional __predecessor_id)
   (if __predecessor_id (setq _predecessor_id __predecessor_id)) _predecessor_id)
  (:successor_id
   (&optional __successor_id)
   (if __successor_id (setq _successor_id __successor_id)) _successor_id)
  (:left_neighbor_id
   (&optional __left_neighbor_id)
   (if __left_neighbor_id (setq _left_neighbor_id __left_neighbor_id)) _left_neighbor_id)
  (:right_neighbor_id
   (&optional __right_neighbor_id)
   (if __right_neighbor_id (setq _right_neighbor_id __right_neighbor_id)) _right_neighbor_id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:lane_points
   (&rest __lane_points)
   (if (keywordp (car __lane_points))
       (send* _lane_points __lane_points)
     (progn
       (if __lane_points (setq _lane_points (car __lane_points)))
       _lane_points)))
  (:serialization-length
   ()
   (+
    ;; int8 _priority
    1
    ;; int8 _global_id
    1
    ;; int8 _predecessor_id
    1
    ;; int8 _successor_id
    1
    ;; int8 _left_neighbor_id
    1
    ;; int8 _right_neighbor_id
    1
    ;; int8 _type
    1
    ;; ros_interface/LanePoint[] _lane_points
    (apply #'+ (send-all _lane_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _priority
       (write-byte _priority s)
     ;; int8 _global_id
       (write-byte _global_id s)
     ;; int8 _predecessor_id
       (write-byte _predecessor_id s)
     ;; int8 _successor_id
       (write-byte _successor_id s)
     ;; int8 _left_neighbor_id
       (write-byte _left_neighbor_id s)
     ;; int8 _right_neighbor_id
       (write-byte _right_neighbor_id s)
     ;; int8 _type
       (write-byte _type s)
     ;; ros_interface/LanePoint[] _lane_points
     (write-long (length _lane_points) s)
     (dolist (elem _lane_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _priority
     (setq _priority (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _priority 127) (setq _priority (- _priority 256)))
   ;; int8 _global_id
     (setq _global_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _global_id 127) (setq _global_id (- _global_id 256)))
   ;; int8 _predecessor_id
     (setq _predecessor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _predecessor_id 127) (setq _predecessor_id (- _predecessor_id 256)))
   ;; int8 _successor_id
     (setq _successor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _successor_id 127) (setq _successor_id (- _successor_id 256)))
   ;; int8 _left_neighbor_id
     (setq _left_neighbor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _left_neighbor_id 127) (setq _left_neighbor_id (- _left_neighbor_id 256)))
   ;; int8 _right_neighbor_id
     (setq _right_neighbor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _right_neighbor_id 127) (setq _right_neighbor_id (- _right_neighbor_id 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; ros_interface/LanePoint[] _lane_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_points (let (r) (dotimes (i n) (push (instance ros_interface::LanePoint :init) r)) r))
     (dolist (elem- _lane_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::LaneInfo :md5sum-) "0ef29114104627b60d3c8213d422ab75")
(setf (get ros_interface::LaneInfo :datatype-) "ros_interface/LaneInfo")
(setf (get ros_interface::LaneInfo :definition-)
      "int8   priority     # 道路优先级
int8   global_id     # 道路全局id（从左至右，从0开始）
int8 predecessor_id # 上一车道id
int8 successor_id # 下一车道id
int8 left_neighbor_id # 左边相邻车道id
int8 right_neighbor_id # 右边相邻车道id
int8   type     # 类型（预留）
LanePoint[] lane_points # 道路参考线（z）

================================================================================
MSG: ros_interface/LanePoint
Point3D   point     # 点xyz
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



(provide :ros_interface/LaneInfo "0ef29114104627b60d3c8213d422ab75")


