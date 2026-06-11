// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Time = require('./Time.js');

//-----------------------------------------------------------

class Fault {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.code = null;
      this.reason = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new Time();
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
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
    // Serializes a message object of type Fault
    // Serialize message field [timestamp]
    bufferOffset = Time.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint64(obj.code, buffer, bufferOffset);
    // Serialize message field [reason]
    bufferOffset = _serializer.string(obj.reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fault
    let len;
    let data = new Fault(null);
    // Deserialize message field [timestamp]
    data.timestamp = Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [reason]
    data.reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.reason.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Fault';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0cea8990aa7abb79c265ed7ac636c6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Time   timestamp     # 时间戳
    uint64   code     # 故障码
    string   reason     # 原因
    
    ================================================================================
    MSG: ros_interface/Time
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Fault(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = Time.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new Time()
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
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

module.exports = Fault;
