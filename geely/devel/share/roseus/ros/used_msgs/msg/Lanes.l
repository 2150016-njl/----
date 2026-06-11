;; Auto-generated. Do not edit!


(when (boundp 'used_msgs::Lanes)
  (if (not (find-package "USED_MSGS"))
    (make-package "USED_MSGS"))
  (shadow 'Lanes (find-package "USED_MSGS")))
(unless (find-package "USED_MSGS::LANES")
  (make-package "USED_MSGS::LANES"))

(in-package "ROS")
;;//! \htmlinclude Lanes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass used_msgs::Lanes
  :super ros::object
  :slots (_header _curr_idx _target_idxes _lanes _next_direction _stop_line_dist _junction_status ))

(defmethod used_msgs::Lanes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:curr_idx __curr_idx) 0)
    ((:target_idxes __target_idxes) (make-array 0 :initial-element 0 :element-type :char))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance used_msgs::Lane :init) r)) r))
    ((:next_direction __next_direction) 0)
    ((:stop_line_dist __stop_line_dist) 0.0)
    ((:junction_status __junction_status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _curr_idx (round __curr_idx))
   (setq _target_idxes __target_idxes)
   (setq _lanes __lanes)
   (setq _next_direction (round __next_direction))
   (setq _stop_line_dist (float __stop_line_dist))
   (setq _junction_status __junction_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:curr_idx
   (&optional __curr_idx)
   (if __curr_idx (setq _curr_idx __curr_idx)) _curr_idx)
  (:target_idxes
   (&optional __target_idxes)
   (if __target_idxes (setq _target_idxes __target_idxes)) _target_idxes)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:next_direction
   (&optional __next_direction)
   (if __next_direction (setq _next_direction __next_direction)) _next_direction)
  (:stop_line_dist
   (&optional __stop_line_dist)
   (if __stop_line_dist (setq _stop_line_dist __stop_line_dist)) _stop_line_dist)
  (:junction_status
   (&optional __junction_status)
   (if __junction_status (setq _junction_status __junction_status)) _junction_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _curr_idx
    1
    ;; uint8[] _target_idxes
    (* 1    (length _target_idxes)) 4
    ;; used_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ;; uint8 _next_direction
    1
    ;; float64 _stop_line_dist
    8
    ;; bool _junction_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _curr_idx
       (write-byte _curr_idx s)
     ;; uint8[] _target_idxes
     (write-long (length _target_idxes) s)
     (princ _target_idxes s)
     ;; used_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;; uint8 _next_direction
       (write-byte _next_direction s)
     ;; float64 _stop_line_dist
       (sys::poke _stop_line_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _junction_status
       (if _junction_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _curr_idx
     (setq _curr_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _target_idxes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _target_idxes (make-array n :element-type :char))
     (replace _target_idxes buf :start2 ptr-) (incf ptr- n))
   ;; used_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance used_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _next_direction
     (setq _next_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _stop_line_dist
     (setq _stop_line_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _junction_status
     (setq _junction_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get used_msgs::Lanes :md5sum-) "277b3dcbb1836765123a0af7fb14ea90")
(setf (get used_msgs::Lanes :datatype-) "used_msgs/Lanes")
(setf (get used_msgs::Lanes :definition-)
      "Header header
uint8 curr_idx 
uint8[] target_idxes
Lane[] lanes

# dongfeng
uint8 next_direction
float64 stop_line_dist 
bool junction_status 
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
MSG: used_msgs/Lane
uint8 lane_idx
bool left_traverse_flag 
bool right_traverse_flag
float64 lane_width
")



(provide :used_msgs/Lanes "277b3dcbb1836765123a0af7fb14ea90")


