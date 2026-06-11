;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::UssObstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'UssObstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::USSOBSTACLE")
  (make-package "ROS_INTERFACE::USSOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude UssObstacle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::UssObstacle
  :super ros::object
  :slots (_header _uss_obstacle_region _mx _my ))

(defmethod ros_interface::UssObstacle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:uss_obstacle_region __uss_obstacle_region) 0)
    ((:mx __mx) 0.0)
    ((:my __my) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _uss_obstacle_region (round __uss_obstacle_region))
   (setq _mx (float __mx))
   (setq _my (float __my))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:uss_obstacle_region
   (&optional __uss_obstacle_region)
   (if __uss_obstacle_region (setq _uss_obstacle_region __uss_obstacle_region)) _uss_obstacle_region)
  (:mx
   (&optional __mx)
   (if __mx (setq _mx __mx)) _mx)
  (:my
   (&optional __my)
   (if __my (setq _my __my)) _my)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _uss_obstacle_region
    4
    ;; float64 _mx
    8
    ;; float64 _my
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _uss_obstacle_region
       (write-long _uss_obstacle_region s)
     ;; float64 _mx
       (sys::poke _mx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _my
       (sys::poke _my (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _uss_obstacle_region
     (setq _uss_obstacle_region (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _mx
     (setq _mx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _my
     (setq _my (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::UssObstacle :md5sum-) "28885f4149edd8055332c3171df14c39")
(setf (get ros_interface::UssObstacle :datatype-) "ros_interface/UssObstacle")
(setf (get ros_interface::UssObstacle :definition-)
      "Header   header     # timestamp is included in header
int32   uss_obstacle_region     # 超声波障碍物点区域 0-车辆后方区域 1-车辆前方区域 2-车辆右方区域 3-车辆左方区域
float64   mx     # 车体中心坐标系下，超声波障碍物点x坐标
float64   my     # 车体中心坐标系下，超声波障碍物点y坐标

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

")



(provide :ros_interface/UssObstacle "28885f4149edd8055332c3171df14c39")


