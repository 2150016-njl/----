// Auto-generated. Do not edit!

// (in-package interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Lane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_idx = null;
      this.left_traverse_flag = null;
      this.right_traverse_flag = null;
      this.lane_width = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_idx')) {
        this.lane_idx = initObj.lane_idx
      }
      else {
        this.lane_idx = 0;
      }
      if (initObj.hasOwnProperty('left_traverse_flag')) {
        this.left_traverse_flag = initObj.left_traverse_flag
      }
      else {
        this.left_traverse_flag = false;
      }
      if (initObj.hasOwnProperty('right_traverse_flag')) {
        this.right_traverse_flag = initObj.right_traverse_flag
      }
      else {
        this.right_traverse_flag = false;
      }
      if (initObj.hasOwnProperty('lane_width')) {
        this.lane_width = initObj.lane_width
      }
      else {
        this.lane_width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lane
    // Serialize message field [lane_idx]
    bufferOffset = _serializer.uint8(obj.lane_idx, buffer, bufferOffset);
    // Serialize message field [left_traverse_flag]
    bufferOffset = _serializer.bool(obj.left_traverse_flag, buffer, bufferOffset);
    // Serialize message field [right_traverse_flag]
    bufferOffset = _serializer.bool(obj.right_traverse_flag, buffer, bufferOffset);
    // Serialize message field [lane_width]
    bufferOffset = _serializer.float64(obj.lane_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lane
    let len;
    let data = new Lane(null);
    // Deserialize message field [lane_idx]
    data.lane_idx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_traverse_flag]
    data.left_traverse_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_traverse_flag]
    data.right_traverse_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_width]
    data.lane_width = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interface/Lane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ce3889449b1a37c2f794128b57abf80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Lane(null);
    if (msg.lane_idx !== undefined) {
      resolved.lane_idx = msg.lane_idx;
    }
    else {
      resolved.lane_idx = 0
    }

    if (msg.left_traverse_flag !== undefined) {
      resolved.left_traverse_flag = msg.left_traverse_flag;
    }
    else {
      resolved.left_traverse_flag = false
    }

    if (msg.right_traverse_flag !== undefined) {
      resolved.right_traverse_flag = msg.right_traverse_flag;
    }
    else {
      resolved.right_traverse_flag = false
    }

    if (msg.lane_width !== undefined) {
      resolved.lane_width = msg.lane_width;
    }
    else {
      resolved.lane_width = 0.0
    }

    return resolved;
    }
};

module.exports = Lane;
