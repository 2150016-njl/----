// Auto-generated. Do not edit!

// (in-package rl_planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CSP {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.nx = null;
      this.sx_a = null;
      this.sx_b = null;
      this.sx_c = null;
      this.sx_d = null;
      this.sx_y = null;
      this.sy_a = null;
      this.sy_b = null;
      this.sy_c = null;
      this.sy_d = null;
      this.sy_y = null;
      this.sz_a = null;
      this.sz_b = null;
      this.sz_c = null;
      this.sz_d = null;
      this.sz_y = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = [];
      }
      if (initObj.hasOwnProperty('nx')) {
        this.nx = initObj.nx
      }
      else {
        this.nx = 0.0;
      }
      if (initObj.hasOwnProperty('sx_a')) {
        this.sx_a = initObj.sx_a
      }
      else {
        this.sx_a = [];
      }
      if (initObj.hasOwnProperty('sx_b')) {
        this.sx_b = initObj.sx_b
      }
      else {
        this.sx_b = [];
      }
      if (initObj.hasOwnProperty('sx_c')) {
        this.sx_c = initObj.sx_c
      }
      else {
        this.sx_c = [];
      }
      if (initObj.hasOwnProperty('sx_d')) {
        this.sx_d = initObj.sx_d
      }
      else {
        this.sx_d = [];
      }
      if (initObj.hasOwnProperty('sx_y')) {
        this.sx_y = initObj.sx_y
      }
      else {
        this.sx_y = [];
      }
      if (initObj.hasOwnProperty('sy_a')) {
        this.sy_a = initObj.sy_a
      }
      else {
        this.sy_a = [];
      }
      if (initObj.hasOwnProperty('sy_b')) {
        this.sy_b = initObj.sy_b
      }
      else {
        this.sy_b = [];
      }
      if (initObj.hasOwnProperty('sy_c')) {
        this.sy_c = initObj.sy_c
      }
      else {
        this.sy_c = [];
      }
      if (initObj.hasOwnProperty('sy_d')) {
        this.sy_d = initObj.sy_d
      }
      else {
        this.sy_d = [];
      }
      if (initObj.hasOwnProperty('sy_y')) {
        this.sy_y = initObj.sy_y
      }
      else {
        this.sy_y = [];
      }
      if (initObj.hasOwnProperty('sz_a')) {
        this.sz_a = initObj.sz_a
      }
      else {
        this.sz_a = [];
      }
      if (initObj.hasOwnProperty('sz_b')) {
        this.sz_b = initObj.sz_b
      }
      else {
        this.sz_b = [];
      }
      if (initObj.hasOwnProperty('sz_c')) {
        this.sz_c = initObj.sz_c
      }
      else {
        this.sz_c = [];
      }
      if (initObj.hasOwnProperty('sz_d')) {
        this.sz_d = initObj.sz_d
      }
      else {
        this.sz_d = [];
      }
      if (initObj.hasOwnProperty('sz_y')) {
        this.sz_y = initObj.sz_y
      }
      else {
        this.sz_y = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CSP
    // Serialize message field [s]
    bufferOffset = _arraySerializer.float64(obj.s, buffer, bufferOffset, null);
    // Serialize message field [nx]
    bufferOffset = _serializer.float64(obj.nx, buffer, bufferOffset);
    // Serialize message field [sx_a]
    bufferOffset = _arraySerializer.float64(obj.sx_a, buffer, bufferOffset, null);
    // Serialize message field [sx_b]
    bufferOffset = _arraySerializer.float64(obj.sx_b, buffer, bufferOffset, null);
    // Serialize message field [sx_c]
    bufferOffset = _arraySerializer.float64(obj.sx_c, buffer, bufferOffset, null);
    // Serialize message field [sx_d]
    bufferOffset = _arraySerializer.float64(obj.sx_d, buffer, bufferOffset, null);
    // Serialize message field [sx_y]
    bufferOffset = _arraySerializer.float64(obj.sx_y, buffer, bufferOffset, null);
    // Serialize message field [sy_a]
    bufferOffset = _arraySerializer.float64(obj.sy_a, buffer, bufferOffset, null);
    // Serialize message field [sy_b]
    bufferOffset = _arraySerializer.float64(obj.sy_b, buffer, bufferOffset, null);
    // Serialize message field [sy_c]
    bufferOffset = _arraySerializer.float64(obj.sy_c, buffer, bufferOffset, null);
    // Serialize message field [sy_d]
    bufferOffset = _arraySerializer.float64(obj.sy_d, buffer, bufferOffset, null);
    // Serialize message field [sy_y]
    bufferOffset = _arraySerializer.float64(obj.sy_y, buffer, bufferOffset, null);
    // Serialize message field [sz_a]
    bufferOffset = _arraySerializer.float64(obj.sz_a, buffer, bufferOffset, null);
    // Serialize message field [sz_b]
    bufferOffset = _arraySerializer.float64(obj.sz_b, buffer, bufferOffset, null);
    // Serialize message field [sz_c]
    bufferOffset = _arraySerializer.float64(obj.sz_c, buffer, bufferOffset, null);
    // Serialize message field [sz_d]
    bufferOffset = _arraySerializer.float64(obj.sz_d, buffer, bufferOffset, null);
    // Serialize message field [sz_y]
    bufferOffset = _arraySerializer.float64(obj.sz_y, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CSP
    let len;
    let data = new CSP(null);
    // Deserialize message field [s]
    data.s = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [nx]
    data.nx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sx_a]
    data.sx_a = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sx_b]
    data.sx_b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sx_c]
    data.sx_c = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sx_d]
    data.sx_d = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sx_y]
    data.sx_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sy_a]
    data.sy_a = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sy_b]
    data.sy_b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sy_c]
    data.sy_c = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sy_d]
    data.sy_d = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sy_y]
    data.sy_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sz_a]
    data.sz_a = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sz_b]
    data.sz_b = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sz_c]
    data.sz_c = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sz_d]
    data.sz_d = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [sz_y]
    data.sz_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.s.length;
    length += 8 * object.sx_a.length;
    length += 8 * object.sx_b.length;
    length += 8 * object.sx_c.length;
    length += 8 * object.sx_d.length;
    length += 8 * object.sx_y.length;
    length += 8 * object.sy_a.length;
    length += 8 * object.sy_b.length;
    length += 8 * object.sy_c.length;
    length += 8 * object.sy_d.length;
    length += 8 * object.sy_y.length;
    length += 8 * object.sz_a.length;
    length += 8 * object.sz_b.length;
    length += 8 * object.sz_c.length;
    length += 8 * object.sz_d.length;
    length += 8 * object.sz_y.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_planning/CSP';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c6b7b121537c4008bf00bae402fe62f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] s
    float64 nx
    
    float64[] sx_a
    float64[] sx_b
    float64[] sx_c
    float64[] sx_d
    float64[] sx_y
    
    float64[] sy_a
    float64[] sy_b
    float64[] sy_c
    float64[] sy_d
    float64[] sy_y
    
    float64[] sz_a
    float64[] sz_b
    float64[] sz_c
    float64[] sz_d
    float64[] sz_y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CSP(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = []
    }

    if (msg.nx !== undefined) {
      resolved.nx = msg.nx;
    }
    else {
      resolved.nx = 0.0
    }

    if (msg.sx_a !== undefined) {
      resolved.sx_a = msg.sx_a;
    }
    else {
      resolved.sx_a = []
    }

    if (msg.sx_b !== undefined) {
      resolved.sx_b = msg.sx_b;
    }
    else {
      resolved.sx_b = []
    }

    if (msg.sx_c !== undefined) {
      resolved.sx_c = msg.sx_c;
    }
    else {
      resolved.sx_c = []
    }

    if (msg.sx_d !== undefined) {
      resolved.sx_d = msg.sx_d;
    }
    else {
      resolved.sx_d = []
    }

    if (msg.sx_y !== undefined) {
      resolved.sx_y = msg.sx_y;
    }
    else {
      resolved.sx_y = []
    }

    if (msg.sy_a !== undefined) {
      resolved.sy_a = msg.sy_a;
    }
    else {
      resolved.sy_a = []
    }

    if (msg.sy_b !== undefined) {
      resolved.sy_b = msg.sy_b;
    }
    else {
      resolved.sy_b = []
    }

    if (msg.sy_c !== undefined) {
      resolved.sy_c = msg.sy_c;
    }
    else {
      resolved.sy_c = []
    }

    if (msg.sy_d !== undefined) {
      resolved.sy_d = msg.sy_d;
    }
    else {
      resolved.sy_d = []
    }

    if (msg.sy_y !== undefined) {
      resolved.sy_y = msg.sy_y;
    }
    else {
      resolved.sy_y = []
    }

    if (msg.sz_a !== undefined) {
      resolved.sz_a = msg.sz_a;
    }
    else {
      resolved.sz_a = []
    }

    if (msg.sz_b !== undefined) {
      resolved.sz_b = msg.sz_b;
    }
    else {
      resolved.sz_b = []
    }

    if (msg.sz_c !== undefined) {
      resolved.sz_c = msg.sz_c;
    }
    else {
      resolved.sz_c = []
    }

    if (msg.sz_d !== undefined) {
      resolved.sz_d = msg.sz_d;
    }
    else {
      resolved.sz_d = []
    }

    if (msg.sz_y !== undefined) {
      resolved.sz_y = msg.sz_y;
    }
    else {
      resolved.sz_y = []
    }

    return resolved;
    }
};

module.exports = CSP;
