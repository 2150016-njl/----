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

class VehicleSignal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turn_signal = null;
      this.high_beam = null;
      this.low_beam = null;
      this.horn = null;
      this.emergency_light = null;
    }
    else {
      if (initObj.hasOwnProperty('turn_signal')) {
        this.turn_signal = initObj.turn_signal
      }
      else {
        this.turn_signal = 0;
      }
      if (initObj.hasOwnProperty('high_beam')) {
        this.high_beam = initObj.high_beam
      }
      else {
        this.high_beam = false;
      }
      if (initObj.hasOwnProperty('low_beam')) {
        this.low_beam = initObj.low_beam
      }
      else {
        this.low_beam = false;
      }
      if (initObj.hasOwnProperty('horn')) {
        this.horn = initObj.horn
      }
      else {
        this.horn = false;
      }
      if (initObj.hasOwnProperty('emergency_light')) {
        this.emergency_light = initObj.emergency_light
      }
      else {
        this.emergency_light = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleSignal
    // Serialize message field [turn_signal]
    bufferOffset = _serializer.int32(obj.turn_signal, buffer, bufferOffset);
    // Serialize message field [high_beam]
    bufferOffset = _serializer.bool(obj.high_beam, buffer, bufferOffset);
    // Serialize message field [low_beam]
    bufferOffset = _serializer.bool(obj.low_beam, buffer, bufferOffset);
    // Serialize message field [horn]
    bufferOffset = _serializer.bool(obj.horn, buffer, bufferOffset);
    // Serialize message field [emergency_light]
    bufferOffset = _serializer.bool(obj.emergency_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSignal
    let len;
    let data = new VehicleSignal(null);
    // Deserialize message field [turn_signal]
    data.turn_signal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [high_beam]
    data.high_beam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [low_beam]
    data.low_beam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [horn]
    data.horn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_light]
    data.emergency_light = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/VehicleSignal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47860a6c8e7e3e428751d2354cd4426d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   turn_signal     # 转向信号
    bool   high_beam     # high beam
    bool   low_beam     # low beam
    bool   horn     # horn
    bool   emergency_light     # emergency light
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleSignal(null);
    if (msg.turn_signal !== undefined) {
      resolved.turn_signal = msg.turn_signal;
    }
    else {
      resolved.turn_signal = 0
    }

    if (msg.high_beam !== undefined) {
      resolved.high_beam = msg.high_beam;
    }
    else {
      resolved.high_beam = false
    }

    if (msg.low_beam !== undefined) {
      resolved.low_beam = msg.low_beam;
    }
    else {
      resolved.low_beam = false
    }

    if (msg.horn !== undefined) {
      resolved.horn = msg.horn;
    }
    else {
      resolved.horn = false
    }

    if (msg.emergency_light !== undefined) {
      resolved.emergency_light = msg.emergency_light;
    }
    else {
      resolved.emergency_light = false
    }

    return resolved;
    }
};

module.exports = VehicleSignal;
