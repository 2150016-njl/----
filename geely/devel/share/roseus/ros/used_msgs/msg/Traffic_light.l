;; Auto-generated. Do not edit!


(when (boundp 'used_msgs::Traffic_light)
  (if (not (find-package "USED_MSGS"))
    (make-package "USED_MSGS"))
  (shadow 'Traffic_light (find-package "USED_MSGS")))
(unless (find-package "USED_MSGS::TRAFFIC_LIGHT")
  (make-package "USED_MSGS::TRAFFIC_LIGHT"))

(in-package "ROS")
;;//! \htmlinclude Traffic_light.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass used_msgs::Traffic_light
  :super ros::object
  :slots (_header _left_light_status _straight_light_status _right_light_status ))

(defmethod used_msgs::Traffic_light
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_light_status __left_light_status) 0)
    ((:straight_light_status __straight_light_status) 0)
    ((:right_light_status __right_light_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_light_status (round __left_light_status))
   (setq _straight_light_status (round __straight_light_status))
   (setq _right_light_status (round __right_light_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_light_status
   (&optional __left_light_status)
   (if __left_light_status (setq _left_light_status __left_light_status)) _left_light_status)
  (:straight_light_status
   (&optional __straight_light_status)
   (if __straight_light_status (setq _straight_light_status __straight_light_status)) _straight_light_status)
  (:right_light_status
   (&optional __right_light_status)
   (if __right_light_status (setq _right_light_status __right_light_status)) _right_light_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _left_light_status
    1
    ;; uint8 _straight_light_status
    1
    ;; uint8 _right_light_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _left_light_status
       (write-byte _left_light_status s)
     ;; uint8 _straight_light_status
       (write-byte _straight_light_status s)
     ;; uint8 _right_light_status
       (write-byte _right_light_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _left_light_status
     (setq _left_light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _straight_light_status
     (setq _straight_light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_light_status
     (setq _right_light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get used_msgs::Traffic_light :md5sum-) "e6c7743f4ef479871efcca7fc31ddd3a")
(setf (get used_msgs::Traffic_light :datatype-) "used_msgs/Traffic_light")
(setf (get used_msgs::Traffic_light :definition-)
      "Header header
uint8 left_light_status
uint8 straight_light_status
uint8 right_light_status
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



(provide :used_msgs/Traffic_light "e6c7743f4ef479871efcca7fc31ddd3a")


