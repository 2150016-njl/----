// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StopPoint = require('./StopPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StopInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stop_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stop_points')) {
        this.stop_points = initObj.stop_points
      }
      else {
        this.stop_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stop_points]
    // Serialize the length for message field [stop_points]
    bufferOffset = _serializer.uint32(obj.stop_points.length, buffer, bufferOffset);
    obj.stop_points.forEach((val) => {
      bufferOffset = StopPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopInfo
    let len;
    let data = new StopInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stop_points]
    // Deserialize array length for message field [stop_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stop_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stop_points[i] = StopPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 41 * object.stop_points.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/StopInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '845948dd14933839d4b790bf2764e174';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    StopPoint[] stop_points # 停车点列表
    
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
    MSG: ros_interface/StopPoint
    Point3D   point     # 点xyz
    float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
    int8   type     # STOP_TYPE_TERMINAL=0 //目的地终点 STOP_TYPE_JUNCTION=1 //路口停止线
    float64   stop_distance     # 距停止点多少米停车
    
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
    const resolved = new StopInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stop_points !== undefined) {
      resolved.stop_points = new Array(msg.stop_points.length);
      for (let i = 0; i < resolved.stop_points.length; ++i) {
        resolved.stop_points[i] = StopPoint.Resolve(msg.stop_points[i]);
      }
    }
    else {
      resolved.stop_points = []
    }

    return resolved;
    }
};

module.exports = StopInfo;
