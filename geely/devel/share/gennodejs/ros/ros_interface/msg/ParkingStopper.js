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

class ParkingStopper {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.center_point_vehicle = null;
      this.center_point_abs = null;
      this.stopper_points_vehicle = null;
      this.stopper_points_abs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('center_point_vehicle')) {
        this.center_point_vehicle = initObj.center_point_vehicle
      }
      else {
        this.center_point_vehicle = new Point3D();
      }
      if (initObj.hasOwnProperty('center_point_abs')) {
        this.center_point_abs = initObj.center_point_abs
      }
      else {
        this.center_point_abs = new Point3D();
      }
      if (initObj.hasOwnProperty('stopper_points_vehicle')) {
        this.stopper_points_vehicle = initObj.stopper_points_vehicle
      }
      else {
        this.stopper_points_vehicle = [];
      }
      if (initObj.hasOwnProperty('stopper_points_abs')) {
        this.stopper_points_abs = initObj.stopper_points_abs
      }
      else {
        this.stopper_points_abs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingStopper
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [center_point_vehicle]
    bufferOffset = Point3D.serialize(obj.center_point_vehicle, buffer, bufferOffset);
    // Serialize message field [center_point_abs]
    bufferOffset = Point3D.serialize(obj.center_point_abs, buffer, bufferOffset);
    // Serialize message field [stopper_points_vehicle]
    // Serialize the length for message field [stopper_points_vehicle]
    bufferOffset = _serializer.uint32(obj.stopper_points_vehicle.length, buffer, bufferOffset);
    obj.stopper_points_vehicle.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [stopper_points_abs]
    // Serialize the length for message field [stopper_points_abs]
    bufferOffset = _serializer.uint32(obj.stopper_points_abs.length, buffer, bufferOffset);
    obj.stopper_points_abs.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingStopper
    let len;
    let data = new ParkingStopper(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_point_vehicle]
    data.center_point_vehicle = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_point_abs]
    data.center_point_abs = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [stopper_points_vehicle]
    // Deserialize array length for message field [stopper_points_vehicle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stopper_points_vehicle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stopper_points_vehicle[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [stopper_points_abs]
    // Deserialize array length for message field [stopper_points_abs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stopper_points_abs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stopper_points_abs[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.stopper_points_vehicle.length;
    length += 24 * object.stopper_points_abs.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ParkingStopper';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02850809483c04a8bdc47ff0256be651';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is  included in header
    Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标
    Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标
    Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点
    Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点
    
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
    const resolved = new ParkingStopper(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.center_point_vehicle !== undefined) {
      resolved.center_point_vehicle = Point3D.Resolve(msg.center_point_vehicle)
    }
    else {
      resolved.center_point_vehicle = new Point3D()
    }

    if (msg.center_point_abs !== undefined) {
      resolved.center_point_abs = Point3D.Resolve(msg.center_point_abs)
    }
    else {
      resolved.center_point_abs = new Point3D()
    }

    if (msg.stopper_points_vehicle !== undefined) {
      resolved.stopper_points_vehicle = new Array(msg.stopper_points_vehicle.length);
      for (let i = 0; i < resolved.stopper_points_vehicle.length; ++i) {
        resolved.stopper_points_vehicle[i] = Point3D.Resolve(msg.stopper_points_vehicle[i]);
      }
    }
    else {
      resolved.stopper_points_vehicle = []
    }

    if (msg.stopper_points_abs !== undefined) {
      resolved.stopper_points_abs = new Array(msg.stopper_points_abs.length);
      for (let i = 0; i < resolved.stopper_points_abs.length; ++i) {
        resolved.stopper_points_abs[i] = Point3D.Resolve(msg.stopper_points_abs[i]);
      }
    }
    else {
      resolved.stopper_points_abs = []
    }

    return resolved;
    }
};

module.exports = ParkingStopper;
