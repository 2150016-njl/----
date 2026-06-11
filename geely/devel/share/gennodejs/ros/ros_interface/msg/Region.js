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

class Region {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name_region = null;
      this.score = null;
      this.rank_risk = null;
      this.region_polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('name_region')) {
        this.name_region = initObj.name_region
      }
      else {
        this.name_region = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('rank_risk')) {
        this.rank_risk = initObj.rank_risk
      }
      else {
        this.rank_risk = 0;
      }
      if (initObj.hasOwnProperty('region_polygon')) {
        this.region_polygon = initObj.region_polygon
      }
      else {
        this.region_polygon = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Region
    // Serialize message field [name_region]
    bufferOffset = _serializer.int32(obj.name_region, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float64(obj.score, buffer, bufferOffset);
    // Serialize message field [rank_risk]
    bufferOffset = _serializer.int32(obj.rank_risk, buffer, bufferOffset);
    // Serialize message field [region_polygon]
    // Serialize the length for message field [region_polygon]
    bufferOffset = _serializer.uint32(obj.region_polygon.length, buffer, bufferOffset);
    obj.region_polygon.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Region
    let len;
    let data = new Region(null);
    // Deserialize message field [name_region]
    data.name_region = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rank_risk]
    data.rank_risk = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [region_polygon]
    // Deserialize array length for message field [region_polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.region_polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.region_polygon[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.region_polygon.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Region';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e67108b17f0dbf5c3d9cd0e59ac3108e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   name_region     # 前后左右区域
    float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)
    int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)
    Point3D[] region_polygon # 世界坐标系下的区域多边形
    
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
    const resolved = new Region(null);
    if (msg.name_region !== undefined) {
      resolved.name_region = msg.name_region;
    }
    else {
      resolved.name_region = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.rank_risk !== undefined) {
      resolved.rank_risk = msg.rank_risk;
    }
    else {
      resolved.rank_risk = 0
    }

    if (msg.region_polygon !== undefined) {
      resolved.region_polygon = new Array(msg.region_polygon.length);
      for (let i = 0; i < resolved.region_polygon.length; ++i) {
        resolved.region_polygon[i] = Point3D.Resolve(msg.region_polygon[i]);
      }
    }
    else {
      resolved.region_polygon = []
    }

    return resolved;
    }
};

module.exports = Region;
