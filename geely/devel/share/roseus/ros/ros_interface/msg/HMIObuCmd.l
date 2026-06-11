;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIObuCmd)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIObuCmd (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIOBUCMD")
  (make-package "ROS_INTERFACE::HMIOBUCMD"))

(in-package "ROS")
;;//! \htmlinclude HMIObuCmd.msg.html


(defclass ros_interface::HMIObuCmd
  :super ros::object
  :slots (_code _val ))

(defmethod ros_interface::HMIObuCmd
  (:init
   (&key
    ((:code __code) 0)
    ((:val __val) 0)
    )
   (send-super :init)
   (setq _code (round __code))
   (setq _val (round __val))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:val
   (&optional __val)
   (if __val (setq _val __val)) _val)
  (:serialization-length
   ()
   (+
    ;; int32 _code
    4
    ;; int32 _val
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _code
       (write-long _code s)
     ;; int32 _val
       (write-long _val s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _val
     (setq _val (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::HMIObuCmd :md5sum-) "91ea1945ea9eb75814f68563f19c738f")
(setf (get ros_interface::HMIObuCmd :datatype-) "ros_interface/HMIObuCmd")
(setf (get ros_interface::HMIObuCmd :definition-)
      "int32   code     # 指令编码：10001、自动驾驶使能开关；
int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）

")



(provide :ros_interface/HMIObuCmd "91ea1945ea9eb75814f68563f19c738f")


