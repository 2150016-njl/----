;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RouteFusionInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RouteFusionInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ROUTEFUSIONINFO")
  (make-package "ROS_INTERFACE::ROUTEFUSIONINFO"))

(in-package "ROS")
;;//! \htmlinclude RouteFusionInfo.msg.html


(defclass ros_interface::RouteFusionInfo
  :super ros::object
  :slots (_fusion_flag _fusion_reason ))

(defmethod ros_interface::RouteFusionInfo
  (:init
   (&key
    ((:fusion_flag __fusion_flag) 0)
    ((:fusion_reason __fusion_reason) "")
    )
   (send-super :init)
   (setq _fusion_flag (round __fusion_flag))
   (setq _fusion_reason (string __fusion_reason))
   self)
  (:fusion_flag
   (&optional __fusion_flag)
   (if __fusion_flag (setq _fusion_flag __fusion_flag)) _fusion_flag)
  (:fusion_reason
   (&optional __fusion_reason)
   (if __fusion_reason (setq _fusion_reason __fusion_reason)) _fusion_reason)
  (:serialization-length
   ()
   (+
    ;; int32 _fusion_flag
    4
    ;; string _fusion_reason
    4 (length _fusion_reason)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fusion_flag
       (write-long _fusion_flag s)
     ;; string _fusion_reason
       (write-long (length _fusion_reason) s) (princ _fusion_reason s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fusion_flag
     (setq _fusion_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _fusion_reason
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fusion_reason (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::RouteFusionInfo :md5sum-) "272fcd54e54c0a49dcdbc692af0ea8a1")
(setf (get ros_interface::RouteFusionInfo :datatype-) "ros_interface/RouteFusionInfo")
(setf (get ros_interface::RouteFusionInfo :definition-)
      "int32   fusion_flag     # 是否有效标志位
string   fusion_reason     # 融合原因

")



(provide :ros_interface/RouteFusionInfo "272fcd54e54c0a49dcdbc692af0ea8a1")


