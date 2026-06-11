// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2dList = require('./Point2dList.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ParkingRoi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.obstacles_vec = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('obstacles_vec')) {
        this.obstacles_vec = initObj.obstacles_vec
      }
      else {
        this.obstacles_vec = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingRoi
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [obstacles_vec]
    // Serialize the length for message field [obstacles_vec]
    bufferOffset = _serializer.uint32(obj.obstacles_vec.length, buffer, bufferOffset);
    obj.obstacles_vec.forEach((val) => {
      bufferOffset = Point2dList.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingRoi
    let len;
    let data = new ParkingRoi(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacles_vec]
    // Deserialize array length for message field [obstacles_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles_vec[i] = Point2dList.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.obstacles_vec.forEach((val) => {
      length += Point2dList.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ParkingRoi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebe8c02013248ccb80975a9d10310742';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    Point2dList[] obstacles_vec # 泊车可行驶区域可视化
    
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
    MSG: ros_interface/Point2dList
    Point2D[] point2d_list #  
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingRoi(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.obstacles_vec !== undefined) {
      resolved.obstacles_vec = new Array(msg.obstacles_vec.length);
      for (let i = 0; i < resolved.obstacles_vec.length; ++i) {
        resolved.obstacles_vec[i] = Point2dList.Resolve(msg.obstacles_vec[i]);
      }
    }
    else {
      resolved.obstacles_vec = []
    }

    return resolved;
    }
};

module.exports = ParkingRoi;
