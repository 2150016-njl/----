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

class LaneletInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lanelet_id = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('lanelet_id')) {
        this.lanelet_id = initObj.lanelet_id
      }
      else {
        this.lanelet_id = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneletInfo
    // Serialize message field [lanelet_id]
    bufferOffset = _serializer.int32(obj.lanelet_id, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneletInfo
    let len;
    let data = new LaneletInfo(null);
    // Deserialize message field [lanelet_id]
    data.lanelet_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/LaneletInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8334b4ef7667c6933a33c30277189203';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   lanelet_id     # 道路id，与地图文件对应
    float64   length     # 道路长度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneletInfo(null);
    if (msg.lanelet_id !== undefined) {
      resolved.lanelet_id = msg.lanelet_id;
    }
    else {
      resolved.lanelet_id = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    return resolved;
    }
};

module.exports = LaneletInfo;
