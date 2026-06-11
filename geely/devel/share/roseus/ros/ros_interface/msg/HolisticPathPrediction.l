;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HolisticPathPrediction)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HolisticPathPrediction (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HOLISTICPATHPREDICTION")
  (make-package "ROS_INTERFACE::HOLISTICPATHPREDICTION"))

(in-package "ROS")
;;//! \htmlinclude HolisticPathPrediction.msg.html


(defclass ros_interface::HolisticPathPrediction
  :super ros::object
  :slots (_hpp _planning_source _ego_lane_width _confidence ))

(defmethod ros_interface::HolisticPathPrediction
  (:init
   (&key
    ((:hpp __hpp) (instance ros_interface::LaneLineCubicCurve :init))
    ((:planning_source __planning_source) 0)
    ((:ego_lane_width __ego_lane_width) 0.0)
    ((:confidence __confidence) 0.0)
    )
   (send-super :init)
   (setq _hpp __hpp)
   (setq _planning_source (round __planning_source))
   (setq _ego_lane_width (float __ego_lane_width))
   (setq _confidence (float __confidence))
   self)
  (:hpp
   (&rest __hpp)
   (if (keywordp (car __hpp))
       (send* _hpp __hpp)
     (progn
       (if __hpp (setq _hpp (car __hpp)))
       _hpp)))
  (:planning_source
   (&optional __planning_source)
   (if __planning_source (setq _planning_source __planning_source)) _planning_source)
  (:ego_lane_width
   (&optional __ego_lane_width)
   (if __ego_lane_width (setq _ego_lane_width __ego_lane_width)) _ego_lane_width)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:serialization-length
   ()
   (+
    ;; ros_interface/LaneLineCubicCurve _hpp
    (send _hpp :serialization-length)
    ;; int32 _planning_source
    4
    ;; float64 _ego_lane_width
    8
    ;; float64 _confidence
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/LaneLineCubicCurve _hpp
       (send _hpp :serialize s)
     ;; int32 _planning_source
       (write-long _planning_source s)
     ;; float64 _ego_lane_width
       (sys::poke _ego_lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/LaneLineCubicCurve _hpp
     (send _hpp :deserialize buf ptr-) (incf ptr- (send _hpp :serialization-length))
   ;; int32 _planning_source
     (setq _planning_source (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _ego_lane_width
     (setq _ego_lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::HolisticPathPrediction :md5sum-) "4a3802277f8181f1f0dd82eebaecee41")
(setf (get ros_interface::HolisticPathPrediction :datatype-) "ros_interface/HolisticPathPrediction")
(setf (get ros_interface::HolisticPathPrediction :definition-)
      "LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；
int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测
float64   ego_lane_width     # 自车道宽度
float64   confidence     # 置信度[0 - 1]

================================================================================
MSG: ros_interface/LaneLineCubicCurve
float64   start_x     # 车道线起始位置
float64   end_x     # 车道线结束位置
float64   a     # 三次曲线系数
float64   b     #  
float64   c     #  
float64   d     #  

")



(provide :ros_interface/HolisticPathPrediction "4a3802277f8181f1f0dd82eebaecee41")


