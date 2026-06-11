// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2D = require('./Point2D.js');

//-----------------------------------------------------------

class EndPoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new Point2D();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new Point2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EndPoints
    // Serialize message field [start]
    bufferOffset = Point2D.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = Point2D.serialize(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EndPoints
    let len;
    let data = new EndPoints(null);
    // Deserialize message field [start]
    data.start = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = Point2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/EndPoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '485e3b7bfcfe5392ca8833381629557b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point2D   start     # 车道线上顶点
    Point2D   end     # 车道线下顶点
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EndPoints(null);
    if (msg.start !== undefined) {
      resolved.start = Point2D.Resolve(msg.start)
    }
    else {
      resolved.start = new Point2D()
    }

    if (msg.end !== undefined) {
      resolved.end = Point2D.Resolve(msg.end)
    }
    else {
      resolved.end = new Point2D()
    }

    return resolved;
    }
};

module.exports = EndPoints;
