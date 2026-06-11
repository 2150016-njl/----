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

class GaussianInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sigma_x = null;
      this.sigma_y = null;
      this.correlation = null;
      this.area_probability = null;
      this.ellipse_a = null;
      this.ellipse_b = null;
      this.theta_a = null;
    }
    else {
      if (initObj.hasOwnProperty('sigma_x')) {
        this.sigma_x = initObj.sigma_x
      }
      else {
        this.sigma_x = 0.0;
      }
      if (initObj.hasOwnProperty('sigma_y')) {
        this.sigma_y = initObj.sigma_y
      }
      else {
        this.sigma_y = 0.0;
      }
      if (initObj.hasOwnProperty('correlation')) {
        this.correlation = initObj.correlation
      }
      else {
        this.correlation = 0.0;
      }
      if (initObj.hasOwnProperty('area_probability')) {
        this.area_probability = initObj.area_probability
      }
      else {
        this.area_probability = 0.0;
      }
      if (initObj.hasOwnProperty('ellipse_a')) {
        this.ellipse_a = initObj.ellipse_a
      }
      else {
        this.ellipse_a = 0.0;
      }
      if (initObj.hasOwnProperty('ellipse_b')) {
        this.ellipse_b = initObj.ellipse_b
      }
      else {
        this.ellipse_b = 0.0;
      }
      if (initObj.hasOwnProperty('theta_a')) {
        this.theta_a = initObj.theta_a
      }
      else {
        this.theta_a = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GaussianInfo
    // Serialize message field [sigma_x]
    bufferOffset = _serializer.float64(obj.sigma_x, buffer, bufferOffset);
    // Serialize message field [sigma_y]
    bufferOffset = _serializer.float64(obj.sigma_y, buffer, bufferOffset);
    // Serialize message field [correlation]
    bufferOffset = _serializer.float64(obj.correlation, buffer, bufferOffset);
    // Serialize message field [area_probability]
    bufferOffset = _serializer.float64(obj.area_probability, buffer, bufferOffset);
    // Serialize message field [ellipse_a]
    bufferOffset = _serializer.float64(obj.ellipse_a, buffer, bufferOffset);
    // Serialize message field [ellipse_b]
    bufferOffset = _serializer.float64(obj.ellipse_b, buffer, bufferOffset);
    // Serialize message field [theta_a]
    bufferOffset = _serializer.float64(obj.theta_a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GaussianInfo
    let len;
    let data = new GaussianInfo(null);
    // Deserialize message field [sigma_x]
    data.sigma_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sigma_y]
    data.sigma_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [correlation]
    data.correlation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [area_probability]
    data.area_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ellipse_a]
    data.ellipse_a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ellipse_b]
    data.ellipse_b = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_a]
    data.theta_a = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/GaussianInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7dd0c5b6f01ab6076107f4fff84ee4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   sigma_x     # 标准差x
    float64   sigma_y     # 标准差y
    float64   correlation     # 相关性
    float64   area_probability     # Information of representative uncertainty area
    float64   ellipse_a     # 椭圆长轴
    float64   ellipse_b     # 椭圆短轴
    float64   theta_a     # 椭圆朝向
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GaussianInfo(null);
    if (msg.sigma_x !== undefined) {
      resolved.sigma_x = msg.sigma_x;
    }
    else {
      resolved.sigma_x = 0.0
    }

    if (msg.sigma_y !== undefined) {
      resolved.sigma_y = msg.sigma_y;
    }
    else {
      resolved.sigma_y = 0.0
    }

    if (msg.correlation !== undefined) {
      resolved.correlation = msg.correlation;
    }
    else {
      resolved.correlation = 0.0
    }

    if (msg.area_probability !== undefined) {
      resolved.area_probability = msg.area_probability;
    }
    else {
      resolved.area_probability = 0.0
    }

    if (msg.ellipse_a !== undefined) {
      resolved.ellipse_a = msg.ellipse_a;
    }
    else {
      resolved.ellipse_a = 0.0
    }

    if (msg.ellipse_b !== undefined) {
      resolved.ellipse_b = msg.ellipse_b;
    }
    else {
      resolved.ellipse_b = 0.0
    }

    if (msg.theta_a !== undefined) {
      resolved.theta_a = msg.theta_a;
    }
    else {
      resolved.theta_a = 0.0
    }

    return resolved;
    }
};

module.exports = GaussianInfo;
