;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::PadMessage)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'PadMessage (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::PADMESSAGE")
  (make-package "ROS_INTERFACE::PADMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude PadMessage.msg.html


(defclass ros_interface::PadMessage
  :super ros::object
  :slots (_cmd ))

(defmethod ros_interface::PadMessage
  (:init
   (&key
    ((:cmd __cmd) "")
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::PadMessage :md5sum-) "43a54fa49066cddcf148717d9d4a6353")
(setf (get ros_interface::PadMessage :datatype-) "ros_interface/PadMessage")
(setf (get ros_interface::PadMessage :definition-)
      "string   cmd     # 命令

")



(provide :ros_interface/PadMessage "43a54fa49066cddcf148717d9d4a6353")


