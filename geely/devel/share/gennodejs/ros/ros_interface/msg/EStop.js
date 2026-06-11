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

class EStop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_estop = null;
      this.reason = null;
    }
    else {
      if (initObj.hasOwnProperty('is_estop')) {
        this.is_estop = initObj.is_estop
      }
      else {
        this.is_estop = false;
      }
      if (initObj.hasOwnProperty('reason')) {
        this.reason = initObj.reason
      }
      else {
        this.reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EStop
    // Serialize message field [is_estop]
    bufferOffset = _serializer.bool(obj.is_estop, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.string(obj.reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EStop
    let len;
    let data = new EStop(null);
    // Deserialize message field [is_estop]
    data.is_estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.reason.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/EStop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1804e173ea92364152391f5149646cf2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool   is_estop     # is_estop == true when emergency stop is required
    string   reason     # 原因
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EStop(null);
    if (msg.is_estop !== undefined) {
      resolved.is_estop = msg.is_estop;
    }
    else {
      resolved.is_estop = false
    }

    if (msg.reason !== undefined) {
      resolved.reason = msg.reason;
    }
    else {
      resolved.reason = ''
    }

    return resolved;
    }
};

module.exports = EStop;
