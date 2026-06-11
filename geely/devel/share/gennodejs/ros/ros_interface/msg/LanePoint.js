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

class LanePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.theta = null;
      this.mileage = null;
      this.limit_speed = null;
      this.left_road_width = null;
      this.right_road_width = null;
      this.left_line_type = null;
      this.right_line_type = null;
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
      if (initObj.hasOwnProperty('mileage')) {
        this.mileage = initObj.mileage
      }
      else {
        this.mileage = 0.0;
      }
      if (initObj.hasOwnProperty('limit_speed')) {
        this.limit_speed = initObj.limit_speed
      }
      else {
        this.limit_speed = 0.0;
      }
      if (initObj.hasOwnProperty('left_road_width')) {
        this.left_road_width = initObj.left_road_width
      }
      else {
        this.left_road_width = 0.0;
      }
      if (initObj.hasOwnProperty('right_road_width')) {
        this.right_road_width = initObj.right_road_width
      }
      else {
        this.right_road_width = 0.0;
      }
      if (initObj.hasOwnProperty('left_line_type')) {
        this.left_line_type = initObj.left_line_type
      }
      else {
        this.left_line_type = 0;
      }
      if (initObj.hasOwnProperty('right_line_type')) {
        this.right_line_type = initObj.right_line_type
      }
      else {
        this.right_line_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LanePoint
    // Serialize message field [point]
    bufferOffset = Point3D.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [mileage]
    bufferOffset = _serializer.float64(obj.mileage, buffer, bufferOffset);
    // Serialize message field [limit_speed]
    bufferOffset = _serializer.float64(obj.limit_speed, buffer, bufferOffset);
    // Serialize message field [left_road_width]
    bufferOffset = _serializer.float64(obj.left_road_width, buffer, bufferOffset);
    // Serialize message field [right_road_width]
    bufferOffset = _serializer.float64(obj.right_road_width, buffer, bufferOffset);
    // Serialize message field [left_line_type]
    bufferOffset = _serializer.int32(obj.left_line_type, buffer, bufferOffset);
    // Serialize message field [right_line_type]
    bufferOffset = _serializer.int32(obj.right_line_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LanePoint
    let len;
    let data = new LanePoint(null);
    // Deserialize message field [point]
    data.point = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mileage]
    data.mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [limit_speed]
    data.limit_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_road_width]
    data.left_road_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_road_width]
    data.right_road_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left_line_type]
    data.left_line_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_line_type]
    data.right_line_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/LanePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b86492a98e6209595aa1050feb0e5d3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point3D   point     # 点xyz
    float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
    float64   mileage     # 总体里程
    float64   limit_speed     # 地图限速（单位m/s）
    float64   left_road_width     # 左边车道宽
    float64   right_road_width     # 右边车道宽
    int32   left_line_type     # 左边车线线型
    int32   right_line_type     # 右边车线线型
    
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
    const resolved = new LanePoint(null);
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

    if (msg.mileage !== undefined) {
      resolved.mileage = msg.mileage;
    }
    else {
      resolved.mileage = 0.0
    }

    if (msg.limit_speed !== undefined) {
      resolved.limit_speed = msg.limit_speed;
    }
    else {
      resolved.limit_speed = 0.0
    }

    if (msg.left_road_width !== undefined) {
      resolved.left_road_width = msg.left_road_width;
    }
    else {
      resolved.left_road_width = 0.0
    }

    if (msg.right_road_width !== undefined) {
      resolved.right_road_width = msg.right_road_width;
    }
    else {
      resolved.right_road_width = 0.0
    }

    if (msg.left_line_type !== undefined) {
      resolved.left_line_type = msg.left_line_type;
    }
    else {
      resolved.left_line_type = 0
    }

    if (msg.right_line_type !== undefined) {
      resolved.right_line_type = msg.right_line_type;
    }
    else {
      resolved.right_line_type = 0
    }

    return resolved;
    }
};

module.exports = LanePoint;
