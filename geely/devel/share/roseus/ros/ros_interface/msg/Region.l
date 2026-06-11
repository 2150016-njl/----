;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::Region)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'Region (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::REGION")
  (make-package "ROS_INTERFACE::REGION"))

(in-package "ROS")
;;//! \htmlinclude Region.msg.html


(defclass ros_interface::Region
  :super ros::object
  :slots (_name_region _score _rank_risk _region_polygon ))

(defmethod ros_interface::Region
  (:init
   (&key
    ((:name_region __name_region) 0)
    ((:score __score) 0.0)
    ((:rank_risk __rank_risk) 0)
    ((:region_polygon __region_polygon) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    )
   (send-super :init)
   (setq _name_region (round __name_region))
   (setq _score (float __score))
   (setq _rank_risk (round __rank_risk))
   (setq _region_polygon __region_polygon)
   self)
  (:name_region
   (&optional __name_region)
   (if __name_region (setq _name_region __name_region)) _name_region)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:rank_risk
   (&optional __rank_risk)
   (if __rank_risk (setq _rank_risk __rank_risk)) _rank_risk)
  (:region_polygon
   (&rest __region_polygon)
   (if (keywordp (car __region_polygon))
       (send* _region_polygon __region_polygon)
     (progn
       (if __region_polygon (setq _region_polygon (car __region_polygon)))
       _region_polygon)))
  (:serialization-length
   ()
   (+
    ;; int32 _name_region
    4
    ;; float64 _score
    8
    ;; int32 _rank_risk
    4
    ;; ros_interface/Point3D[] _region_polygon
    (apply #'+ (send-all _region_polygon :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _name_region
       (write-long _name_region s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _rank_risk
       (write-long _rank_risk s)
     ;; ros_interface/Point3D[] _region_polygon
     (write-long (length _region_polygon) s)
     (dolist (elem _region_polygon)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _name_region
     (setq _name_region (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _rank_risk
     (setq _rank_risk (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D[] _region_polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _region_polygon (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _region_polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::Region :md5sum-) "e67108b17f0dbf5c3d9cd0e59ac3108e")
(setf (get ros_interface::Region :datatype-) "ros_interface/Region")
(setf (get ros_interface::Region :definition-)
      "int32   name_region     # 前后左右区域
float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)
int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)
Point3D[] region_polygon # 世界坐标系下的区域多边形

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/Region "e67108b17f0dbf5c3d9cd0e59ac3108e")


