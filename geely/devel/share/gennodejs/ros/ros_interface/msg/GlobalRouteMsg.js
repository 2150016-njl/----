// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneletInfo = require('./LaneletInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GlobalRouteMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.route = null;
      this.current_lanelet = null;
      this.total_mileage = null;
      this.cur_mileage = null;
      this.cur_slice = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('route')) {
        this.route = initObj.route
      }
      else {
        this.route = [];
      }
      if (initObj.hasOwnProperty('current_lanelet')) {
        this.current_lanelet = initObj.current_lanelet
      }
      else {
        this.current_lanelet = new LaneletInfo();
      }
      if (initObj.hasOwnProperty('total_mileage')) {
        this.total_mileage = initObj.total_mileage
      }
      else {
        this.total_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('cur_mileage')) {
        this.cur_mileage = initObj.cur_mileage
      }
      else {
        this.cur_mileage = 0.0;
      }
      if (initObj.hasOwnProperty('cur_slice')) {
        this.cur_slice = initObj.cur_slice
      }
      else {
        this.cur_slice = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalRouteMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [route]
    // Serialize the length for message field [route]
    bufferOffset = _serializer.uint32(obj.route.length, buffer, bufferOffset);
    obj.route.forEach((val) => {
      bufferOffset = LaneletInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [current_lanelet]
    bufferOffset = LaneletInfo.serialize(obj.current_lanelet, buffer, bufferOffset);
    // Serialize message field [total_mileage]
    bufferOffset = _serializer.float64(obj.total_mileage, buffer, bufferOffset);
    // Serialize message field [cur_mileage]
    bufferOffset = _serializer.float64(obj.cur_mileage, buffer, bufferOffset);
    // Serialize message field [cur_slice]
    // Serialize the length for message field [cur_slice]
    bufferOffset = _serializer.uint32(obj.cur_slice.length, buffer, bufferOffset);
    obj.cur_slice.forEach((val) => {
      bufferOffset = LaneletInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalRouteMsg
    let len;
    let data = new GlobalRouteMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [route]
    // Deserialize array length for message field [route]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.route = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.route[i] = LaneletInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [current_lanelet]
    data.current_lanelet = LaneletInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [total_mileage]
    data.total_mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_mileage]
    data.cur_mileage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cur_slice]
    // Deserialize array length for message field [cur_slice]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cur_slice = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cur_slice[i] = LaneletInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.route.length;
    length += 12 * object.cur_slice.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/GlobalRouteMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a9de06349ba12c560c2c024a6bcece7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    LaneletInfo[] route # 一次导航的全程道路集合，从起点到终点排序
    LaneletInfo   current_lanelet     # 当前所在车道的信息
    float64   total_mileage     # 总里程
    float64   cur_mileage     # 当前里程
    LaneletInfo[] cur_slice # 当前地图切片,用来绘制局部地图
    
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
    MSG: ros_interface/LaneletInfo
    int32   lanelet_id     # 道路id，与地图文件对应
    float64   length     # 道路长度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalRouteMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.route !== undefined) {
      resolved.route = new Array(msg.route.length);
      for (let i = 0; i < resolved.route.length; ++i) {
        resolved.route[i] = LaneletInfo.Resolve(msg.route[i]);
      }
    }
    else {
      resolved.route = []
    }

    if (msg.current_lanelet !== undefined) {
      resolved.current_lanelet = LaneletInfo.Resolve(msg.current_lanelet)
    }
    else {
      resolved.current_lanelet = new LaneletInfo()
    }

    if (msg.total_mileage !== undefined) {
      resolved.total_mileage = msg.total_mileage;
    }
    else {
      resolved.total_mileage = 0.0
    }

    if (msg.cur_mileage !== undefined) {
      resolved.cur_mileage = msg.cur_mileage;
    }
    else {
      resolved.cur_mileage = 0.0
    }

    if (msg.cur_slice !== undefined) {
      resolved.cur_slice = new Array(msg.cur_slice.length);
      for (let i = 0; i < resolved.cur_slice.length; ++i) {
        resolved.cur_slice[i] = LaneletInfo.Resolve(msg.cur_slice[i]);
      }
    }
    else {
      resolved.cur_slice = []
    }

    return resolved;
    }
};

module.exports = GlobalRouteMsg;
