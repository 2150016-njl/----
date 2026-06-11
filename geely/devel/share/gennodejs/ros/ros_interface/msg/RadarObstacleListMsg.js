// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarObstacle = require('./RadarObstacle.js');
let RadarState = require('./RadarState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadarObstacleListMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radar_obstacle = null;
      this.sensor_id = null;
      this.radar_state = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radar_obstacle')) {
        this.radar_obstacle = initObj.radar_obstacle
      }
      else {
        this.radar_obstacle = [];
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('radar_state')) {
        this.radar_state = initObj.radar_state
      }
      else {
        this.radar_state = new RadarState();
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
    // Serializes a message object of type RadarObstacleListMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radar_obstacle]
    // Serialize the length for message field [radar_obstacle]
    bufferOffset = _serializer.uint32(obj.radar_obstacle.length, buffer, bufferOffset);
    obj.radar_obstacle.forEach((val) => {
      bufferOffset = RadarObstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.uint8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [radar_state]
    bufferOffset = RadarState.serialize(obj.radar_state, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarObstacleListMsg
    let len;
    let data = new RadarObstacleListMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radar_obstacle]
    // Deserialize array length for message field [radar_obstacle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.radar_obstacle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.radar_obstacle[i] = RadarObstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radar_state]
    data.radar_state = RadarState.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.radar_obstacle.forEach((val) => {
      length += RadarObstacle.getMessageSize(val);
    });
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RadarObstacleListMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3660edcdfc572605c301b7d0cc42e1d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    RadarObstacle[] radar_obstacle # 毫米波雷达障碍物数组
    uint8   sensor_id     # 毫米波雷达 ID.
    RadarState   radar_state     # radar state.
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
    MSG: ros_interface/RadarObstacle
    int32   id     # obstacle ID.
    uint8   life_time     # 障碍物存在时间
    Point2D   relative_position     # 雷达坐标系障碍物位置
    Point2D   relative_position_rms     # 雷达坐标系障碍物位置标准差
    Point2D   relative_velocity     # 雷达坐标系障碍物速度
    Point2D   relative_velocity_rms     # 雷达坐标系障碍物速度标准差
    Point2D   relative_acceleration     # 雷达坐标系障碍物加速度
    Point2D   relative_acceleration_rms     # 雷达坐标系障碍物加速度标准差
    float64   rcs     # 雷达散射面积
    float64   snr     #  
    int32   moving_status     # STATIONARY = 0; NEARING = 1; AWAYING = 2; NONE = 3;
    float64   width     # 雷达障碍物宽度
    float64   length     # 雷达障碍物长度
    float64   height     # 雷达障碍物高度
    float64   theta     #  
    Point2D   absolute_position     # obstacle position in map coordinate system
    Point2D   absolute_position_rms     #  
    Point2D   absolute_velocity     # obstacle position in map coordinate system
    Point2D   absolute_velocity_rms     #  
    Point2D   absolute_acceleration     #  
    Point2D   absolute_acceleration_rms     #  
    float64   orientation     # 雷达障碍物方位角
    float64   orient_rms     # 雷达障碍物方位角标准差
    float64   yaw     #  
    float64   yaw_rms     #  
    int32   count     #  
    int32   moving_frames_count     #  
    Status   status     # 状态码
    float64   underpass_probability     #  
    float64   overpass_probability     #  
    uint8   exist_probability     # 障碍物存在的概率
    uint8   mov_property     # 障碍物移动属性：MOVING_PROPERTY_MOVING=0，MOVING_PROPERTY_STATIONARY=1，MOVING_PROPERTY_ONCOMING=2，MOVING_PROPERTY_STATIONARY_CANDIDATE=3，MOVING_PROPERTY_UNKOWN=4，MOVING_PROPERTY_CROSSING_STATIONARY=5，MOVING_PROPERTY_CROSSING_MOVING=6，MOVING_PROPERTY_STOPPED=7
    uint8   track_state     # 跟踪状态：TRACK_STATE_DELETED=0；TRACK_STATE_INITED=1；TRACK_STATE_MEASURED=2；TRACK_STATE_PREDICTED=3；TRACK_STATE_DELETED_FOR_MERGE=4；TRACK_STATE_NEW_FOR_MERGE=5；
    uint8   track_type     # 追踪的障碍物类型：TRACK_TYPE_POINT=0；TRACK_TYPE_CAR=1；TRACK_TYPE_TRUCK=2；TRACK_TYPE_PEDESTRIAN=3；TRACK_TYPE_MOTORCYCLE=4；TRACK_TYPE_BICYCLE=5；TRACK_TYPE_WIDE=6；TRACK_TYPE_RESERVED=7；TRACK_TYPE_BRIDGE=8；
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    ================================================================================
    MSG: ros_interface/Status
    int32   error_code     # 错误码
    string   msg     # 错误码描述
    
    ================================================================================
    MSG: ros_interface/RadarState
    uint8   sensor_id     #  
    uint8   nvm_read_status     #  
    uint8   nvm_write_status     #  
    RadarStateError   radar_state_error     #  
    RadarStateMode   radar_state_mode     #  
    uint16   max_distance     #  
    uint8   sort_index     #  
    uint8   radar_power     #  
    uint8   ctl_relay     #  
    uint8   output_type     #  
    uint8   send_quality     #  
    uint8   send_extinfo     #  
    uint8   motion_rx_state     #  
    uint8   rcs_threshold     #  
    uint8   connector_direction     #  
    uint8   radar_position     #  
    uint8   hw_error     #  
    
    ================================================================================
    MSG: ros_interface/RadarStateError
    uint8   persistent_error     #  
    uint8   temporary_error     #  
    uint8   interference_error     #  
    uint8   temperature_error     #  
    uint8   voltage_error     #  
    uint8   block_error     #  
    uint8   broadcast_error     #  
    uint8   electric_axis_error     #  
    uint8   config_error     #  
    uint8   calibration_error     #  
    
    ================================================================================
    MSG: ros_interface/RadarStateMode
    uint8   can0_work_mode     # can0工作模式
    uint8   can1_work_mode     # can1工作模式
    uint8   dual_can_mode     # 双总线工作模式
    uint8   timming_mode     # 计时模式
    uint8   power_mode     # 电源模式
    uint8   performance_mode     # 效能模式
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarObstacleListMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radar_obstacle !== undefined) {
      resolved.radar_obstacle = new Array(msg.radar_obstacle.length);
      for (let i = 0; i < resolved.radar_obstacle.length; ++i) {
        resolved.radar_obstacle[i] = RadarObstacle.Resolve(msg.radar_obstacle[i]);
      }
    }
    else {
      resolved.radar_obstacle = []
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.radar_state !== undefined) {
      resolved.radar_state = RadarState.Resolve(msg.radar_state)
    }
    else {
      resolved.radar_state = new RadarState()
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

module.exports = RadarObstacleListMsg;
