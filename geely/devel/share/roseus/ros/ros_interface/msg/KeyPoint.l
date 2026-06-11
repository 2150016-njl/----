;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::KeyPoint)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'KeyPoint (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::KEYPOINT")
  (make-package "ROS_INTERFACE::KEYPOINT"))

(in-package "ROS")
;;//! \htmlinclude KeyPoint.msg.html


(defclass ros_interface::KeyPoint
  :super ros::object
  :slots (_id _latitude _longitude _ele _heading _name ))

(defmethod ros_interface::KeyPoint
  (:init
   (&key
    ((:id __id) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:ele __ele) 0.0)
    ((:heading __heading) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _ele (float __ele))
   (setq _heading (float __heading))
   (setq _name (string __name))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:ele
   (&optional __ele)
   (if __ele (setq _ele __ele)) _ele)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _ele
    8
    ;; float64 _heading
    8
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ele
       (sys::poke _ele (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ele
     (setq _ele (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_interface::KeyPoint :md5sum-) "a55078b26e8237f7891cb716e70eee44")
(setf (get ros_interface::KeyPoint :datatype-) "ros_interface/KeyPoint")
(setf (get ros_interface::KeyPoint :definition-)
      "int16   id     # 关键点id
float64   latitude     # 关键点纬度
float64   longitude     # 关键点经度
float64   ele     # 关键点海拔
float64   heading     # 关键点航向角（与北方向夹角，顺时针方向为正，单位为°）
string   name     # 关键点名称

")



(provide :ros_interface/KeyPoint "a55078b26e8237f7891cb716e70eee44")


