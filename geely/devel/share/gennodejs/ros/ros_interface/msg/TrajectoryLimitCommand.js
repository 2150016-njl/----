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

class TrajectoryLimitCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_limit_enable = null;
      this.speed_limit = null;
      this.kappa_limit_enable = null;
      this.kappa_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_limit_enable')) {
        this.speed_limit_enable = initObj.speed_limit_enable
      }
      else {
        this.speed_limit_enable = false;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('kappa_limit_enable')) {
        this.kappa_limit_enable = initObj.kappa_limit_enable
      }
      else {
        this.kappa_limit_enable = false;
      }
      if (initObj.hasOwnProperty('kappa_limit')) {
        this.kappa_limit = initObj.kappa_limit
      }
      else {
        this.kappa_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryLimitCommand
    // Serialize message field [speed_limit_enable]
    bufferOffset = _serializer.bool(obj.speed_limit_enable, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float64(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [kappa_limit_enable]
    bufferOffset = _serializer.bool(obj.kappa_limit_enable, buffer, bufferOffset);
    // Serialize message field [kappa_limit]
    bufferOffset = _serializer.float64(obj.kappa_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryLimitCommand
    let len;
    let data = new TrajectoryLimitCommand(null);
    // Deserialize message field [speed_limit_enable]
    data.speed_limit_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kappa_limit_enable]
    data.kappa_limit_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [kappa_limit]
    data.kappa_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrajectoryLimitCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c69ea9264ac7549969c7a946a564e304';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool   speed_limit_enable     #  
    float64   speed_limit     # m/s
    bool   kappa_limit_enable     #  
    float64   kappa_limit     # deg/m
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryLimitCommand(null);
    if (msg.speed_limit_enable !== undefined) {
      resolved.speed_limit_enable = msg.speed_limit_enable;
    }
    else {
      resolved.speed_limit_enable = false
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.kappa_limit_enable !== undefined) {
      resolved.kappa_limit_enable = msg.kappa_limit_enable;
    }
    else {
      resolved.kappa_limit_enable = false
    }

    if (msg.kappa_limit !== undefined) {
      resolved.kappa_limit = msg.kappa_limit;
    }
    else {
      resolved.kappa_limit = 0.0
    }

    return resolved;
    }
};

module.exports = TrajectoryLimitCommand;
