// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UltrasonicObstacle = require('./UltrasonicObstacle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Ultrasonic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ultrasonic
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ranges]
    // Serialize the length for message field [ranges]
    bufferOffset = _serializer.uint32(obj.ranges.length, buffer, bufferOffset);
    obj.ranges.forEach((val) => {
      bufferOffset = UltrasonicObstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ultrasonic
    let len;
    let data = new Ultrasonic(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ranges]
    // Deserialize array length for message field [ranges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ranges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ranges[i] = UltrasonicObstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.ranges.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Ultrasonic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '546a7e18a0d13f54ea35016a325c5b51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    UltrasonicObstacle[] ranges # 超声波障碍物数组
    
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
    MSG: ros_interface/UltrasonicObstacle
    int32   id     # 障碍物id
    float64   range     # 障碍物距离
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ultrasonic(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = new Array(msg.ranges.length);
      for (let i = 0; i < resolved.ranges.length; ++i) {
        resolved.ranges[i] = UltrasonicObstacle.Resolve(msg.ranges[i]);
      }
    }
    else {
      resolved.ranges = []
    }

    return resolved;
    }
};

module.exports = Ultrasonic;
