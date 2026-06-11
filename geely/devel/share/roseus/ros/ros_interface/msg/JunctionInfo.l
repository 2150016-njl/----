;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::JunctionInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'JunctionInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::JUNCTIONINFO")
  (make-package "ROS_INTERFACE::JUNCTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude JunctionInfo.msg.html


(defclass ros_interface::JunctionInfo
  :super ros::object
  :slots (_id _light_flag _light_color _light_remain_time _distance_to_stop _direction_flag _direction _distance_to_junction _stop_line ))

(defmethod ros_interface::JunctionInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:light_flag __light_flag) 0)
    ((:light_color __light_color) 0)
    ((:light_remain_time __light_remain_time) 0.0)
    ((:distance_to_stop __distance_to_stop) 0.0)
    ((:direction_flag __direction_flag) 0)
    ((:direction __direction) 0)
    ((:distance_to_junction __distance_to_junction) 0.0)
    ((:stop_line __stop_line) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _light_flag (round __light_flag))
   (setq _light_color (round __light_color))
   (setq _light_remain_time (float __light_remain_time))
   (setq _distance_to_stop (float __distance_to_stop))
   (setq _direction_flag (round __direction_flag))
   (setq _direction (round __direction))
   (setq _distance_to_junction (float __distance_to_junction))
   (setq _stop_line __stop_line)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:light_flag
   (&optional __light_flag)
   (if __light_flag (setq _light_flag __light_flag)) _light_flag)
  (:light_color
   (&optional __light_color)
   (if __light_color (setq _light_color __light_color)) _light_color)
  (:light_remain_time
   (&optional __light_remain_time)
   (if __light_remain_time (setq _light_remain_time __light_remain_time)) _light_remain_time)
  (:distance_to_stop
   (&optional __distance_to_stop)
   (if __distance_to_stop (setq _distance_to_stop __distance_to_stop)) _distance_to_stop)
  (:direction_flag
   (&optional __direction_flag)
   (if __direction_flag (setq _direction_flag __direction_flag)) _direction_flag)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:distance_to_junction
   (&optional __distance_to_junction)
   (if __distance_to_junction (setq _distance_to_junction __distance_to_junction)) _distance_to_junction)
  (:stop_line
   (&rest __stop_line)
   (if (keywordp (car __stop_line))
       (send* _stop_line __stop_line)
     (progn
       (if __stop_line (setq _stop_line (car __stop_line)))
       _stop_line)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _light_flag
    4
    ;; int32 _light_color
    4
    ;; float64 _light_remain_time
    8
    ;; float64 _distance_to_stop
    8
    ;; int32 _direction_flag
    4
    ;; int32 _direction
    4
    ;; float64 _distance_to_junction
    8
    ;; ros_interface/Point3D[] _stop_line
    (apply #'+ (send-all _stop_line :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _light_flag
       (write-long _light_flag s)
     ;; int32 _light_color
       (write-long _light_color s)
     ;; float64 _light_remain_time
       (sys::poke _light_remain_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_stop
       (sys::poke _distance_to_stop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _direction_flag
       (write-long _direction_flag s)
     ;; int32 _direction
       (write-long _direction s)
     ;; float64 _distance_to_junction
       (sys::poke _distance_to_junction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Point3D[] _stop_line
     (write-long (length _stop_line) s)
     (dolist (elem _stop_line)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _light_flag
     (setq _light_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _light_color
     (setq _light_color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _light_remain_time
     (setq _light_remain_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_stop
     (setq _distance_to_stop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _direction_flag
     (setq _direction_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance_to_junction
     (setq _distance_to_junction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Point3D[] _stop_line
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_line (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _stop_line)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::JunctionInfo :md5sum-) "c76d6c87c12f4cd2c105a4a2286da681")
(setf (get ros_interface::JunctionInfo :datatype-) "ros_interface/JunctionInfo")
(setf (get ros_interface::JunctionInfo :definition-)
      "int32   id     #  
int32   light_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
int32   light_color     # 信号灯颜色，绿灯可通行，false红灯不能通行
float64   light_remain_time     # 信号灯剩余时间
float64   distance_to_stop     # 停车距离，停止线
int32   direction_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
int32   direction     # 路口通行方向，0：无效、1：左、2：前、3：右
float64   distance_to_junction     # 距路口距离
Point3D[] stop_line # 路口停止线

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/JunctionInfo "c76d6c87c12f4cd2c105a4a2286da681")


