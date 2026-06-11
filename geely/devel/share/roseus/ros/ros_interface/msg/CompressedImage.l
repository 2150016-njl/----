;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::CompressedImage)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'CompressedImage (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::COMPRESSEDIMAGE")
  (make-package "ROS_INTERFACE::COMPRESSEDIMAGE"))

(in-package "ROS")
;;//! \htmlinclude CompressedImage.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::CompressedImage
  :super ros::object
  :slots (_header _frame_id _format _data _measurement_time _frame_type ))

(defmethod ros_interface::CompressedImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:frame_id __frame_id) "")
    ((:format __format) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    ((:measurement_time __measurement_time) 0.0)
    ((:frame_type __frame_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _frame_id (string __frame_id))
   (setq _format (string __format))
   (setq _data __data)
   (setq _measurement_time (float __measurement_time))
   (setq _frame_type (round __frame_type))
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
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:measurement_time
   (&optional __measurement_time)
   (if __measurement_time (setq _measurement_time __measurement_time)) _measurement_time)
  (:frame_type
   (&optional __frame_type)
   (if __frame_type (setq _frame_type __frame_type)) _frame_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _frame_id
    4 (length _frame_id)
    ;; string _format
    4 (length _format)
    ;; int8[] _data
    (* 1    (length _data)) 4
    ;; float64 _measurement_time
    8
    ;; uint32 _frame_type
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
     ;; string _format
       (write-long (length _format) s) (princ _format s)
     ;; int8[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;; float64 _measurement_time
       (sys::poke _measurement_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _frame_type
       (write-long _frame_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _format
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _format (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;; float64 _measurement_time
     (setq _measurement_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _frame_type
     (setq _frame_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::CompressedImage :md5sum-) "5a93f7b86266fa4f089718ecd65118d4")
(setf (get ros_interface::CompressedImage :datatype-) "ros_interface/CompressedImage")
(setf (get ros_interface::CompressedImage :definition-)
      "Header   header     # 消息头
string   frame_id     # 图像帧id
string   format     #  Specifies the format of the data Acceptable values: jpeg, png
int8[] data # Compressed image buffer
float64   measurement_time     # 测量时间
uint32   frame_type     # 图像帧类型

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



(provide :ros_interface/CompressedImage "5a93f7b86266fa4f089718ecd65118d4")


