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

class FrenetFramePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.l = null;
      this.dl = null;
      this.ddl = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = 0.0;
      }
      if (initObj.hasOwnProperty('dl')) {
        this.dl = initObj.dl
      }
      else {
        this.dl = 0.0;
      }
      if (initObj.hasOwnProperty('ddl')) {
        this.ddl = initObj.ddl
      }
      else {
        this.ddl = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrenetFramePoint
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [l]
    bufferOffset = _serializer.float64(obj.l, buffer, bufferOffset);
    // Serialize message field [dl]
    bufferOffset = _serializer.float64(obj.dl, buffer, bufferOffset);
    // Serialize message field [ddl]
    bufferOffset = _serializer.float64(obj.ddl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrenetFramePoint
    let len;
    let data = new FrenetFramePoint(null);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [l]
    data.l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dl]
    data.dl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ddl]
    data.ddl = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/FrenetFramePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ecde306425599b635ce089fe72c9b83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   s     # 纵向位移
    float64   l     # 横向位移
    float64   dl     # 横向位移变化率
    float64   ddl     # 横向位移变化率的变化率
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrenetFramePoint(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = 0.0
    }

    if (msg.dl !== undefined) {
      resolved.dl = msg.dl;
    }
    else {
      resolved.dl = 0.0
    }

    if (msg.ddl !== undefined) {
      resolved.ddl = msg.ddl;
    }
    else {
      resolved.ddl = 0.0
    }

    return resolved;
    }
};

module.exports = FrenetFramePoint;
