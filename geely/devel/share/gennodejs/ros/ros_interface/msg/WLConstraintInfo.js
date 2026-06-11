// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3D = require('./Point3D.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WLConstraintInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.vehicle_point1 = null;
      this.vehicle_point2 = null;
      this.abs_point1 = null;
      this.abs_point2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('vehicle_point1')) {
        this.vehicle_point1 = initObj.vehicle_point1
      }
      else {
        this.vehicle_point1 = new Point3D();
      }
      if (initObj.hasOwnProperty('vehicle_point2')) {
        this.vehicle_point2 = initObj.vehicle_point2
      }
      else {
        this.vehicle_point2 = new Point3D();
      }
      if (initObj.hasOwnProperty('abs_point1')) {
        this.abs_point1 = initObj.abs_point1
      }
      else {
        this.abs_point1 = new Point3D();
      }
      if (initObj.hasOwnProperty('abs_point2')) {
        this.abs_point2 = initObj.abs_point2
      }
      else {
        this.abs_point2 = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WLConstraintInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [vehicle_point1]
    bufferOffset = Point3D.serialize(obj.vehicle_point1, buffer, bufferOffset);
    // Serialize message field [vehicle_point2]
    bufferOffset = Point3D.serialize(obj.vehicle_point2, buffer, bufferOffset);
    // Serialize message field [abs_point1]
    bufferOffset = Point3D.serialize(obj.abs_point1, buffer, bufferOffset);
    // Serialize message field [abs_point2]
    bufferOffset = Point3D.serialize(obj.abs_point2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WLConstraintInfo
    let len;
    let data = new WLConstraintInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_point1]
    data.vehicle_point1 = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_point2]
    data.vehicle_point2 = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [abs_point1]
    data.abs_point1 = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [abs_point2]
    data.abs_point2 = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/WLConstraintInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ded4b242dcffae8b411138eaa40115c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    int32   id     # id
    Point3D   vehicle_point1     # 车辆坐标系下约束点1
    Point3D   vehicle_point2     # 车辆坐标系下约束点2
    Point3D   abs_point1     # 绝对坐标系下约束点1
    Point3D   abs_point2     # 绝对坐标系下约束点2
    
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
    const resolved = new WLConstraintInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.vehicle_point1 !== undefined) {
      resolved.vehicle_point1 = Point3D.Resolve(msg.vehicle_point1)
    }
    else {
      resolved.vehicle_point1 = new Point3D()
    }

    if (msg.vehicle_point2 !== undefined) {
      resolved.vehicle_point2 = Point3D.Resolve(msg.vehicle_point2)
    }
    else {
      resolved.vehicle_point2 = new Point3D()
    }

    if (msg.abs_point1 !== undefined) {
      resolved.abs_point1 = Point3D.Resolve(msg.abs_point1)
    }
    else {
      resolved.abs_point1 = new Point3D()
    }

    if (msg.abs_point2 !== undefined) {
      resolved.abs_point2 = Point3D.Resolve(msg.abs_point2)
    }
    else {
      resolved.abs_point2 = new Point3D()
    }

    return resolved;
    }
};

module.exports = WLConstraintInfo;
