;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::EStop)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'EStop (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ESTOP")
  (make-package "ROS_INTERFACE::ESTOP"))

(in-package "ROS")
;;//! \htmlinclude EStop.msg.html


(defclass ros_interface::EStop
  :super ros::object
  :slots (_is_estop _reason ))

(defmethod ros_interface::EStop
  (:init
   (&key
    ((:is_estop __is_estop) nil)
    ((:reason __reason) "")
    )
   (send-super :init)
   (setq _is_estop __is_estop)
   (setq _reason (string __reason))
   self)
  (:is_estop
   (&optional __is_estop)
   (if __is_estop (setq _is_estop __is_estop)) _is_estop)
  (:reason
   (&optional __reason)
   (if __reason (setq _reason __reason)) _reason)
  (:serialization-length
   ()
   (+
    ;; bool _is_estop
    1
    ;; string _reason
    4 (length _reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_estop
       (if _is_estop (write-byte -1 s) (write-byte 0 s))
     ;; string _reason
       (write-long (length _reason) s) (princ _reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_estop
     (setq _is_estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::EStop :md5sum-) "1804e173ea92364152391f5149646cf2")
(setf (get ros_interface::EStop :datatype-) "ros_interface/EStop")
(setf (get ros_interface::EStop :definition-)
      "bool   is_estop     # is_estop == true when emergency stop is required
string   reason     # 原因

")



(provide :ros_interface/EStop "1804e173ea92364152391f5149646cf2")


