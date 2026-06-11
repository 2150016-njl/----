// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let UssParkingInfo = require('./UssParkingInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UssParkingInfoList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.uss_parking_info = null;
      this.error_code = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('uss_parking_info')) {
        this.uss_parking_info = initObj.uss_parking_info
      }
      else {
        this.uss_parking_info = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UssParkingInfoList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [uss_parking_info]
    // Serialize the length for message field [uss_parking_info]
    bufferOffset = _serializer.uint32(obj.uss_parking_info.length, buffer, bufferOffset);
    obj.uss_parking_info.forEach((val) => {
      bufferOffset = UssParkingInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UssParkingInfoList
    let len;
    let data = new UssParkingInfoList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [uss_parking_info]
    // Deserialize array length for message field [uss_parking_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.uss_parking_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.uss_parking_info[i] = UssParkingInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.uss_parking_info.forEach((val) => {
      length += UssParkingInfo.getMessageSize(val);
    });
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/UssParkingInfoList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72d9bae584e181e4169ab23909311fd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    UssParkingInfo[] uss_parking_info # 超声波检测出的停车位数组
    int32   error_code     # 错误码（default = OK）
    bool   is_valid     # 超声波车位数据是否合法
    
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
    MSG: ros_interface/UssParkingInfo
    Header   header     # timestamp is included in header
    int32   uss_parking_type     # 超声波车位类型： 0-右侧平行 1-左侧平行 2-右侧垂直 3-左侧垂直
    Point3D   parking_point0     # 车体中心坐标系下，超声波车位0点位置
    Point3D   parking_point1     # 车体中心坐标系下，超声波车位1点位置
    Point3D   parking_point2     # 车体中心坐标系下，超声波车位2点位置
    Point3D   parking_point3     # 车体中心坐标系下，超声波车位3点位置
    
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
    const resolved = new UssParkingInfoList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.uss_parking_info !== undefined) {
      resolved.uss_parking_info = new Array(msg.uss_parking_info.length);
      for (let i = 0; i < resolved.uss_parking_info.length; ++i) {
        resolved.uss_parking_info[i] = UssParkingInfo.Resolve(msg.uss_parking_info[i]);
      }
    }
    else {
      resolved.uss_parking_info = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    return resolved;
    }
};

module.exports = UssParkingInfoList;
