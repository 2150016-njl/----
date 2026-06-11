// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Region = require('./Region.js');
let Grid = require('./Grid.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SotifMonitorResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.region_value = null;
      this.grid_map = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('region_value')) {
        this.region_value = initObj.region_value
      }
      else {
        this.region_value = [];
      }
      if (initObj.hasOwnProperty('grid_map')) {
        this.grid_map = initObj.grid_map
      }
      else {
        this.grid_map = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SotifMonitorResult
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [region_value]
    // Serialize the length for message field [region_value]
    bufferOffset = _serializer.uint32(obj.region_value.length, buffer, bufferOffset);
    obj.region_value.forEach((val) => {
      bufferOffset = Region.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [grid_map]
    // Serialize the length for message field [grid_map]
    bufferOffset = _serializer.uint32(obj.grid_map.length, buffer, bufferOffset);
    obj.grid_map.forEach((val) => {
      bufferOffset = Grid.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SotifMonitorResult
    let len;
    let data = new SotifMonitorResult(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [region_value]
    // Deserialize array length for message field [region_value]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.region_value = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.region_value[i] = Region.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [grid_map]
    // Deserialize array length for message field [grid_map]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.grid_map = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.grid_map[i] = Grid.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.region_value.forEach((val) => {
      length += Region.getMessageSize(val);
    });
    length += 52 * object.grid_map.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/SotifMonitorResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cfcbcab73f775f6e6285221c4193ca0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    Region[] region_value # 区域态势
    Grid[] grid_map # 栅格地图
    
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
    MSG: ros_interface/Region
    int32   name_region     # 前后左右区域
    float64   score     # 车辆前后左右的区域打分获得的分值(0-100表示逐步危险程度)
    int32   rank_risk     # 危险程度(0-3四级划分，不同分级对应不同驾驶处理策略)
    Point3D[] region_polygon # 世界坐标系下的区域多边形
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/Grid
    float64   x     # 世界坐标系下的x
    float64   y     # 世界坐标系下的y
    SLPoint   sl_point     # Frenet坐标系下的x
    float64   yaw     #  
    float64   potential     # 势场值
    int32   region_id     # 区域编号
    
    ================================================================================
    MSG: ros_interface/SLPoint
    float64   s     # 纵向位移
    float64   l     # 横向位移
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SotifMonitorResult(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.region_value !== undefined) {
      resolved.region_value = new Array(msg.region_value.length);
      for (let i = 0; i < resolved.region_value.length; ++i) {
        resolved.region_value[i] = Region.Resolve(msg.region_value[i]);
      }
    }
    else {
      resolved.region_value = []
    }

    if (msg.grid_map !== undefined) {
      resolved.grid_map = new Array(msg.grid_map.length);
      for (let i = 0; i < resolved.grid_map.length; ++i) {
        resolved.grid_map[i] = Grid.Resolve(msg.grid_map[i]);
      }
    }
    else {
      resolved.grid_map = []
    }

    return resolved;
    }
};

module.exports = SotifMonitorResult;
