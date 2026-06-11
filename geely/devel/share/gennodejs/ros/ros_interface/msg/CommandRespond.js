// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CommandRespond {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.self_id = null;
      this.respond_id = null;
      this.status = null;
      this.fail_code = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('self_id')) {
        this.self_id = initObj.self_id
      }
      else {
        this.self_id = 0;
      }
      if (initObj.hasOwnProperty('respond_id')) {
        this.respond_id = initObj.respond_id
      }
      else {
        this.respond_id = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('fail_code')) {
        this.fail_code = initObj.fail_code
      }
      else {
        this.fail_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommandRespond
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [self_id]
    bufferOffset = _serializer.int8(obj.self_id, buffer, bufferOffset);
    // Serialize message field [respond_id]
    bufferOffset = _serializer.int8(obj.respond_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [fail_code]
    bufferOffset = _serializer.int32(obj.fail_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandRespond
    let len;
    let data = new CommandRespond(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [self_id]
    data.self_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [respond_id]
    data.respond_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [fail_code]
    data.fail_code = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/CommandRespond';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '351adec90bf32bafe2da3e2e3f26375e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    string   name     # 发送指令的节点名称
    int8   self_id     # 发送节点的ID号，参考apps描述
    int8   respond_id     #  
    int8   status     # 0 无响应 1 响应失败 2 响应成功
    int32   fail_code     # 失败原因
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommandRespond(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.self_id !== undefined) {
      resolved.self_id = msg.self_id;
    }
    else {
      resolved.self_id = 0
    }

    if (msg.respond_id !== undefined) {
      resolved.respond_id = msg.respond_id;
    }
    else {
      resolved.respond_id = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.fail_code !== undefined) {
      resolved.fail_code = msg.fail_code;
    }
    else {
      resolved.fail_code = 0
    }

    return resolved;
    }
};

module.exports = CommandRespond;
