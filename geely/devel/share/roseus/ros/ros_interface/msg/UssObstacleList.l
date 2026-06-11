;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::UssObstacleList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'UssObstacleList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::USSOBSTACLELIST")
  (make-package "ROS_INTERFACE::USSOBSTACLELIST"))

(in-package "ROS")
;;//! \htmlinclude UssObstacleList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::UssObstacleList
  :super ros::object
  :slots (_header _uss_obstacles _uss_ranges _error_code _is_valid ))

(defmethod ros_interface::UssObstacleList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uss_obstacles __uss_obstacles) (let (r) (dotimes (i 0) (push (instance ros_interface::UssObstacle :init) r)) r))
    ((:uss_ranges __uss_ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error_code __error_code) 0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _uss_obstacles __uss_obstacles)
   (setq _uss_ranges __uss_ranges)
   (setq _error_code (round __error_code))
   (setq _is_valid __is_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uss_obstacles
   (&rest __uss_obstacles)
   (if (keywordp (car __uss_obstacles))
       (send* _uss_obstacles __uss_obstacles)
     (progn
       (if __uss_obstacles (setq _uss_obstacles (car __uss_obstacles)))
       _uss_obstacles)))
  (:uss_ranges
   (&optional __uss_ranges)
   (if __uss_ranges (setq _uss_ranges __uss_ranges)) _uss_ranges)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_interface/UssObstacle[] _uss_obstacles
    (apply #'+ (send-all _uss_obstacles :serialization-length)) 4
    ;; float64[] _uss_ranges
    (* 8    (length _uss_ranges)) 4
    ;; int32 _error_code
    4
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_interface/UssObstacle[] _uss_obstacles
     (write-long (length _uss_obstacles) s)
     (dolist (elem _uss_obstacles)
       (send elem :serialize s)
       )
     ;; float64[] _uss_ranges
     (write-long (length _uss_ranges) s)
     (dotimes (i (length _uss_ranges))
       (sys::poke (elt _uss_ranges i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _error_code
       (write-long _error_code s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_interface/UssObstacle[] _uss_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_obstacles (let (r) (dotimes (i n) (push (instance ros_interface::UssObstacle :init) r)) r))
     (dolist (elem- _uss_obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _uss_ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _uss_ranges i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::UssObstacleList :md5sum-) "3c1d8a409b9bf173ccc5987b7e4616b9")
(setf (get ros_interface::UssObstacleList :datatype-) "ros_interface/UssObstacleList")
(setf (get ros_interface::UssObstacleList :definition-)
      "Header   header     # 消息头
UssObstacle[] uss_obstacles # 检测出的超声波障碍物数组
float64[] uss_ranges # 超声波检测的距离数组，存放顺序按照FA,FB,FC,FD,FE,FF,RA,RB,RC,RD,RE,RF
int32   error_code     # 错误码（default = OK）
bool   is_valid     # 超声波障碍物数据是否合法

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
MSG: ros_interface/UssObstacle
Header   header     # timestamp is included in header
int32   uss_obstacle_region     # 超声波障碍物点区域 0-车辆后方区域 1-车辆前方区域 2-车辆右方区域 3-车辆左方区域
float64   mx     # 车体中心坐标系下，超声波障碍物点x坐标
float64   my     # 车体中心坐标系下，超声波障碍物点y坐标

")



(provide :ros_interface/UssObstacleList "3c1d8a409b9bf173ccc5987b7e4616b9")


