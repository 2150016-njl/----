;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIDiagnosticStatus)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIDiagnosticStatus (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIDIAGNOSTICSTATUS")
  (make-package "ROS_INTERFACE::HMIDIAGNOSTICSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HMIDiagnosticStatus.msg.html


(defclass ros_interface::HMIDiagnosticStatus
  :super ros::object
  :slots (_id _level _name _message _hardware_id ))

(defmethod ros_interface::HMIDiagnosticStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:level __level) 0)
    ((:name __name) "")
    ((:message __message) "")
    ((:hardware_id __hardware_id) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _level (round __level))
   (setq _name (string __name))
   (setq _message (string __message))
   (setq _hardware_id (string __hardware_id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:hardware_id
   (&optional __hardware_id)
   (if __hardware_id (setq _hardware_id __hardware_id)) _hardware_id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _level
    4
    ;; string _name
    4 (length _name)
    ;; string _message
    4 (length _message)
    ;; string _hardware_id
    4 (length _hardware_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _level
       (write-long _level s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string _hardware_id
       (write-long (length _hardware_id) s) (princ _hardware_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _level
     (setq _level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _hardware_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hardware_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::HMIDiagnosticStatus :md5sum-) "857f32f3eaa106a1f8ebfcfe253beedb")
(setf (get ros_interface::HMIDiagnosticStatus :datatype-) "ros_interface/HMIDiagnosticStatus")
(setf (get ros_interface::HMIDiagnosticStatus :definition-)
      "int32   id     #  
int32   level     # // 诊断状态
string   name     # //测试/组件报告的描述
string   message     # // 状态描述
string   hardware_id     # // 硬件的唯一描述

")



(provide :ros_interface/HMIDiagnosticStatus "857f32f3eaa106a1f8ebfcfe253beedb")


