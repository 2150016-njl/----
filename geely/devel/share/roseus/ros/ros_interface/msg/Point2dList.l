;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Point2dList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Point2dList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::POINT2DLIST")
  (make-package "ROS_INTERFACE::POINT2DLIST"))

(in-package "ROS")
;;//! \htmlinclude Point2dList.msg.html


(defclass ros_interface::Point2dList
  :super ros::object
  :slots (_point2d_list ))

(defmethod ros_interface::Point2dList
  (:init
   (&key
    ((:point2d_list __point2d_list) (let (r) (dotimes (i 0) (push (instance ros_interface::Point2D :init) r)) r))
    )
   (send-super :init)
   (setq _point2d_list __point2d_list)
   self)
  (:point2d_list
   (&rest __point2d_list)
   (if (keywordp (car __point2d_list))
       (send* _point2d_list __point2d_list)
     (progn
       (if __point2d_list (setq _point2d_list (car __point2d_list)))
       _point2d_list)))
  (:serialization-length
   ()
   (+
    ;; ros_interface/Point2D[] _point2d_list
    (apply #'+ (send-all _point2d_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/Point2D[] _point2d_list
     (write-long (length _point2d_list) s)
     (dolist (elem _point2d_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/Point2D[] _point2d_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point2d_list (let (r) (dotimes (i n) (push (instance ros_interface::Point2D :init) r)) r))
     (dolist (elem- _point2d_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Point2dList :md5sum-) "9206e603a48b83293989b183293e1078")
(setf (get ros_interface::Point2dList :datatype-) "ros_interface/Point2dList")
(setf (get ros_interface::Point2dList :definition-)
      "Point2D[] point2d_list #  

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

")



(provide :ros_interface/Point2dList "9206e603a48b83293989b183293e1078")


