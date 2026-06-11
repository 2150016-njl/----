// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrafficLight = require('./TrafficLight.js');
let TrafficLightDebug = require('./TrafficLightDebug.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrafficLightMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.traffic_light = null;
      this.traffic_light_debug = null;
      this.contain_lights = null;
      this.camera_id = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('traffic_light')) {
        this.traffic_light = initObj.traffic_light
      }
      else {
        this.traffic_light = [];
      }
      if (initObj.hasOwnProperty('traffic_light_debug')) {
        this.traffic_light_debug = initObj.traffic_light_debug
      }
      else {
        this.traffic_light_debug = new TrafficLightDebug();
      }
      if (initObj.hasOwnProperty('contain_lights')) {
        this.contain_lights = initObj.contain_lights
      }
      else {
        this.contain_lights = false;
      }
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = 0;
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
    // Serializes a message object of type TrafficLightMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [traffic_light]
    // Serialize the length for message field [traffic_light]
    bufferOffset = _serializer.uint32(obj.traffic_light.length, buffer, bufferOffset);
    obj.traffic_light.forEach((val) => {
      bufferOffset = TrafficLight.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [traffic_light_debug]
    bufferOffset = TrafficLightDebug.serialize(obj.traffic_light_debug, buffer, bufferOffset);
    // Serialize message field [contain_lights]
    bufferOffset = _serializer.bool(obj.contain_lights, buffer, bufferOffset);
    // Serialize message field [camera_id]
    bufferOffset = _serializer.int32(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLightMsg
    let len;
    let data = new TrafficLightMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [traffic_light]
    // Deserialize array length for message field [traffic_light]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.traffic_light = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.traffic_light[i] = TrafficLight.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [traffic_light_debug]
    data.traffic_light_debug = TrafficLightDebug.deserialize(buffer, bufferOffset);
    // Deserialize message field [contain_lights]
    data.contain_lights = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [camera_id]
    data.camera_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.traffic_light.forEach((val) => {
      length += TrafficLight.getMessageSize(val);
    });
    length += TrafficLightDebug.getMessageSize(object.traffic_light_debug);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrafficLightMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6be2f3c99e26b2711d35cc48d38d8ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    TrafficLight[] traffic_light # 检出的交通灯数组
    TrafficLightDebug   traffic_light_debug     # 交通灯数组调试
    bool   contain_lights     # 是否包含交通灯
    int32   camera_id     # CAMERA_FRONT_LONG = 0; CAMERA_FRONT_NARROW = 1; CAMERA_FRONT_SHORT = 2; CAMERA_FRONT_WIDE = 3;
    bool   is_valid     # true: valid  false: invalid
    
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
    MSG: ros_interface/TrafficLight
    int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
    uint32   id     # light id
    int32   type     # STRAIGHT = 0; TURN_LEFT = 1; TURN_RIGHT = 2; STRAIGHT_TURN_LEFT = 3; STRAIGHT_TURN_RIGHT =4; CIRCULAR = 5; PEDESTRIAN = 6; CYCLIST = 7; UNKNOWN = 8;
    float64   confidence     # 置信度confdence: [0-1]
    ImageRect   light_rect     # 交通灯矩形框light rect
    Point3D   position     # 交通灯位置position of light
    float64   distance     # 距离distance between light and stop line
    int32[] light_lanes # corresponding lanes of light
    float64   tracking_time     # duration of a light since track
    bool   blink     # true:
    float64   blinking_time     # duration of a light blinking
    float64   remaining_time     # V2X time of light
    Time   create_time     # time of light detected
    
    ================================================================================
    MSG: ros_interface/ImageRect
    int32   x     # coordinate x of left-top point of image rect
    int32   y     # coordinate y of left-top point of image rect
    int32   width     # width of image rect
    int32   height     # height of image rect
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/Time
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
    ================================================================================
    MSG: ros_interface/TrafficLightDebug
    TrafficLightBox   cropbox     #  
    TrafficLightBox[] box #  
    int32   signal_num     #  
    int32   valid_pos     #  
    float64   ts_diff_pos     #  
    float64   ts_diff_sys     #  
    int32   project_error     #  
    float64   distance_to_stop_line     #  
    int32   camera_id     #  
    TrafficLightBox[] crop_roi #  
    TrafficLightBox[] projected_roi #  
    TrafficLightBox[] rectified_roi #  
    TrafficLightBox[] debug_roi #  
    
    ================================================================================
    MSG: ros_interface/TrafficLightBox
    int32   x     # 交通灯目标在图像上中心点横向方向像素位置
    int32   y     # 交通灯目标在图像上中心点纵向方向像素位置
    int32   width     # 交通灯目标在图像上宽度
    int32   height     # 交通灯目标在图像上高度
    int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
    bool   selected     # 是否选择
    string   camera_name     # 相机名称
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrafficLightMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.traffic_light !== undefined) {
      resolved.traffic_light = new Array(msg.traffic_light.length);
      for (let i = 0; i < resolved.traffic_light.length; ++i) {
        resolved.traffic_light[i] = TrafficLight.Resolve(msg.traffic_light[i]);
      }
    }
    else {
      resolved.traffic_light = []
    }

    if (msg.traffic_light_debug !== undefined) {
      resolved.traffic_light_debug = TrafficLightDebug.Resolve(msg.traffic_light_debug)
    }
    else {
      resolved.traffic_light_debug = new TrafficLightDebug()
    }

    if (msg.contain_lights !== undefined) {
      resolved.contain_lights = msg.contain_lights;
    }
    else {
      resolved.contain_lights = false
    }

    if (msg.camera_id !== undefined) {
      resolved.camera_id = msg.camera_id;
    }
    else {
      resolved.camera_id = 0
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

module.exports = TrafficLightMsg;
