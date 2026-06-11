;; Auto-generated. Do not edit!


(when (boundp 'ros_interface::RadarState)
  (if (not (find-package "ROS_INTERFACE"))
    (make-package "ROS_INTERFACE"))
  (shadow 'RadarState (find-package "ROS_INTERFACE")))
(unless (find-package "ROS_INTERFACE::RADARSTATE")
  (make-package "ROS_INTERFACE::RADARSTATE"))

(in-package "ROS")
;;//! \htmlinclude RadarState.msg.html


(defclass ros_interface::RadarState
  :super ros::object
  :slots (_sensor_id _nvm_read_status _nvm_write_status _radar_state_error _radar_state_mode _max_distance _sort_index _radar_power _ctl_relay _output_type _send_quality _send_extinfo _motion_rx_state _rcs_threshold _connector_direction _radar_position _hw_error ))

(defmethod ros_interface::RadarState
  (:init
   (&key
    ((:sensor_id __sensor_id) 0)
    ((:nvm_read_status __nvm_read_status) 0)
    ((:nvm_write_status __nvm_write_status) 0)
    ((:radar_state_error __radar_state_error) (instance ros_interface::RadarStateError :init))
    ((:radar_state_mode __radar_state_mode) (instance ros_interface::RadarStateMode :init))
    ((:max_distance __max_distance) 0)
    ((:sort_index __sort_index) 0)
    ((:radar_power __radar_power) 0)
    ((:ctl_relay __ctl_relay) 0)
    ((:output_type __output_type) 0)
    ((:send_quality __send_quality) 0)
    ((:send_extinfo __send_extinfo) 0)
    ((:motion_rx_state __motion_rx_state) 0)
    ((:rcs_threshold __rcs_threshold) 0)
    ((:connector_direction __connector_direction) 0)
    ((:radar_position __radar_position) 0)
    ((:hw_error __hw_error) 0)
    )
   (send-super :init)
   (setq _sensor_id (round __sensor_id))
   (setq _nvm_read_status (round __nvm_read_status))
   (setq _nvm_write_status (round __nvm_write_status))
   (setq _radar_state_error __radar_state_error)
   (setq _radar_state_mode __radar_state_mode)
   (setq _max_distance (round __max_distance))
   (setq _sort_index (round __sort_index))
   (setq _radar_power (round __radar_power))
   (setq _ctl_relay (round __ctl_relay))
   (setq _output_type (round __output_type))
   (setq _send_quality (round __send_quality))
   (setq _send_extinfo (round __send_extinfo))
   (setq _motion_rx_state (round __motion_rx_state))
   (setq _rcs_threshold (round __rcs_threshold))
   (setq _connector_direction (round __connector_direction))
   (setq _radar_position (round __radar_position))
   (setq _hw_error (round __hw_error))
   self)
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:nvm_read_status
   (&optional __nvm_read_status)
   (if __nvm_read_status (setq _nvm_read_status __nvm_read_status)) _nvm_read_status)
  (:nvm_write_status
   (&optional __nvm_write_status)
   (if __nvm_write_status (setq _nvm_write_status __nvm_write_status)) _nvm_write_status)
  (:radar_state_error
   (&rest __radar_state_error)
   (if (keywordp (car __radar_state_error))
       (send* _radar_state_error __radar_state_error)
     (progn
       (if __radar_state_error (setq _radar_state_error (car __radar_state_error)))
       _radar_state_error)))
  (:radar_state_mode
   (&rest __radar_state_mode)
   (if (keywordp (car __radar_state_mode))
       (send* _radar_state_mode __radar_state_mode)
     (progn
       (if __radar_state_mode (setq _radar_state_mode (car __radar_state_mode)))
       _radar_state_mode)))
  (:max_distance
   (&optional __max_distance)
   (if __max_distance (setq _max_distance __max_distance)) _max_distance)
  (:sort_index
   (&optional __sort_index)
   (if __sort_index (setq _sort_index __sort_index)) _sort_index)
  (:radar_power
   (&optional __radar_power)
   (if __radar_power (setq _radar_power __radar_power)) _radar_power)
  (:ctl_relay
   (&optional __ctl_relay)
   (if __ctl_relay (setq _ctl_relay __ctl_relay)) _ctl_relay)
  (:output_type
   (&optional __output_type)
   (if __output_type (setq _output_type __output_type)) _output_type)
  (:send_quality
   (&optional __send_quality)
   (if __send_quality (setq _send_quality __send_quality)) _send_quality)
  (:send_extinfo
   (&optional __send_extinfo)
   (if __send_extinfo (setq _send_extinfo __send_extinfo)) _send_extinfo)
  (:motion_rx_state
   (&optional __motion_rx_state)
   (if __motion_rx_state (setq _motion_rx_state __motion_rx_state)) _motion_rx_state)
  (:rcs_threshold
   (&optional __rcs_threshold)
   (if __rcs_threshold (setq _rcs_threshold __rcs_threshold)) _rcs_threshold)
  (:connector_direction
   (&optional __connector_direction)
   (if __connector_direction (setq _connector_direction __connector_direction)) _connector_direction)
  (:radar_position
   (&optional __radar_position)
   (if __radar_position (setq _radar_position __radar_position)) _radar_position)
  (:hw_error
   (&optional __hw_error)
   (if __hw_error (setq _hw_error __hw_error)) _hw_error)
  (:serialization-length
   ()
   (+
    ;; uint8 _sensor_id
    1
    ;; uint8 _nvm_read_status
    1
    ;; uint8 _nvm_write_status
    1
    ;; ros_interface/RadarStateError _radar_state_error
    (send _radar_state_error :serialization-length)
    ;; ros_interface/RadarStateMode _radar_state_mode
    (send _radar_state_mode :serialization-length)
    ;; uint16 _max_distance
    2
    ;; uint8 _sort_index
    1
    ;; uint8 _radar_power
    1
    ;; uint8 _ctl_relay
    1
    ;; uint8 _output_type
    1
    ;; uint8 _send_quality
    1
    ;; uint8 _send_extinfo
    1
    ;; uint8 _motion_rx_state
    1
    ;; uint8 _rcs_threshold
    1
    ;; uint8 _connector_direction
    1
    ;; uint8 _radar_position
    1
    ;; uint8 _hw_error
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sensor_id
       (write-byte _sensor_id s)
     ;; uint8 _nvm_read_status
       (write-byte _nvm_read_status s)
     ;; uint8 _nvm_write_status
       (write-byte _nvm_write_status s)
     ;; ros_interface/RadarStateError _radar_state_error
       (send _radar_state_error :serialize s)
     ;; ros_interface/RadarStateMode _radar_state_mode
       (send _radar_state_mode :serialize s)
     ;; uint16 _max_distance
       (write-word _max_distance s)
     ;; uint8 _sort_index
       (write-byte _sort_index s)
     ;; uint8 _radar_power
       (write-byte _radar_power s)
     ;; uint8 _ctl_relay
       (write-byte _ctl_relay s)
     ;; uint8 _output_type
       (write-byte _output_type s)
     ;; uint8 _send_quality
       (write-byte _send_quality s)
     ;; uint8 _send_extinfo
       (write-byte _send_extinfo s)
     ;; uint8 _motion_rx_state
       (write-byte _motion_rx_state s)
     ;; uint8 _rcs_threshold
       (write-byte _rcs_threshold s)
     ;; uint8 _connector_direction
       (write-byte _connector_direction s)
     ;; uint8 _radar_position
       (write-byte _radar_position s)
     ;; uint8 _hw_error
       (write-byte _hw_error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sensor_id
     (setq _sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nvm_read_status
     (setq _nvm_read_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _nvm_write_status
     (setq _nvm_write_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; ros_interface/RadarStateError _radar_state_error
     (send _radar_state_error :deserialize buf ptr-) (incf ptr- (send _radar_state_error :serialization-length))
   ;; ros_interface/RadarStateMode _radar_state_mode
     (send _radar_state_mode :deserialize buf ptr-) (incf ptr- (send _radar_state_mode :serialization-length))
   ;; uint16 _max_distance
     (setq _max_distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sort_index
     (setq _sort_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _radar_power
     (setq _radar_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ctl_relay
     (setq _ctl_relay (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _output_type
     (setq _output_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _send_quality
     (setq _send_quality (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _send_extinfo
     (setq _send_extinfo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _motion_rx_state
     (setq _motion_rx_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rcs_threshold
     (setq _rcs_threshold (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _connector_direction
     (setq _connector_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _radar_position
     (setq _radar_position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hw_error
     (setq _hw_error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_interface::RadarState :md5sum-) "00e0b3643bf386c2d41f0895e61c5428")
(setf (get ros_interface::RadarState :datatype-) "ros_interface/RadarState")
(setf (get ros_interface::RadarState :definition-)
      "uint8   sensor_id     #  
uint8   nvm_read_status     #  
uint8   nvm_write_status     #  
RadarStateError   radar_state_error     #  
RadarStateMode   radar_state_mode     #  
uint16   max_distance     #  
uint8   sort_index     #  
uint8   radar_power     #  
uint8   ctl_relay     #  
uint8   output_type     #  
uint8   send_quality     #  
uint8   send_extinfo     #  
uint8   motion_rx_state     #  
uint8   rcs_threshold     #  
uint8   connector_direction     #  
uint8   radar_position     #  
uint8   hw_error     #  

================================================================================
MSG: ros_interface/RadarStateError
uint8   persistent_error     #  
uint8   temporary_error     #  
uint8   interference_error     #  
uint8   temperature_error     #  
uint8   voltage_error     #  
uint8   block_error     #  
uint8   broadcast_error     #  
uint8   electric_axis_error     #  
uint8   config_error     #  
uint8   calibration_error     #  

================================================================================
MSG: ros_interface/RadarStateMode
uint8   can0_work_mode     # can0工作模式
uint8   can1_work_mode     # can1工作模式
uint8   dual_can_mode     # 双总线工作模式
uint8   timming_mode     # 计时模式
uint8   power_mode     # 电源模式
uint8   performance_mode     # 效能模式

")



(provide :ros_interface/RadarState "00e0b3643bf386c2d41f0895e61c5428")


