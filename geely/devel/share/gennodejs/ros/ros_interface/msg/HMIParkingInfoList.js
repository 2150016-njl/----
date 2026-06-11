// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HMIParkingInfo = require('./HMIParkingInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HMIParkingInfoList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parking_info = null;
      this.parking_out_enable = null;
      this.parking_out_direction = null;
      this.parking_out_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parking_info')) {
        this.parking_info = initObj.parking_info
      }
      else {
        this.parking_info = [];
      }
      if (initObj.hasOwnProperty('parking_out_enable')) {
        this.parking_out_enable = initObj.parking_out_enable
      }
      else {
        this.parking_out_enable = false;
      }
      if (initObj.hasOwnProperty('parking_out_direction')) {
        this.parking_out_direction = initObj.parking_out_direction
      }
      else {
        this.parking_out_direction = 0;
      }
      if (initObj.hasOwnProperty('parking_out_id')) {
        this.parking_out_id = initObj.parking_out_id
      }
      else {
        this.parking_out_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIParkingInfoList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parking_info]
    // Serialize the length for message field [parking_info]
    bufferOffset = _serializer.uint32(obj.parking_info.length, buffer, bufferOffset);
    obj.parking_info.forEach((val) => {
      bufferOffset = HMIParkingInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parking_out_enable]
    bufferOffset = _serializer.bool(obj.parking_out_enable, buffer, bufferOffset);
    // Serialize message field [parking_out_direction]
    bufferOffset = _serializer.int32(obj.parking_out_direction, buffer, bufferOffset);
    // Serialize message field [parking_out_id]
    bufferOffset = _serializer.int32(obj.parking_out_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIParkingInfoList
    let len;
    let data = new HMIParkingInfoList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_info]
    // Deserialize array length for message field [parking_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_info[i] = HMIParkingInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parking_out_enable]
    data.parking_out_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parking_out_direction]
    data.parking_out_direction = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_out_id]
    data.parking_out_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.parking_info.forEach((val) => {
      length += HMIParkingInfo.getMessageSize(val);
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/HMIParkingInfoList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ee1c963e4488266db67d36b454f5473';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is  included in header
    HMIParkingInfo[] parking_info #  
    bool   parking_out_enable     #  
    int32   parking_out_direction     #  
    int32   parking_out_id     #  
    
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
    MSG: ros_interface/HMIParkingInfo
    Header   header     # timestamp is  included in header
    int32   parking_space_id     # // 停车位id
    int32   parking_type     # // PARKING_TYPE=0 //无效泊车 PARKING_TYPE=1 //水平泊车 PARKING_TYPE=2 //垂直泊车 PARKING_TYPE=3 //倾斜泊车
    bool   is_parking_enable     # // true可泊车，false不可泊车
    Point3D   center_point_of_parking     # // 世界坐标系下停车位中心点
    float64   theta     # // 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角
    float64   width     # // 停车位宽（单位m）
    float64   length     # // 停车位长单位m）
    bool   is_custom_parking     # // 是否是自定义车位
    Polygon3D   polygon     # 世界坐标系下的车位多边形
    int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/Polygon3D
    int32   coordinate_system     # 坐标系
    Point3D[] points # 三维点集
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIParkingInfoList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parking_info !== undefined) {
      resolved.parking_info = new Array(msg.parking_info.length);
      for (let i = 0; i < resolved.parking_info.length; ++i) {
        resolved.parking_info[i] = HMIParkingInfo.Resolve(msg.parking_info[i]);
      }
    }
    else {
      resolved.parking_info = []
    }

    if (msg.parking_out_enable !== undefined) {
      resolved.parking_out_enable = msg.parking_out_enable;
    }
    else {
      resolved.parking_out_enable = false
    }

    if (msg.parking_out_direction !== undefined) {
      resolved.parking_out_direction = msg.parking_out_direction;
    }
    else {
      resolved.parking_out_direction = 0
    }

    if (msg.parking_out_id !== undefined) {
      resolved.parking_out_id = msg.parking_out_id;
    }
    else {
      resolved.parking_out_id = 0
    }

    return resolved;
    }
};

module.exports = HMIParkingInfoList;
