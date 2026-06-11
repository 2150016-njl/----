;; Auto-generated. Do not edit!


(when (boundp 'global_route_msgs::Global_route)
  (if (not (find-package "GLOBAL_ROUTE_MSGS"))
    (make-package "GLOBAL_ROUTE_MSGS"))
  (shadow 'Global_route (find-package "GLOBAL_ROUTE_MSGS")))
(unless (find-package "GLOBAL_ROUTE_MSGS::GLOBAL_ROUTE")
  (make-package "GLOBAL_ROUTE_MSGS::GLOBAL_ROUTE"))

(in-package "ROS")
;;//! \htmlinclude Global_route.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass global_route_msgs::Global_route
  :super ros::object
  :slots (_header _routes _target_route_id ))

(defmethod global_route_msgs::Global_route
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:routes __routes) (let (r) (dotimes (i 0) (push (instance global_route_msgs::Route :init) r)) r))
    ((:target_route_id __target_route_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _routes __routes)
   (setq _target_route_id (round __target_route_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:routes
   (&rest __routes)
   (if (keywordp (car __routes))
       (send* _routes __routes)
     (progn
       (if __routes (setq _routes (car __routes)))
       _routes)))
  (:target_route_id
   (&optional __target_route_id)
   (if __target_route_id (setq _target_route_id __target_route_id)) _target_route_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; global_route_msgs/Route[] _routes
    (apply #'+ (send-all _routes :serialization-length)) 4
    ;; int32 _target_route_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; global_route_msgs/Route[] _routes
     (write-long (length _routes) s)
     (dolist (elem _routes)
       (send elem :serialize s)
       )
     ;; int32 _target_route_id
       (write-long _target_route_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; global_route_msgs/Route[] _routes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routes (let (r) (dotimes (i n) (push (instance global_route_msgs::Route :init) r)) r))
     (dolist (elem- _routes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _target_route_id
     (setq _target_route_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get global_route_msgs::Global_route :md5sum-) "f592139074c730b00ce6171d3313b807")
(setf (get global_route_msgs::Global_route :datatype-) "global_route_msgs/Global_route")
(setf (get global_route_msgs::Global_route :definition-)
      "Header header
Route[] routes
int32 target_route_id
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
MSG: global_route_msgs/Route
Route_point[] points
================================================================================
MSG: global_route_msgs/Route_point
float64 x
float64 y

")



(provide :global_route_msgs/Global_route "f592139074c730b00ce6171d3313b807")


