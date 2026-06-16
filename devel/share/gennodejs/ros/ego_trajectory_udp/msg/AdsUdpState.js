// Auto-generated. Do not edit!

// (in-package ego_trajectory_udp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AdsUdpState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_m = null;
      this.y_m = null;
      this.heading_deg = null;
      this.speed_mps = null;
      this.ax_mps2 = null;
      this.ay_mps2 = null;
      this.yaw_rate_dps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_m')) {
        this.x_m = initObj.x_m
      }
      else {
        this.x_m = 0.0;
      }
      if (initObj.hasOwnProperty('y_m')) {
        this.y_m = initObj.y_m
      }
      else {
        this.y_m = 0.0;
      }
      if (initObj.hasOwnProperty('heading_deg')) {
        this.heading_deg = initObj.heading_deg
      }
      else {
        this.heading_deg = 0.0;
      }
      if (initObj.hasOwnProperty('speed_mps')) {
        this.speed_mps = initObj.speed_mps
      }
      else {
        this.speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('ax_mps2')) {
        this.ax_mps2 = initObj.ax_mps2
      }
      else {
        this.ax_mps2 = 0.0;
      }
      if (initObj.hasOwnProperty('ay_mps2')) {
        this.ay_mps2 = initObj.ay_mps2
      }
      else {
        this.ay_mps2 = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate_dps')) {
        this.yaw_rate_dps = initObj.yaw_rate_dps
      }
      else {
        this.yaw_rate_dps = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AdsUdpState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_m]
    bufferOffset = _serializer.float64(obj.x_m, buffer, bufferOffset);
    // Serialize message field [y_m]
    bufferOffset = _serializer.float64(obj.y_m, buffer, bufferOffset);
    // Serialize message field [heading_deg]
    bufferOffset = _serializer.float64(obj.heading_deg, buffer, bufferOffset);
    // Serialize message field [speed_mps]
    bufferOffset = _serializer.float64(obj.speed_mps, buffer, bufferOffset);
    // Serialize message field [ax_mps2]
    bufferOffset = _serializer.float64(obj.ax_mps2, buffer, bufferOffset);
    // Serialize message field [ay_mps2]
    bufferOffset = _serializer.float64(obj.ay_mps2, buffer, bufferOffset);
    // Serialize message field [yaw_rate_dps]
    bufferOffset = _serializer.float64(obj.yaw_rate_dps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AdsUdpState
    let len;
    let data = new AdsUdpState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_m]
    data.x_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_m]
    data.y_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_deg]
    data.heading_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_mps]
    data.speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ax_mps2]
    data.ax_mps2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay_mps2]
    data.ay_mps2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate_dps]
    data.yaw_rate_dps = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ego_trajectory_udp/AdsUdpState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ae101eb840016ed92e16f138aa1a06b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 x_m
    float64 y_m
    float64 heading_deg
    float64 speed_mps
    
    # ADS protocol ax/ay are longitudinal/lateral acceleration in the target body frame.
    float64 ax_mps2
    float64 ay_mps2
    float64 yaw_rate_dps
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AdsUdpState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_m !== undefined) {
      resolved.x_m = msg.x_m;
    }
    else {
      resolved.x_m = 0.0
    }

    if (msg.y_m !== undefined) {
      resolved.y_m = msg.y_m;
    }
    else {
      resolved.y_m = 0.0
    }

    if (msg.heading_deg !== undefined) {
      resolved.heading_deg = msg.heading_deg;
    }
    else {
      resolved.heading_deg = 0.0
    }

    if (msg.speed_mps !== undefined) {
      resolved.speed_mps = msg.speed_mps;
    }
    else {
      resolved.speed_mps = 0.0
    }

    if (msg.ax_mps2 !== undefined) {
      resolved.ax_mps2 = msg.ax_mps2;
    }
    else {
      resolved.ax_mps2 = 0.0
    }

    if (msg.ay_mps2 !== undefined) {
      resolved.ay_mps2 = msg.ay_mps2;
    }
    else {
      resolved.ay_mps2 = 0.0
    }

    if (msg.yaw_rate_dps !== undefined) {
      resolved.yaw_rate_dps = msg.yaw_rate_dps;
    }
    else {
      resolved.yaw_rate_dps = 0.0
    }

    return resolved;
    }
};

module.exports = AdsUdpState;
