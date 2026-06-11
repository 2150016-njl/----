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

class Time {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sec = null;
      this.nsec = null;
    }
    else {
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0;
      }
      if (initObj.hasOwnProperty('nsec')) {
        this.nsec = initObj.nsec
      }
      else {
        this.nsec = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Time
    // Serialize message field [sec]
    bufferOffset = _serializer.uint32(obj.sec, buffer, bufferOffset);
    // Serialize message field [nsec]
    bufferOffset = _serializer.uint32(obj.nsec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Time
    let len;
    let data = new Time(null);
    // Deserialize message field [sec]
    data.sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [nsec]
    data.nsec = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Time';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4771ad66fef816d2e4bead2f45a1cde6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Time(null);
    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0
    }

    if (msg.nsec !== undefined) {
      resolved.nsec = msg.nsec;
    }
    else {
      resolved.nsec = 0
    }

    return resolved;
    }
};

module.exports = Time;
