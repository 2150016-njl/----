// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssObstacle = require('./UssObstacle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UssObstacleList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uss_obstacles = null;
      this.uss_ranges = null;
      this.error_code = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uss_obstacles')) {
        this.uss_obstacles = initObj.uss_obstacles
      }
      else {
        this.uss_obstacles = [];
      }
      if (initObj.hasOwnProperty('uss_ranges')) {
        this.uss_ranges = initObj.uss_ranges
      }
      else {
        this.uss_ranges = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssObstacleList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uss_obstacles]
    // Serialize the length for message field [uss_obstacles]
    bufferOffset = _serializer.uint32(obj.uss_obstacles.length, buffer, bufferOffset);
    obj.uss_obstacles.forEach((val) => {
      bufferOffset = UssObstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [uss_ranges]
    bufferOffset = _arraySerializer.float64(obj.uss_ranges, buffer, bufferOffset, null);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssObstacleList
    let len;
    let data = new UssObstacleList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_obstacles]
    // Deserialize array length for message field [uss_obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_obstacles[i] = UssObstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [uss_ranges]
    data.uss_ranges = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.uss_obstacles.forEach((val) => {
      length += UssObstacle.getMessageSize(val);
    });
    length += 8 * object.uss_ranges.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/UssObstacleList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c1d8a409b9bf173ccc5987b7e4616b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    UssObstacle[] uss_obstacles # 检测出的超声波障碍物数组
    float64[] uss_ranges # 超声波检测的距离数组，存放顺序按照FA,FB,FC,FD,FE,FF,RA,RB,RC,RD,RE,RF
    int32   error_code     # 错误码（default = OK）
    bool   is_valid     # 超声波障碍物数据是否合法
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: ros_interface/UssObstacle
    Header   header     # timestamp is included in header
    int32   uss_obstacle_region     # 超声波障碍物点区域 0-车辆后方区域 1-车辆前方区域 2-车辆右方区域 3-车辆左方区域
    float64   mx     # 车体中心坐标系下，超声波障碍物点x坐标
    float64   my     # 车体中心坐标系下，超声波障碍物点y坐标
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UssObstacleList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uss_obstacles !== undefined) {
      resolved.uss_obstacles = new Array(msg.uss_obstacles.length);
      for (let i = 0; i < resolved.uss_obstacles.length; ++i) {
        resolved.uss_obstacles[i] = UssObstacle.Resolve(msg.uss_obstacles[i]);
      }
    }
    else {
      resolved.uss_obstacles = []
    }

    if (msg.uss_ranges !== undefined) {
      resolved.uss_ranges = msg.uss_ranges;
    }
    else {
      resolved.uss_ranges = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    return resolved;
    }
};

module.exports = UssObstacleList;
