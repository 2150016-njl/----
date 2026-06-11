// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HMIObuCmd = require('./HMIObuCmd.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HMIObuCmdMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.name = null;
      this.obu_cmd_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('obu_cmd_list')) {
        this.obu_cmd_list = initObj.obu_cmd_list
      }
      else {
        this.obu_cmd_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIObuCmdMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [obu_cmd_list]
    // Serialize the length for message field [obu_cmd_list]
    bufferOffset = _serializer.uint32(obj.obu_cmd_list.length, buffer, bufferOffset);
    obj.obu_cmd_list.forEach((val) => {
      bufferOffset = HMIObuCmd.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIObuCmdMsg
    let len;
    let data = new HMIObuCmdMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obu_cmd_list]
    // Deserialize array length for message field [obu_cmd_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obu_cmd_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obu_cmd_list[i] = HMIObuCmd.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 8 * object.obu_cmd_list.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/HMIObuCmdMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04b2793959a8d3e1b67e71cb9253a84d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    int32   id     # obu的id身份
    string   name     # obu的名称
    HMIObuCmd[] obu_cmd_list # 命令列表
    
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
    MSG: ros_interface/HMIObuCmd
    int32   code     # 指令编码：10001、自动驾驶使能开关；
    int32   val     # 编码值：0、不响应；1、自定义状态；2、自定义状态...（更多参考：“ObuCmdMsg.md”）
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIObuCmdMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.obu_cmd_list !== undefined) {
      resolved.obu_cmd_list = new Array(msg.obu_cmd_list.length);
      for (let i = 0; i < resolved.obu_cmd_list.length; ++i) {
        resolved.obu_cmd_list[i] = HMIObuCmd.Resolve(msg.obu_cmd_list[i]);
      }
    }
    else {
      resolved.obu_cmd_list = []
    }

    return resolved;
    }
};

module.exports = HMIObuCmdMsg;
