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

class RouteFusionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fusion_flag = null;
      this.fusion_reason = null;
    }
    else {
      if (initObj.hasOwnProperty('fusion_flag')) {
        this.fusion_flag = initObj.fusion_flag
      }
      else {
        this.fusion_flag = 0;
      }
      if (initObj.hasOwnProperty('fusion_reason')) {
        this.fusion_reason = initObj.fusion_reason
      }
      else {
        this.fusion_reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteFusionInfo
    // Serialize message field [fusion_flag]
    bufferOffset = _serializer.int32(obj.fusion_flag, buffer, bufferOffset);
    // Serialize message field [fusion_reason]
    bufferOffset = _serializer.string(obj.fusion_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteFusionInfo
    let len;
    let data = new RouteFusionInfo(null);
    // Deserialize message field [fusion_flag]
    data.fusion_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fusion_reason]
    data.fusion_reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.fusion_reason.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RouteFusionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '272fcd54e54c0a49dcdbc692af0ea8a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   fusion_flag     # 是否有效标志位
    string   fusion_reason     # 融合原因
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteFusionInfo(null);
    if (msg.fusion_flag !== undefined) {
      resolved.fusion_flag = msg.fusion_flag;
    }
    else {
      resolved.fusion_flag = 0
    }

    if (msg.fusion_reason !== undefined) {
      resolved.fusion_reason = msg.fusion_reason;
    }
    else {
      resolved.fusion_reason = ''
    }

    return resolved;
    }
};

module.exports = RouteFusionInfo;
