// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficLightBox = require('./TrafficLightBox.js');

//-----------------------------------------------------------

class TrafficLightDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cropbox = null;
      this.box = null;
      this.signal_num = null;
      this.valid_pos = null;
      this.ts_diff_pos = null;
      this.ts_diff_sys = null;
      this.project_error = null;
      this.distance_to_stop_line = null;
      this.camera_id = null;
      this.crop_roi = null;
      this.projected_roi = null;
      this.rectified_roi = null;
      this.debug_roi = null;
    }
    else {
      if (initObj.hasOwnProperty('cropbox')) {
        this.cropbox = initObj.cropbox
      }
      else {
        this.cropbox = new TrafficLightBox();
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = [];
      }
      if (initObj.hasOwnProperty('signal_num')) {
        this.signal_num = initObj.signal_num
      }
      else {
        this.signal_num = 0;
      }
      if (initObj.hasOwnProperty('valid_pos')) {
        this.valid_pos = initObj.valid_pos
      }
      else {
        this.valid_pos = 0;
      }
      if (initObj.hasOwnProperty('ts_diff_pos')) {
        this.ts_diff_pos = initObj.ts_diff_pos
      }
      else {
        this.ts_diff_pos = 0.0;
      }
      if (initObj.hasOwnProperty('ts_diff_sys')) {
        this.ts_diff_sys = initObj.ts_diff_sys
      }
      else {
        this.ts_diff_sys = 0.0;
      }
      if (initObj.hasOwnProperty('project_error')) {
        this.project_error = initObj.project_error
      }
      else {
        this.project_error = 0;
      }
      if (initObj.hasOwnProperty('distance_to_stop_line')) {
        this.distance_to_stop_line = initObj.distance_to_stop_line
      }
      else {
        this.distance_to_stop_line = 0.0;
      }
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = 0;
      }
      if (initObj.hasOwnProperty('crop_roi')) {
        this.crop_roi = initObj.crop_roi
      }
      else {
        this.crop_roi = [];
      }
      if (initObj.hasOwnProperty('projected_roi')) {
        this.projected_roi = initObj.projected_roi
      }
      else {
        this.projected_roi = [];
      }
      if (initObj.hasOwnProperty('rectified_roi')) {
        this.rectified_roi = initObj.rectified_roi
      }
      else {
        this.rectified_roi = [];
      }
      if (initObj.hasOwnProperty('debug_roi')) {
        this.debug_roi = initObj.debug_roi
      }
      else {
        this.debug_roi = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightDebug
    // Serialize message field [cropbox]
    bufferOffset = TrafficLightBox.serialize(obj.cropbox, buffer, bufferOffset);
    // Serialize message field [box]
    // Serialize the length for message field [box]
    bufferOffset = _serializer.uint32(obj.box.length, buffer, bufferOffset);
    obj.box.forEach((val) => {
      bufferOffset = TrafficLightBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [signal_num]
    bufferOffset = _serializer.int32(obj.signal_num, buffer, bufferOffset);
    // Serialize message field [valid_pos]
    bufferOffset = _serializer.int32(obj.valid_pos, buffer, bufferOffset);
    // Serialize message field [ts_diff_pos]
    bufferOffset = _serializer.float64(obj.ts_diff_pos, buffer, bufferOffset);
    // Serialize message field [ts_diff_sys]
    bufferOffset = _serializer.float64(obj.ts_diff_sys, buffer, bufferOffset);
    // Serialize message field [project_error]
    bufferOffset = _serializer.int32(obj.project_error, buffer, bufferOffset);
    // Serialize message field [distance_to_stop_line]
    bufferOffset = _serializer.float64(obj.distance_to_stop_line, buffer, bufferOffset);
    // Serialize message field [camera_id]
    bufferOffset = _serializer.int32(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [crop_roi]
    // Serialize the length for message field [crop_roi]
    bufferOffset = _serializer.uint32(obj.crop_roi.length, buffer, bufferOffset);
    obj.crop_roi.forEach((val) => {
      bufferOffset = TrafficLightBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [projected_roi]
    // Serialize the length for message field [projected_roi]
    bufferOffset = _serializer.uint32(obj.projected_roi.length, buffer, bufferOffset);
    obj.projected_roi.forEach((val) => {
      bufferOffset = TrafficLightBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [rectified_roi]
    // Serialize the length for message field [rectified_roi]
    bufferOffset = _serializer.uint32(obj.rectified_roi.length, buffer, bufferOffset);
    obj.rectified_roi.forEach((val) => {
      bufferOffset = TrafficLightBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [debug_roi]
    // Serialize the length for message field [debug_roi]
    bufferOffset = _serializer.uint32(obj.debug_roi.length, buffer, bufferOffset);
    obj.debug_roi.forEach((val) => {
      bufferOffset = TrafficLightBox.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightDebug
    let len;
    let data = new TrafficLightDebug(null);
    // Deserialize message field [cropbox]
    data.cropbox = TrafficLightBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [box]
    // Deserialize array length for message field [box]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.box = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.box[i] = TrafficLightBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [signal_num]
    data.signal_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [valid_pos]
    data.valid_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ts_diff_pos]
    data.ts_diff_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ts_diff_sys]
    data.ts_diff_sys = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [project_error]
    data.project_error = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_to_stop_line]
    data.distance_to_stop_line = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [camera_id]
    data.camera_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [crop_roi]
    // Deserialize array length for message field [crop_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.crop_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.crop_roi[i] = TrafficLightBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [projected_roi]
    // Deserialize array length for message field [projected_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.projected_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.projected_roi[i] = TrafficLightBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [rectified_roi]
    // Deserialize array length for message field [rectified_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.rectified_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.rectified_roi[i] = TrafficLightBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [debug_roi]
    // Deserialize array length for message field [debug_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.debug_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.debug_roi[i] = TrafficLightBox.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += TrafficLightBox.getMessageSize(object.cropbox);
    object.box.forEach((val) => {
      length += TrafficLightBox.getMessageSize(val);
    });
    object.crop_roi.forEach((val) => {
      length += TrafficLightBox.getMessageSize(val);
    });
    object.projected_roi.forEach((val) => {
      length += TrafficLightBox.getMessageSize(val);
    });
    object.rectified_roi.forEach((val) => {
      length += TrafficLightBox.getMessageSize(val);
    });
    object.debug_roi.forEach((val) => {
      length += TrafficLightBox.getMessageSize(val);
    });
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrafficLightDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6bafdc05f8e0cd03dd05affb896f154';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TrafficLightBox   cropbox     #  
    TrafficLightBox[] box #  
    int32   signal_num     #  
    int32   valid_pos     #  
    float64   ts_diff_pos     #  
    float64   ts_diff_sys     #  
    int32   project_error     #  
    float64   distance_to_stop_line     #  
    int32   camera_id     #  
    TrafficLightBox[] crop_roi #  
    TrafficLightBox[] projected_roi #  
    TrafficLightBox[] rectified_roi #  
    TrafficLightBox[] debug_roi #  
    
    ================================================================================
    MSG: ros_interface/TrafficLightBox
    int32   x     # 交通灯目标在图像上中心点横向方向像素位置
    int32   y     # 交通灯目标在图像上中心点纵向方向像素位置
    int32   width     # 交通灯目标在图像上宽度
    int32   height     # 交通灯目标在图像上高度
    int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
    bool   selected     # 是否选择
    string   camera_name     # 相机名称
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightDebug(null);
    if (msg.cropbox !== undefined) {
      resolved.cropbox = TrafficLightBox.Resolve(msg.cropbox)
    }
    else {
      resolved.cropbox = new TrafficLightBox()
    }

    if (msg.box !== undefined) {
      resolved.box = new Array(msg.box.length);
      for (let i = 0; i < resolved.box.length; ++i) {
        resolved.box[i] = TrafficLightBox.Resolve(msg.box[i]);
      }
    }
    else {
      resolved.box = []
    }

    if (msg.signal_num !== undefined) {
      resolved.signal_num = msg.signal_num;
    }
    else {
      resolved.signal_num = 0
    }

    if (msg.valid_pos !== undefined) {
      resolved.valid_pos = msg.valid_pos;
    }
    else {
      resolved.valid_pos = 0
    }

    if (msg.ts_diff_pos !== undefined) {
      resolved.ts_diff_pos = msg.ts_diff_pos;
    }
    else {
      resolved.ts_diff_pos = 0.0
    }

    if (msg.ts_diff_sys !== undefined) {
      resolved.ts_diff_sys = msg.ts_diff_sys;
    }
    else {
      resolved.ts_diff_sys = 0.0
    }

    if (msg.project_error !== undefined) {
      resolved.project_error = msg.project_error;
    }
    else {
      resolved.project_error = 0
    }

    if (msg.distance_to_stop_line !== undefined) {
      resolved.distance_to_stop_line = msg.distance_to_stop_line;
    }
    else {
      resolved.distance_to_stop_line = 0.0
    }

    if (msg.camera_id !== undefined) {
      resolved.camera_id = msg.camera_id;
    }
    else {
      resolved.camera_id = 0
    }

    if (msg.crop_roi !== undefined) {
      resolved.crop_roi = new Array(msg.crop_roi.length);
      for (let i = 0; i < resolved.crop_roi.length; ++i) {
        resolved.crop_roi[i] = TrafficLightBox.Resolve(msg.crop_roi[i]);
      }
    }
    else {
      resolved.crop_roi = []
    }

    if (msg.projected_roi !== undefined) {
      resolved.projected_roi = new Array(msg.projected_roi.length);
      for (let i = 0; i < resolved.projected_roi.length; ++i) {
        resolved.projected_roi[i] = TrafficLightBox.Resolve(msg.projected_roi[i]);
      }
    }
    else {
      resolved.projected_roi = []
    }

    if (msg.rectified_roi !== undefined) {
      resolved.rectified_roi = new Array(msg.rectified_roi.length);
      for (let i = 0; i < resolved.rectified_roi.length; ++i) {
        resolved.rectified_roi[i] = TrafficLightBox.Resolve(msg.rectified_roi[i]);
      }
    }
    else {
      resolved.rectified_roi = []
    }

    if (msg.debug_roi !== undefined) {
      resolved.debug_roi = new Array(msg.debug_roi.length);
      for (let i = 0; i < resolved.debug_roi.length; ++i) {
        resolved.debug_roi[i] = TrafficLightBox.Resolve(msg.debug_roi[i]);
      }
    }
    else {
      resolved.debug_roi = []
    }

    return resolved;
    }
};

module.exports = TrafficLightDebug;
