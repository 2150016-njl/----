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

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_module = null;
      this.target_id = null;
      this.target_switch = null;
    }
    else {
      if (initObj.hasOwnProperty('target_module')) {
        this.target_module = initObj.target_module
      }
      else {
        this.target_module = '';
      }
      if (initObj.hasOwnProperty('target_id')) {
        this.target_id = initObj.target_id
      }
      else {
        this.target_id = 0;
      }
      if (initObj.hasOwnProperty('target_switch')) {
        this.target_switch = initObj.target_switch
      }
      else {
        this.target_switch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [target_module]
    bufferOffset = _serializer.string(obj.target_module, buffer, bufferOffset);
    // Serialize message field [target_id]
    bufferOffset = _serializer.int8(obj.target_id, buffer, bufferOffset);
    // Serialize message field [target_switch]
    bufferOffset = _serializer.int32(obj.target_switch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [target_module]
    data.target_module = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_id]
    data.target_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [target_switch]
    data.target_switch = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.target_module.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75262e90219ed26ce01c79ca90a1789e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   target_module     # 目标节点名称
    int8   target_id     # 目标节点ID
    int32   target_switch     # 0:保持target_module的状态  1:打开target_module 2:关闭target_module
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.target_module !== undefined) {
      resolved.target_module = msg.target_module;
    }
    else {
      resolved.target_module = ''
    }

    if (msg.target_id !== undefined) {
      resolved.target_id = msg.target_id;
    }
    else {
      resolved.target_id = 0
    }

    if (msg.target_switch !== undefined) {
      resolved.target_switch = msg.target_switch;
    }
    else {
      resolved.target_switch = 0
    }

    return resolved;
    }
};

module.exports = Command;
