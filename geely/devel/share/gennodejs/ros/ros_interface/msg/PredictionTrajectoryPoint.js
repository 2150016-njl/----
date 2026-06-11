// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3D = require('./Point3D.js');

//-----------------------------------------------------------

class PredictionTrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.predition_path_point = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('predition_path_point')) {
        this.predition_path_point = initObj.predition_path_point
      }
      else {
        this.predition_path_point = new Point3D();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionTrajectoryPoint
    // Serialize message field [predition_path_point]
    bufferOffset = Point3D.serialize(obj.predition_path_point, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionTrajectoryPoint
    let len;
    let data = new PredictionTrajectoryPoint(null);
    // Deserialize message field [predition_path_point]
    data.predition_path_point = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PredictionTrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9430389d65624b2a0ee8a6a8be5b0ea2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point3D   predition_path_point     #  
    float64   timestamp     #  
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionTrajectoryPoint(null);
    if (msg.predition_path_point !== undefined) {
      resolved.predition_path_point = Point3D.Resolve(msg.predition_path_point)
    }
    else {
      resolved.predition_path_point = new Point3D()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    return resolved;
    }
};

module.exports = PredictionTrajectoryPoint;
