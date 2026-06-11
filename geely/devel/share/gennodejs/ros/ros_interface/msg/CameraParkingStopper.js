// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BBox2D = require('./BBox2D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraParkingStopper {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bbox2d = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bbox2d')) {
        this.bbox2d = initObj.bbox2d
      }
      else {
        this.bbox2d = new BBox2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraParkingStopper
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [bbox2d]
    bufferOffset = BBox2D.serialize(obj.bbox2d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraParkingStopper
    let len;
    let data = new CameraParkingStopper(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox2d]
    data.bbox2d = BBox2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/CameraParkingStopper';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cd67ca0205cbd6d75f4d6d20cee3457';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is  included in header
    BBox2D   bbox2d     # 限位器图像框
    
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
    MSG: ros_interface/BBox2D
    int16   xmin     # 图像框左上角的x坐标
    int16   ymin     # 图像框左上角的y坐标
    int16   xmax     # 图像框右下角的x坐标
    int16   ymax     # 图像框右下角的y坐标
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraParkingStopper(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bbox2d !== undefined) {
      resolved.bbox2d = BBox2D.Resolve(msg.bbox2d)
    }
    else {
      resolved.bbox2d = new BBox2D()
    }

    return resolved;
    }
};

module.exports = CameraParkingStopper;
