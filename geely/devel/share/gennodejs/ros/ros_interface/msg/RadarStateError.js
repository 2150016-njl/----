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

class RadarStateError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.persistent_error = null;
      this.temporary_error = null;
      this.interference_error = null;
      this.temperature_error = null;
      this.voltage_error = null;
      this.block_error = null;
      this.broadcast_error = null;
      this.electric_axis_error = null;
      this.config_error = null;
      this.calibration_error = null;
    }
    else {
      if (initObj.hasOwnProperty('persistent_error')) {
        this.persistent_error = initObj.persistent_error
      }
      else {
        this.persistent_error = 0;
      }
      if (initObj.hasOwnProperty('temporary_error')) {
        this.temporary_error = initObj.temporary_error
      }
      else {
        this.temporary_error = 0;
      }
      if (initObj.hasOwnProperty('interference_error')) {
        this.interference_error = initObj.interference_error
      }
      else {
        this.interference_error = 0;
      }
      if (initObj.hasOwnProperty('temperature_error')) {
        this.temperature_error = initObj.temperature_error
      }
      else {
        this.temperature_error = 0;
      }
      if (initObj.hasOwnProperty('voltage_error')) {
        this.voltage_error = initObj.voltage_error
      }
      else {
        this.voltage_error = 0;
      }
      if (initObj.hasOwnProperty('block_error')) {
        this.block_error = initObj.block_error
      }
      else {
        this.block_error = 0;
      }
      if (initObj.hasOwnProperty('broadcast_error')) {
        this.broadcast_error = initObj.broadcast_error
      }
      else {
        this.broadcast_error = 0;
      }
      if (initObj.hasOwnProperty('electric_axis_error')) {
        this.electric_axis_error = initObj.electric_axis_error
      }
      else {
        this.electric_axis_error = 0;
      }
      if (initObj.hasOwnProperty('config_error')) {
        this.config_error = initObj.config_error
      }
      else {
        this.config_error = 0;
      }
      if (initObj.hasOwnProperty('calibration_error')) {
        this.calibration_error = initObj.calibration_error
      }
      else {
        this.calibration_error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarStateError
    // Serialize message field [persistent_error]
    bufferOffset = _serializer.uint8(obj.persistent_error, buffer, bufferOffset);
    // Serialize message field [temporary_error]
    bufferOffset = _serializer.uint8(obj.temporary_error, buffer, bufferOffset);
    // Serialize message field [interference_error]
    bufferOffset = _serializer.uint8(obj.interference_error, buffer, bufferOffset);
    // Serialize message field [temperature_error]
    bufferOffset = _serializer.uint8(obj.temperature_error, buffer, bufferOffset);
    // Serialize message field [voltage_error]
    bufferOffset = _serializer.uint8(obj.voltage_error, buffer, bufferOffset);
    // Serialize message field [block_error]
    bufferOffset = _serializer.uint8(obj.block_error, buffer, bufferOffset);
    // Serialize message field [broadcast_error]
    bufferOffset = _serializer.uint8(obj.broadcast_error, buffer, bufferOffset);
    // Serialize message field [electric_axis_error]
    bufferOffset = _serializer.uint8(obj.electric_axis_error, buffer, bufferOffset);
    // Serialize message field [config_error]
    bufferOffset = _serializer.uint8(obj.config_error, buffer, bufferOffset);
    // Serialize message field [calibration_error]
    bufferOffset = _serializer.uint8(obj.calibration_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarStateError
    let len;
    let data = new RadarStateError(null);
    // Deserialize message field [persistent_error]
    data.persistent_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [temporary_error]
    data.temporary_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [interference_error]
    data.interference_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [temperature_error]
    data.temperature_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voltage_error]
    data.voltage_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [block_error]
    data.block_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [broadcast_error]
    data.broadcast_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [electric_axis_error]
    data.electric_axis_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [config_error]
    data.config_error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [calibration_error]
    data.calibration_error = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RadarStateError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4942ff8a1bc3c01e0fec7de2001e444c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   persistent_error     #  
    uint8   temporary_error     #  
    uint8   interference_error     #  
    uint8   temperature_error     #  
    uint8   voltage_error     #  
    uint8   block_error     #  
    uint8   broadcast_error     #  
    uint8   electric_axis_error     #  
    uint8   config_error     #  
    uint8   calibration_error     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarStateError(null);
    if (msg.persistent_error !== undefined) {
      resolved.persistent_error = msg.persistent_error;
    }
    else {
      resolved.persistent_error = 0
    }

    if (msg.temporary_error !== undefined) {
      resolved.temporary_error = msg.temporary_error;
    }
    else {
      resolved.temporary_error = 0
    }

    if (msg.interference_error !== undefined) {
      resolved.interference_error = msg.interference_error;
    }
    else {
      resolved.interference_error = 0
    }

    if (msg.temperature_error !== undefined) {
      resolved.temperature_error = msg.temperature_error;
    }
    else {
      resolved.temperature_error = 0
    }

    if (msg.voltage_error !== undefined) {
      resolved.voltage_error = msg.voltage_error;
    }
    else {
      resolved.voltage_error = 0
    }

    if (msg.block_error !== undefined) {
      resolved.block_error = msg.block_error;
    }
    else {
      resolved.block_error = 0
    }

    if (msg.broadcast_error !== undefined) {
      resolved.broadcast_error = msg.broadcast_error;
    }
    else {
      resolved.broadcast_error = 0
    }

    if (msg.electric_axis_error !== undefined) {
      resolved.electric_axis_error = msg.electric_axis_error;
    }
    else {
      resolved.electric_axis_error = 0
    }

    if (msg.config_error !== undefined) {
      resolved.config_error = msg.config_error;
    }
    else {
      resolved.config_error = 0
    }

    if (msg.calibration_error !== undefined) {
      resolved.calibration_error = msg.calibration_error;
    }
    else {
      resolved.calibration_error = 0
    }

    return resolved;
    }
};

module.exports = RadarStateError;
