;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrafficLightDebug)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrafficLightDebug (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAFFICLIGHTDEBUG")
  (make-package "ROS_INTERFACE::TRAFFICLIGHTDEBUG"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDebug.msg.html


(defclass ros_interface::TrafficLightDebug
  :super ros::object
  :slots (_cropbox _box _signal_num _valid_pos _ts_diff_pos _ts_diff_sys _project_error _distance_to_stop_line _camera_id _crop_roi _projected_roi _rectified_roi _debug_roi ))

(defmethod ros_interface::TrafficLightDebug
  (:init
   (&key
    ((:cropbox __cropbox) (instance ros_interface::TrafficLightBox :init))
    ((:box __box) (let (r) (dotimes (i 0) (push (instance ros_interface::TrafficLightBox :init) r)) r))
    ((:signal_num __signal_num) 0)
    ((:valid_pos __valid_pos) 0)
    ((:ts_diff_pos __ts_diff_pos) 0.0)
    ((:ts_diff_sys __ts_diff_sys) 0.0)
    ((:project_error __project_error) 0)
    ((:distance_to_stop_line __distance_to_stop_line) 0.0)
    ((:camera_id __camera_id) 0)
    ((:crop_roi __crop_roi) (let (r) (dotimes (i 0) (push (instance ros_interface::TrafficLightBox :init) r)) r))
    ((:projected_roi __projected_roi) (let (r) (dotimes (i 0) (push (instance ros_interface::TrafficLightBox :init) r)) r))
    ((:rectified_roi __rectified_roi) (let (r) (dotimes (i 0) (push (instance ros_interface::TrafficLightBox :init) r)) r))
    ((:debug_roi __debug_roi) (let (r) (dotimes (i 0) (push (instance ros_interface::TrafficLightBox :init) r)) r))
    )
   (send-super :init)
   (setq _cropbox __cropbox)
   (setq _box __box)
   (setq _signal_num (round __signal_num))
   (setq _valid_pos (round __valid_pos))
   (setq _ts_diff_pos (float __ts_diff_pos))
   (setq _ts_diff_sys (float __ts_diff_sys))
   (setq _project_error (round __project_error))
   (setq _distance_to_stop_line (float __distance_to_stop_line))
   (setq _camera_id (round __camera_id))
   (setq _crop_roi __crop_roi)
   (setq _projected_roi __projected_roi)
   (setq _rectified_roi __rectified_roi)
   (setq _debug_roi __debug_roi)
   self)
  (:cropbox
   (&rest __cropbox)
   (if (keywordp (car __cropbox))
       (send* _cropbox __cropbox)
     (progn
       (if __cropbox (setq _cropbox (car __cropbox)))
       _cropbox)))
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:signal_num
   (&optional __signal_num)
   (if __signal_num (setq _signal_num __signal_num)) _signal_num)
  (:valid_pos
   (&optional __valid_pos)
   (if __valid_pos (setq _valid_pos __valid_pos)) _valid_pos)
  (:ts_diff_pos
   (&optional __ts_diff_pos)
   (if __ts_diff_pos (setq _ts_diff_pos __ts_diff_pos)) _ts_diff_pos)
  (:ts_diff_sys
   (&optional __ts_diff_sys)
   (if __ts_diff_sys (setq _ts_diff_sys __ts_diff_sys)) _ts_diff_sys)
  (:project_error
   (&optional __project_error)
   (if __project_error (setq _project_error __project_error)) _project_error)
  (:distance_to_stop_line
   (&optional __distance_to_stop_line)
   (if __distance_to_stop_line (setq _distance_to_stop_line __distance_to_stop_line)) _distance_to_stop_line)
  (:camera_id
   (&optional __camera_id)
   (if __camera_id (setq _camera_id __camera_id)) _camera_id)
  (:crop_roi
   (&rest __crop_roi)
   (if (keywordp (car __crop_roi))
       (send* _crop_roi __crop_roi)
     (progn
       (if __crop_roi (setq _crop_roi (car __crop_roi)))
       _crop_roi)))
  (:projected_roi
   (&rest __projected_roi)
   (if (keywordp (car __projected_roi))
       (send* _projected_roi __projected_roi)
     (progn
       (if __projected_roi (setq _projected_roi (car __projected_roi)))
       _projected_roi)))
  (:rectified_roi
   (&rest __rectified_roi)
   (if (keywordp (car __rectified_roi))
       (send* _rectified_roi __rectified_roi)
     (progn
       (if __rectified_roi (setq _rectified_roi (car __rectified_roi)))
       _rectified_roi)))
  (:debug_roi
   (&rest __debug_roi)
   (if (keywordp (car __debug_roi))
       (send* _debug_roi __debug_roi)
     (progn
       (if __debug_roi (setq _debug_roi (car __debug_roi)))
       _debug_roi)))
  (:serialization-length
   ()
   (+
    ;; ros_interface/TrafficLightBox _cropbox
    (send _cropbox :serialization-length)
    ;; ros_interface/TrafficLightBox[] _box
    (apply #'+ (send-all _box :serialization-length)) 4
    ;; int32 _signal_num
    4
    ;; int32 _valid_pos
    4
    ;; float64 _ts_diff_pos
    8
    ;; float64 _ts_diff_sys
    8
    ;; int32 _project_error
    4
    ;; float64 _distance_to_stop_line
    8
    ;; int32 _camera_id
    4
    ;; ros_interface/TrafficLightBox[] _crop_roi
    (apply #'+ (send-all _crop_roi :serialization-length)) 4
    ;; ros_interface/TrafficLightBox[] _projected_roi
    (apply #'+ (send-all _projected_roi :serialization-length)) 4
    ;; ros_interface/TrafficLightBox[] _rectified_roi
    (apply #'+ (send-all _rectified_roi :serialization-length)) 4
    ;; ros_interface/TrafficLightBox[] _debug_roi
    (apply #'+ (send-all _debug_roi :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_interface/TrafficLightBox _cropbox
       (send _cropbox :serialize s)
     ;; ros_interface/TrafficLightBox[] _box
     (write-long (length _box) s)
     (dolist (elem _box)
       (send elem :serialize s)
       )
     ;; int32 _signal_num
       (write-long _signal_num s)
     ;; int32 _valid_pos
       (write-long _valid_pos s)
     ;; float64 _ts_diff_pos
       (sys::poke _ts_diff_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ts_diff_sys
       (sys::poke _ts_diff_sys (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _project_error
       (write-long _project_error s)
     ;; float64 _distance_to_stop_line
       (sys::poke _distance_to_stop_line (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _camera_id
       (write-long _camera_id s)
     ;; ros_interface/TrafficLightBox[] _crop_roi
     (write-long (length _crop_roi) s)
     (dolist (elem _crop_roi)
       (send elem :serialize s)
       )
     ;; ros_interface/TrafficLightBox[] _projected_roi
     (write-long (length _projected_roi) s)
     (dolist (elem _projected_roi)
       (send elem :serialize s)
       )
     ;; ros_interface/TrafficLightBox[] _rectified_roi
     (write-long (length _rectified_roi) s)
     (dolist (elem _rectified_roi)
       (send elem :serialize s)
       )
     ;; ros_interface/TrafficLightBox[] _debug_roi
     (write-long (length _debug_roi) s)
     (dolist (elem _debug_roi)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_interface/TrafficLightBox _cropbox
     (send _cropbox :deserialize buf ptr-) (incf ptr- (send _cropbox :serialization-length))
   ;; ros_interface/TrafficLightBox[] _box
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box (let (r) (dotimes (i n) (push (instance ros_interface::TrafficLightBox :init) r)) r))
     (dolist (elem- _box)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _signal_num
     (setq _signal_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _valid_pos
     (setq _valid_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _ts_diff_pos
     (setq _ts_diff_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ts_diff_sys
     (setq _ts_diff_sys (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _project_error
     (setq _project_error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance_to_stop_line
     (setq _distance_to_stop_line (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _camera_id
     (setq _camera_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/TrafficLightBox[] _crop_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _crop_roi (let (r) (dotimes (i n) (push (instance ros_interface::TrafficLightBox :init) r)) r))
     (dolist (elem- _crop_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrafficLightBox[] _projected_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _projected_roi (let (r) (dotimes (i n) (push (instance ros_interface::TrafficLightBox :init) r)) r))
     (dolist (elem- _projected_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrafficLightBox[] _rectified_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rectified_roi (let (r) (dotimes (i n) (push (instance ros_interface::TrafficLightBox :init) r)) r))
     (dolist (elem- _rectified_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/TrafficLightBox[] _debug_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _debug_roi (let (r) (dotimes (i n) (push (instance ros_interface::TrafficLightBox :init) r)) r))
     (dolist (elem- _debug_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_interface::TrafficLightDebug :md5sum-) "f6bafdc05f8e0cd03dd05affb896f154")
(setf (get ros_interface::TrafficLightDebug :datatype-) "ros_interface/TrafficLightDebug")
(setf (get ros_interface::TrafficLightDebug :definition-)
      "TrafficLightBox   cropbox     #  
TrafficLightBox[] box #  
int32   signal_num     #  
int32   valid_pos     #  
float64   ts_diff_pos     #  
float64   ts_diff_sys     #  
int32   project_error     #  
float64   distance_to_stop_line     #  
int32   camera_id     #  
TrafficLightBox[] crop_roi #  
TrafficLightBox[] projected_roi #  
TrafficLightBox[] rectified_roi #  
TrafficLightBox[] debug_roi #  

================================================================================
MSG: ros_interface/TrafficLightBox
int32   x     # 交通灯目标在图像上中心点横向方向像素位置
int32   y     # 交通灯目标在图像上中心点纵向方向像素位置
int32   width     # 交通灯目标在图像上宽度
int32   height     # 交通灯目标在图像上高度
int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
bool   selected     # 是否选择
string   camera_name     # 相机名称

")



(provide :ros_interface/TrafficLightDebug "f6bafdc05f8e0cd03dd05affb896f154")


