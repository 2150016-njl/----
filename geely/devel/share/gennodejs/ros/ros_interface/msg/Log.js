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

class Log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.level = null;
      this.name = null;
      this.msg = null;
      this.file = null;
      this.function = null;
      this.line = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = new Time();
      }
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file
      }
      else {
        this.file = '';
      }
      if (initObj.hasOwnProperty('function')) {
        this.function = initObj.function
      }
      else {
        this.function = '';
      }
      if (initObj.hasOwnProperty('line')) {
        this.line = initObj.line
      }
      else {
        this.line = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Log
    // Serialize message field [stamp]
    bufferOffset = Time.serialize(obj.stamp, buffer, bufferOffset);
    // Serialize message field [level]
    bufferOffset = _serializer.uint8(obj.level, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);
    // Serialize message field [function]
    bufferOffset = _serializer.string(obj.function, buffer, bufferOffset);
    // Serialize message field [line]
    bufferOffset = _serializer.uint32(obj.line, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Log
    let len;
    let data = new Log(null);
    // Deserialize message field [stamp]
    data.stamp = Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [level]
    data.level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [function]
    data.function = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [line]
    data.line = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.msg.length;
    length += object.file.length;
    length += object.function.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2071f6faae9945ec94584b4d4ed5edd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Time   stamp     # 时间戳
    uint8   level     # log等级 DEBUG   : 10  INFO       : 20   WARN     : 30   ERROR   : 40  FATAL     : 50 
    string   name     # 节点名
    string   msg     # log消息
    string   file     # 发送log文件路径
    string   function     # 模块名
    uint32   line     # 消息行
    
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
    const resolved = new Log(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = Time.Resolve(msg.stamp)
    }
    else {
      resolved.stamp = new Time()
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = ''
    }

    if (msg.function !== undefined) {
      resolved.function = msg.function;
    }
    else {
      resolved.function = ''
    }

    if (msg.line !== undefined) {
      resolved.line = msg.line;
    }
    else {
      resolved.line = 0
    }

    return resolved;
    }
};

module.exports = Log;
