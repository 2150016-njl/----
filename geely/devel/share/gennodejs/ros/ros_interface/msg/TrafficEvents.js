// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RouteFusionInfo = require('./RouteFusionInfo.js');
let JunctionInfo = require('./JunctionInfo.js');
let LimitSpeedInfo = require('./LimitSpeedInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrafficEvents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.route_fusion_info = null;
      this.junction_info = null;
      this.limit_speed_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('route_fusion_info')) {
        this.route_fusion_info = initObj.route_fusion_info
      }
      else {
        this.route_fusion_info = new RouteFusionInfo();
      }
      if (initObj.hasOwnProperty('junction_info')) {
        this.junction_info = initObj.junction_info
      }
      else {
        this.junction_info = new JunctionInfo();
      }
      if (initObj.hasOwnProperty('limit_speed_info')) {
        this.limit_speed_info = initObj.limit_speed_info
      }
      else {
        this.limit_speed_info = new LimitSpeedInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrafficEvents
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [route_fusion_info]
    bufferOffset = RouteFusionInfo.serialize(obj.route_fusion_info, buffer, bufferOffset);
    // Serialize message field [junction_info]
    bufferOffset = JunctionInfo.serialize(obj.junction_info, buffer, bufferOffset);
    // Serialize message field [limit_speed_info]
    bufferOffset = LimitSpeedInfo.serialize(obj.limit_speed_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficEvents
    let len;
    let data = new TrafficEvents(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [route_fusion_info]
    data.route_fusion_info = RouteFusionInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [junction_info]
    data.junction_info = JunctionInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [limit_speed_info]
    data.limit_speed_info = LimitSpeedInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += RouteFusionInfo.getMessageSize(object.route_fusion_info);
    length += JunctionInfo.getMessageSize(object.junction_info);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrafficEvents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '335c91b3f0dcb169fd1b0fb0532d62c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    RouteFusionInfo   route_fusion_info     # 地图融合信息
    JunctionInfo   junction_info     # 路口信息
    LimitSpeedInfo   limit_speed_info     # 限速消息
    
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
    MSG: ros_interface/RouteFusionInfo
    int32   fusion_flag     # 是否有效标志位
    string   fusion_reason     # 融合原因
    
    ================================================================================
    MSG: ros_interface/JunctionInfo
    int32   id     #  
    int32   light_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
    int32   light_color     # 信号灯颜色，绿灯可通行，false红灯不能通行
    float64   light_remain_time     # 信号灯剩余时间
    float64   distance_to_stop     # 停车距离，停止线
    int32   direction_flag     # 是否有效，无效就可能是清除了，或者已经过路口了
    int32   direction     # 路口通行方向，0：无效、1：左、2：前、3：右
    float64   distance_to_junction     # 距路口距离
    Point3D[] stop_line # 路口停止线
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/LimitSpeedInfo
    int32   limitspeed_valid_flag     # 限速有效性标志位
    float64   limit_speed     # 限速大小（m/s）
    float64   limit_distance     # 开始减速距离(m)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficEvents(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.route_fusion_info !== undefined) {
      resolved.route_fusion_info = RouteFusionInfo.Resolve(msg.route_fusion_info)
    }
    else {
      resolved.route_fusion_info = new RouteFusionInfo()
    }

    if (msg.junction_info !== undefined) {
      resolved.junction_info = JunctionInfo.Resolve(msg.junction_info)
    }
    else {
      resolved.junction_info = new JunctionInfo()
    }

    if (msg.limit_speed_info !== undefined) {
      resolved.limit_speed_info = LimitSpeedInfo.Resolve(msg.limit_speed_info)
    }
    else {
      resolved.limit_speed_info = new LimitSpeedInfo()
    }

    return resolved;
    }
};

module.exports = TrafficEvents;
