// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryPoint = require('./TrajectoryPoint.js');
let EStop = require('./EStop.js');
let RSSInfo = require('./RSSInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ADCTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.total_path_length = null;
      this.total_path_time = null;
      this.trajectory_points = null;
      this.car_action = null;
      this.behaviour_lat_state = null;
      this.behaviour_lon_state = null;
      this.scenario = null;
      this.driving_mode = null;
      this.adc_trajectory_type = null;
      this.estop = null;
      this.is_replan = null;
      this.replan_reason = null;
      this.right_of_way_status = null;
      this.rss_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('total_path_length')) {
        this.total_path_length = initObj.total_path_length
      }
      else {
        this.total_path_length = 0.0;
      }
      if (initObj.hasOwnProperty('total_path_time')) {
        this.total_path_time = initObj.total_path_time
      }
      else {
        this.total_path_time = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory_points')) {
        this.trajectory_points = initObj.trajectory_points
      }
      else {
        this.trajectory_points = [];
      }
      if (initObj.hasOwnProperty('car_action')) {
        this.car_action = initObj.car_action
      }
      else {
        this.car_action = 0;
      }
      if (initObj.hasOwnProperty('behaviour_lat_state')) {
        this.behaviour_lat_state = initObj.behaviour_lat_state
      }
      else {
        this.behaviour_lat_state = 0;
      }
      if (initObj.hasOwnProperty('behaviour_lon_state')) {
        this.behaviour_lon_state = initObj.behaviour_lon_state
      }
      else {
        this.behaviour_lon_state = 0;
      }
      if (initObj.hasOwnProperty('scenario')) {
        this.scenario = initObj.scenario
      }
      else {
        this.scenario = 0;
      }
      if (initObj.hasOwnProperty('driving_mode')) {
        this.driving_mode = initObj.driving_mode
      }
      else {
        this.driving_mode = 0;
      }
      if (initObj.hasOwnProperty('adc_trajectory_type')) {
        this.adc_trajectory_type = initObj.adc_trajectory_type
      }
      else {
        this.adc_trajectory_type = 0;
      }
      if (initObj.hasOwnProperty('estop')) {
        this.estop = initObj.estop
      }
      else {
        this.estop = new EStop();
      }
      if (initObj.hasOwnProperty('is_replan')) {
        this.is_replan = initObj.is_replan
      }
      else {
        this.is_replan = false;
      }
      if (initObj.hasOwnProperty('replan_reason')) {
        this.replan_reason = initObj.replan_reason
      }
      else {
        this.replan_reason = '';
      }
      if (initObj.hasOwnProperty('right_of_way_status')) {
        this.right_of_way_status = initObj.right_of_way_status
      }
      else {
        this.right_of_way_status = 0;
      }
      if (initObj.hasOwnProperty('rss_info')) {
        this.rss_info = initObj.rss_info
      }
      else {
        this.rss_info = new RSSInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCTrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [total_path_length]
    bufferOffset = _serializer.float64(obj.total_path_length, buffer, bufferOffset);
    // Serialize message field [total_path_time]
    bufferOffset = _serializer.float64(obj.total_path_time, buffer, bufferOffset);
    // Serialize message field [trajectory_points]
    // Serialize the length for message field [trajectory_points]
    bufferOffset = _serializer.uint32(obj.trajectory_points.length, buffer, bufferOffset);
    obj.trajectory_points.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [car_action]
    bufferOffset = _serializer.int32(obj.car_action, buffer, bufferOffset);
    // Serialize message field [behaviour_lat_state]
    bufferOffset = _serializer.int32(obj.behaviour_lat_state, buffer, bufferOffset);
    // Serialize message field [behaviour_lon_state]
    bufferOffset = _serializer.int32(obj.behaviour_lon_state, buffer, bufferOffset);
    // Serialize message field [scenario]
    bufferOffset = _serializer.int32(obj.scenario, buffer, bufferOffset);
    // Serialize message field [driving_mode]
    bufferOffset = _serializer.int32(obj.driving_mode, buffer, bufferOffset);
    // Serialize message field [adc_trajectory_type]
    bufferOffset = _serializer.int32(obj.adc_trajectory_type, buffer, bufferOffset);
    // Serialize message field [estop]
    bufferOffset = EStop.serialize(obj.estop, buffer, bufferOffset);
    // Serialize message field [is_replan]
    bufferOffset = _serializer.bool(obj.is_replan, buffer, bufferOffset);
    // Serialize message field [replan_reason]
    bufferOffset = _serializer.string(obj.replan_reason, buffer, bufferOffset);
    // Serialize message field [right_of_way_status]
    bufferOffset = _serializer.int32(obj.right_of_way_status, buffer, bufferOffset);
    // Serialize message field [rss_info]
    bufferOffset = RSSInfo.serialize(obj.rss_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCTrajectory
    let len;
    let data = new ADCTrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [total_path_length]
    data.total_path_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [total_path_time]
    data.total_path_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory_points]
    // Deserialize array length for message field [trajectory_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_points[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [car_action]
    data.car_action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [behaviour_lat_state]
    data.behaviour_lat_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [behaviour_lon_state]
    data.behaviour_lon_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [scenario]
    data.scenario = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driving_mode]
    data.driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [adc_trajectory_type]
    data.adc_trajectory_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [estop]
    data.estop = EStop.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_replan]
    data.is_replan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [replan_reason]
    data.replan_reason = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [right_of_way_status]
    data.right_of_way_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rss_info]
    data.rss_info = RSSInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 197 * object.trajectory_points.length;
    length += EStop.getMessageSize(object.estop);
    length += object.replan_reason.length;
    return length + 118;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ADCTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75d0aed975a882d16ca3fd604ed666f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    float64   total_path_length     # unit meters(m)
    float64   total_path_time     # unit seconds(s)
    TrajectoryPoint[] trajectory_points # 规划轨迹点列
    int32   car_action     # 车辆行为： CAR_ACTION_NONE=0  //无效值 CAR_ACTION_SINGLE=1 //单车 CAR_ACTION_PLATOON_HEAD=2 //车队头车 CAR_ACTION_PLATOON_OTHER=3 //车队其他车辆
    int32   behaviour_lat_state     # 自动驾驶状态（主要指横向状态）
    int32   behaviour_lon_state     # 自动驾驶状态（主要指纵向状态）
    int32   scenario     # 驾驶场景 0-UNKNOWN, 1-CRUISE, 2-CRUISE_URBAN 3-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN
    int32   driving_mode     # 驾驶模式： 1：人工驾驶， 2：辅助驾驶， 3：自动驾驶
    int32   adc_trajectory_type     # 轨迹类型： TRAJECTORY_TYPE_ABSOLUTE=0 //绝对规划轨迹 TRAJECTORY_TYPE_RELATIVE=1 //相对规划轨迹 TRAJECTORY_TYPE_INVALID=2 //无效规划轨迹
    EStop   estop     # emergency stop
    bool   is_replan     # is_replan == truemean replan triggered(default = false)
    string   replan_reason     #  
    int32   right_of_way_status     # UNPROTECTED = 0;PROTECTED = 1;
    RSSInfo   rss_info     # output related to RSS
    
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
    MSG: ros_interface/TrajectoryPoint
    PathPoint   path_point     # path point
    float64   v     # linear velocity
    float64   a     # linear acceleration
    float64   relative_time     # relative time from beginning of the trajectory
    float64   da     # longitudinal jerk
    bool   is_steer_valid     # 转向是否有效
    float64   front_steer     # The angle between vehicle front wheel and vehicle longitudinal axis
    float64   rear_steer     # 后轮转角
    int32   gear     # 档位
    GaussianInfo   gaussian_info     # Gaussian probability information
    
    ================================================================================
    MSG: ros_interface/PathPoint
    float64   x     # coordinates x
    float64   y     # coordinates y
    float64   z     # coordinates z
    float64   theta     # direction on the x-y plane
    float64   kappa     # curvature on the x-y planning
    float64   s     # accumulated distance from beginning of the path
    float64   dkappa     # derivative of kappa w.r.t s.
    float64   ddkappa     # derivative of derivative of kappa w.r.t s.
    float64   lane_id     # The lane ID where the path point is on
    float64   x_derivative     # derivative of x w.r.t parametric parameter t in CosThetareferenceline
    float64   y_derivative     # derivative of y w.r.t parametric parameter t in CosThetareferenceline
    
    ================================================================================
    MSG: ros_interface/GaussianInfo
    float64   sigma_x     # 标准差x
    float64   sigma_y     # 标准差y
    float64   correlation     # 相关性
    float64   area_probability     # Information of representative uncertainty area
    float64   ellipse_a     # 椭圆长轴
    float64   ellipse_b     # 椭圆短轴
    float64   theta_a     # 椭圆朝向
    
    ================================================================================
    MSG: ros_interface/EStop
    bool   is_estop     # is_estop == true when emergency stop is required
    string   reason     # 原因
    
    ================================================================================
    MSG: ros_interface/RSSInfo
    bool   is_rss_safe     #  
    float64   cur_dist_lon     # current longitudinal distance
    float64   rss_safe_dist_lon     # longitudinal safe distance of rss
    float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration
    float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration
    float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration
    float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration
    float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration
    float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADCTrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.total_path_length !== undefined) {
      resolved.total_path_length = msg.total_path_length;
    }
    else {
      resolved.total_path_length = 0.0
    }

    if (msg.total_path_time !== undefined) {
      resolved.total_path_time = msg.total_path_time;
    }
    else {
      resolved.total_path_time = 0.0
    }

    if (msg.trajectory_points !== undefined) {
      resolved.trajectory_points = new Array(msg.trajectory_points.length);
      for (let i = 0; i < resolved.trajectory_points.length; ++i) {
        resolved.trajectory_points[i] = TrajectoryPoint.Resolve(msg.trajectory_points[i]);
      }
    }
    else {
      resolved.trajectory_points = []
    }

    if (msg.car_action !== undefined) {
      resolved.car_action = msg.car_action;
    }
    else {
      resolved.car_action = 0
    }

    if (msg.behaviour_lat_state !== undefined) {
      resolved.behaviour_lat_state = msg.behaviour_lat_state;
    }
    else {
      resolved.behaviour_lat_state = 0
    }

    if (msg.behaviour_lon_state !== undefined) {
      resolved.behaviour_lon_state = msg.behaviour_lon_state;
    }
    else {
      resolved.behaviour_lon_state = 0
    }

    if (msg.scenario !== undefined) {
      resolved.scenario = msg.scenario;
    }
    else {
      resolved.scenario = 0
    }

    if (msg.driving_mode !== undefined) {
      resolved.driving_mode = msg.driving_mode;
    }
    else {
      resolved.driving_mode = 0
    }

    if (msg.adc_trajectory_type !== undefined) {
      resolved.adc_trajectory_type = msg.adc_trajectory_type;
    }
    else {
      resolved.adc_trajectory_type = 0
    }

    if (msg.estop !== undefined) {
      resolved.estop = EStop.Resolve(msg.estop)
    }
    else {
      resolved.estop = new EStop()
    }

    if (msg.is_replan !== undefined) {
      resolved.is_replan = msg.is_replan;
    }
    else {
      resolved.is_replan = false
    }

    if (msg.replan_reason !== undefined) {
      resolved.replan_reason = msg.replan_reason;
    }
    else {
      resolved.replan_reason = ''
    }

    if (msg.right_of_way_status !== undefined) {
      resolved.right_of_way_status = msg.right_of_way_status;
    }
    else {
      resolved.right_of_way_status = 0
    }

    if (msg.rss_info !== undefined) {
      resolved.rss_info = RSSInfo.Resolve(msg.rss_info)
    }
    else {
      resolved.rss_info = new RSSInfo()
    }

    return resolved;
    }
};

module.exports = ADCTrajectory;
