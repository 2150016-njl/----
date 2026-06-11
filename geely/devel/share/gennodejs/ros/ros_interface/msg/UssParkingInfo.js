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

class UssParkingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uss_parking_type = null;
      this.parking_point0 = null;
      this.parking_point1 = null;
      this.parking_point2 = null;
      this.parking_point3 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uss_parking_type')) {
        this.uss_parking_type = initObj.uss_parking_type
      }
      else {
        this.uss_parking_type = 0;
      }
      if (initObj.hasOwnProperty('parking_point0')) {
        this.parking_point0 = initObj.parking_point0
      }
      else {
        this.parking_point0 = new Point3D();
      }
      if (initObj.hasOwnProperty('parking_point1')) {
        this.parking_point1 = initObj.parking_point1
      }
      else {
        this.parking_point1 = new Point3D();
      }
      if (initObj.hasOwnProperty('parking_point2')) {
        this.parking_point2 = initObj.parking_point2
      }
      else {
        this.parking_point2 = new Point3D();
      }
      if (initObj.hasOwnProperty('parking_point3')) {
        this.parking_point3 = initObj.parking_point3
      }
      else {
        this.parking_point3 = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssParkingInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uss_parking_type]
    bufferOffset = _serializer.int32(obj.uss_parking_type, buffer, bufferOffset);
    // Serialize message field [parking_point0]
    bufferOffset = Point3D.serialize(obj.parking_point0, buffer, bufferOffset);
    // Serialize message field [parking_point1]
    bufferOffset = Point3D.serialize(obj.parking_point1, buffer, bufferOffset);
    // Serialize message field [parking_point2]
    bufferOffset = Point3D.serialize(obj.parking_point2, buffer, bufferOffset);
    // Serialize message field [parking_point3]
    bufferOffset = Point3D.serialize(obj.parking_point3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssParkingInfo
    let len;
    let data = new UssParkingInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_parking_type]
    data.uss_parking_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_point0]
    data.parking_point0 = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_point1]
    data.parking_point1 = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_point2]
    data.parking_point2 = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_point3]
    data.parking_point3 = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/UssParkingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14954f6574cb7c7467a32a7a7d462815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直
    Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置
    Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置
    Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置
    Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置
    
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
    const resolved = new UssParkingInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uss_parking_type !== undefined) {
      resolved.uss_parking_type = msg.uss_parking_type;
    }
    else {
      resolved.uss_parking_type = 0
    }

    if (msg.parking_point0 !== undefined) {
      resolved.parking_point0 = Point3D.Resolve(msg.parking_point0)
    }
    else {
      resolved.parking_point0 = new Point3D()
    }

    if (msg.parking_point1 !== undefined) {
      resolved.parking_point1 = Point3D.Resolve(msg.parking_point1)
    }
    else {
      resolved.parking_point1 = new Point3D()
    }

    if (msg.parking_point2 !== undefined) {
      resolved.parking_point2 = Point3D.Resolve(msg.parking_point2)
    }
    else {
      resolved.parking_point2 = new Point3D()
    }

    if (msg.parking_point3 !== undefined) {
      resolved.parking_point3 = Point3D.Resolve(msg.parking_point3)
    }
    else {
      resolved.parking_point3 = new Point3D()
    }

    return resolved;
    }
};

module.exports = UssParkingInfo;
