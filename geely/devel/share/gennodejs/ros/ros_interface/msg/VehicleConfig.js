// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleParam = require('./VehicleParam.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_param = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_param')) {
        this.vehicle_param = initObj.vehicle_param
      }
      else {
        this.vehicle_param = new VehicleParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleConfig
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_param]
    bufferOffset = VehicleParam.serialize(obj.vehicle_param, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleConfig
    let len;
    let data = new VehicleConfig(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_param]
    data.vehicle_param = VehicleParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += VehicleParam.getMessageSize(object.vehicle_param);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/VehicleConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e501d7b1f42705539ce132ff4e593b0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    VehicleParam   vehicle_param     # 车辆参数表
    
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
    MSG: ros_interface/VehicleParam
    string   brand     #  
    int32   steer_mode     #  
    float64   length     #  
    float64   width     #  
    float64   height     #  
    float64   mass_fl     #  
    float64   mass_fr     #  
    float64   mass_rl     #  
    float64   mass_rr     #  
    float64   wheel_radius     #  
    float64   wheelbase     #  
    float64   front_edge_to_center     #  
    float64   back_edge_to_center     #  
    float64   lf     #  
    float64   lr     #  
    float64   cf     #  
    float64   cr     #  
    float64   steer_ratio     #  
    float64   rolling_coefficient     #  
    float64   air_density     #  
    float64   air_damping_coefficient     #  
    float64   max_front_steer_angle     #  
    float64   min_front_steer_angle     #  
    float64   max_rear_steer_angle     #  
    float64   min_rear_steer_angle     #  
    float64   speed_limit     #  
    float64   max_brake_value     #  
    float64   min_brake_value     #  
    float64   max_accel_value     #  
    float64   min_accel_value     #  
    float64   speed_deadzone     #  
    float64   standstill_acceleration     #  
    float64   max_front_steer_angle_rate     #  
    float64   max_rear_steer_angle_rate     #  
    float64   max_abs_speed_when_stopped     #  
    float64   max_abs_speed_when_stopped_duration     #  
    float64   brake_value_when_gear_transitioning     #  
    float64   accel_deadzone     #  
    float64   brake_deadzone     #  
    float64   acceleration_in_idle     #  
    float64   deceleration_in_idle     #  
    float64   max_acceleration_jerk     #  
    float64   max_acceleration     #  
    float64   max_deceleration     #  
    float64   min_turning_radius     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleConfig(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_param !== undefined) {
      resolved.vehicle_param = VehicleParam.Resolve(msg.vehicle_param)
    }
    else {
      resolved.vehicle_param = new VehicleParam()
    }

    return resolved;
    }
};

module.exports = VehicleConfig;
