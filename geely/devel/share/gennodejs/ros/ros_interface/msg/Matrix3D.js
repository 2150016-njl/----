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

class Matrix3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a00 = null;
      this.a01 = null;
      this.a02 = null;
      this.a10 = null;
      this.a11 = null;
      this.a12 = null;
      this.a20 = null;
      this.a21 = null;
      this.a22 = null;
    }
    else {
      if (initObj.hasOwnProperty('a00')) {
        this.a00 = initObj.a00
      }
      else {
        this.a00 = 0.0;
      }
      if (initObj.hasOwnProperty('a01')) {
        this.a01 = initObj.a01
      }
      else {
        this.a01 = 0.0;
      }
      if (initObj.hasOwnProperty('a02')) {
        this.a02 = initObj.a02
      }
      else {
        this.a02 = 0.0;
      }
      if (initObj.hasOwnProperty('a10')) {
        this.a10 = initObj.a10
      }
      else {
        this.a10 = 0.0;
      }
      if (initObj.hasOwnProperty('a11')) {
        this.a11 = initObj.a11
      }
      else {
        this.a11 = 0.0;
      }
      if (initObj.hasOwnProperty('a12')) {
        this.a12 = initObj.a12
      }
      else {
        this.a12 = 0.0;
      }
      if (initObj.hasOwnProperty('a20')) {
        this.a20 = initObj.a20
      }
      else {
        this.a20 = 0.0;
      }
      if (initObj.hasOwnProperty('a21')) {
        this.a21 = initObj.a21
      }
      else {
        this.a21 = 0.0;
      }
      if (initObj.hasOwnProperty('a22')) {
        this.a22 = initObj.a22
      }
      else {
        this.a22 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Matrix3D
    // Serialize message field [a00]
    bufferOffset = _serializer.float64(obj.a00, buffer, bufferOffset);
    // Serialize message field [a01]
    bufferOffset = _serializer.float64(obj.a01, buffer, bufferOffset);
    // Serialize message field [a02]
    bufferOffset = _serializer.float64(obj.a02, buffer, bufferOffset);
    // Serialize message field [a10]
    bufferOffset = _serializer.float64(obj.a10, buffer, bufferOffset);
    // Serialize message field [a11]
    bufferOffset = _serializer.float64(obj.a11, buffer, bufferOffset);
    // Serialize message field [a12]
    bufferOffset = _serializer.float64(obj.a12, buffer, bufferOffset);
    // Serialize message field [a20]
    bufferOffset = _serializer.float64(obj.a20, buffer, bufferOffset);
    // Serialize message field [a21]
    bufferOffset = _serializer.float64(obj.a21, buffer, bufferOffset);
    // Serialize message field [a22]
    bufferOffset = _serializer.float64(obj.a22, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Matrix3D
    let len;
    let data = new Matrix3D(null);
    // Deserialize message field [a00]
    data.a00 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a01]
    data.a01 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a02]
    data.a02 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a10]
    data.a10 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a11]
    data.a11 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a12]
    data.a12 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a20]
    data.a20 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a21]
    data.a21 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a22]
    data.a22 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Matrix3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df2f48490b2be1b3dcfbc7fadaa3db94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   a00     # 第一行第一列元素
    float64   a01     # 第一行第二列元素
    float64   a02     # 第一行第三列元素
    float64   a10     # 第二行第一列元素
    float64   a11     # 第二行第二列元素
    float64   a12     # 第二行第三列元素
    float64   a20     # 第三行第一列元素
    float64   a21     # 第三行第二列元素
    float64   a22     # 第三行第三列元素
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Matrix3D(null);
    if (msg.a00 !== undefined) {
      resolved.a00 = msg.a00;
    }
    else {
      resolved.a00 = 0.0
    }

    if (msg.a01 !== undefined) {
      resolved.a01 = msg.a01;
    }
    else {
      resolved.a01 = 0.0
    }

    if (msg.a02 !== undefined) {
      resolved.a02 = msg.a02;
    }
    else {
      resolved.a02 = 0.0
    }

    if (msg.a10 !== undefined) {
      resolved.a10 = msg.a10;
    }
    else {
      resolved.a10 = 0.0
    }

    if (msg.a11 !== undefined) {
      resolved.a11 = msg.a11;
    }
    else {
      resolved.a11 = 0.0
    }

    if (msg.a12 !== undefined) {
      resolved.a12 = msg.a12;
    }
    else {
      resolved.a12 = 0.0
    }

    if (msg.a20 !== undefined) {
      resolved.a20 = msg.a20;
    }
    else {
      resolved.a20 = 0.0
    }

    if (msg.a21 !== undefined) {
      resolved.a21 = msg.a21;
    }
    else {
      resolved.a21 = 0.0
    }

    if (msg.a22 !== undefined) {
      resolved.a22 = msg.a22;
    }
    else {
      resolved.a22 = 0.0
    }

    return resolved;
    }
};

module.exports = Matrix3D;
