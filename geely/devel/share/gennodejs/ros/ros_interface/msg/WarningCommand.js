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

class WarningCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sound_alarm = null;
      this.light_alarm = null;
      this.media_alarm = null;
      this.motion_alarm = null;
    }
    else {
      if (initObj.hasOwnProperty('sound_alarm')) {
        this.sound_alarm = initObj.sound_alarm
      }
      else {
        this.sound_alarm = 0;
      }
      if (initObj.hasOwnProperty('light_alarm')) {
        this.light_alarm = initObj.light_alarm
      }
      else {
        this.light_alarm = 0;
      }
      if (initObj.hasOwnProperty('media_alarm')) {
        this.media_alarm = initObj.media_alarm
      }
      else {
        this.media_alarm = 0;
      }
      if (initObj.hasOwnProperty('motion_alarm')) {
        this.motion_alarm = initObj.motion_alarm
      }
      else {
        this.motion_alarm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningCommand
    // Serialize message field [sound_alarm]
    bufferOffset = _serializer.int32(obj.sound_alarm, buffer, bufferOffset);
    // Serialize message field [light_alarm]
    bufferOffset = _serializer.int32(obj.light_alarm, buffer, bufferOffset);
    // Serialize message field [media_alarm]
    bufferOffset = _serializer.int32(obj.media_alarm, buffer, bufferOffset);
    // Serialize message field [motion_alarm]
    bufferOffset = _serializer.int32(obj.motion_alarm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningCommand
    let len;
    let data = new WarningCommand(null);
    // Deserialize message field [sound_alarm]
    data.sound_alarm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [light_alarm]
    data.light_alarm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [media_alarm]
    data.media_alarm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motion_alarm]
    data.motion_alarm = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/WarningCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a3d05783924d6451d7d0d7d30d200dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   sound_alarm     # 声音告警
    int32   light_alarm     # 车灯告警
    int32   media_alarm     # 媒体告警
    int32   motion_alarm     # 震动告警
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarningCommand(null);
    if (msg.sound_alarm !== undefined) {
      resolved.sound_alarm = msg.sound_alarm;
    }
    else {
      resolved.sound_alarm = 0
    }

    if (msg.light_alarm !== undefined) {
      resolved.light_alarm = msg.light_alarm;
    }
    else {
      resolved.light_alarm = 0
    }

    if (msg.media_alarm !== undefined) {
      resolved.media_alarm = msg.media_alarm;
    }
    else {
      resolved.media_alarm = 0
    }

    if (msg.motion_alarm !== undefined) {
      resolved.motion_alarm = msg.motion_alarm;
    }
    else {
      resolved.motion_alarm = 0
    }

    return resolved;
    }
};

module.exports = WarningCommand;
