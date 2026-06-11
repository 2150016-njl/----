// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TimeConsume = require('./TimeConsume.js');
let PlanningParkingDebug = require('./PlanningParkingDebug.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlanningAnalysis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.frame_update_time = null;
      this.generator_time = null;
      this.evaluator_time = null;
      this.selector_time = null;
      this.planning_parking_debug = null;
      this.dis_to_center_line = null;
      this.diff_to_velocity = null;
      this.referencline_kappa = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('frame_update_time')) {
        this.frame_update_time = initObj.frame_update_time
      }
      else {
        this.frame_update_time = 0.0;
      }
      if (initObj.hasOwnProperty('generator_time')) {
        this.generator_time = initObj.generator_time
      }
      else {
        this.generator_time = 0.0;
      }
      if (initObj.hasOwnProperty('evaluator_time')) {
        this.evaluator_time = initObj.evaluator_time
      }
      else {
        this.evaluator_time = [];
      }
      if (initObj.hasOwnProperty('selector_time')) {
        this.selector_time = initObj.selector_time
      }
      else {
        this.selector_time = 0.0;
      }
      if (initObj.hasOwnProperty('planning_parking_debug')) {
        this.planning_parking_debug = initObj.planning_parking_debug
      }
      else {
        this.planning_parking_debug = new PlanningParkingDebug();
      }
      if (initObj.hasOwnProperty('dis_to_center_line')) {
        this.dis_to_center_line = initObj.dis_to_center_line
      }
      else {
        this.dis_to_center_line = 0.0;
      }
      if (initObj.hasOwnProperty('diff_to_velocity')) {
        this.diff_to_velocity = initObj.diff_to_velocity
      }
      else {
        this.diff_to_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('referencline_kappa')) {
        this.referencline_kappa = initObj.referencline_kappa
      }
      else {
        this.referencline_kappa = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningAnalysis
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [frame_update_time]
    bufferOffset = _serializer.float64(obj.frame_update_time, buffer, bufferOffset);
    // Serialize message field [generator_time]
    bufferOffset = _serializer.float64(obj.generator_time, buffer, bufferOffset);
    // Serialize message field [evaluator_time]
    // Serialize the length for message field [evaluator_time]
    bufferOffset = _serializer.uint32(obj.evaluator_time.length, buffer, bufferOffset);
    obj.evaluator_time.forEach((val) => {
      bufferOffset = TimeConsume.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [selector_time]
    bufferOffset = _serializer.float64(obj.selector_time, buffer, bufferOffset);
    // Serialize message field [planning_parking_debug]
    bufferOffset = PlanningParkingDebug.serialize(obj.planning_parking_debug, buffer, bufferOffset);
    // Serialize message field [dis_to_center_line]
    bufferOffset = _serializer.float64(obj.dis_to_center_line, buffer, bufferOffset);
    // Serialize message field [diff_to_velocity]
    bufferOffset = _serializer.float64(obj.diff_to_velocity, buffer, bufferOffset);
    // Serialize message field [referencline_kappa]
    bufferOffset = _serializer.float64(obj.referencline_kappa, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningAnalysis
    let len;
    let data = new PlanningAnalysis(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [frame_update_time]
    data.frame_update_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [generator_time]
    data.generator_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [evaluator_time]
    // Deserialize array length for message field [evaluator_time]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.evaluator_time = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.evaluator_time[i] = TimeConsume.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [selector_time]
    data.selector_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [planning_parking_debug]
    data.planning_parking_debug = PlanningParkingDebug.deserialize(buffer, bufferOffset);
    // Deserialize message field [dis_to_center_line]
    data.dis_to_center_line = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [diff_to_velocity]
    data.diff_to_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [referencline_kappa]
    data.referencline_kappa = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.evaluator_time.forEach((val) => {
      length += TimeConsume.getMessageSize(val);
    });
    length += PlanningParkingDebug.getMessageSize(object.planning_parking_debug);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PlanningAnalysis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c63a3ff5e3802e16819f364cf95482ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    float64   frame_update_time     # frame update计算时间
    float64   generator_time     # 轨迹生成 计算时间
    TimeConsume[] evaluator_time # 轨迹评估计算时间
    float64   selector_time     # 轨迹选择计算时间
    PlanningParkingDebug   planning_parking_debug     # planning泊车调试消息
    float64   dis_to_center_line     # 车辆距离车道中心线的垂直距离
    float64   diff_to_velocity     # 目标速度与规划速度之差
    float64   referencline_kappa     # 参考线曲率
    
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
    MSG: ros_interface/TimeConsume
    string   name     #  
    float64   time_consume     #  
    
    ================================================================================
    MSG: ros_interface/PlanningParkingDebug
    Polygon2D[] vehicle_preiew_polygon # 车辆预测多边形
    Polygon2D[] obstacles_polygon # 障碍物多边形
    PathPoint[] path_points # 轨迹点
    float64   lat_error     # 横向误差
    float64   lon_error     # 纵向误差
    float64   yaw_error     # 角度误差(度)
    Point2dList[] obstacles_vec #  
    TrajectoryPoint[] warm_start_traj #  
    TrajectoryPoint[] smoothed_traj_stage1 #  
    TrajectoryPoint[] smoothed_traj_stage2 #  
    Trajectory   reference_line     #  
    Trajectory[] trajectory_array # 轨迹簇
    Trajectory   optimal_coarse_trajectory     #  
    Trajectory   optimal_smooth_trajectory     #  
    float64   hybrid_a_star_map_time     #  
    float64   hybrid_a_star_heuristic_time     #  
    float64   hybrid_a_star_rs_time     #  
    float64   hybrid_a_star_total_time     #  
    float64   ias_collision_avoidance_time     #  
    float64   ias_path_smooth_time     #  
    float64   ias_speed_smooth_time     #  
    float64   ias_total_time     #  
    float64   samping_trajectory_time     #  
    bool   is_replan     #  
    string   replan_reason     #  
    float64   replan_time     #  
    int32   replan_num     #  
    int32   optimizer_thread_counter     #  
    int32   replan_by_context_update_counter     #  
    int32   replan_by_large_error_counter     #  
    int32   parking_type     #  
    int32   moves_counter     # 揉库次数
    float64   remain_distance     # 剩余距离
    float64   distance_to_leader_obj     # 距离最近障碍物距离
    int32   state     #  
    
    ================================================================================
    MSG: ros_interface/Polygon2D
    int32   coordinate_system     # 坐标系
    Point2D[] points # 二维点集
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
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
    MSG: ros_interface/Point2dList
    Point2D[] point2d_list #  
    
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
    MSG: ros_interface/GaussianInfo
    float64   sigma_x     # 标准差x
    float64   sigma_y     # 标准差y
    float64   correlation     # 相关性
    float64   area_probability     # Information of representative uncertainty area
    float64   ellipse_a     # 椭圆长轴
    float64   ellipse_b     # 椭圆短轴
    float64   theta_a     # 椭圆朝向
    
    ================================================================================
    MSG: ros_interface/Trajectory
    string   name     # 轨迹名称
    TrajectoryPoint[] trajectory_points # 轨迹点
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanningAnalysis(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.frame_update_time !== undefined) {
      resolved.frame_update_time = msg.frame_update_time;
    }
    else {
      resolved.frame_update_time = 0.0
    }

    if (msg.generator_time !== undefined) {
      resolved.generator_time = msg.generator_time;
    }
    else {
      resolved.generator_time = 0.0
    }

    if (msg.evaluator_time !== undefined) {
      resolved.evaluator_time = new Array(msg.evaluator_time.length);
      for (let i = 0; i < resolved.evaluator_time.length; ++i) {
        resolved.evaluator_time[i] = TimeConsume.Resolve(msg.evaluator_time[i]);
      }
    }
    else {
      resolved.evaluator_time = []
    }

    if (msg.selector_time !== undefined) {
      resolved.selector_time = msg.selector_time;
    }
    else {
      resolved.selector_time = 0.0
    }

    if (msg.planning_parking_debug !== undefined) {
      resolved.planning_parking_debug = PlanningParkingDebug.Resolve(msg.planning_parking_debug)
    }
    else {
      resolved.planning_parking_debug = new PlanningParkingDebug()
    }

    if (msg.dis_to_center_line !== undefined) {
      resolved.dis_to_center_line = msg.dis_to_center_line;
    }
    else {
      resolved.dis_to_center_line = 0.0
    }

    if (msg.diff_to_velocity !== undefined) {
      resolved.diff_to_velocity = msg.diff_to_velocity;
    }
    else {
      resolved.diff_to_velocity = 0.0
    }

    if (msg.referencline_kappa !== undefined) {
      resolved.referencline_kappa = msg.referencline_kappa;
    }
    else {
      resolved.referencline_kappa = 0.0
    }

    return resolved;
    }
};

module.exports = PlanningAnalysis;
