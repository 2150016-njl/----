;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PointCloud)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PointCloud (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POINTCLOUD")
  (make-package "ROS_INTERFACE::POINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude PointCloud.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::PointCloud
  :super ros::object
  :slots (_header _frame_id _is_dense _point _measurement_time _width _height ))

(defmethod ros_interface::PointCloud
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_id __frame_id) "")
    ((:is_dense __is_dense) nil)
    ((:point __point) (let (r) (dotimes (i 0) (push (instance ros_interface::PointXYZIRT :init) r)) r))
    ((:measurement_time __measurement_time) 0.0)
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_id (string __frame_id))
   (setq _is_dense __is_dense)
   (setq _point __point)
   (setq _measurement_time (float __measurement_time))
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:is_dense
   (&optional __is_dense)
   (if __is_dense (setq _is_dense __is_dense)) _is_dense)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:measurement_time
   (&optional __measurement_time)
   (if __measurement_time (setq _measurement_time __measurement_time)) _measurement_time)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _frame_id
    4 (length _frame_id)
    ;; bool _is_dense
    1
    ;; ros_interface/PointXYZIRT[] _point
    (apply #'+ (send-all _point :serialization-length)) 4
    ;; float64 _measurement_time
    8
    ;; uint32 _width
    4
    ;; uint32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; bool _is_dense
       (if _is_dense (write-byte -1 s) (write-byte 0 s))
     ;; ros_interface/PointXYZIRT[] _point
     (write-long (length _point) s)
     (dolist (elem _point)
       (send elem :serialize s)
       )
     ;; float64 _measurement_time
       (sys::poke _measurement_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _width
       (write-long _width s)
     ;; uint32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_dense
     (setq _is_dense (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_interface/PointXYZIRT[] _point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point (let (r) (dotimes (i n) (push (instance ros_interface::PointXYZIRT :init) r)) r))
     (dolist (elem- _point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _measurement_time
     (setq _measurement_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::PointCloud :md5sum-) "9aef8e2e76707f6e8f4b50d95d6bdbd3")
(setf (get ros_interface::PointCloud :datatype-) "ros_interface/PointCloud")
(setf (get ros_interface::PointCloud :definition-)
      "Header   header     # 消息头
string   frame_id     # 帧id
bool   is_dense     # True if there are no invalid points
PointXYZIRT[] point # 激光点结构体
float64   measurement_time     # 测量时间
uint32   width     # 激光点宽度
uint32   height     # 激光点高度

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/PointXYZIRT
float64   x     # x//坐标x
float64   y     # y//坐标y
float64   z     # z//坐标z
uint32   intensity     # 反射强度
uint8   ring_id     # 线束ID
uint64   timestamp     # 时间戳

")



(provide :ros_interface/PointCloud "9aef8e2e76707f6e8f4b50d95d6bdbd3")


