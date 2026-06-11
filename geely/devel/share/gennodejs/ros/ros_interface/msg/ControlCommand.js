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

class ControlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steer_driving_mode = null;
      this.front_steering_target = null;
      this.rear_steering_target = null;
      this.front_steering_rate = null;
      this.rear_steering_rate = null;
      this.accel_driving_mode = null;
      this.accel_value = null;
      this.brake_driving_mode = null;
      this.brake_value = null;
      this.backup_brake_driving_mode = null;
      this.backup_brake_value = null;
      this.epb_driving_mode = null;
      this.epb_level = null;
      this.gear_driving_mode = null;
      this.emergency_brake_enable = null;
      this.gear_location = null;
      this.speed = null;
      this.acceleration = null;
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
      if (initObj.hasOwnProperty('steer_driving_mode')) {
        this.steer_driving_mode = initObj.steer_driving_mode
      }
      else {
        this.steer_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('front_steering_target')) {
        this.front_steering_target = initObj.front_steering_target
      }
      else {
        this.front_steering_target = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_target')) {
        this.rear_steering_target = initObj.rear_steering_target
      }
      else {
        this.rear_steering_target = 0.0;
      }
      if (initObj.hasOwnProperty('front_steering_rate')) {
        this.front_steering_rate = initObj.front_steering_rate
      }
      else {
        this.front_steering_rate = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_rate')) {
        this.rear_steering_rate = initObj.rear_steering_rate
      }
      else {
        this.rear_steering_rate = 0.0;
      }
      if (initObj.hasOwnProperty('accel_driving_mode')) {
        this.accel_driving_mode = initObj.accel_driving_mode
      }
      else {
        this.accel_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('accel_value')) {
        this.accel_value = initObj.accel_value
      }
      else {
        this.accel_value = 0.0;
      }
      if (initObj.hasOwnProperty('brake_driving_mode')) {
        this.brake_driving_mode = initObj.brake_driving_mode
      }
      else {
        this.brake_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('brake_value')) {
        this.brake_value = initObj.brake_value
      }
      else {
        this.brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('backup_brake_driving_mode')) {
        this.backup_brake_driving_mode = initObj.backup_brake_driving_mode
      }
      else {
        this.backup_brake_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('backup_brake_value')) {
        this.backup_brake_value = initObj.backup_brake_value
      }
      else {
        this.backup_brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('epb_driving_mode')) {
        this.epb_driving_mode = initObj.epb_driving_mode
      }
      else {
        this.epb_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('epb_level')) {
        this.epb_level = initObj.epb_level
      }
      else {
        this.epb_level = 0;
      }
      if (initObj.hasOwnProperty('gear_driving_mode')) {
        this.gear_driving_mode = initObj.gear_driving_mode
      }
      else {
        this.gear_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('emergency_brake_enable')) {
        this.emergency_brake_enable = initObj.emergency_brake_enable
      }
      else {
        this.emergency_brake_enable = 0;
      }
      if (initObj.hasOwnProperty('gear_location')) {
        this.gear_location = initObj.gear_location
      }
      else {
        this.gear_location = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
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
    // Serializes a message object of type ControlCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steer_driving_mode]
    bufferOffset = _serializer.int32(obj.steer_driving_mode, buffer, bufferOffset);
    // Serialize message field [front_steering_target]
    bufferOffset = _serializer.float64(obj.front_steering_target, buffer, bufferOffset);
    // Serialize message field [rear_steering_target]
    bufferOffset = _serializer.float64(obj.rear_steering_target, buffer, bufferOffset);
    // Serialize message field [front_steering_rate]
    bufferOffset = _serializer.float64(obj.front_steering_rate, buffer, bufferOffset);
    // Serialize message field [rear_steering_rate]
    bufferOffset = _serializer.float64(obj.rear_steering_rate, buffer, bufferOffset);
    // Serialize message field [accel_driving_mode]
    bufferOffset = _serializer.int32(obj.accel_driving_mode, buffer, bufferOffset);
    // Serialize message field [accel_value]
    bufferOffset = _serializer.float64(obj.accel_value, buffer, bufferOffset);
    // Serialize message field [brake_driving_mode]
    bufferOffset = _serializer.int32(obj.brake_driving_mode, buffer, bufferOffset);
    // Serialize message field [brake_value]
    bufferOffset = _serializer.float64(obj.brake_value, buffer, bufferOffset);
    // Serialize message field [backup_brake_driving_mode]
    bufferOffset = _serializer.int32(obj.backup_brake_driving_mode, buffer, bufferOffset);
    // Serialize message field [backup_brake_value]
    bufferOffset = _serializer.float64(obj.backup_brake_value, buffer, bufferOffset);
    // Serialize message field [epb_driving_mode]
    bufferOffset = _serializer.int32(obj.epb_driving_mode, buffer, bufferOffset);
    // Serialize message field [epb_level]
    bufferOffset = _serializer.int32(obj.epb_level, buffer, bufferOffset);
    // Serialize message field [gear_driving_mode]
    bufferOffset = _serializer.int32(obj.gear_driving_mode, buffer, bufferOffset);
    // Serialize message field [emergency_brake_enable]
    bufferOffset = _serializer.int8(obj.emergency_brake_enable, buffer, bufferOffset);
    // Serialize message field [gear_location]
    bufferOffset = _serializer.int32(obj.gear_location, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float64(obj.acceleration, buffer, bufferOffset);
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
    //deserializes a message object of type ControlCommand
    let len;
    let data = new ControlCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer_driving_mode]
    data.steer_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_steering_target]
    data.front_steering_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_target]
    data.rear_steering_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steering_rate]
    data.front_steering_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_rate]
    data.rear_steering_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_driving_mode]
    data.accel_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accel_value]
    data.accel_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_driving_mode]
    data.brake_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_value]
    data.brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backup_brake_driving_mode]
    data.backup_brake_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [backup_brake_value]
    data.backup_brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [epb_driving_mode]
    data.epb_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epb_level]
    data.epb_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_driving_mode]
    data.gear_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emergency_brake_enable]
    data.emergency_brake_enable = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gear_location]
    data.gear_location = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float64(buffer, bufferOffset);
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
    return length + 165;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03627dc94a89132c997f76d6408a79d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   steer_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
    float64   front_steering_target     # target steering angle
    float64   rear_steering_target     # target steering angle
    float64   front_steering_rate     # target non-directional steering rate
    float64   rear_steering_rate     # target non-directional steering rate
    int32   accel_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
    float64   accel_value     # target accel value
    int32   brake_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
    float64   brake_value     # target brake
    int32   backup_brake_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
    float64   backup_brake_value     # target brake
    int32   epb_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
    int32   epb_level     # 0=RELEASE 1=APPLIY 2=INVALID
    int32   gear_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE 4=EMERGENCY_MODE
    int8   emergency_brake_enable     # 0=disenable  1=enable
    int32   gear_location     # 0=GEAR_NEUTRAL 1=GEAR_DRIVE 2=GEAR_REVERSE 3=GEAR_PARKING 4=GEAR_LOW 5=GEAR_INVALID 6=GEAR_NONE
    float64   speed     # target speed, in m/s
    float64   acceleration     # target acceleration in m`s^-2
    int32   turn_lamp_ctrl     # 转向灯 0 关闭 1 开启 2 不响应
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
    const resolved = new ControlCommand(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steer_driving_mode !== undefined) {
      resolved.steer_driving_mode = msg.steer_driving_mode;
    }
    else {
      resolved.steer_driving_mode = 0
    }

    if (msg.front_steering_target !== undefined) {
      resolved.front_steering_target = msg.front_steering_target;
    }
    else {
      resolved.front_steering_target = 0.0
    }

    if (msg.rear_steering_target !== undefined) {
      resolved.rear_steering_target = msg.rear_steering_target;
    }
    else {
      resolved.rear_steering_target = 0.0
    }

    if (msg.front_steering_rate !== undefined) {
      resolved.front_steering_rate = msg.front_steering_rate;
    }
    else {
      resolved.front_steering_rate = 0.0
    }

    if (msg.rear_steering_rate !== undefined) {
      resolved.rear_steering_rate = msg.rear_steering_rate;
    }
    else {
      resolved.rear_steering_rate = 0.0
    }

    if (msg.accel_driving_mode !== undefined) {
      resolved.accel_driving_mode = msg.accel_driving_mode;
    }
    else {
      resolved.accel_driving_mode = 0
    }

    if (msg.accel_value !== undefined) {
      resolved.accel_value = msg.accel_value;
    }
    else {
      resolved.accel_value = 0.0
    }

    if (msg.brake_driving_mode !== undefined) {
      resolved.brake_driving_mode = msg.brake_driving_mode;
    }
    else {
      resolved.brake_driving_mode = 0
    }

    if (msg.brake_value !== undefined) {
      resolved.brake_value = msg.brake_value;
    }
    else {
      resolved.brake_value = 0.0
    }

    if (msg.backup_brake_driving_mode !== undefined) {
      resolved.backup_brake_driving_mode = msg.backup_brake_driving_mode;
    }
    else {
      resolved.backup_brake_driving_mode = 0
    }

    if (msg.backup_brake_value !== undefined) {
      resolved.backup_brake_value = msg.backup_brake_value;
    }
    else {
      resolved.backup_brake_value = 0.0
    }

    if (msg.epb_driving_mode !== undefined) {
      resolved.epb_driving_mode = msg.epb_driving_mode;
    }
    else {
      resolved.epb_driving_mode = 0
    }

    if (msg.epb_level !== undefined) {
      resolved.epb_level = msg.epb_level;
    }
    else {
      resolved.epb_level = 0
    }

    if (msg.gear_driving_mode !== undefined) {
      resolved.gear_driving_mode = msg.gear_driving_mode;
    }
    else {
      resolved.gear_driving_mode = 0
    }

    if (msg.emergency_brake_enable !== undefined) {
      resolved.emergency_brake_enable = msg.emergency_brake_enable;
    }
    else {
      resolved.emergency_brake_enable = 0
    }

    if (msg.gear_location !== undefined) {
      resolved.gear_location = msg.gear_location;
    }
    else {
      resolved.gear_location = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
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

module.exports = ControlCommand;
