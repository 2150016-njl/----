;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RSSInfo)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RSSInfo (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::RSSINFO")
  (make-package "ROS_INTERFACE::RSSINFO"))

(in-package "ROS")
;;//! \htmlinclude RSSInfo.msg.html


(defclass ros_interface::RSSInfo
  :super ros::object
  :slots (_is_rss_safe _cur_dist_lon _rss_safe_dist_lon _acc_lon_range_minimum _acc_lon_range_maximum _acc_lat_left_range_minimum _acc_lat_left_range_maximum _acc_lat_right_range_minimum _acc_lat_right_range_maximum ))

(defmethod ros_interface::RSSInfo
  (:init
   (&key
    ((:is_rss_safe __is_rss_safe) nil)
    ((:cur_dist_lon __cur_dist_lon) 0.0)
    ((:rss_safe_dist_lon __rss_safe_dist_lon) 0.0)
    ((:acc_lon_range_minimum __acc_lon_range_minimum) 0.0)
    ((:acc_lon_range_maximum __acc_lon_range_maximum) 0.0)
    ((:acc_lat_left_range_minimum __acc_lat_left_range_minimum) 0.0)
    ((:acc_lat_left_range_maximum __acc_lat_left_range_maximum) 0.0)
    ((:acc_lat_right_range_minimum __acc_lat_right_range_minimum) 0.0)
    ((:acc_lat_right_range_maximum __acc_lat_right_range_maximum) 0.0)
    )
   (send-super :init)
   (setq _is_rss_safe __is_rss_safe)
   (setq _cur_dist_lon (float __cur_dist_lon))
   (setq _rss_safe_dist_lon (float __rss_safe_dist_lon))
   (setq _acc_lon_range_minimum (float __acc_lon_range_minimum))
   (setq _acc_lon_range_maximum (float __acc_lon_range_maximum))
   (setq _acc_lat_left_range_minimum (float __acc_lat_left_range_minimum))
   (setq _acc_lat_left_range_maximum (float __acc_lat_left_range_maximum))
   (setq _acc_lat_right_range_minimum (float __acc_lat_right_range_minimum))
   (setq _acc_lat_right_range_maximum (float __acc_lat_right_range_maximum))
   self)
  (:is_rss_safe
   (&optional __is_rss_safe)
   (if __is_rss_safe (setq _is_rss_safe __is_rss_safe)) _is_rss_safe)
  (:cur_dist_lon
   (&optional __cur_dist_lon)
   (if __cur_dist_lon (setq _cur_dist_lon __cur_dist_lon)) _cur_dist_lon)
  (:rss_safe_dist_lon
   (&optional __rss_safe_dist_lon)
   (if __rss_safe_dist_lon (setq _rss_safe_dist_lon __rss_safe_dist_lon)) _rss_safe_dist_lon)
  (:acc_lon_range_minimum
   (&optional __acc_lon_range_minimum)
   (if __acc_lon_range_minimum (setq _acc_lon_range_minimum __acc_lon_range_minimum)) _acc_lon_range_minimum)
  (:acc_lon_range_maximum
   (&optional __acc_lon_range_maximum)
   (if __acc_lon_range_maximum (setq _acc_lon_range_maximum __acc_lon_range_maximum)) _acc_lon_range_maximum)
  (:acc_lat_left_range_minimum
   (&optional __acc_lat_left_range_minimum)
   (if __acc_lat_left_range_minimum (setq _acc_lat_left_range_minimum __acc_lat_left_range_minimum)) _acc_lat_left_range_minimum)
  (:acc_lat_left_range_maximum
   (&optional __acc_lat_left_range_maximum)
   (if __acc_lat_left_range_maximum (setq _acc_lat_left_range_maximum __acc_lat_left_range_maximum)) _acc_lat_left_range_maximum)
  (:acc_lat_right_range_minimum
   (&optional __acc_lat_right_range_minimum)
   (if __acc_lat_right_range_minimum (setq _acc_lat_right_range_minimum __acc_lat_right_range_minimum)) _acc_lat_right_range_minimum)
  (:acc_lat_right_range_maximum
   (&optional __acc_lat_right_range_maximum)
   (if __acc_lat_right_range_maximum (setq _acc_lat_right_range_maximum __acc_lat_right_range_maximum)) _acc_lat_right_range_maximum)
  (:serialization-length
   ()
   (+
    ;; bool _is_rss_safe
    1
    ;; float64 _cur_dist_lon
    8
    ;; float64 _rss_safe_dist_lon
    8
    ;; float64 _acc_lon_range_minimum
    8
    ;; float64 _acc_lon_range_maximum
    8
    ;; float64 _acc_lat_left_range_minimum
    8
    ;; float64 _acc_lat_left_range_maximum
    8
    ;; float64 _acc_lat_right_range_minimum
    8
    ;; float64 _acc_lat_right_range_maximum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_rss_safe
       (if _is_rss_safe (write-byte -1 s) (write-byte 0 s))
     ;; float64 _cur_dist_lon
       (sys::poke _cur_dist_lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rss_safe_dist_lon
       (sys::poke _rss_safe_dist_lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_lon_range_minimum
       (sys::poke _acc_lon_range_minimum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_lon_range_maximum
       (sys::poke _acc_lon_range_maximum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_lat_left_range_minimum
       (sys::poke _acc_lat_left_range_minimum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_lat_left_range_maximum
       (sys::poke _acc_lat_left_range_maximum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_lat_right_range_minimum
       (sys::poke _acc_lat_right_range_minimum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_lat_right_range_maximum
       (sys::poke _acc_lat_right_range_maximum (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_rss_safe
     (setq _is_rss_safe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _cur_dist_lon
     (setq _cur_dist_lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rss_safe_dist_lon
     (setq _rss_safe_dist_lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_lon_range_minimum
     (setq _acc_lon_range_minimum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_lon_range_maximum
     (setq _acc_lon_range_maximum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_lat_left_range_minimum
     (setq _acc_lat_left_range_minimum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_lat_left_range_maximum
     (setq _acc_lat_left_range_maximum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_lat_right_range_minimum
     (setq _acc_lat_right_range_minimum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_lat_right_range_maximum
     (setq _acc_lat_right_range_maximum (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_interface::RSSInfo :md5sum-) "c4490533d712ba2082a34d1533267ea6")
(setf (get ros_interface::RSSInfo :datatype-) "ros_interface/RSSInfo")
(setf (get ros_interface::RSSInfo :definition-)
      "bool   is_rss_safe     #  
float64   cur_dist_lon     # current longitudinal distance
float64   rss_safe_dist_lon     # longitudinal safe distance of rss
float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration
float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration
float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration
float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration
float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration
float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration

")



(provide :ros_interface/RSSInfo "c4490533d712ba2082a34d1533267ea6")


