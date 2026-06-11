// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoadMark = require('./RoadMark.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoadMarkList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.roadmarks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('roadmarks')) {
        this.roadmarks = initObj.roadmarks
      }
      else {
        this.roadmarks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoadMarkList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [roadmarks]
    // Serialize the length for message field [roadmarks]
    bufferOffset = _serializer.uint32(obj.roadmarks.length, buffer, bufferOffset);
    obj.roadmarks.forEach((val) => {
      bufferOffset = RoadMark.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoadMarkList
    let len;
    let data = new RoadMarkList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [roadmarks]
    // Deserialize array length for message field [roadmarks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.roadmarks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.roadmarks[i] = RoadMark.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 52 * object.roadmarks.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RoadMarkList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '167f3e013a1861ca3ba3feb2f5be99a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    RoadMark[] roadmarks # 交通标识列表
    
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
    MSG: ros_interface/RoadMark
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
    const resolved = new RoadMarkList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.roadmarks !== undefined) {
      resolved.roadmarks = new Array(msg.roadmarks.length);
      for (let i = 0; i < resolved.roadmarks.length; ++i) {
        resolved.roadmarks[i] = RoadMark.Resolve(msg.roadmarks[i]);
      }
    }
    else {
      resolved.roadmarks = []
    }

    return resolved;
    }
};

module.exports = RoadMarkList;
