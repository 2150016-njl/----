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

class JunctionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.light_flag = null;
      this.light_color = null;
      this.light_remain_time = null;
      this.distance_to_stop = null;
      this.direction_flag = null;
      this.direction = null;
      this.distance_to_junction = null;
      this.stop_line = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('light_flag')) {
        this.light_flag = initObj.light_flag
      }
      else {
        this.light_flag = 0;
      }
      if (initObj.hasOwnProperty('light_color')) {
        this.light_color = initObj.light_color
      }
      else {
        this.light_color = 0;
      }
      if (initObj.hasOwnProperty('light_remain_time')) {
        this.light_remain_time = initObj.light_remain_time
      }
      else {
        this.light_remain_time = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_stop')) {
        this.distance_to_stop = initObj.distance_to_stop
      }
      else {
        this.distance_to_stop = 0.0;
      }
      if (initObj.hasOwnProperty('direction_flag')) {
        this.direction_flag = initObj.direction_flag
      }
      else {
        this.direction_flag = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('distance_to_junction')) {
        this.distance_to_junction = initObj.distance_to_junction
      }
      else {
        this.distance_to_junction = 0.0;
      }
      if (initObj.hasOwnProperty('stop_line')) {
        this.stop_line = initObj.stop_line
      }
      else {
        this.stop_line = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JunctionInfo
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [light_flag]
    bufferOffset = _serializer.int32(obj.light_flag, buffer, bufferOffset);
    // Serialize message field [light_color]
    bufferOffset = _serializer.int32(obj.light_color, buffer, bufferOffset);
    // Serialize message field [light_remain_time]
    bufferOffset = _serializer.float64(obj.light_remain_time, buffer, bufferOffset);
    // Serialize message field [distance_to_stop]
    bufferOffset = _serializer.float64(obj.distance_to_stop, buffer, bufferOffset);
    // Serialize message field [direction_flag]
    bufferOffset = _serializer.int32(obj.direction_flag, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.int32(obj.direction, buffer, bufferOffset);
    // Serialize message field [distance_to_junction]
    bufferOffset = _serializer.float64(obj.distance_to_junction, buffer, bufferOffset);
    // Serialize message field [stop_line]
    // Serialize the length for message field [stop_line]
    bufferOffset = _serializer.uint32(obj.stop_line.length, buffer, bufferOffset);
    obj.stop_line.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JunctionInfo
    let len;
    let data = new JunctionInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [light_flag]
    data.light_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [light_color]
    data.light_color = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [light_remain_time]
    data.light_remain_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_stop]
    data.distance_to_stop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [direction_flag]
    data.direction_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_to_junction]
    data.distance_to_junction = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stop_line]
    // Deserialize array length for message field [stop_line]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stop_line = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stop_line[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.stop_line.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/JunctionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c76d6c87c12f4cd2c105a4a2286da681';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   id     #  
    int32   light_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
    int32   light_color     # 信号灯颜色，绿灯可通行，false红灯不能通行
    float64   light_remain_time     # 信号灯剩余时间
    float64   distance_to_stop     # 停车距离，停止线
    int32   direction_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
    int32   direction     # 路口通行方向，0：无效、1：左、2：前、3：右
    float64   distance_to_junction     # 距路口距离
    Point3D[] stop_line # 路口停止线
    
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
    const resolved = new JunctionInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.light_flag !== undefined) {
      resolved.light_flag = msg.light_flag;
    }
    else {
      resolved.light_flag = 0
    }

    if (msg.light_color !== undefined) {
      resolved.light_color = msg.light_color;
    }
    else {
      resolved.light_color = 0
    }

    if (msg.light_remain_time !== undefined) {
      resolved.light_remain_time = msg.light_remain_time;
    }
    else {
      resolved.light_remain_time = 0.0
    }

    if (msg.distance_to_stop !== undefined) {
      resolved.distance_to_stop = msg.distance_to_stop;
    }
    else {
      resolved.distance_to_stop = 0.0
    }

    if (msg.direction_flag !== undefined) {
      resolved.direction_flag = msg.direction_flag;
    }
    else {
      resolved.direction_flag = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.distance_to_junction !== undefined) {
      resolved.distance_to_junction = msg.distance_to_junction;
    }
    else {
      resolved.distance_to_junction = 0.0
    }

    if (msg.stop_line !== undefined) {
      resolved.stop_line = new Array(msg.stop_line.length);
      for (let i = 0; i < resolved.stop_line.length; ++i) {
        resolved.stop_line[i] = Point3D.Resolve(msg.stop_line[i]);
      }
    }
    else {
      resolved.stop_line = []
    }

    return resolved;
    }
};

module.exports = JunctionInfo;
