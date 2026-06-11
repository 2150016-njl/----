;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RoutingRequest)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RoutingRequest (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ROUTINGREQUEST")
  (make-package "ROS_INTERFACE::ROUTINGREQUEST"))

(in-package "ROS")
;;//! \htmlinclude RoutingRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::RoutingRequest
  :super ros::object
  :slots (_header _request_source _request_type _num_of_kp _key_point_list ))

(defmethod ros_interface::RoutingRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_source __request_source) "")
    ((:request_type __request_type) 0)
    ((:num_of_kp __num_of_kp) 0)
    ((:key_point_list __key_point_list) (let (r) (dotimes (i 0) (push (instance ros_interface::KeyPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_source (string __request_source))
   (setq _request_type (round __request_type))
   (setq _num_of_kp (round __num_of_kp))
   (setq _key_point_list __key_point_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request_source
   (&optional __request_source)
   (if __request_source (setq _request_source __request_source)) _request_source)
  (:request_type
   (&optional __request_type)
   (if __request_type (setq _request_type __request_type)) _request_type)
  (:num_of_kp
   (&optional __num_of_kp)
   (if __num_of_kp (setq _num_of_kp __num_of_kp)) _num_of_kp)
  (:key_point_list
   (&rest __key_point_list)
   (if (keywordp (car __key_point_list))
       (send* _key_point_list __key_point_list)
     (progn
       (if __key_point_list (setq _key_point_list (car __key_point_list)))
       _key_point_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _request_source
    4 (length _request_source)
    ;; int8 _request_type
    1
    ;; int16 _num_of_kp
    2
    ;; ros_interface/KeyPoint[] _key_point_list
    (apply #'+ (send-all _key_point_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _request_source
       (write-long (length _request_source) s) (princ _request_source s)
     ;; int8 _request_type
       (write-byte _request_type s)
     ;; int16 _num_of_kp
       (write-word _num_of_kp s)
     ;; ros_interface/KeyPoint[] _key_point_list
     (write-long (length _key_point_list) s)
     (dolist (elem _key_point_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _request_source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _request_type
     (setq _request_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _request_type 127) (setq _request_type (- _request_type 256)))
   ;; int16 _num_of_kp
     (setq _num_of_kp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ros_interface/KeyPoint[] _key_point_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _key_point_list (let (r) (dotimes (i n) (push (instance ros_interface::KeyPoint :init) r)) r))
     (dolist (elem- _key_point_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::RoutingRequest :md5sum-) "1771a80ac13a976ae23dbca9cd7f5386")
(setf (get ros_interface::RoutingRequest :datatype-) "ros_interface/RoutingRequest")
(setf (get ros_interface::RoutingRequest :definition-)
      "Header   header     # timestamp is included in header
string   request_source     # 发起请求的来源名称
int8   request_type     # REQUEST_TYPE=0//无效 REQUEST_TYPE=1//正常路由 REQUEST_TYPE=2//泊车路由
int16   num_of_kp     # 关键点数量
KeyPoint[] key_point_list # 关键点列表，第一个为起点，最后一个为终点，中间为途经点

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
MSG: ros_interface/KeyPoint
int16   id     # 关键点id
float64   latitude     # 关键点纬度
float64   longitude     # 关键点经度
float64   ele     # 关键点海拔
float64   heading     # 关键点航向角（与北方向夹角，顺时针方向为正，单位为°）
string   name     # 关键点名称

")



(provide :ros_interface/RoutingRequest "1771a80ac13a976ae23dbca9cd7f5386")


