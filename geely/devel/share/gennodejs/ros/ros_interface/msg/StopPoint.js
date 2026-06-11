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

class StopPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.theta = null;
      this.type = null;
      this.stop_distance = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new Point3D();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('stop_distance')) {
        this.stop_distance = initObj.stop_distance
      }
      else {
        this.stop_distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopPoint
    // Serialize message field [point]
    bufferOffset = Point3D.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [stop_distance]
    bufferOffset = _serializer.float64(obj.stop_distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopPoint
    let len;
    let data = new StopPoint(null);
    // Deserialize message field [point]
    data.point = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [stop_distance]
    data.stop_distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/StopPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f7f748188c196901f90cc702c2618c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point3D   point     # 点xyz
    float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
    int8   type     # STOP_TYPE_TERMINAL=0 //目的地终点 STOP_TYPE_JUNCTION=1 //路口停止线
    float64   stop_distance     # 距停止点多少米停车
    
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
    const resolved = new StopPoint(null);
    if (msg.point !== undefined) {
      resolved.point = Point3D.Resolve(msg.point)
    }
    else {
      resolved.point = new Point3D()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.stop_distance !== undefined) {
      resolved.stop_distance = msg.stop_distance;
    }
    else {
      resolved.stop_distance = 0.0
    }

    return resolved;
    }
};

module.exports = StopPoint;
