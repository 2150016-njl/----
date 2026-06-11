// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Message = require('./Message.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ModuleStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.self_id = null;
      this.status = null;
      this.messages = null;
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
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('messages')) {
        this.messages = initObj.messages
      }
      else {
        this.messages = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [self_id]
    bufferOffset = _serializer.int8(obj.self_id, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [messages]
    // Serialize the length for message field [messages]
    bufferOffset = _serializer.uint32(obj.messages.length, buffer, bufferOffset);
    obj.messages.forEach((val) => {
      bufferOffset = Message.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleStatus
    let len;
    let data = new ModuleStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [self_id]
    data.self_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [messages]
    // Deserialize array length for message field [messages]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.messages = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.messages[i] = Message.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 8 * object.messages.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ModuleStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bafbac172c87dca139533a49edfbc129';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    string   name     # 发送指令的节点名称
    int8   self_id     # 发送节点的ID号，参考apps描述
    int32   status     #  枚举方式 sef_id+status,比如设置1为开，2为关，当前sef_id是21，则在关闭状态下反馈值是 212
    Message[] messages # 需要输出的消息列表：eg:要求显示剩余里程数为100米，self_id 为21，里程数id为08，code值为2108，value值为10000，精度为cm
    
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
    MSG: ros_interface/Message
    int32   code     # 指定需要显示的值的code定义，需要与self_id绑定 作为前缀
    int32   value     # 对应显示的值或表达的状态
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleStatus(null);
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

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.messages !== undefined) {
      resolved.messages = new Array(msg.messages.length);
      for (let i = 0; i < resolved.messages.length; ++i) {
        resolved.messages[i] = Message.Resolve(msg.messages[i]);
      }
    }
    else {
      resolved.messages = []
    }

    return resolved;
    }
};

module.exports = ModuleStatus;
