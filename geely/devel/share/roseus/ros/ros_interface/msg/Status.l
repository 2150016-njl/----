;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Status)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Status (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::STATUS")
  (make-package "ROS_INTERFACE::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(defclass ros_interface::Status
  :super ros::object
  :slots (_error_code _msg ))

(defmethod ros_interface::Status
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _msg (string __msg))
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int32 _error_code
    4
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _error_code
       (write-long _error_code s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::Status :md5sum-) "762fba2d8d55ed14d51a08c9479679ed")
(setf (get ros_interface::Status :datatype-) "ros_interface/Status")
(setf (get ros_interface::Status :definition-)
      "int32   error_code     # 错误码
string   msg     # 错误码描述

")



(provide :ros_interface/Status "762fba2d8d55ed14d51a08c9479679ed")


