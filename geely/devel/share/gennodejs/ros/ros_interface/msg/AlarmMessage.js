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

class AlarmMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.alarm_proc = null;
      this.alarm_level = null;
      this.alarm_type = null;
      this.alarm_id = null;
      this.alarm_display = null;
      this.alarm_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('alarm_proc')) {
        this.alarm_proc = initObj.alarm_proc
      }
      else {
        this.alarm_proc = '';
      }
      if (initObj.hasOwnProperty('alarm_level')) {
        this.alarm_level = initObj.alarm_level
      }
      else {
        this.alarm_level = 0;
      }
      if (initObj.hasOwnProperty('alarm_type')) {
        this.alarm_type = initObj.alarm_type
      }
      else {
        this.alarm_type = 0;
      }
      if (initObj.hasOwnProperty('alarm_id')) {
        this.alarm_id = initObj.alarm_id
      }
      else {
        this.alarm_id = 0;
      }
      if (initObj.hasOwnProperty('alarm_display')) {
        this.alarm_display = initObj.alarm_display
      }
      else {
        this.alarm_display = 0;
      }
      if (initObj.hasOwnProperty('alarm_data')) {
        this.alarm_data = initObj.alarm_data
      }
      else {
        this.alarm_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AlarmMessage
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [alarm_proc]
    bufferOffset = _serializer.string(obj.alarm_proc, buffer, bufferOffset);
    // Serialize message field [alarm_level]
    bufferOffset = _serializer.int32(obj.alarm_level, buffer, bufferOffset);
    // Serialize message field [alarm_type]
    bufferOffset = _serializer.int32(obj.alarm_type, buffer, bufferOffset);
    // Serialize message field [alarm_id]
    bufferOffset = _serializer.int32(obj.alarm_id, buffer, bufferOffset);
    // Serialize message field [alarm_display]
    bufferOffset = _serializer.int32(obj.alarm_display, buffer, bufferOffset);
    // Serialize message field [alarm_data]
    bufferOffset = _serializer.string(obj.alarm_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AlarmMessage
    let len;
    let data = new AlarmMessage(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [alarm_proc]
    data.alarm_proc = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alarm_level]
    data.alarm_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarm_type]
    data.alarm_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarm_id]
    data.alarm_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarm_display]
    data.alarm_display = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarm_data]
    data.alarm_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.alarm_proc.length;
    length += object.alarm_data.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/AlarmMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '560775a3f63608849dea5a7c395bc22e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    string   alarm_proc     # 产生告警的进程名
    int32   alarm_level     # 告警等级
    int32   alarm_type     # 告警类型
    int32   alarm_id     # 告警序列号，用于恢复告警
    int32   alarm_display     # 告警展示类型
    string   alarm_data     # 告警正文
    
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
    const resolved = new AlarmMessage(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.alarm_proc !== undefined) {
      resolved.alarm_proc = msg.alarm_proc;
    }
    else {
      resolved.alarm_proc = ''
    }

    if (msg.alarm_level !== undefined) {
      resolved.alarm_level = msg.alarm_level;
    }
    else {
      resolved.alarm_level = 0
    }

    if (msg.alarm_type !== undefined) {
      resolved.alarm_type = msg.alarm_type;
    }
    else {
      resolved.alarm_type = 0
    }

    if (msg.alarm_id !== undefined) {
      resolved.alarm_id = msg.alarm_id;
    }
    else {
      resolved.alarm_id = 0
    }

    if (msg.alarm_display !== undefined) {
      resolved.alarm_display = msg.alarm_display;
    }
    else {
      resolved.alarm_display = 0
    }

    if (msg.alarm_data !== undefined) {
      resolved.alarm_data = msg.alarm_data;
    }
    else {
      resolved.alarm_data = ''
    }

    return resolved;
    }
};

module.exports = AlarmMessage;
