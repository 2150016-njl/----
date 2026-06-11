// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoint = require('./PathPoint.js');

//-----------------------------------------------------------

class TrajectoryPointInPrediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_point = null;
      this.v = null;
      this.a = null;
      this.relative_time = null;
    }
    else {
      if (initObj.hasOwnProperty('path_point')) {
        this.path_point = initObj.path_point
      }
      else {
        this.path_point = new PathPoint();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('relative_time')) {
        this.relative_time = initObj.relative_time
      }
      else {
        this.relative_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPointInPrediction
    // Serialize message field [path_point]
    bufferOffset = PathPoint.serialize(obj.path_point, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [relative_time]
    bufferOffset = _serializer.float64(obj.relative_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPointInPrediction
    let len;
    let data = new TrajectoryPointInPrediction(null);
    // Deserialize message field [path_point]
    data.path_point = PathPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_time]
    data.relative_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrajectoryPointInPrediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05fd9f6cc86d21615eadb92a27ce577c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PathPoint   path_point     # path point
    float64   v     # linear velocity
    float64   a     # linear acceleration
    float64   relative_time     # relative time from beginning of the trajectory
    
    ================================================================================
    MSG: ros_interface/PathPoint
    float64   x     # coordinates x
    float64   y     # coordinates y
    float64   z     # coordinates z
    float64   theta     # direction on the x-y plane
    float64   kappa     # curvature on the x-y planning
    float64   s     # accumulated distance from beginning of the path
    float64   dkappa     # derivative of kappa w.r.t s.
    float64   ddkappa     # derivative of derivative of kappa w.r.t s.
    float64   lane_id     # The lane ID where the path point is on
    float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline
    float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryPointInPrediction(null);
    if (msg.path_point !== undefined) {
      resolved.path_point = PathPoint.Resolve(msg.path_point)
    }
    else {
      resolved.path_point = new PathPoint()
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.relative_time !== undefined) {
      resolved.relative_time = msg.relative_time;
    }
    else {
      resolved.relative_time = 0.0
    }

    return resolved;
    }
};

module.exports = TrajectoryPointInPrediction;
