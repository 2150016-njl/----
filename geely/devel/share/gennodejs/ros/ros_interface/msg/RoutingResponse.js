// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneInfo = require('./LaneInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RoutingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.plan_status = null;
      this.replan_flag = null;
      this.route_reason = null;
      this.lane_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('plan_status')) {
        this.plan_status = initObj.plan_status
      }
      else {
        this.plan_status = 0;
      }
      if (initObj.hasOwnProperty('replan_flag')) {
        this.replan_flag = initObj.replan_flag
      }
      else {
        this.replan_flag = 0;
      }
      if (initObj.hasOwnProperty('route_reason')) {
        this.route_reason = initObj.route_reason
      }
      else {
        this.route_reason = 0;
      }
      if (initObj.hasOwnProperty('lane_list')) {
        this.lane_list = initObj.lane_list
      }
      else {
        this.lane_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoutingResponse
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [plan_status]
    bufferOffset = _serializer.int32(obj.plan_status, buffer, bufferOffset);
    // Serialize message field [replan_flag]
    bufferOffset = _serializer.int32(obj.replan_flag, buffer, bufferOffset);
    // Serialize message field [route_reason]
    bufferOffset = _serializer.int32(obj.route_reason, buffer, bufferOffset);
    // Serialize message field [lane_list]
    // Serialize the length for message field [lane_list]
    bufferOffset = _serializer.uint32(obj.lane_list.length, buffer, bufferOffset);
    obj.lane_list.forEach((val) => {
      bufferOffset = LaneInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutingResponse
    let len;
    let data = new RoutingResponse(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [plan_status]
    data.plan_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [replan_flag]
    data.replan_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [route_reason]
    data.route_reason = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_list]
    // Deserialize array length for message field [lane_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lane_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lane_list[i] = LaneInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.lane_list.forEach((val) => {
      length += LaneInfo.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RoutingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15cd52a06ebf7f4a70dca47308a3032d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    int32   plan_status     # 规划结果状态
    int32   replan_flag     # REPLAN_FLAG_NONE=0  //不需要重规划 REPLAN_FLAG_NAVI=1 //网络层重规划 REPLAN_FLAG_HUMAN=2 //人为重规划
    int32   route_reason     # 规划原因 ROUTE_REASON_HMI = 0 //hmi上触发规划 ROUTE_REASON_PLATOON_HEADER = 1 //车队头车下发规划 ROUTE_REASON_PLATOON_OTHER = 2 //车队其他车辆下发规划
    LaneInfo[] lane_list # 分段路径规划结果
    
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
    MSG: ros_interface/LaneInfo
    int8   priority     # 道路优先级
    int8   global_id     # 道路全局id（从左至右，从0开始）
    int8 predecessor_id # 上一车道id
    int8 successor_id # 下一车道id
    int8 left_neighbor_id # 左边相邻车道id
    int8 right_neighbor_id # 右边相邻车道id
    int8   type     # 类型（预留）
    LanePoint[] lane_points # 道路参考线（z）
    
    ================================================================================
    MSG: ros_interface/LanePoint
    Point3D   point     # 点xyz
    float64   theta     # 方向（与东方向夹角，逆时针方向为正，单位为弧度）
    float64   mileage     # 总体里程
    float64   limit_speed     # 地图限速（单位m/s）
    float64   left_road_width     # 左边车道宽
    float64   right_road_width     # 右边车道宽
    int32   left_line_type     # 左边车线线型
    int32   right_line_type     # 右边车线线型
    
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
    const resolved = new RoutingResponse(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.plan_status !== undefined) {
      resolved.plan_status = msg.plan_status;
    }
    else {
      resolved.plan_status = 0
    }

    if (msg.replan_flag !== undefined) {
      resolved.replan_flag = msg.replan_flag;
    }
    else {
      resolved.replan_flag = 0
    }

    if (msg.route_reason !== undefined) {
      resolved.route_reason = msg.route_reason;
    }
    else {
      resolved.route_reason = 0
    }

    if (msg.lane_list !== undefined) {
      resolved.lane_list = new Array(msg.lane_list.length);
      for (let i = 0; i < resolved.lane_list.length; ++i) {
        resolved.lane_list[i] = LaneInfo.Resolve(msg.lane_list[i]);
      }
    }
    else {
      resolved.lane_list = []
    }

    return resolved;
    }
};

module.exports = RoutingResponse;
