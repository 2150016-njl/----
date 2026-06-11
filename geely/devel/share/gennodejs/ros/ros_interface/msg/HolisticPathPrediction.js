// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneLineCubicCurve = require('./LaneLineCubicCurve.js');

//-----------------------------------------------------------

class HolisticPathPrediction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hpp = null;
      this.planning_source = null;
      this.ego_lane_width = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('hpp')) {
        this.hpp = initObj.hpp
      }
      else {
        this.hpp = new LaneLineCubicCurve();
      }
      if (initObj.hasOwnProperty('planning_source')) {
        this.planning_source = initObj.planning_source
      }
      else {
        this.planning_source = 0;
      }
      if (initObj.hasOwnProperty('ego_lane_width')) {
        this.ego_lane_width = initObj.ego_lane_width
      }
      else {
        this.ego_lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HolisticPathPrediction
    // Serialize message field [hpp]
    bufferOffset = LaneLineCubicCurve.serialize(obj.hpp, buffer, bufferOffset);
    // Serialize message field [planning_source]
    bufferOffset = _serializer.int32(obj.planning_source, buffer, bufferOffset);
    // Serialize message field [ego_lane_width]
    bufferOffset = _serializer.float64(obj.ego_lane_width, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HolisticPathPrediction
    let len;
    let data = new HolisticPathPrediction(null);
    // Deserialize message field [hpp]
    data.hpp = LaneLineCubicCurve.deserialize(buffer, bufferOffset);
    // Deserialize message field [planning_source]
    data.planning_source = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ego_lane_width]
    data.ego_lane_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/HolisticPathPrediction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4a3802277f8181f1f0dd82eebaecee41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；
    int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测
    float64   ego_lane_width     # 自车道宽度
    float64   confidence     # 置信度[0 - 1]
    
    ================================================================================
    MSG: ros_interface/LaneLineCubicCurve
    float64   start_x     # 车道线起始位置
    float64   end_x     # 车道线结束位置
    float64   a     # 三次曲线系数
    float64   b     #  
    float64   c     #  
    float64   d     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HolisticPathPrediction(null);
    if (msg.hpp !== undefined) {
      resolved.hpp = LaneLineCubicCurve.Resolve(msg.hpp)
    }
    else {
      resolved.hpp = new LaneLineCubicCurve()
    }

    if (msg.planning_source !== undefined) {
      resolved.planning_source = msg.planning_source;
    }
    else {
      resolved.planning_source = 0
    }

    if (msg.ego_lane_width !== undefined) {
      resolved.ego_lane_width = msg.ego_lane_width;
    }
    else {
      resolved.ego_lane_width = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = HolisticPathPrediction;
