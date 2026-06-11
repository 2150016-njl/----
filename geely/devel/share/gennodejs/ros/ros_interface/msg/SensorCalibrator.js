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

class SensorCalibrator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Point3D();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorCalibrator
    // Serialize message field [pose]
    bufferOffset = Point3D.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = Point3D.serialize(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorCalibrator
    let len;
    let data = new SensorCalibrator(null);
    // Deserialize message field [pose]
    data.pose = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/SensorCalibrator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8973a94a8ceb6b4c6fa358ef1bfb5314';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point3D   pose     # 传感器安装位置(相对于后轴中心点)
    Point3D   angle     # 传感器安装角度(车体坐标系)
    
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
    const resolved = new SensorCalibrator(null);
    if (msg.pose !== undefined) {
      resolved.pose = Point3D.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Point3D()
    }

    if (msg.angle !== undefined) {
      resolved.angle = Point3D.Resolve(msg.angle)
    }
    else {
      resolved.angle = new Point3D()
    }

    return resolved;
    }
};

module.exports = SensorCalibrator;
