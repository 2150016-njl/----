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

class ObstacleInteractiveTag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.interactive_tag = null;
    }
    else {
      if (initObj.hasOwnProperty('interactive_tag')) {
        this.interactive_tag = initObj.interactive_tag
      }
      else {
        this.interactive_tag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleInteractiveTag
    // Serialize message field [interactive_tag]
    bufferOffset = _serializer.int32(obj.interactive_tag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleInteractiveTag
    let len;
    let data = new ObstacleInteractiveTag(null);
    // Deserialize message field [interactive_tag]
    data.interactive_tag = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ObstacleInteractiveTag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2e9ac94a7bb1e05f8d6dfc48cdf1b73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   interactive_tag     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleInteractiveTag(null);
    if (msg.interactive_tag !== undefined) {
      resolved.interactive_tag = msg.interactive_tag;
    }
    else {
      resolved.interactive_tag = 0
    }

    return resolved;
    }
};

module.exports = ObstacleInteractiveTag;
