// Auto-generated. Do not edit!

// (in-package used_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Traffic_light {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_light_status = null;
      this.straight_light_status = null;
      this.right_light_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_light_status')) {
        this.left_light_status = initObj.left_light_status
      }
      else {
        this.left_light_status = 0;
      }
      if (initObj.hasOwnProperty('straight_light_status')) {
        this.straight_light_status = initObj.straight_light_status
      }
      else {
        this.straight_light_status = 0;
      }
      if (initObj.hasOwnProperty('right_light_status')) {
        this.right_light_status = initObj.right_light_status
      }
      else {
        this.right_light_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Traffic_light
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_light_status]
    bufferOffset = _serializer.uint8(obj.left_light_status, buffer, bufferOffset);
    // Serialize message field [straight_light_status]
    bufferOffset = _serializer.uint8(obj.straight_light_status, buffer, bufferOffset);
    // Serialize message field [right_light_status]
    bufferOffset = _serializer.uint8(obj.right_light_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Traffic_light
    let len;
    let data = new Traffic_light(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_light_status]
    data.left_light_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [straight_light_status]
    data.straight_light_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_light_status]
    data.right_light_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'used_msgs/Traffic_light';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6c7743f4ef479871efcca7fc31ddd3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 left_light_status
    uint8 straight_light_status
    uint8 right_light_status
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Traffic_light(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_light_status !== undefined) {
      resolved.left_light_status = msg.left_light_status;
    }
    else {
      resolved.left_light_status = 0
    }

    if (msg.straight_light_status !== undefined) {
      resolved.straight_light_status = msg.straight_light_status;
    }
    else {
      resolved.straight_light_status = 0
    }

    if (msg.right_light_status !== undefined) {
      resolved.right_light_status = msg.right_light_status;
    }
    else {
      resolved.right_light_status = 0
    }

    return resolved;
    }
};

module.exports = Traffic_light;
