;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Message)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Message (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::MESSAGE")
  (make-package "ROS_INTERFACE::MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Message.msg.html


(defclass ros_interface::Message
  :super ros::object
  :slots (_code _value ))

(defmethod ros_interface::Message
  (:init
   (&key
    ((:code __code) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _code (round __code))
   (setq _value (round __value))
   self)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _code
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _code
       (write-long _code s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::Message :md5sum-) "3029599a805fcfc9721c94ecccb132b2")
(setf (get ros_interface::Message :datatype-) "ros_interface/Message")
(setf (get ros_interface::Message :definition-)
      "int32   code     # 指定需要显示的值的code定义，需要与self_id绑定 作为前缀
int32   value     # 对应显示的值或表达的状态

")



(provide :ros_interface/Message "3029599a805fcfc9721c94ecccb132b2")


