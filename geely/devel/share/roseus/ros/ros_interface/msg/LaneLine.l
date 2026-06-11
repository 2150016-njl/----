;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::LaneLine)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'LaneLine (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::LANELINE")
  (make-package "ROS_INTERFACE::LANELINE"))

(in-package "ROS")
;;//! \htmlinclude LaneLine.msg.html


(defclass ros_interface::LaneLine
  :super ros::object
  :slots (_lane_type _lane_color _pos_type _curve_vehicle _curve_image _curve_abs _pts_vehicle _pts_image _pts_abs _image_end_point _pts_key _hd_lane_id _confidence _lane_quality _fused_lane_type _homography_mat _homography_mat_inv _lane_coordinate_type _use_type _create_time ))

(defmethod ros_interface::LaneLine
  (:init
   (&key
    ((:lane_type __lane_type) 0)
    ((:lane_color __lane_color) 0)
    ((:pos_type __pos_type) 0)
    ((:curve_vehicle __curve_vehicle) (instance ros_interface::LaneLineCubicCurve :init))
    ((:curve_image __curve_image) (instance ros_interface::LaneLineCubicCurve :init))
    ((:curve_abs __curve_abs) (instance ros_interface::LaneLineCubicCurve :init))
    ((:pts_vehicle __pts_vehicle) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:pts_image __pts_image) (let (r) (dotimes (i 0) (push (instance ros_interface::Point2D :init) r)) r))
    ((:pts_abs __pts_abs) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:image_end_point __image_end_point) (instance ros_interface::EndPoints :init))
    ((:pts_key __pts_key) (let (r) (dotimes (i 0) (push (instance ros_interface::Point2D :init) r)) r))
    ((:hd_lane_id __hd_lane_id) 0)
    ((:confidence __confidence) 0.0)
    ((:lane_quality __lane_quality) 0)
    ((:fused_lane_type __fused_lane_type) 0)
    ((:homography_mat __homography_mat) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:homography_mat_inv __homography_mat_inv) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lane_coordinate_type __lane_coordinate_type) 0)
    ((:use_type __use_type) 0)
    ((:create_time __create_time) (instance ros_interface::Time :init))
    )
   (send-super :init)
   (setq _lane_type (round __lane_type))
   (setq _lane_color (round __lane_color))
   (setq _pos_type (round __pos_type))
   (setq _curve_vehicle __curve_vehicle)
   (setq _curve_image __curve_image)
   (setq _curve_abs __curve_abs)
   (setq _pts_vehicle __pts_vehicle)
   (setq _pts_image __pts_image)
   (setq _pts_abs __pts_abs)
   (setq _image_end_point __image_end_point)
   (setq _pts_key __pts_key)
   (setq _hd_lane_id (round __hd_lane_id))
   (setq _confidence (float __confidence))
   (setq _lane_quality (round __lane_quality))
   (setq _fused_lane_type (round __fused_lane_type))
   (setq _homography_mat __homography_mat)
   (setq _homography_mat_inv __homography_mat_inv)
   (setq _lane_coordinate_type (round __lane_coordinate_type))
   (setq _use_type (round __use_type))
   (setq _create_time __create_time)
   self)
  (:lane_type
   (&optional __lane_type)
   (if __lane_type (setq _lane_type __lane_type)) _lane_type)
  (:lane_color
   (&optional __lane_color)
   (if __lane_color (setq _lane_color __lane_color)) _lane_color)
  (:pos_type
   (&optional __pos_type)
   (if __pos_type (setq _pos_type __pos_type)) _pos_type)
  (:curve_vehicle
   (&rest __curve_vehicle)
   (if (keywordp (car __curve_vehicle))
       (send* _curve_vehicle __curve_vehicle)
     (progn
       (if __curve_vehicle (setq _curve_vehicle (car __curve_vehicle)))
       _curve_vehicle)))
  (:curve_image
   (&rest __curve_image)
   (if (keywordp (car __curve_image))
       (send* _curve_image __curve_image)
     (progn
       (if __curve_image (setq _curve_image (car __curve_image)))
       _curve_image)))
  (:curve_abs
   (&rest __curve_abs)
   (if (keywordp (car __curve_abs))
       (send* _curve_abs __curve_abs)
     (progn
       (if __curve_abs (setq _curve_abs (car __curve_abs)))
       _curve_abs)))
  (:pts_vehicle
   (&rest __pts_vehicle)
   (if (keywordp (car __pts_vehicle))
       (send* _pts_vehicle __pts_vehicle)
     (progn
       (if __pts_vehicle (setq _pts_vehicle (car __pts_vehicle)))
       _pts_vehicle)))
  (:pts_image
   (&rest __pts_image)
   (if (keywordp (car __pts_image))
       (send* _pts_image __pts_image)
     (progn
       (if __pts_image (setq _pts_image (car __pts_image)))
       _pts_image)))
  (:pts_abs
   (&rest __pts_abs)
   (if (keywordp (car __pts_abs))
       (send* _pts_abs __pts_abs)
     (progn
       (if __pts_abs (setq _pts_abs (car __pts_abs)))
       _pts_abs)))
  (:image_end_point
   (&rest __image_end_point)
   (if (keywordp (car __image_end_point))
       (send* _image_end_point __image_end_point)
     (progn
       (if __image_end_point (setq _image_end_point (car __image_end_point)))
       _image_end_point)))
  (:pts_key
   (&rest __pts_key)
   (if (keywordp (car __pts_key))
       (send* _pts_key __pts_key)
     (progn
       (if __pts_key (setq _pts_key (car __pts_key)))
       _pts_key)))
  (:hd_lane_id
   (&optional __hd_lane_id)
   (if __hd_lane_id (setq _hd_lane_id __hd_lane_id)) _hd_lane_id)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:lane_quality
   (&optional __lane_quality)
   (if __lane_quality (setq _lane_quality __lane_quality)) _lane_quality)
  (:fused_lane_type
   (&optional __fused_lane_type)
   (if __fused_lane_type (setq _fused_lane_type __fused_lane_type)) _fused_lane_type)
  (:homography_mat
   (&optional __homography_mat)
   (if __homography_mat (setq _homography_mat __homography_mat)) _homography_mat)
  (:homography_mat_inv
   (&optional __homography_mat_inv)
   (if __homography_mat_inv (setq _homography_mat_inv __homography_mat_inv)) _homography_mat_inv)
  (:lane_coordinate_type
   (&optional __lane_coordinate_type)
   (if __lane_coordinate_type (setq _lane_coordinate_type __lane_coordinate_type)) _lane_coordinate_type)
  (:use_type
   (&optional __use_type)
   (if __use_type (setq _use_type __use_type)) _use_type)
  (:create_time
   (&rest __create_time)
   (if (keywordp (car __create_time))
       (send* _create_time __create_time)
     (progn
       (if __create_time (setq _create_time (car __create_time)))
       _create_time)))
  (:serialization-length
   ()
   (+
    ;; int32 _lane_type
    4
    ;; int32 _lane_color
    4
    ;; int32 _pos_type
    4
    ;; ros_interface/LaneLineCubicCurve _curve_vehicle
    (send _curve_vehicle :serialization-length)
    ;; ros_interface/LaneLineCubicCurve _curve_image
    (send _curve_image :serialization-length)
    ;; ros_interface/LaneLineCubicCurve _curve_abs
    (send _curve_abs :serialization-length)
    ;; ros_interface/Point3D[] _pts_vehicle
    (apply #'+ (send-all _pts_vehicle :serialization-length)) 4
    ;; ros_interface/Point2D[] _pts_image
    (apply #'+ (send-all _pts_image :serialization-length)) 4
    ;; ros_interface/Point3D[] _pts_abs
    (apply #'+ (send-all _pts_abs :serialization-length)) 4
    ;; ros_interface/EndPoints _image_end_point
    (send _image_end_point :serialization-length)
    ;; ros_interface/Point2D[] _pts_key
    (apply #'+ (send-all _pts_key :serialization-length)) 4
    ;; uint8 _hd_lane_id
    1
    ;; float64 _confidence
    8
    ;; int32 _lane_quality
    4
    ;; int32 _fused_lane_type
    4
    ;; float64[] _homography_mat
    (* 8    (length _homography_mat)) 4
    ;; float64[] _homography_mat_inv
    (* 8    (length _homography_mat_inv)) 4
    ;; int32 _lane_coordinate_type
    4
    ;; int32 _use_type
    4
    ;; ros_interface/Time _create_time
    (send _create_time :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lane_type
       (write-long _lane_type s)
     ;; int32 _lane_color
       (write-long _lane_color s)
     ;; int32 _pos_type
       (write-long _pos_type s)
     ;; ros_interface/LaneLineCubicCurve _curve_vehicle
       (send _curve_vehicle :serialize s)
     ;; ros_interface/LaneLineCubicCurve _curve_image
       (send _curve_image :serialize s)
     ;; ros_interface/LaneLineCubicCurve _curve_abs
       (send _curve_abs :serialize s)
     ;; ros_interface/Point3D[] _pts_vehicle
     (write-long (length _pts_vehicle) s)
     (dolist (elem _pts_vehicle)
       (send elem :serialize s)
       )
     ;; ros_interface/Point2D[] _pts_image
     (write-long (length _pts_image) s)
     (dolist (elem _pts_image)
       (send elem :serialize s)
       )
     ;; ros_interface/Point3D[] _pts_abs
     (write-long (length _pts_abs) s)
     (dolist (elem _pts_abs)
       (send elem :serialize s)
       )
     ;; ros_interface/EndPoints _image_end_point
       (send _image_end_point :serialize s)
     ;; ros_interface/Point2D[] _pts_key
     (write-long (length _pts_key) s)
     (dolist (elem _pts_key)
       (send elem :serialize s)
       )
     ;; uint8 _hd_lane_id
       (write-byte _hd_lane_id s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _lane_quality
       (write-long _lane_quality s)
     ;; int32 _fused_lane_type
       (write-long _fused_lane_type s)
     ;; float64[] _homography_mat
     (write-long (length _homography_mat) s)
     (dotimes (i (length _homography_mat))
       (sys::poke (elt _homography_mat i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _homography_mat_inv
     (write-long (length _homography_mat_inv) s)
     (dotimes (i (length _homography_mat_inv))
       (sys::poke (elt _homography_mat_inv i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _lane_coordinate_type
       (write-long _lane_coordinate_type s)
     ;; int32 _use_type
       (write-long _use_type s)
     ;; ros_interface/Time _create_time
       (send _create_time :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lane_type
     (setq _lane_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_color
     (setq _lane_color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos_type
     (setq _pos_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/LaneLineCubicCurve _curve_vehicle
     (send _curve_vehicle :deserialize buf ptr-) (incf ptr- (send _curve_vehicle :serialization-length))
   ;; ros_interface/LaneLineCubicCurve _curve_image
     (send _curve_image :deserialize buf ptr-) (incf ptr- (send _curve_image :serialization-length))
   ;; ros_interface/LaneLineCubicCurve _curve_abs
     (send _curve_abs :deserialize buf ptr-) (incf ptr- (send _curve_abs :serialization-length))
   ;; ros_interface/Point3D[] _pts_vehicle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_vehicle (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _pts_vehicle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point2D[] _pts_image
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_image (let (r) (dotimes (i n) (push (instance ros_interface::Point2D :init) r)) r))
     (dolist (elem- _pts_image)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point3D[] _pts_abs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_abs (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _pts_abs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/EndPoints _image_end_point
     (send _image_end_point :deserialize buf ptr-) (incf ptr- (send _image_end_point :serialization-length))
   ;; ros_interface/Point2D[] _pts_key
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_key (let (r) (dotimes (i n) (push (instance ros_interface::Point2D :init) r)) r))
     (dolist (elem- _pts_key)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _hd_lane_id
     (setq _hd_lane_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _lane_quality
     (setq _lane_quality (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fused_lane_type
     (setq _fused_lane_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[] _homography_mat
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _homography_mat (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _homography_mat i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _homography_mat_inv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _homography_mat_inv (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _homography_mat_inv i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; int32 _lane_coordinate_type
     (setq _lane_coordinate_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _use_type
     (setq _use_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Time _create_time
     (send _create_time :deserialize buf ptr-) (incf ptr- (send _create_time :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::LaneLine :md5sum-) "7984d3674f6a82d78f7d9d8a60ded1b8")
(setf (get ros_interface::LaneLine :datatype-) "ros_interface/LaneLine")
(setf (get ros_interface::LaneLine :definition-)
      "int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;
int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;
int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background
LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数
LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数
LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数
Point3D[] pts_vehicle # 车辆坐标系车道线点集
Point2D[] pts_image # 图像坐标系车道线点集
Point3D[] pts_abs # 世界坐标系车道线点集
EndPoints   image_end_point     # 车道线上顶点与下顶点
Point2D[] pts_key # 车道线关键点数组
uint8   hd_lane_id     # 高精车道线id
float64   confidence     # 车道线置信度
int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;
int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3
float64[] homography_mat # 透视变换矩阵
float64[] homography_mat_inv # 透视变换逆矩阵
int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;
int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;
Time   create_time     # 车道线被识别的时间戳

================================================================================
MSG: ros_interface/LaneLineCubicCurve
float64   start_x     # 车道线起始位置
float64   end_x     # 车道线结束位置
float64   a     # 三次曲线系数
float64   b     #  
float64   c     #  
float64   d     #  

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/Point2D
float64   x     # 位置坐标x
float64   y     # 位置坐标y

================================================================================
MSG: ros_interface/EndPoints
Point2D   start     # 车道线上顶点
Point2D   end     # 车道线下顶点

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/LaneLine "7984d3674f6a82d78f7d9d8a60ded1b8")


