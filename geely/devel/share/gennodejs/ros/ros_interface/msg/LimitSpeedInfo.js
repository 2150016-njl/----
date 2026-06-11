// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LimitSpeedInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.limitspeed_valid_flag = null;
      this.limit_speed = null;
      this.limit_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('limitspeed_valid_flag')) {
        this.limitspeed_valid_flag = initObj.limitspeed_valid_flag
      }
      else {
        this.limitspeed_valid_flag = 0;
      }
      if (initObj.hasOwnProperty('limit_speed')) {
        this.limit_speed = initObj.limit_speed
      }
      else {
        this.limit_speed = 0.0;
      }
      if (initObj.hasOwnProperty('limit_distance')) {
        this.limit_distance = initObj.limit_distance
      }
      else {
        this.limit_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LimitSpeedInfo
    // Serialize message field [limitspeed_valid_flag]
    bufferOffset = _serializer.int32(obj.limitspeed_valid_flag, buffer, bufferOffset);
    // Serialize message field [limit_speed]
    bufferOffset = _serializer.float64(obj.limit_speed, buffer, bufferOffset);
    // Serialize message field [limit_distance]
    bufferOffset = _serializer.float64(obj.limit_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LimitSpeedInfo
    let len;
    let data = new LimitSpeedInfo(null);
    // Deserialize message field [limitspeed_valid_flag]
    data.limitspeed_valid_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [limit_speed]
    data.limit_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [limit_distance]
    data.limit_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/LimitSpeedInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60f4e9d159cc502ec9c6b727aad50d08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   limitspeed_valid_flag     # 限速有效性标志位
    float64   limit_speed     # 限速大小（m/s）
    float64   limit_distance     # 开始减速距离(m)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LimitSpeedInfo(null);
    if (msg.limitspeed_valid_flag !== undefined) {
      resolved.limitspeed_valid_flag = msg.limitspeed_valid_flag;
    }
    else {
      resolved.limitspeed_valid_flag = 0
    }

    if (msg.limit_speed !== undefined) {
      resolved.limit_speed = msg.limit_speed;
    }
    else {
      resolved.limit_speed = 0.0
    }

    if (msg.limit_distance !== undefined) {
      resolved.limit_distance = msg.limit_distance;
    }
    else {
      resolved.limit_distance = 0.0
    }

    return resolved;
    }
};

module.exports = LimitSpeedInfo;
