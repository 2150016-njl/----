;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::HMIObstacleList)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'HMIObstacleList (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::HMIOBSTACLELIST")
  (make-package "ROS_INTERFACE::HMIOBSTACLELIST"))

(in-package "ROS")
;;//! \htmlinclude HMIObstacleList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_interface::HMIObstacleList
  :super ros::object
  :slots (_header _sensor_id _obstacle _error_code _is_valid _change_origin_flag ))

(defmethod ros_interface::HMIObstacleList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sensor_id __sensor_id) 0)
    ((:obstacle __obstacle) (let (r) (dotimes (i 0) (push (instance ros_interface::HMIObstacle :init) r)) r))
    ((:error_code __error_code) 0)
    ((:is_valid __is_valid) nil)
    ((:change_origin_flag __change_origin_flag) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sensor_id (round __sensor_id))
   (setq _obstacle __obstacle)
   (setq _error_code (round __error_code))
   (setq _is_valid __is_valid)
   (setq _change_origin_flag (round __change_origin_flag))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:obstacle
   (&rest __obstacle)
   (if (keywordp (car __obstacle))
       (send* _obstacle __obstacle)
     (progn
       (if __obstacle (setq _obstacle (car __obstacle)))
       _obstacle)))
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:is_valid
   (&optional __is_valid)
   (if __is_valid (setq _is_valid __is_valid)) _is_valid)
  (:change_origin_flag
   (&optional __change_origin_flag)
   (if __change_origin_flag (setq _change_origin_flag __change_origin_flag)) _change_origin_flag)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _sensor_id
    4
    ;; ros_interface/HMIObstacle[] _obstacle
    (apply #'+ (send-all _obstacle :serialization-length)) 4
    ;; int32 _error_code
    4
    ;; bool _is_valid
    1
    ;; int32 _change_origin_flag
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _sensor_id
       (write-long _sensor_id s)
     ;; ros_interface/HMIObstacle[] _obstacle
     (write-long (length _obstacle) s)
     (dolist (elem _obstacle)
       (send elem :serialize s)
       )
     ;; int32 _error_code
       (write-long _error_code s)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _change_origin_flag
       (write-long _change_origin_flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_interface/HMIObstacle[] _obstacle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle (let (r) (dotimes (i n) (push (instance ros_interface::HMIObstacle :init) r)) r))
     (dolist (elem- _obstacle)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _error_code
     (setq _error_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _change_origin_flag
     (setq _change_origin_flag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_interface::HMIObstacleList :md5sum-) "e5aa916b0597c4e1f642a5f453f551db")
(setf (get ros_interface::HMIObstacleList :datatype-) "ros_interface/HMIObstacleList")
(setf (get ros_interface::HMIObstacleList :definition-)
      "Header   header     # 消息头
int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合
HMIObstacle[] obstacle # 检测出的障碍物数组
int32   error_code     # 错误码（default = OK）
bool   is_valid     # 障碍物数据是否合法
int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ros_interface/HMIObstacle
int32   id     # 障碍物id
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



(provide :ros_interface/HMIObstacleList "e5aa916b0597c4e1f642a5f453f551db")


