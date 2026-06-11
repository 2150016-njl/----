;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Time)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Time (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TIME")
  (make-package "ROS_INTERFACE::TIME"))

(in-package "ROS")
;;//! \htmlinclude Time.msg.html


(defclass ros_interface::Time
  :super ros::object
  :slots (_sec _nsec ))

(defmethod ros_interface::Time
  (:init
   (&key
    ((:sec __sec) 0)
    ((:nsec __nsec) 0)
    )
   (send-super :init)
   (setq _sec (round __sec))
   (setq _nsec (round __nsec))
   self)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:nsec
   (&optional __nsec)
   (if __nsec (setq _nsec __nsec)) _nsec)
  (:serialization-length
   ()
   (+
    ;; uint32 _sec
    4
    ;; uint32 _nsec
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sec
       (write-long _sec s)
     ;; uint32 _nsec
       (write-long _nsec s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sec
     (setq _sec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _nsec
     (setq _nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::Time :md5sum-) "4771ad66fef816d2e4bead2f45a1cde6")
(setf (get ros_interface::Time :datatype-) "ros_interface/Time")
(setf (get ros_interface::Time :definition-)
      "uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/Time "4771ad66fef816d2e4bead2f45a1cde6")


