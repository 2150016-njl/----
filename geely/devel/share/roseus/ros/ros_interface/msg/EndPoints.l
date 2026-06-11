;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::EndPoints)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'EndPoints (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::ENDPOINTS")
  (make-package "ROS_INTERFACE::ENDPOINTS"))

(in-package "ROS")
;;//! \htmlinclude EndPoints.msg.html


(defclass ros_interface::EndPoints
  :super ros::object
  :slots (_start _end ))

(defmethod ros_interface::EndPoints
  (:init
   (&key
    ((:start __start) (instance ros_interface::Point2D :init))
    ((:end __end) (instance ros_interface::Point2D :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point2D _start
    (send _start :serialization-length)
    ;; ros_interface/Point2D _end
    (send _end :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point2D _start
       (send _start :serialize s)
     ;; ros_interface/Point2D _end
       (send _end :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point2D _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; ros_interface/Point2D _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::EndPoints :md5sum-) "485e3b7bfcfe5392ca8833381629557b")
(setf (get ros_interface::EndPoints :datatype-) "ros_interface/EndPoints")
(setf (get ros_interface::EndPoints :definition-)
      "Point2D   start     # 车道线上顶点
Point2D   end     # 车道线下顶点

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

")



(provide :ros_interface/EndPoints "485e3b7bfcfe5392ca8833381629557b")


