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

class PlanningCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.turn_lamp_ctrl = null;
      this.high_beam_ctrl = null;
      this.low_beam_ctrl = null;
      this.horn_ctrl = null;
      this.front_wiper_ctrl = null;
      this.rear_wiper_ctrl = null;
      this.position_lamp_ctrl = null;
      this.front_fog_lamp_ctrl = null;
      this.rear_fog_lamp_ctrl = null;
      this.brake_lamp_ctrl = null;
      this.alarm_lamp_ctrl = null;
      this.lf_door_ctrl = null;
      this.rf_door_ctrl = null;
      this.lr_door_ctrl = null;
      this.rr_door_ctrl = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('turn_lamp_ctrl')) {
        this.turn_lamp_ctrl = initObj.turn_lamp_ctrl
      }
      else {
        this.turn_lamp_ctrl = 0;
      }
      if (initObj.hasOwnProperty('high_beam_ctrl')) {
        this.high_beam_ctrl = initObj.high_beam_ctrl
      }
      else {
        this.high_beam_ctrl = 0;
      }
      if (initObj.hasOwnProperty('low_beam_ctrl')) {
        this.low_beam_ctrl = initObj.low_beam_ctrl
      }
      else {
        this.low_beam_ctrl = 0;
      }
      if (initObj.hasOwnProperty('horn_ctrl')) {
        this.horn_ctrl = initObj.horn_ctrl
      }
      else {
        this.horn_ctrl = 0;
      }
      if (initObj.hasOwnProperty('front_wiper_ctrl')) {
        this.front_wiper_ctrl = initObj.front_wiper_ctrl
      }
      else {
        this.front_wiper_ctrl = 0;
      }
      if (initObj.hasOwnProperty('rear_wiper_ctrl')) {
        this.rear_wiper_ctrl = initObj.rear_wiper_ctrl
      }
      else {
        this.rear_wiper_ctrl = 0;
      }
      if (initObj.hasOwnProperty('position_lamp_ctrl')) {
        this.position_lamp_ctrl = initObj.position_lamp_ctrl
      }
      else {
        this.position_lamp_ctrl = 0;
      }
      if (initObj.hasOwnProperty('front_fog_lamp_ctrl')) {
        this.front_fog_lamp_ctrl = initObj.front_fog_lamp_ctrl
      }
      else {
        this.front_fog_lamp_ctrl = 0;
      }
      if (initObj.hasOwnProperty('rear_fog_lamp_ctrl')) {
        this.rear_fog_lamp_ctrl = initObj.rear_fog_lamp_ctrl
      }
      else {
        this.rear_fog_lamp_ctrl = 0;
      }
      if (initObj.hasOwnProperty('brake_lamp_ctrl')) {
        this.brake_lamp_ctrl = initObj.brake_lamp_ctrl
      }
      else {
        this.brake_lamp_ctrl = 0;
      }
      if (initObj.hasOwnProperty('alarm_lamp_ctrl')) {
        this.alarm_lamp_ctrl = initObj.alarm_lamp_ctrl
      }
      else {
        this.alarm_lamp_ctrl = 0;
      }
      if (initObj.hasOwnProperty('lf_door_ctrl')) {
        this.lf_door_ctrl = initObj.lf_door_ctrl
      }
      else {
        this.lf_door_ctrl = 0;
      }
      if (initObj.hasOwnProperty('rf_door_ctrl')) {
        this.rf_door_ctrl = initObj.rf_door_ctrl
      }
      else {
        this.rf_door_ctrl = 0;
      }
      if (initObj.hasOwnProperty('lr_door_ctrl')) {
        this.lr_door_ctrl = initObj.lr_door_ctrl
      }
      else {
        this.lr_door_ctrl = 0;
      }
      if (initObj.hasOwnProperty('rr_door_ctrl')) {
        this.rr_door_ctrl = initObj.rr_door_ctrl
      }
      else {
        this.rr_door_ctrl = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [turn_lamp_ctrl]
    bufferOffset = _serializer.int32(obj.turn_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [high_beam_ctrl]
    bufferOffset = _serializer.int32(obj.high_beam_ctrl, buffer, bufferOffset);
    // Serialize message field [low_beam_ctrl]
    bufferOffset = _serializer.int32(obj.low_beam_ctrl, buffer, bufferOffset);
    // Serialize message field [horn_ctrl]
    bufferOffset = _serializer.int32(obj.horn_ctrl, buffer, bufferOffset);
    // Serialize message field [front_wiper_ctrl]
    bufferOffset = _serializer.int32(obj.front_wiper_ctrl, buffer, bufferOffset);
    // Serialize message field [rear_wiper_ctrl]
    bufferOffset = _serializer.int32(obj.rear_wiper_ctrl, buffer, bufferOffset);
    // Serialize message field [position_lamp_ctrl]
    bufferOffset = _serializer.int32(obj.position_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [front_fog_lamp_ctrl]
    bufferOffset = _serializer.int32(obj.front_fog_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [rear_fog_lamp_ctrl]
    bufferOffset = _serializer.int32(obj.rear_fog_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [brake_lamp_ctrl]
    bufferOffset = _serializer.int32(obj.brake_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [alarm_lamp_ctrl]
    bufferOffset = _serializer.int32(obj.alarm_lamp_ctrl, buffer, bufferOffset);
    // Serialize message field [lf_door_ctrl]
    bufferOffset = _serializer.int32(obj.lf_door_ctrl, buffer, bufferOffset);
    // Serialize message field [rf_door_ctrl]
    bufferOffset = _serializer.int32(obj.rf_door_ctrl, buffer, bufferOffset);
    // Serialize message field [lr_door_ctrl]
    bufferOffset = _serializer.int32(obj.lr_door_ctrl, buffer, bufferOffset);
    // Serialize message field [rr_door_ctrl]
    bufferOffset = _serializer.int32(obj.rr_door_ctrl, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningCmd
    let len;
    let data = new PlanningCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [turn_lamp_ctrl]
    data.turn_lamp_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [high_beam_ctrl]
    data.high_beam_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [low_beam_ctrl]
    data.low_beam_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horn_ctrl]
    data.horn_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_wiper_ctrl]
    data.front_wiper_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rear_wiper_ctrl]
    data.rear_wiper_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_lamp_ctrl]
    data.position_lamp_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_fog_lamp_ctrl]
    data.front_fog_lamp_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rear_fog_lamp_ctrl]
    data.rear_fog_lamp_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_lamp_ctrl]
    data.brake_lamp_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarm_lamp_ctrl]
    data.alarm_lamp_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lf_door_ctrl]
    data.lf_door_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rf_door_ctrl]
    data.rf_door_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lr_door_ctrl]
    data.lr_door_ctrl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rr_door_ctrl]
    data.rr_door_ctrl = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PlanningCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '988d2e6545b7aed3c7c802e455b6a331';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   turn_lamp_ctrl     # 转向灯 TURN_INACTIVE_SIGNAL:0 TURN_LEFT_SIGNAL:1 TURN_RIGHT_SIGNAL:2 TURN_INVALID_SIGNAL:3
    int32   high_beam_ctrl     # 0 关闭 1 开启 2 不响应
    int32   low_beam_ctrl     # 0 关闭 1 开启 2 不响应
    int32   horn_ctrl     # 0 关闭 1 开启 2 不响应
    int32   front_wiper_ctrl     # 前雨刮器 0 关闭 1 开启
    int32   rear_wiper_ctrl     # 后雨刮器 0 关闭 1 开启
    int32   position_lamp_ctrl     # 位置灯 0 关闭 1 开启
    int32   front_fog_lamp_ctrl     # 前雾灯 0 关闭 1 开启
    int32   rear_fog_lamp_ctrl     # 后雾灯 0 关闭 1 开启
    int32   brake_lamp_ctrl     # 刹车灯 一般情况自动控制 0 关闭 1 开启
    int32   alarm_lamp_ctrl     # 警报灯 双闪 0 关闭 1 开启
    int32   lf_door_ctrl     # 左前门控制 0 关闭 1 开启
    int32   rf_door_ctrl     # 右前门控制 0 关闭 1 开启
    int32   lr_door_ctrl     # 左后门控制 0 关闭 1 开启
    int32   rr_door_ctrl     # 右后门控制 0 关闭 1 开启
    
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
    const resolved = new PlanningCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.turn_lamp_ctrl !== undefined) {
      resolved.turn_lamp_ctrl = msg.turn_lamp_ctrl;
    }
    else {
      resolved.turn_lamp_ctrl = 0
    }

    if (msg.high_beam_ctrl !== undefined) {
      resolved.high_beam_ctrl = msg.high_beam_ctrl;
    }
    else {
      resolved.high_beam_ctrl = 0
    }

    if (msg.low_beam_ctrl !== undefined) {
      resolved.low_beam_ctrl = msg.low_beam_ctrl;
    }
    else {
      resolved.low_beam_ctrl = 0
    }

    if (msg.horn_ctrl !== undefined) {
      resolved.horn_ctrl = msg.horn_ctrl;
    }
    else {
      resolved.horn_ctrl = 0
    }

    if (msg.front_wiper_ctrl !== undefined) {
      resolved.front_wiper_ctrl = msg.front_wiper_ctrl;
    }
    else {
      resolved.front_wiper_ctrl = 0
    }

    if (msg.rear_wiper_ctrl !== undefined) {
      resolved.rear_wiper_ctrl = msg.rear_wiper_ctrl;
    }
    else {
      resolved.rear_wiper_ctrl = 0
    }

    if (msg.position_lamp_ctrl !== undefined) {
      resolved.position_lamp_ctrl = msg.position_lamp_ctrl;
    }
    else {
      resolved.position_lamp_ctrl = 0
    }

    if (msg.front_fog_lamp_ctrl !== undefined) {
      resolved.front_fog_lamp_ctrl = msg.front_fog_lamp_ctrl;
    }
    else {
      resolved.front_fog_lamp_ctrl = 0
    }

    if (msg.rear_fog_lamp_ctrl !== undefined) {
      resolved.rear_fog_lamp_ctrl = msg.rear_fog_lamp_ctrl;
    }
    else {
      resolved.rear_fog_lamp_ctrl = 0
    }

    if (msg.brake_lamp_ctrl !== undefined) {
      resolved.brake_lamp_ctrl = msg.brake_lamp_ctrl;
    }
    else {
      resolved.brake_lamp_ctrl = 0
    }

    if (msg.alarm_lamp_ctrl !== undefined) {
      resolved.alarm_lamp_ctrl = msg.alarm_lamp_ctrl;
    }
    else {
      resolved.alarm_lamp_ctrl = 0
    }

    if (msg.lf_door_ctrl !== undefined) {
      resolved.lf_door_ctrl = msg.lf_door_ctrl;
    }
    else {
      resolved.lf_door_ctrl = 0
    }

    if (msg.rf_door_ctrl !== undefined) {
      resolved.rf_door_ctrl = msg.rf_door_ctrl;
    }
    else {
      resolved.rf_door_ctrl = 0
    }

    if (msg.lr_door_ctrl !== undefined) {
      resolved.lr_door_ctrl = msg.lr_door_ctrl;
    }
    else {
      resolved.lr_door_ctrl = 0
    }

    if (msg.rr_door_ctrl !== undefined) {
      resolved.rr_door_ctrl = msg.rr_door_ctrl;
    }
    else {
      resolved.rr_door_ctrl = 0
    }

    return resolved;
    }
};

module.exports = PlanningCmd;
