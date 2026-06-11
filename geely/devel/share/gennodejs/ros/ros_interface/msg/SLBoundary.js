// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SLPoint = require('./SLPoint.js');

//-----------------------------------------------------------

class SLBoundary {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_s = null;
      this.end_s = null;
      this.start_l = null;
      this.end_l = null;
      this.boundary_point = null;
    }
    else {
      if (initObj.hasOwnProperty('start_s')) {
        this.start_s = initObj.start_s
      }
      else {
        this.start_s = 0.0;
      }
      if (initObj.hasOwnProperty('end_s')) {
        this.end_s = initObj.end_s
      }
      else {
        this.end_s = 0.0;
      }
      if (initObj.hasOwnProperty('start_l')) {
        this.start_l = initObj.start_l
      }
      else {
        this.start_l = 0.0;
      }
      if (initObj.hasOwnProperty('end_l')) {
        this.end_l = initObj.end_l
      }
      else {
        this.end_l = 0.0;
      }
      if (initObj.hasOwnProperty('boundary_point')) {
        this.boundary_point = initObj.boundary_point
      }
      else {
        this.boundary_point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SLBoundary
    // Serialize message field [start_s]
    bufferOffset = _serializer.float64(obj.start_s, buffer, bufferOffset);
    // Serialize message field [end_s]
    bufferOffset = _serializer.float64(obj.end_s, buffer, bufferOffset);
    // Serialize message field [start_l]
    bufferOffset = _serializer.float64(obj.start_l, buffer, bufferOffset);
    // Serialize message field [end_l]
    bufferOffset = _serializer.float64(obj.end_l, buffer, bufferOffset);
    // Serialize message field [boundary_point]
    // Serialize the length for message field [boundary_point]
    bufferOffset = _serializer.uint32(obj.boundary_point.length, buffer, bufferOffset);
    obj.boundary_point.forEach((val) => {
      bufferOffset = SLPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SLBoundary
    let len;
    let data = new SLBoundary(null);
    // Deserialize message field [start_s]
    data.start_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_s]
    data.end_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [start_l]
    data.start_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_l]
    data.end_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [boundary_point]
    // Deserialize array length for message field [boundary_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boundary_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boundary_point[i] = SLPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.boundary_point.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/SLBoundary';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f10f98a43d7c56cfaed470a969316c95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   start_s     # 起始点纵向位移
    float64   end_s     # 终止点纵向位移
    float64   start_l     # 起始点横向位移
    float64   end_l     # 终止点横向位移
    SLPoint[] boundary_point # sl点集
    
    ================================================================================
    MSG: ros_interface/SLPoint
    float64   s     # 纵向位移
    float64   l     # 横向位移
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SLBoundary(null);
    if (msg.start_s !== undefined) {
      resolved.start_s = msg.start_s;
    }
    else {
      resolved.start_s = 0.0
    }

    if (msg.end_s !== undefined) {
      resolved.end_s = msg.end_s;
    }
    else {
      resolved.end_s = 0.0
    }

    if (msg.start_l !== undefined) {
      resolved.start_l = msg.start_l;
    }
    else {
      resolved.start_l = 0.0
    }

    if (msg.end_l !== undefined) {
      resolved.end_l = msg.end_l;
    }
    else {
      resolved.end_l = 0.0
    }

    if (msg.boundary_point !== undefined) {
      resolved.boundary_point = new Array(msg.boundary_point.length);
      for (let i = 0; i < resolved.boundary_point.length; ++i) {
        resolved.boundary_point[i] = SLPoint.Resolve(msg.boundary_point[i]);
      }
    }
    else {
      resolved.boundary_point = []
    }

    return resolved;
    }
};

module.exports = SLBoundary;
