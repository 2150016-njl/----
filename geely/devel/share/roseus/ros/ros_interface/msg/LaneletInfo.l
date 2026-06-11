;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LaneletInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LaneletInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LANELETINFO")
  (make-package "ROS_INTERFACE::LANELETINFO"))

(in-package "ROS")
;;//! \htmlinclude LaneletInfo.msg.html


(defclass ros_interface::LaneletInfo
  :super ros::object
  :slots (_lanelet_id _length ))

(defmethod ros_interface::LaneletInfo
  (:init
   (&key
    ((:lanelet_id __lanelet_id) 0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _lanelet_id (round __lanelet_id))
   (setq _length (float __length))
   self)
  (:lanelet_id
   (&optional __lanelet_id)
   (if __lanelet_id (setq _lanelet_id __lanelet_id)) _lanelet_id)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; int32 _lanelet_id
    4
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lanelet_id
       (write-long _lanelet_id s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lanelet_id
     (setq _lanelet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::LaneletInfo :md5sum-) "8334b4ef7667c6933a33c30277189203")
(setf (get ros_interface::LaneletInfo :datatype-) "ros_interface/LaneletInfo")
(setf (get ros_interface::LaneletInfo :definition-)
      "int32   lanelet_id     # 道路id，与地图文件对应
float64   length     # 道路长度

")



(provide :ros_interface/LaneletInfo "8334b4ef7667c6933a33c30277189203")


