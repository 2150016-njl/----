// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyPoint = require('./KeyPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoutingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.request_source = null;
      this.request_type = null;
      this.num_of_kp = null;
      this.key_point_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('request_source')) {
        this.request_source = initObj.request_source
      }
      else {
        this.request_source = '';
      }
      if (initObj.hasOwnProperty('request_type')) {
        this.request_type = initObj.request_type
      }
      else {
        this.request_type = 0;
      }
      if (initObj.hasOwnProperty('num_of_kp')) {
        this.num_of_kp = initObj.num_of_kp
      }
      else {
        this.num_of_kp = 0;
      }
      if (initObj.hasOwnProperty('key_point_list')) {
        this.key_point_list = initObj.key_point_list
      }
      else {
        this.key_point_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [request_source]
    bufferOffset = _serializer.string(obj.request_source, buffer, bufferOffset);
    // Serialize message field [request_type]
    bufferOffset = _serializer.int8(obj.request_type, buffer, bufferOffset);
    // Serialize message field [num_of_kp]
    bufferOffset = _serializer.int16(obj.num_of_kp, buffer, bufferOffset);
    // Serialize message field [key_point_list]
    // Serialize the length for message field [key_point_list]
    bufferOffset = _serializer.uint32(obj.key_point_list.length, buffer, bufferOffset);
    obj.key_point_list.forEach((val) => {
      bufferOffset = KeyPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingRequest
    let len;
    let data = new RoutingRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_source]
    data.request_source = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [request_type]
    data.request_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [num_of_kp]
    data.num_of_kp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [key_point_list]
    // Deserialize array length for message field [key_point_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.key_point_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.key_point_list[i] = KeyPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.request_source.length;
    object.key_point_list.forEach((val) => {
      length += KeyPoint.getMessageSize(val);
    });
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RoutingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1771a80ac13a976ae23dbca9cd7f5386';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    string   request_source     # 发起请求的来源名称
    int8   request_type     # REQUEST_TYPE=0//无效 REQUEST_TYPE=1//正常路由 REQUEST_TYPE=2//泊车路由
    int16   num_of_kp     # 关键点数量
    KeyPoint[] key_point_list # 关键点列表，第一个为起点，最后一个为终点，中间为途经点
    
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
    MSG: ros_interface/KeyPoint
    int16   id     # 关键点id
    float64   latitude     # 关键点纬度
    float64   longitude     # 关键点经度
    float64   ele     # 关键点海拔
    float64   heading     # 关键点航向角（与北方向夹角，顺时针方向为正，单位为°）
    string   name     # 关键点名称
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoutingRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.request_source !== undefined) {
      resolved.request_source = msg.request_source;
    }
    else {
      resolved.request_source = ''
    }

    if (msg.request_type !== undefined) {
      resolved.request_type = msg.request_type;
    }
    else {
      resolved.request_type = 0
    }

    if (msg.num_of_kp !== undefined) {
      resolved.num_of_kp = msg.num_of_kp;
    }
    else {
      resolved.num_of_kp = 0
    }

    if (msg.key_point_list !== undefined) {
      resolved.key_point_list = new Array(msg.key_point_list.length);
      for (let i = 0; i < resolved.key_point_list.length; ++i) {
        resolved.key_point_list[i] = KeyPoint.Resolve(msg.key_point_list[i]);
      }
    }
    else {
      resolved.key_point_list = []
    }

    return resolved;
    }
};

module.exports = RoutingRequest;
