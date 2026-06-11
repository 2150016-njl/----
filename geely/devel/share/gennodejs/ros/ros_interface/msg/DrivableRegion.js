// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polygon3D = require('./Polygon3D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DrivableRegion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drivable_region = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drivable_region')) {
        this.drivable_region = initObj.drivable_region
      }
      else {
        this.drivable_region = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrivableRegion
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drivable_region]
    // Serialize the length for message field [drivable_region]
    bufferOffset = _serializer.uint32(obj.drivable_region.length, buffer, bufferOffset);
    obj.drivable_region.forEach((val) => {
      bufferOffset = Polygon3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrivableRegion
    let len;
    let data = new DrivableRegion(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drivable_region]
    // Deserialize array length for message field [drivable_region]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drivable_region = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drivable_region[i] = Polygon3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.drivable_region.forEach((val) => {
      length += Polygon3D.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/DrivableRegion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c14f4161a36f4f3dbefbe28192146c82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    Polygon3D[] drivable_region # 可行驶区域
    
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
    MSG: ros_interface/Polygon3D
    int32   coordinate_system     # 坐标系
    Point3D[] points # 三维点集
    
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
    const resolved = new DrivableRegion(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drivable_region !== undefined) {
      resolved.drivable_region = new Array(msg.drivable_region.length);
      for (let i = 0; i < resolved.drivable_region.length; ++i) {
        resolved.drivable_region[i] = Polygon3D.Resolve(msg.drivable_region[i]);
      }
    }
    else {
      resolved.drivable_region = []
    }

    return resolved;
    }
};

module.exports = DrivableRegion;
