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

class Uncertainty {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_std_dev = null;
      this.orientation_std_dev = null;
      this.linear_velocity_std_dev = null;
      this.linear_acceleration_std_dev = null;
      this.angular_velocity_std_dev = null;
    }
    else {
      if (initObj.hasOwnProperty('position_std_dev')) {
        this.position_std_dev = initObj.position_std_dev
      }
      else {
        this.position_std_dev = new Point3D();
      }
      if (initObj.hasOwnProperty('orientation_std_dev')) {
        this.orientation_std_dev = initObj.orientation_std_dev
      }
      else {
        this.orientation_std_dev = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_velocity_std_dev')) {
        this.linear_velocity_std_dev = initObj.linear_velocity_std_dev
      }
      else {
        this.linear_velocity_std_dev = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_acceleration_std_dev')) {
        this.linear_acceleration_std_dev = initObj.linear_acceleration_std_dev
      }
      else {
        this.linear_acceleration_std_dev = new Point3D();
      }
      if (initObj.hasOwnProperty('angular_velocity_std_dev')) {
        this.angular_velocity_std_dev = initObj.angular_velocity_std_dev
      }
      else {
        this.angular_velocity_std_dev = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Uncertainty
    // Serialize message field [position_std_dev]
    bufferOffset = Point3D.serialize(obj.position_std_dev, buffer, bufferOffset);
    // Serialize message field [orientation_std_dev]
    bufferOffset = Point3D.serialize(obj.orientation_std_dev, buffer, bufferOffset);
    // Serialize message field [linear_velocity_std_dev]
    bufferOffset = Point3D.serialize(obj.linear_velocity_std_dev, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_std_dev]
    bufferOffset = Point3D.serialize(obj.linear_acceleration_std_dev, buffer, bufferOffset);
    // Serialize message field [angular_velocity_std_dev]
    bufferOffset = Point3D.serialize(obj.angular_velocity_std_dev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Uncertainty
    let len;
    let data = new Uncertainty(null);
    // Deserialize message field [position_std_dev]
    data.position_std_dev = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_std_dev]
    data.orientation_std_dev = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_std_dev]
    data.linear_velocity_std_dev = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_std_dev]
    data.linear_acceleration_std_dev = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_std_dev]
    data.angular_velocity_std_dev = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Uncertainty';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a26c653df4736501b569f3e3f7250e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point3D   position_std_dev     # Standard deviation of position, east/north/up in meters.
    Point3D   orientation_std_dev     # Standard deviation of quaternion qx/qy/qz, unitless.
    Point3D   linear_velocity_std_dev     # Standard deviation of linear velocity, east/north/up in meters per second.
    Point3D   linear_acceleration_std_dev     # Standard deviation of linear acceleration, right/forward/up in meters per square second.
    Point3D   angular_velocity_std_dev     # Standard deviation of angular velocity, right/forward/up in radians per second.
    
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
    const resolved = new Uncertainty(null);
    if (msg.position_std_dev !== undefined) {
      resolved.position_std_dev = Point3D.Resolve(msg.position_std_dev)
    }
    else {
      resolved.position_std_dev = new Point3D()
    }

    if (msg.orientation_std_dev !== undefined) {
      resolved.orientation_std_dev = Point3D.Resolve(msg.orientation_std_dev)
    }
    else {
      resolved.orientation_std_dev = new Point3D()
    }

    if (msg.linear_velocity_std_dev !== undefined) {
      resolved.linear_velocity_std_dev = Point3D.Resolve(msg.linear_velocity_std_dev)
    }
    else {
      resolved.linear_velocity_std_dev = new Point3D()
    }

    if (msg.linear_acceleration_std_dev !== undefined) {
      resolved.linear_acceleration_std_dev = Point3D.Resolve(msg.linear_acceleration_std_dev)
    }
    else {
      resolved.linear_acceleration_std_dev = new Point3D()
    }

    if (msg.angular_velocity_std_dev !== undefined) {
      resolved.angular_velocity_std_dev = Point3D.Resolve(msg.angular_velocity_std_dev)
    }
    else {
      resolved.angular_velocity_std_dev = new Point3D()
    }

    return resolved;
    }
};

module.exports = Uncertainty;
