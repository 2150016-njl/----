// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LanePoint = require('./LanePoint.js');

//-----------------------------------------------------------

class LaneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.priority = null;
      this.global_id = null;
      this.predecessor_id = null;
      this.successor_id = null;
      this.left_neighbor_id = null;
      this.right_neighbor_id = null;
      this.type = null;
      this.lane_points = null;
    }
    else {
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = 0;
      }
      if (initObj.hasOwnProperty('global_id')) {
        this.global_id = initObj.global_id
      }
      else {
        this.global_id = 0;
      }
      if (initObj.hasOwnProperty('predecessor_id')) {
        this.predecessor_id = initObj.predecessor_id
      }
      else {
        this.predecessor_id = 0;
      }
      if (initObj.hasOwnProperty('successor_id')) {
        this.successor_id = initObj.successor_id
      }
      else {
        this.successor_id = 0;
      }
      if (initObj.hasOwnProperty('left_neighbor_id')) {
        this.left_neighbor_id = initObj.left_neighbor_id
      }
      else {
        this.left_neighbor_id = 0;
      }
      if (initObj.hasOwnProperty('right_neighbor_id')) {
        this.right_neighbor_id = initObj.right_neighbor_id
      }
      else {
        this.right_neighbor_id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('lane_points')) {
        this.lane_points = initObj.lane_points
      }
      else {
        this.lane_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneInfo
    // Serialize message field [priority]
    bufferOffset = _serializer.int8(obj.priority, buffer, bufferOffset);
    // Serialize message field [global_id]
    bufferOffset = _serializer.int8(obj.global_id, buffer, bufferOffset);
    // Serialize message field [predecessor_id]
    bufferOffset = _serializer.int8(obj.predecessor_id, buffer, bufferOffset);
    // Serialize message field [successor_id]
    bufferOffset = _serializer.int8(obj.successor_id, buffer, bufferOffset);
    // Serialize message field [left_neighbor_id]
    bufferOffset = _serializer.int8(obj.left_neighbor_id, buffer, bufferOffset);
    // Serialize message field [right_neighbor_id]
    bufferOffset = _serializer.int8(obj.right_neighbor_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [lane_points]
    // Serialize the length for message field [lane_points]
    bufferOffset = _serializer.uint32(obj.lane_points.length, buffer, bufferOffset);
    obj.lane_points.forEach((val) => {
      bufferOffset = LanePoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneInfo
    let len;
    let data = new LaneInfo(null);
    // Deserialize message field [priority]
    data.priority = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [global_id]
    data.global_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [predecessor_id]
    data.predecessor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [successor_id]
    data.successor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [left_neighbor_id]
    data.left_neighbor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [right_neighbor_id]
    data.right_neighbor_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lane_points]
    // Deserialize array length for message field [lane_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_points[i] = LanePoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 72 * object.lane_points.length;
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/LaneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ef29114104627b60d3c8213d422ab75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8   priority     # 道路优先级
    int8   global_id     # 道路全局id（从左至右，从0开始）
    int8 predecessor_id # 上一车道id
    int8 successor_id # 下一车道id
    int8 left_neighbor_id # 左边相邻车道id
    int8 right_neighbor_id # 右边相邻车道id
    int8   type     # 类型（预留）
    LanePoint[] lane_points # 道路参考线（z）
    
    ================================================================================
    MSG: ros_interface/LanePoint
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
    const resolved = new LaneInfo(null);
    if (msg.priority !== undefined) {
      resolved.priority = msg.priority;
    }
    else {
      resolved.priority = 0
    }

    if (msg.global_id !== undefined) {
      resolved.global_id = msg.global_id;
    }
    else {
      resolved.global_id = 0
    }

    if (msg.predecessor_id !== undefined) {
      resolved.predecessor_id = msg.predecessor_id;
    }
    else {
      resolved.predecessor_id = 0
    }

    if (msg.successor_id !== undefined) {
      resolved.successor_id = msg.successor_id;
    }
    else {
      resolved.successor_id = 0
    }

    if (msg.left_neighbor_id !== undefined) {
      resolved.left_neighbor_id = msg.left_neighbor_id;
    }
    else {
      resolved.left_neighbor_id = 0
    }

    if (msg.right_neighbor_id !== undefined) {
      resolved.right_neighbor_id = msg.right_neighbor_id;
    }
    else {
      resolved.right_neighbor_id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.lane_points !== undefined) {
      resolved.lane_points = new Array(msg.lane_points.length);
      for (let i = 0; i < resolved.lane_points.length; ++i) {
        resolved.lane_points[i] = LanePoint.Resolve(msg.lane_points[i]);
      }
    }
    else {
      resolved.lane_points = []
    }

    return resolved;
    }
};

module.exports = LaneInfo;
