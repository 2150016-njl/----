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

class RoadMark {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.longitude_dist = null;
      this.lateral_dist = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.confidence = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('longitude_dist')) {
        this.longitude_dist = initObj.longitude_dist
      }
      else {
        this.longitude_dist = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_dist')) {
        this.lateral_dist = initObj.lateral_dist
      }
      else {
        this.lateral_dist = 0.0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadMark
    // Serialize message field [longitude_dist]
    bufferOffset = _serializer.float64(obj.longitude_dist, buffer, bufferOffset);
    // Serialize message field [lateral_dist]
    bufferOffset = _serializer.float64(obj.lateral_dist, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadMark
    let len;
    let data = new RoadMark(null);
    // Deserialize message field [longitude_dist]
    data.longitude_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_dist]
    data.lateral_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RoadMark';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1eab58881f87a0f5c354efa8d4f36c41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m
    float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m
    float64   x     # 质心坐标x
    float64   y     # 质心坐标y
    float64   z     # 质心坐标z
    float64   confidence     # 置信度[0 - 1]
    int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoadMark(null);
    if (msg.longitude_dist !== undefined) {
      resolved.longitude_dist = msg.longitude_dist;
    }
    else {
      resolved.longitude_dist = 0.0
    }

    if (msg.lateral_dist !== undefined) {
      resolved.lateral_dist = msg.lateral_dist;
    }
    else {
      resolved.lateral_dist = 0.0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = RoadMark;
