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

class ParkingOutInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parking_out_id = null;
      this.parking_direction_type = null;
      this.is_parking_out_enable = null;
      this.parking_out_point = null;
      this.theta = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parking_out_id')) {
        this.parking_out_id = initObj.parking_out_id
      }
      else {
        this.parking_out_id = 0;
      }
      if (initObj.hasOwnProperty('parking_direction_type')) {
        this.parking_direction_type = initObj.parking_direction_type
      }
      else {
        this.parking_direction_type = 0;
      }
      if (initObj.hasOwnProperty('is_parking_out_enable')) {
        this.is_parking_out_enable = initObj.is_parking_out_enable
      }
      else {
        this.is_parking_out_enable = false;
      }
      if (initObj.hasOwnProperty('parking_out_point')) {
        this.parking_out_point = initObj.parking_out_point
      }
      else {
        this.parking_out_point = new Point3D();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingOutInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parking_out_id]
    bufferOffset = _serializer.int32(obj.parking_out_id, buffer, bufferOffset);
    // Serialize message field [parking_direction_type]
    bufferOffset = _serializer.int32(obj.parking_direction_type, buffer, bufferOffset);
    // Serialize message field [is_parking_out_enable]
    bufferOffset = _serializer.bool(obj.is_parking_out_enable, buffer, bufferOffset);
    // Serialize message field [parking_out_point]
    bufferOffset = Point3D.serialize(obj.parking_out_point, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingOutInfo
    let len;
    let data = new ParkingOutInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_out_id]
    data.parking_out_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_direction_type]
    data.parking_direction_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_parking_out_enable]
    data.is_parking_out_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parking_out_point]
    data.parking_out_point = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ParkingOutInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e521a1b6fe67f908288575c2442dfdff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    int32   parking_out_id     # 若车位有id，同停车位id
    int32   parking_direction_type     #  
    bool   is_parking_out_enable     # true可泊出，false不可泊出
    Point3D   parking_out_point     # 世界坐标系下提车点位置
    float64   theta     # 世界坐标系下的夹角（单位rad），提车点与正东方向夹角
    
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
    const resolved = new ParkingOutInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parking_out_id !== undefined) {
      resolved.parking_out_id = msg.parking_out_id;
    }
    else {
      resolved.parking_out_id = 0
    }

    if (msg.parking_direction_type !== undefined) {
      resolved.parking_direction_type = msg.parking_direction_type;
    }
    else {
      resolved.parking_direction_type = 0
    }

    if (msg.is_parking_out_enable !== undefined) {
      resolved.is_parking_out_enable = msg.is_parking_out_enable;
    }
    else {
      resolved.is_parking_out_enable = false
    }

    if (msg.parking_out_point !== undefined) {
      resolved.parking_out_point = Point3D.Resolve(msg.parking_out_point)
    }
    else {
      resolved.parking_out_point = new Point3D()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    return resolved;
    }
};

module.exports = ParkingOutInfo;
