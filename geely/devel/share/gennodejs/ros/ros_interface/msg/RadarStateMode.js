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

class RadarStateMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.can0_work_mode = null;
      this.can1_work_mode = null;
      this.dual_can_mode = null;
      this.timming_mode = null;
      this.power_mode = null;
      this.performance_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('can0_work_mode')) {
        this.can0_work_mode = initObj.can0_work_mode
      }
      else {
        this.can0_work_mode = 0;
      }
      if (initObj.hasOwnProperty('can1_work_mode')) {
        this.can1_work_mode = initObj.can1_work_mode
      }
      else {
        this.can1_work_mode = 0;
      }
      if (initObj.hasOwnProperty('dual_can_mode')) {
        this.dual_can_mode = initObj.dual_can_mode
      }
      else {
        this.dual_can_mode = 0;
      }
      if (initObj.hasOwnProperty('timming_mode')) {
        this.timming_mode = initObj.timming_mode
      }
      else {
        this.timming_mode = 0;
      }
      if (initObj.hasOwnProperty('power_mode')) {
        this.power_mode = initObj.power_mode
      }
      else {
        this.power_mode = 0;
      }
      if (initObj.hasOwnProperty('performance_mode')) {
        this.performance_mode = initObj.performance_mode
      }
      else {
        this.performance_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarStateMode
    // Serialize message field [can0_work_mode]
    bufferOffset = _serializer.uint8(obj.can0_work_mode, buffer, bufferOffset);
    // Serialize message field [can1_work_mode]
    bufferOffset = _serializer.uint8(obj.can1_work_mode, buffer, bufferOffset);
    // Serialize message field [dual_can_mode]
    bufferOffset = _serializer.uint8(obj.dual_can_mode, buffer, bufferOffset);
    // Serialize message field [timming_mode]
    bufferOffset = _serializer.uint8(obj.timming_mode, buffer, bufferOffset);
    // Serialize message field [power_mode]
    bufferOffset = _serializer.uint8(obj.power_mode, buffer, bufferOffset);
    // Serialize message field [performance_mode]
    bufferOffset = _serializer.uint8(obj.performance_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarStateMode
    let len;
    let data = new RadarStateMode(null);
    // Deserialize message field [can0_work_mode]
    data.can0_work_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [can1_work_mode]
    data.can1_work_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dual_can_mode]
    data.dual_can_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timming_mode]
    data.timming_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_mode]
    data.power_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [performance_mode]
    data.performance_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RadarStateMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3643a2a561b16d4937dd76d21d14be0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   can0_work_mode     # can0工作模式
    uint8   can1_work_mode     # can1工作模式
    uint8   dual_can_mode     # 双总线工作模式
    uint8   timming_mode     # 计时模式
    uint8   power_mode     # 电源模式
    uint8   performance_mode     # 效能模式
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarStateMode(null);
    if (msg.can0_work_mode !== undefined) {
      resolved.can0_work_mode = msg.can0_work_mode;
    }
    else {
      resolved.can0_work_mode = 0
    }

    if (msg.can1_work_mode !== undefined) {
      resolved.can1_work_mode = msg.can1_work_mode;
    }
    else {
      resolved.can1_work_mode = 0
    }

    if (msg.dual_can_mode !== undefined) {
      resolved.dual_can_mode = msg.dual_can_mode;
    }
    else {
      resolved.dual_can_mode = 0
    }

    if (msg.timming_mode !== undefined) {
      resolved.timming_mode = msg.timming_mode;
    }
    else {
      resolved.timming_mode = 0
    }

    if (msg.power_mode !== undefined) {
      resolved.power_mode = msg.power_mode;
    }
    else {
      resolved.power_mode = 0
    }

    if (msg.performance_mode !== undefined) {
      resolved.performance_mode = msg.performance_mode;
    }
    else {
      resolved.performance_mode = 0
    }

    return resolved;
    }
};

module.exports = RadarStateMode;
