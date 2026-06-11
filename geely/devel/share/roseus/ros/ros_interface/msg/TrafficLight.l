;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::TrafficLight)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'TrafficLight (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::TRAFFICLIGHT")
  (make-package "ROS_INTERFACE::TRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude TrafficLight.msg.html


(defclass ros_interface::TrafficLight
  :super ros::object
  :slots (_color _id _type _confidence _light_rect _position _distance _light_lanes _tracking_time _blink _blinking_time _remaining_time _create_time ))

(defmethod ros_interface::TrafficLight
  (:init
   (&key
    ((:color __color) 0)
    ((:id __id) 0)
    ((:type __type) 0)
    ((:confidence __confidence) 0.0)
    ((:light_rect __light_rect) (instance ros_interface::ImageRect :init))
    ((:position __position) (instance ros_interface::Point3D :init))
    ((:distance __distance) 0.0)
    ((:light_lanes __light_lanes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tracking_time __tracking_time) 0.0)
    ((:blink __blink) nil)
    ((:blinking_time __blinking_time) 0.0)
    ((:remaining_time __remaining_time) 0.0)
    ((:create_time __create_time) (instance ros_interface::Time :init))
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _confidence (float __confidence))
   (setq _light_rect __light_rect)
   (setq _position __position)
   (setq _distance (float __distance))
   (setq _light_lanes __light_lanes)
   (setq _tracking_time (float __tracking_time))
   (setq _blink __blink)
   (setq _blinking_time (float __blinking_time))
   (setq _remaining_time (float __remaining_time))
   (setq _create_time __create_time)
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:light_rect
   (&rest __light_rect)
   (if (keywordp (car __light_rect))
       (send* _light_rect __light_rect)
     (progn
       (if __light_rect (setq _light_rect (car __light_rect)))
       _light_rect)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:light_lanes
   (&optional __light_lanes)
   (if __light_lanes (setq _light_lanes __light_lanes)) _light_lanes)
  (:tracking_time
   (&optional __tracking_time)
   (if __tracking_time (setq _tracking_time __tracking_time)) _tracking_time)
  (:blink
   (&optional __blink)
   (if __blink (setq _blink __blink)) _blink)
  (:blinking_time
   (&optional __blinking_time)
   (if __blinking_time (setq _blinking_time __blinking_time)) _blinking_time)
  (:remaining_time
   (&optional __remaining_time)
   (if __remaining_time (setq _remaining_time __remaining_time)) _remaining_time)
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
    ;; int32 _color
    4
    ;; uint32 _id
    4
    ;; int32 _type
    4
    ;; float64 _confidence
    8
    ;; ros_interface/ImageRect _light_rect
    (send _light_rect :serialization-length)
    ;; ros_interface/Point3D _position
    (send _position :serialization-length)
    ;; float64 _distance
    8
    ;; int32[] _light_lanes
    (* 4    (length _light_lanes)) 4
    ;; float64 _tracking_time
    8
    ;; bool _blink
    1
    ;; float64 _blinking_time
    8
    ;; float64 _remaining_time
    8
    ;; ros_interface/Time _create_time
    (send _create_time :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _color
       (write-long _color s)
     ;; uint32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/ImageRect _light_rect
       (send _light_rect :serialize s)
     ;; ros_interface/Point3D _position
       (send _position :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32[] _light_lanes
     (write-long (length _light_lanes) s)
     (dotimes (i (length _light_lanes))
       (write-long (elt _light_lanes i) s)
       )
     ;; float64 _tracking_time
       (sys::poke _tracking_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _blink
       (if _blink (write-byte -1 s) (write-byte 0 s))
     ;; float64 _blinking_time
       (sys::poke _blinking_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _remaining_time
       (sys::poke _remaining_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_interface/Time _create_time
       (send _create_time :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _color
     (setq _color (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/ImageRect _light_rect
     (send _light_rect :deserialize buf ptr-) (incf ptr- (send _light_rect :serialization-length))
   ;; ros_interface/Point3D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32[] _light_lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _light_lanes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _light_lanes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _tracking_time
     (setq _tracking_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _blink
     (setq _blink (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _blinking_time
     (setq _blinking_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _remaining_time
     (setq _remaining_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_interface/Time _create_time
     (send _create_time :deserialize buf ptr-) (incf ptr- (send _create_time :serialization-length))
   ;;
   self)
  )

(setf (get ros_interface::TrafficLight :md5sum-) "8d24a7eb9eebb6222dbbfb397efd4db6")
(setf (get ros_interface::TrafficLight :datatype-) "ros_interface/TrafficLight")
(setf (get ros_interface::TrafficLight :definition-)
      "int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
uint32   id     # light id
int32   type     # STRAIGHT = 0; TURN_LEFT = 1; TURN_RIGHT = 2; STRAIGHT_TURN_LEFT = 3; STRAIGHT_TURN_RIGHT =4; CIRCULAR = 5; PEDESTRIAN = 6; CYCLIST = 7; UNKNOWN = 8;
float64   confidence     # 置信度confdence: [0-1]
ImageRect   light_rect     # 交通灯矩形框light rect
Point3D   position     # 交通灯位置position of light
float64   distance     # 距离distance between light and stop line
int32[] light_lanes # corresponding lanes of light
float64   tracking_time     # duration of a light since track
bool   blink     # true:
float64   blinking_time     # duration of a light blinking
float64   remaining_time     # V2X time of light
Time   create_time     # time of light detected

================================================================================
MSG: ros_interface/ImageRect
int32   x     # coordinate x of left-top point of image rect
int32   y     # coordinate y of left-top point of image rect
int32   width     # width of image rect
int32   height     # height of image rect

================================================================================
MSG: ros_interface/Point3D
float64   x     # 位置坐标x
float64   y     # 位置坐标y
float64   z     # 位置坐标z

================================================================================
MSG: ros_interface/Time
uint32   sec     # 秒
uint32   nsec     # 纳秒

")



(provide :ros_interface/TrafficLight "8d24a7eb9eebb6222dbbfb397efd4db6")


