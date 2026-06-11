// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WarningCommand = require('./WarningCommand.js');
let TrajectoryLimitCommand = require('./TrajectoryLimitCommand.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SecurityDecision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.warning_command = null;
      this.motion_alarm = null;
      this.brake_report = null;
      this.change_lane_command = null;
      this.trajectory_limit_command = null;
      this.park_command = null;
      this.drivingmode_report = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('warning_command')) {
        this.warning_command = initObj.warning_command
      }
      else {
        this.warning_command = new WarningCommand();
      }
      if (initObj.hasOwnProperty('motion_alarm')) {
        this.motion_alarm = initObj.motion_alarm
      }
      else {
        this.motion_alarm = new WarningCommand();
      }
      if (initObj.hasOwnProperty('brake_report')) {
        this.brake_report = initObj.brake_report
      }
      else {
        this.brake_report = 0;
      }
      if (initObj.hasOwnProperty('change_lane_command')) {
        this.change_lane_command = initObj.change_lane_command
      }
      else {
        this.change_lane_command = 0;
      }
      if (initObj.hasOwnProperty('trajectory_limit_command')) {
        this.trajectory_limit_command = initObj.trajectory_limit_command
      }
      else {
        this.trajectory_limit_command = new TrajectoryLimitCommand();
      }
      if (initObj.hasOwnProperty('park_command')) {
        this.park_command = initObj.park_command
      }
      else {
        this.park_command = 0;
      }
      if (initObj.hasOwnProperty('drivingmode_report')) {
        this.drivingmode_report = initObj.drivingmode_report
      }
      else {
        this.drivingmode_report = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SecurityDecision
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [warning_command]
    bufferOffset = WarningCommand.serialize(obj.warning_command, buffer, bufferOffset);
    // Serialize message field [motion_alarm]
    bufferOffset = WarningCommand.serialize(obj.motion_alarm, buffer, bufferOffset);
    // Serialize message field [brake_report]
    bufferOffset = _serializer.int32(obj.brake_report, buffer, bufferOffset);
    // Serialize message field [change_lane_command]
    bufferOffset = _serializer.int32(obj.change_lane_command, buffer, bufferOffset);
    // Serialize message field [trajectory_limit_command]
    bufferOffset = TrajectoryLimitCommand.serialize(obj.trajectory_limit_command, buffer, bufferOffset);
    // Serialize message field [park_command]
    bufferOffset = _serializer.int32(obj.park_command, buffer, bufferOffset);
    // Serialize message field [drivingmode_report]
    bufferOffset = _serializer.int32(obj.drivingmode_report, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SecurityDecision
    let len;
    let data = new SecurityDecision(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [warning_command]
    data.warning_command = WarningCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_alarm]
    data.motion_alarm = WarningCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_report]
    data.brake_report = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [change_lane_command]
    data.change_lane_command = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trajectory_limit_command]
    data.trajectory_limit_command = TrajectoryLimitCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [park_command]
    data.park_command = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drivingmode_report]
    data.drivingmode_report = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 66;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/SecurityDecision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12f094a22d15ee8e4e9e06d46a5b0c22';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    WarningCommand   warning_command     # 告警指令
    WarningCommand   motion_alarm     #  
    int32   brake_report     # 刹车报告
    int32   change_lane_command     # 换道指令
    TrajectoryLimitCommand   trajectory_limit_command     # 轨迹限制指令
    int32   park_command     # 停车指令
    int32   drivingmode_report     # 驾驶模式报告
    
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
    MSG: ros_interface/WarningCommand
    int32   sound_alarm     # 声音告警
    int32   light_alarm     # 车灯告警
    int32   media_alarm     # 媒体告警
    int32   motion_alarm     # 震动告警
    
    ================================================================================
    MSG: ros_interface/TrajectoryLimitCommand
    bool   speed_limit_enable     #  
    float64   speed_limit     # m/s
    bool   kappa_limit_enable     #  
    float64   kappa_limit     # deg/m
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SecurityDecision(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.warning_command !== undefined) {
      resolved.warning_command = WarningCommand.Resolve(msg.warning_command)
    }
    else {
      resolved.warning_command = new WarningCommand()
    }

    if (msg.motion_alarm !== undefined) {
      resolved.motion_alarm = WarningCommand.Resolve(msg.motion_alarm)
    }
    else {
      resolved.motion_alarm = new WarningCommand()
    }

    if (msg.brake_report !== undefined) {
      resolved.brake_report = msg.brake_report;
    }
    else {
      resolved.brake_report = 0
    }

    if (msg.change_lane_command !== undefined) {
      resolved.change_lane_command = msg.change_lane_command;
    }
    else {
      resolved.change_lane_command = 0
    }

    if (msg.trajectory_limit_command !== undefined) {
      resolved.trajectory_limit_command = TrajectoryLimitCommand.Resolve(msg.trajectory_limit_command)
    }
    else {
      resolved.trajectory_limit_command = new TrajectoryLimitCommand()
    }

    if (msg.park_command !== undefined) {
      resolved.park_command = msg.park_command;
    }
    else {
      resolved.park_command = 0
    }

    if (msg.drivingmode_report !== undefined) {
      resolved.drivingmode_report = msg.drivingmode_report;
    }
    else {
      resolved.drivingmode_report = 0
    }

    return resolved;
    }
};

module.exports = SecurityDecision;
