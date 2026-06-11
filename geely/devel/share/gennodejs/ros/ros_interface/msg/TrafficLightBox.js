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

class TrafficLightBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.width = null;
      this.height = null;
      this.color = null;
      this.selected = null;
      this.camera_name = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('selected')) {
        this.selected = initObj.selected
      }
      else {
        this.selected = false;
      }
      if (initObj.hasOwnProperty('camera_name')) {
        this.camera_name = initObj.camera_name
      }
      else {
        this.camera_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficLightBox
    // Serialize message field [x]
    bufferOffset = _serializer.int32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int32(obj.y, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.int32(obj.color, buffer, bufferOffset);
    // Serialize message field [selected]
    bufferOffset = _serializer.bool(obj.selected, buffer, bufferOffset);
    // Serialize message field [camera_name]
    bufferOffset = _serializer.string(obj.camera_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightBox
    let len;
    let data = new TrafficLightBox(null);
    // Deserialize message field [x]
    data.x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [selected]
    data.selected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [camera_name]
    data.camera_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.camera_name.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrafficLightBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f1ef1a196e498958450410958317793';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TrafficLightBox(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.selected !== undefined) {
      resolved.selected = msg.selected;
    }
    else {
      resolved.selected = false
    }

    if (msg.camera_name !== undefined) {
      resolved.camera_name = msg.camera_name;
    }
    else {
      resolved.camera_name = ''
    }

    return resolved;
    }
};

module.exports = TrafficLightBox;
