;; Auto-generated. Do not edit!


(when (boundp 'interface::Lanes)
  (if (not (find-package "INTERFACE"))
    (make-package "INTERFACE"))
  (shadow 'Lanes (find-package "INTERFACE")))
(unless (find-package "INTERFACE::LANES")
  (make-package "INTERFACE::LANES"))

(in-package "ROS")
;;//! \htmlinclude Lanes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass interface::Lanes
  :super ros::object
  :slots (_header _curr_idx _target_idxes _lanes ))

(defmethod interface::Lanes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:curr_idx __curr_idx) 0)
    ((:target_idxes __target_idxes) (make-array 0 :initial-element 0 :element-type :char))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance interface::Lane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _curr_idx (round __curr_idx))
   (setq _target_idxes __target_idxes)
   (setq _lanes __lanes)
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _curr_idx
    1
    ;; uint8[] _target_idxes
    (* 1    (length _target_idxes)) 4
    ;; interface/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
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
     ;; interface/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
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
   ;; interface/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance interface::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get interface::Lanes :md5sum-) "65d6cd6912b68737ee9f67a1266d243c")
(setf (get interface::Lanes :datatype-) "interface/Lanes")
(setf (get interface::Lanes :definition-)
      "Header header
uint8 curr_idx 
uint8[] target_idxes
Lane[] lanes
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
MSG: interface/Lane
uint8 lane_idx
bool left_traverse_flag 
bool right_traverse_flag
float64 lane_width
")



(provide :interface/Lanes "65d6cd6912b68737ee9f67a1266d243c")


