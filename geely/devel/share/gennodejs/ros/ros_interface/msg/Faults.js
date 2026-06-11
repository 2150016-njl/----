// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Fault = require('./Fault.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Faults {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.version = null;
      this.app_id = null;
      this.is_active = null;
      this.faults = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('app_id')) {
        this.app_id = initObj.app_id
      }
      else {
        this.app_id = 0;
      }
      if (initObj.hasOwnProperty('is_active')) {
        this.is_active = initObj.is_active
      }
      else {
        this.is_active = false;
      }
      if (initObj.hasOwnProperty('faults')) {
        this.faults = initObj.faults
      }
      else {
        this.faults = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Faults
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [version]
    bufferOffset = _serializer.int32(obj.version, buffer, bufferOffset);
    // Serialize message field [app_id]
    bufferOffset = _serializer.int32(obj.app_id, buffer, bufferOffset);
    // Serialize message field [is_active]
    bufferOffset = _serializer.bool(obj.is_active, buffer, bufferOffset);
    // Serialize message field [faults]
    // Serialize the length for message field [faults]
    bufferOffset = _serializer.uint32(obj.faults.length, buffer, bufferOffset);
    obj.faults.forEach((val) => {
      bufferOffset = Fault.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Faults
    let len;
    let data = new Faults(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [version]
    data.version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [app_id]
    data.app_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_active]
    data.is_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [faults]
    // Deserialize array length for message field [faults]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faults = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faults[i] = Fault.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.faults.forEach((val) => {
      length += Fault.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Faults';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b11ea54ef0a0c41706887becbb1308cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    int32   version     # 版本号
    int32   app_id     # 应用app所分配的id
    bool   is_active     # 应用是否激活，激活为true，未激活为false
    Fault[] faults # 故障集
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: ros_interface/Fault
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
    const resolved = new Faults(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.app_id !== undefined) {
      resolved.app_id = msg.app_id;
    }
    else {
      resolved.app_id = 0
    }

    if (msg.is_active !== undefined) {
      resolved.is_active = msg.is_active;
    }
    else {
      resolved.is_active = false
    }

    if (msg.faults !== undefined) {
      resolved.faults = new Array(msg.faults.length);
      for (let i = 0; i < resolved.faults.length; ++i) {
        resolved.faults[i] = Fault.Resolve(msg.faults[i]);
      }
    }
    else {
      resolved.faults = []
    }

    return resolved;
    }
};

module.exports = Faults;
