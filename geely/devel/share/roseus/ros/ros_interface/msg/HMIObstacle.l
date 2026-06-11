;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIObstacle)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIObstacle (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIOBSTACLE")
  (make-package "ROS_INTERFACE::HMIOBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude HMIObstacle.msg.html


(defclass ros_interface::HMIObstacle
  :super ros::object
  :slots (_id _center_pos_vehicle _center_pos_abs _points_vehicle _points_abs _theta_vehicle _theta_abs _length _width _height _type _confidence _confidence_type _sub_type _cipv_flag ))

(defmethod ros_interface::HMIObstacle
  (:init
   (&key
    ((:id __id) 0)
    ((:center_pos_vehicle __center_pos_vehicle) (instance ros_interface::Point3D :init))
    ((:center_pos_abs __center_pos_abs) (instance ros_interface::Point3D :init))
    ((:points_vehicle __points_vehicle) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:points_abs __points_abs) (let (r) (dotimes (i 0) (push (instance ros_interface::Point3D :init) r)) r))
    ((:theta_vehicle __theta_vehicle) 0.0)
    ((:theta_abs __theta_abs) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:type __type) 0)
    ((:confidence __confidence) 0.0)
    ((:confidence_type __confidence_type) 0)
    ((:sub_type __sub_type) 0)
    ((:cipv_flag __cipv_flag) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _center_pos_vehicle __center_pos_vehicle)
   (setq _center_pos_abs __center_pos_abs)
   (setq _points_vehicle __points_vehicle)
   (setq _points_abs __points_abs)
   (setq _theta_vehicle (float __theta_vehicle))
   (setq _theta_abs (float __theta_abs))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _type (round __type))
   (setq _confidence (float __confidence))
   (setq _confidence_type (round __confidence_type))
   (setq _sub_type (round __sub_type))
   (setq _cipv_flag (round __cipv_flag))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:center_pos_vehicle
   (&rest __center_pos_vehicle)
   (if (keywordp (car __center_pos_vehicle))
       (send* _center_pos_vehicle __center_pos_vehicle)
     (progn
       (if __center_pos_vehicle (setq _center_pos_vehicle (car __center_pos_vehicle)))
       _center_pos_vehicle)))
  (:center_pos_abs
   (&rest __center_pos_abs)
   (if (keywordp (car __center_pos_abs))
       (send* _center_pos_abs __center_pos_abs)
     (progn
       (if __center_pos_abs (setq _center_pos_abs (car __center_pos_abs)))
       _center_pos_abs)))
  (:points_vehicle
   (&rest __points_vehicle)
   (if (keywordp (car __points_vehicle))
       (send* _points_vehicle __points_vehicle)
     (progn
       (if __points_vehicle (setq _points_vehicle (car __points_vehicle)))
       _points_vehicle)))
  (:points_abs
   (&rest __points_abs)
   (if (keywordp (car __points_abs))
       (send* _points_abs __points_abs)
     (progn
       (if __points_abs (setq _points_abs (car __points_abs)))
       _points_abs)))
  (:theta_vehicle
   (&optional __theta_vehicle)
   (if __theta_vehicle (setq _theta_vehicle __theta_vehicle)) _theta_vehicle)
  (:theta_abs
   (&optional __theta_abs)
   (if __theta_abs (setq _theta_abs __theta_abs)) _theta_abs)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:confidence_type
   (&optional __confidence_type)
   (if __confidence_type (setq _confidence_type __confidence_type)) _confidence_type)
  (:sub_type
   (&optional __sub_type)
   (if __sub_type (setq _sub_type __sub_type)) _sub_type)
  (:cipv_flag
   (&optional __cipv_flag)
   (if __cipv_flag (setq _cipv_flag __cipv_flag)) _cipv_flag)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; ros_interface/Point3D _center_pos_vehicle
    (send _center_pos_vehicle :serialization-length)
    ;; ros_interface/Point3D _center_pos_abs
    (send _center_pos_abs :serialization-length)
    ;; ros_interface/Point3D[] _points_vehicle
    (apply #'+ (send-all _points_vehicle :serialization-length)) 4
    ;; ros_interface/Point3D[] _points_abs
    (apply #'+ (send-all _points_abs :serialization-length)) 4
    ;; float64 _theta_vehicle
    8
    ;; float64 _theta_abs
    8
    ;; float64 _length
    8
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; int32 _type
    4
    ;; float64 _confidence
    8
    ;; int32 _confidence_type
    4
    ;; int32 _sub_type
    4
    ;; uint8 _cipv_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; ros_interface/Point3D _center_pos_vehicle
       (send _center_pos_vehicle :serialize s)
     ;; ros_interface/Point3D _center_pos_abs
       (send _center_pos_abs :serialize s)
     ;; ros_interface/Point3D[] _points_vehicle
     (write-long (length _points_vehicle) s)
     (dolist (elem _points_vehicle)
       (send elem :serialize s)
       )
     ;; ros_interface/Point3D[] _points_abs
     (write-long (length _points_abs) s)
     (dolist (elem _points_abs)
       (send elem :serialize s)
       )
     ;; float64 _theta_vehicle
       (sys::poke _theta_vehicle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_abs
       (sys::poke _theta_abs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _type
       (write-long _type s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _confidence_type
       (write-long _confidence_type s)
     ;; int32 _sub_type
       (write-long _sub_type s)
     ;; uint8 _cipv_flag
       (write-byte _cipv_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/Point3D _center_pos_vehicle
     (send _center_pos_vehicle :deserialize buf ptr-) (incf ptr- (send _center_pos_vehicle :serialization-length))
   ;; ros_interface/Point3D _center_pos_abs
     (send _center_pos_abs :deserialize buf ptr-) (incf ptr- (send _center_pos_abs :serialization-length))
   ;; ros_interface/Point3D[] _points_vehicle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_vehicle (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _points_vehicle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_interface/Point3D[] _points_abs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_abs (let (r) (dotimes (i n) (push (instance ros_interface::Point3D :init) r)) r))
     (dolist (elem- _points_abs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _theta_vehicle
     (setq _theta_vehicle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_abs
     (setq _theta_abs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _confidence_type
     (setq _confidence_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sub_type
     (setq _sub_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _cipv_flag
     (setq _cipv_flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::HMIObstacle :md5sum-) "bf5ff5fbe5cf1d1c9d9747a2892db609")
(setf (get ros_interface::HMIObstacle :datatype-) "ros_interface/HMIObstacle")
(setf (get ros_interface::HMIObstacle :definition-)
      "int32   id     # 障碍物id
Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置
Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置
Point3D[] points_vehicle # 车辆坐标系下障碍物的点集
Point3D[] points_abs # 世界坐标系下障碍物的点集
float64   theta_vehicle     # 车辆坐标系下障碍物的朝向
float64   theta_abs     # 世界坐标系下障碍物的朝向
float64   length     # 障碍物长度
float64   width     # 障碍物宽度
float64   height     # 障碍物高度
int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;
float64   confidence     # 障碍物类别置信度
int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;
int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;
uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

")



(provide :ros_interface/HMIObstacle "bf5ff5fbe5cf1d1c9d9747a2892db609")


