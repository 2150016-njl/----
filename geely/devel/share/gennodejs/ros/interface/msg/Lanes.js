// Auto-generated. Do not edit!

// (in-package interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Lane = require('./Lane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Lanes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.curr_idx = null;
      this.target_idxes = null;
      this.lanes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('curr_idx')) {
        this.curr_idx = initObj.curr_idx
      }
      else {
        this.curr_idx = 0;
      }
      if (initObj.hasOwnProperty('target_idxes')) {
        this.target_idxes = initObj.target_idxes
      }
      else {
        this.target_idxes = [];
      }
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lanes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [curr_idx]
    bufferOffset = _serializer.uint8(obj.curr_idx, buffer, bufferOffset);
    // Serialize message field [target_idxes]
    bufferOffset = _arraySerializer.uint8(obj.target_idxes, buffer, bufferOffset, null);
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Lane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lanes
    let len;
    let data = new Lanes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [curr_idx]
    data.curr_idx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_idxes]
    data.target_idxes = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Lane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.target_idxes.length;
    length += 11 * object.lanes.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interface/Lanes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d6cd6912b68737ee9f67a1266d243c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 curr_idx 
    uint8[] target_idxes
    Lane[] lanes
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
    MSG: interface/Lane
    uint8 lane_idx
    bool left_traverse_flag 
    bool right_traverse_flag
    float64 lane_width
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lanes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.curr_idx !== undefined) {
      resolved.curr_idx = msg.curr_idx;
    }
    else {
      resolved.curr_idx = 0
    }

    if (msg.target_idxes !== undefined) {
      resolved.target_idxes = msg.target_idxes;
    }
    else {
      resolved.target_idxes = []
    }

    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Lane.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    return resolved;
    }
};

module.exports = Lanes;
