// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polygon2D = require('./Polygon2D.js');
let PathPoint = require('./PathPoint.js');
let Point2dList = require('./Point2dList.js');
let TrajectoryPoint = require('./TrajectoryPoint.js');
let Trajectory = require('./Trajectory.js');

//-----------------------------------------------------------

class PlanningParkingDebug {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_preiew_polygon = null;
      this.obstacles_polygon = null;
      this.path_points = null;
      this.lat_error = null;
      this.lon_error = null;
      this.yaw_error = null;
      this.obstacles_vec = null;
      this.warm_start_traj = null;
      this.smoothed_traj_stage1 = null;
      this.smoothed_traj_stage2 = null;
      this.reference_line = null;
      this.trajectory_array = null;
      this.optimal_coarse_trajectory = null;
      this.optimal_smooth_trajectory = null;
      this.hybrid_a_star_map_time = null;
      this.hybrid_a_star_heuristic_time = null;
      this.hybrid_a_star_rs_time = null;
      this.hybrid_a_star_total_time = null;
      this.ias_collision_avoidance_time = null;
      this.ias_path_smooth_time = null;
      this.ias_speed_smooth_time = null;
      this.ias_total_time = null;
      this.samping_trajectory_time = null;
      this.is_replan = null;
      this.replan_reason = null;
      this.replan_time = null;
      this.replan_num = null;
      this.optimizer_thread_counter = null;
      this.replan_by_context_update_counter = null;
      this.replan_by_large_error_counter = null;
      this.parking_type = null;
      this.moves_counter = null;
      this.remain_distance = null;
      this.distance_to_leader_obj = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_preiew_polygon')) {
        this.vehicle_preiew_polygon = initObj.vehicle_preiew_polygon
      }
      else {
        this.vehicle_preiew_polygon = [];
      }
      if (initObj.hasOwnProperty('obstacles_polygon')) {
        this.obstacles_polygon = initObj.obstacles_polygon
      }
      else {
        this.obstacles_polygon = [];
      }
      if (initObj.hasOwnProperty('path_points')) {
        this.path_points = initObj.path_points
      }
      else {
        this.path_points = [];
      }
      if (initObj.hasOwnProperty('lat_error')) {
        this.lat_error = initObj.lat_error
      }
      else {
        this.lat_error = 0.0;
      }
      if (initObj.hasOwnProperty('lon_error')) {
        this.lon_error = initObj.lon_error
      }
      else {
        this.lon_error = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_error')) {
        this.yaw_error = initObj.yaw_error
      }
      else {
        this.yaw_error = 0.0;
      }
      if (initObj.hasOwnProperty('obstacles_vec')) {
        this.obstacles_vec = initObj.obstacles_vec
      }
      else {
        this.obstacles_vec = [];
      }
      if (initObj.hasOwnProperty('warm_start_traj')) {
        this.warm_start_traj = initObj.warm_start_traj
      }
      else {
        this.warm_start_traj = [];
      }
      if (initObj.hasOwnProperty('smoothed_traj_stage1')) {
        this.smoothed_traj_stage1 = initObj.smoothed_traj_stage1
      }
      else {
        this.smoothed_traj_stage1 = [];
      }
      if (initObj.hasOwnProperty('smoothed_traj_stage2')) {
        this.smoothed_traj_stage2 = initObj.smoothed_traj_stage2
      }
      else {
        this.smoothed_traj_stage2 = [];
      }
      if (initObj.hasOwnProperty('reference_line')) {
        this.reference_line = initObj.reference_line
      }
      else {
        this.reference_line = new Trajectory();
      }
      if (initObj.hasOwnProperty('trajectory_array')) {
        this.trajectory_array = initObj.trajectory_array
      }
      else {
        this.trajectory_array = [];
      }
      if (initObj.hasOwnProperty('optimal_coarse_trajectory')) {
        this.optimal_coarse_trajectory = initObj.optimal_coarse_trajectory
      }
      else {
        this.optimal_coarse_trajectory = new Trajectory();
      }
      if (initObj.hasOwnProperty('optimal_smooth_trajectory')) {
        this.optimal_smooth_trajectory = initObj.optimal_smooth_trajectory
      }
      else {
        this.optimal_smooth_trajectory = new Trajectory();
      }
      if (initObj.hasOwnProperty('hybrid_a_star_map_time')) {
        this.hybrid_a_star_map_time = initObj.hybrid_a_star_map_time
      }
      else {
        this.hybrid_a_star_map_time = 0.0;
      }
      if (initObj.hasOwnProperty('hybrid_a_star_heuristic_time')) {
        this.hybrid_a_star_heuristic_time = initObj.hybrid_a_star_heuristic_time
      }
      else {
        this.hybrid_a_star_heuristic_time = 0.0;
      }
      if (initObj.hasOwnProperty('hybrid_a_star_rs_time')) {
        this.hybrid_a_star_rs_time = initObj.hybrid_a_star_rs_time
      }
      else {
        this.hybrid_a_star_rs_time = 0.0;
      }
      if (initObj.hasOwnProperty('hybrid_a_star_total_time')) {
        this.hybrid_a_star_total_time = initObj.hybrid_a_star_total_time
      }
      else {
        this.hybrid_a_star_total_time = 0.0;
      }
      if (initObj.hasOwnProperty('ias_collision_avoidance_time')) {
        this.ias_collision_avoidance_time = initObj.ias_collision_avoidance_time
      }
      else {
        this.ias_collision_avoidance_time = 0.0;
      }
      if (initObj.hasOwnProperty('ias_path_smooth_time')) {
        this.ias_path_smooth_time = initObj.ias_path_smooth_time
      }
      else {
        this.ias_path_smooth_time = 0.0;
      }
      if (initObj.hasOwnProperty('ias_speed_smooth_time')) {
        this.ias_speed_smooth_time = initObj.ias_speed_smooth_time
      }
      else {
        this.ias_speed_smooth_time = 0.0;
      }
      if (initObj.hasOwnProperty('ias_total_time')) {
        this.ias_total_time = initObj.ias_total_time
      }
      else {
        this.ias_total_time = 0.0;
      }
      if (initObj.hasOwnProperty('samping_trajectory_time')) {
        this.samping_trajectory_time = initObj.samping_trajectory_time
      }
      else {
        this.samping_trajectory_time = 0.0;
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
      if (initObj.hasOwnProperty('replan_time')) {
        this.replan_time = initObj.replan_time
      }
      else {
        this.replan_time = 0.0;
      }
      if (initObj.hasOwnProperty('replan_num')) {
        this.replan_num = initObj.replan_num
      }
      else {
        this.replan_num = 0;
      }
      if (initObj.hasOwnProperty('optimizer_thread_counter')) {
        this.optimizer_thread_counter = initObj.optimizer_thread_counter
      }
      else {
        this.optimizer_thread_counter = 0;
      }
      if (initObj.hasOwnProperty('replan_by_context_update_counter')) {
        this.replan_by_context_update_counter = initObj.replan_by_context_update_counter
      }
      else {
        this.replan_by_context_update_counter = 0;
      }
      if (initObj.hasOwnProperty('replan_by_large_error_counter')) {
        this.replan_by_large_error_counter = initObj.replan_by_large_error_counter
      }
      else {
        this.replan_by_large_error_counter = 0;
      }
      if (initObj.hasOwnProperty('parking_type')) {
        this.parking_type = initObj.parking_type
      }
      else {
        this.parking_type = 0;
      }
      if (initObj.hasOwnProperty('moves_counter')) {
        this.moves_counter = initObj.moves_counter
      }
      else {
        this.moves_counter = 0;
      }
      if (initObj.hasOwnProperty('remain_distance')) {
        this.remain_distance = initObj.remain_distance
      }
      else {
        this.remain_distance = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_leader_obj')) {
        this.distance_to_leader_obj = initObj.distance_to_leader_obj
      }
      else {
        this.distance_to_leader_obj = 0.0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanningParkingDebug
    // Serialize message field [vehicle_preiew_polygon]
    // Serialize the length for message field [vehicle_preiew_polygon]
    bufferOffset = _serializer.uint32(obj.vehicle_preiew_polygon.length, buffer, bufferOffset);
    obj.vehicle_preiew_polygon.forEach((val) => {
      bufferOffset = Polygon2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacles_polygon]
    // Serialize the length for message field [obstacles_polygon]
    bufferOffset = _serializer.uint32(obj.obstacles_polygon.length, buffer, bufferOffset);
    obj.obstacles_polygon.forEach((val) => {
      bufferOffset = Polygon2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [path_points]
    // Serialize the length for message field [path_points]
    bufferOffset = _serializer.uint32(obj.path_points.length, buffer, bufferOffset);
    obj.path_points.forEach((val) => {
      bufferOffset = PathPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [lat_error]
    bufferOffset = _serializer.float64(obj.lat_error, buffer, bufferOffset);
    // Serialize message field [lon_error]
    bufferOffset = _serializer.float64(obj.lon_error, buffer, bufferOffset);
    // Serialize message field [yaw_error]
    bufferOffset = _serializer.float64(obj.yaw_error, buffer, bufferOffset);
    // Serialize message field [obstacles_vec]
    // Serialize the length for message field [obstacles_vec]
    bufferOffset = _serializer.uint32(obj.obstacles_vec.length, buffer, bufferOffset);
    obj.obstacles_vec.forEach((val) => {
      bufferOffset = Point2dList.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [warm_start_traj]
    // Serialize the length for message field [warm_start_traj]
    bufferOffset = _serializer.uint32(obj.warm_start_traj.length, buffer, bufferOffset);
    obj.warm_start_traj.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [smoothed_traj_stage1]
    // Serialize the length for message field [smoothed_traj_stage1]
    bufferOffset = _serializer.uint32(obj.smoothed_traj_stage1.length, buffer, bufferOffset);
    obj.smoothed_traj_stage1.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [smoothed_traj_stage2]
    // Serialize the length for message field [smoothed_traj_stage2]
    bufferOffset = _serializer.uint32(obj.smoothed_traj_stage2.length, buffer, bufferOffset);
    obj.smoothed_traj_stage2.forEach((val) => {
      bufferOffset = TrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [reference_line]
    bufferOffset = Trajectory.serialize(obj.reference_line, buffer, bufferOffset);
    // Serialize message field [trajectory_array]
    // Serialize the length for message field [trajectory_array]
    bufferOffset = _serializer.uint32(obj.trajectory_array.length, buffer, bufferOffset);
    obj.trajectory_array.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [optimal_coarse_trajectory]
    bufferOffset = Trajectory.serialize(obj.optimal_coarse_trajectory, buffer, bufferOffset);
    // Serialize message field [optimal_smooth_trajectory]
    bufferOffset = Trajectory.serialize(obj.optimal_smooth_trajectory, buffer, bufferOffset);
    // Serialize message field [hybrid_a_star_map_time]
    bufferOffset = _serializer.float64(obj.hybrid_a_star_map_time, buffer, bufferOffset);
    // Serialize message field [hybrid_a_star_heuristic_time]
    bufferOffset = _serializer.float64(obj.hybrid_a_star_heuristic_time, buffer, bufferOffset);
    // Serialize message field [hybrid_a_star_rs_time]
    bufferOffset = _serializer.float64(obj.hybrid_a_star_rs_time, buffer, bufferOffset);
    // Serialize message field [hybrid_a_star_total_time]
    bufferOffset = _serializer.float64(obj.hybrid_a_star_total_time, buffer, bufferOffset);
    // Serialize message field [ias_collision_avoidance_time]
    bufferOffset = _serializer.float64(obj.ias_collision_avoidance_time, buffer, bufferOffset);
    // Serialize message field [ias_path_smooth_time]
    bufferOffset = _serializer.float64(obj.ias_path_smooth_time, buffer, bufferOffset);
    // Serialize message field [ias_speed_smooth_time]
    bufferOffset = _serializer.float64(obj.ias_speed_smooth_time, buffer, bufferOffset);
    // Serialize message field [ias_total_time]
    bufferOffset = _serializer.float64(obj.ias_total_time, buffer, bufferOffset);
    // Serialize message field [samping_trajectory_time]
    bufferOffset = _serializer.float64(obj.samping_trajectory_time, buffer, bufferOffset);
    // Serialize message field [is_replan]
    bufferOffset = _serializer.bool(obj.is_replan, buffer, bufferOffset);
    // Serialize message field [replan_reason]
    bufferOffset = _serializer.string(obj.replan_reason, buffer, bufferOffset);
    // Serialize message field [replan_time]
    bufferOffset = _serializer.float64(obj.replan_time, buffer, bufferOffset);
    // Serialize message field [replan_num]
    bufferOffset = _serializer.int32(obj.replan_num, buffer, bufferOffset);
    // Serialize message field [optimizer_thread_counter]
    bufferOffset = _serializer.int32(obj.optimizer_thread_counter, buffer, bufferOffset);
    // Serialize message field [replan_by_context_update_counter]
    bufferOffset = _serializer.int32(obj.replan_by_context_update_counter, buffer, bufferOffset);
    // Serialize message field [replan_by_large_error_counter]
    bufferOffset = _serializer.int32(obj.replan_by_large_error_counter, buffer, bufferOffset);
    // Serialize message field [parking_type]
    bufferOffset = _serializer.int32(obj.parking_type, buffer, bufferOffset);
    // Serialize message field [moves_counter]
    bufferOffset = _serializer.int32(obj.moves_counter, buffer, bufferOffset);
    // Serialize message field [remain_distance]
    bufferOffset = _serializer.float64(obj.remain_distance, buffer, bufferOffset);
    // Serialize message field [distance_to_leader_obj]
    bufferOffset = _serializer.float64(obj.distance_to_leader_obj, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanningParkingDebug
    let len;
    let data = new PlanningParkingDebug(null);
    // Deserialize message field [vehicle_preiew_polygon]
    // Deserialize array length for message field [vehicle_preiew_polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicle_preiew_polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicle_preiew_polygon[i] = Polygon2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacles_polygon]
    // Deserialize array length for message field [obstacles_polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles_polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles_polygon[i] = Polygon2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [path_points]
    // Deserialize array length for message field [path_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path_points[i] = PathPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [lat_error]
    data.lat_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_error]
    data.lon_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_error]
    data.yaw_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [obstacles_vec]
    // Deserialize array length for message field [obstacles_vec]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles_vec = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles_vec[i] = Point2dList.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [warm_start_traj]
    // Deserialize array length for message field [warm_start_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.warm_start_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.warm_start_traj[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [smoothed_traj_stage1]
    // Deserialize array length for message field [smoothed_traj_stage1]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.smoothed_traj_stage1 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.smoothed_traj_stage1[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [smoothed_traj_stage2]
    // Deserialize array length for message field [smoothed_traj_stage2]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.smoothed_traj_stage2 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.smoothed_traj_stage2[i] = TrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [reference_line]
    data.reference_line = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [trajectory_array]
    // Deserialize array length for message field [trajectory_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_array[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [optimal_coarse_trajectory]
    data.optimal_coarse_trajectory = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [optimal_smooth_trajectory]
    data.optimal_smooth_trajectory = Trajectory.deserialize(buffer, bufferOffset);
    // Deserialize message field [hybrid_a_star_map_time]
    data.hybrid_a_star_map_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hybrid_a_star_heuristic_time]
    data.hybrid_a_star_heuristic_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hybrid_a_star_rs_time]
    data.hybrid_a_star_rs_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hybrid_a_star_total_time]
    data.hybrid_a_star_total_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ias_collision_avoidance_time]
    data.ias_collision_avoidance_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ias_path_smooth_time]
    data.ias_path_smooth_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ias_speed_smooth_time]
    data.ias_speed_smooth_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ias_total_time]
    data.ias_total_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [samping_trajectory_time]
    data.samping_trajectory_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_replan]
    data.is_replan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [replan_reason]
    data.replan_reason = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [replan_time]
    data.replan_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [replan_num]
    data.replan_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [optimizer_thread_counter]
    data.optimizer_thread_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [replan_by_context_update_counter]
    data.replan_by_context_update_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [replan_by_large_error_counter]
    data.replan_by_large_error_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_type]
    data.parking_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [moves_counter]
    data.moves_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remain_distance]
    data.remain_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_to_leader_obj]
    data.distance_to_leader_obj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.vehicle_preiew_polygon.forEach((val) => {
      length += Polygon2D.getMessageSize(val);
    });
    object.obstacles_polygon.forEach((val) => {
      length += Polygon2D.getMessageSize(val);
    });
    length += 88 * object.path_points.length;
    object.obstacles_vec.forEach((val) => {
      length += Point2dList.getMessageSize(val);
    });
    length += 197 * object.warm_start_traj.length;
    length += 197 * object.smoothed_traj_stage1.length;
    length += 197 * object.smoothed_traj_stage2.length;
    length += Trajectory.getMessageSize(object.reference_line);
    object.trajectory_array.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    length += Trajectory.getMessageSize(object.optimal_coarse_trajectory);
    length += Trajectory.getMessageSize(object.optimal_smooth_trajectory);
    length += object.replan_reason.length;
    return length + 185;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PlanningParkingDebug';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b9cb6b363f6520ffafa504a0b28d1b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PlanningParkingDebug(null);
    if (msg.vehicle_preiew_polygon !== undefined) {
      resolved.vehicle_preiew_polygon = new Array(msg.vehicle_preiew_polygon.length);
      for (let i = 0; i < resolved.vehicle_preiew_polygon.length; ++i) {
        resolved.vehicle_preiew_polygon[i] = Polygon2D.Resolve(msg.vehicle_preiew_polygon[i]);
      }
    }
    else {
      resolved.vehicle_preiew_polygon = []
    }

    if (msg.obstacles_polygon !== undefined) {
      resolved.obstacles_polygon = new Array(msg.obstacles_polygon.length);
      for (let i = 0; i < resolved.obstacles_polygon.length; ++i) {
        resolved.obstacles_polygon[i] = Polygon2D.Resolve(msg.obstacles_polygon[i]);
      }
    }
    else {
      resolved.obstacles_polygon = []
    }

    if (msg.path_points !== undefined) {
      resolved.path_points = new Array(msg.path_points.length);
      for (let i = 0; i < resolved.path_points.length; ++i) {
        resolved.path_points[i] = PathPoint.Resolve(msg.path_points[i]);
      }
    }
    else {
      resolved.path_points = []
    }

    if (msg.lat_error !== undefined) {
      resolved.lat_error = msg.lat_error;
    }
    else {
      resolved.lat_error = 0.0
    }

    if (msg.lon_error !== undefined) {
      resolved.lon_error = msg.lon_error;
    }
    else {
      resolved.lon_error = 0.0
    }

    if (msg.yaw_error !== undefined) {
      resolved.yaw_error = msg.yaw_error;
    }
    else {
      resolved.yaw_error = 0.0
    }

    if (msg.obstacles_vec !== undefined) {
      resolved.obstacles_vec = new Array(msg.obstacles_vec.length);
      for (let i = 0; i < resolved.obstacles_vec.length; ++i) {
        resolved.obstacles_vec[i] = Point2dList.Resolve(msg.obstacles_vec[i]);
      }
    }
    else {
      resolved.obstacles_vec = []
    }

    if (msg.warm_start_traj !== undefined) {
      resolved.warm_start_traj = new Array(msg.warm_start_traj.length);
      for (let i = 0; i < resolved.warm_start_traj.length; ++i) {
        resolved.warm_start_traj[i] = TrajectoryPoint.Resolve(msg.warm_start_traj[i]);
      }
    }
    else {
      resolved.warm_start_traj = []
    }

    if (msg.smoothed_traj_stage1 !== undefined) {
      resolved.smoothed_traj_stage1 = new Array(msg.smoothed_traj_stage1.length);
      for (let i = 0; i < resolved.smoothed_traj_stage1.length; ++i) {
        resolved.smoothed_traj_stage1[i] = TrajectoryPoint.Resolve(msg.smoothed_traj_stage1[i]);
      }
    }
    else {
      resolved.smoothed_traj_stage1 = []
    }

    if (msg.smoothed_traj_stage2 !== undefined) {
      resolved.smoothed_traj_stage2 = new Array(msg.smoothed_traj_stage2.length);
      for (let i = 0; i < resolved.smoothed_traj_stage2.length; ++i) {
        resolved.smoothed_traj_stage2[i] = TrajectoryPoint.Resolve(msg.smoothed_traj_stage2[i]);
      }
    }
    else {
      resolved.smoothed_traj_stage2 = []
    }

    if (msg.reference_line !== undefined) {
      resolved.reference_line = Trajectory.Resolve(msg.reference_line)
    }
    else {
      resolved.reference_line = new Trajectory()
    }

    if (msg.trajectory_array !== undefined) {
      resolved.trajectory_array = new Array(msg.trajectory_array.length);
      for (let i = 0; i < resolved.trajectory_array.length; ++i) {
        resolved.trajectory_array[i] = Trajectory.Resolve(msg.trajectory_array[i]);
      }
    }
    else {
      resolved.trajectory_array = []
    }

    if (msg.optimal_coarse_trajectory !== undefined) {
      resolved.optimal_coarse_trajectory = Trajectory.Resolve(msg.optimal_coarse_trajectory)
    }
    else {
      resolved.optimal_coarse_trajectory = new Trajectory()
    }

    if (msg.optimal_smooth_trajectory !== undefined) {
      resolved.optimal_smooth_trajectory = Trajectory.Resolve(msg.optimal_smooth_trajectory)
    }
    else {
      resolved.optimal_smooth_trajectory = new Trajectory()
    }

    if (msg.hybrid_a_star_map_time !== undefined) {
      resolved.hybrid_a_star_map_time = msg.hybrid_a_star_map_time;
    }
    else {
      resolved.hybrid_a_star_map_time = 0.0
    }

    if (msg.hybrid_a_star_heuristic_time !== undefined) {
      resolved.hybrid_a_star_heuristic_time = msg.hybrid_a_star_heuristic_time;
    }
    else {
      resolved.hybrid_a_star_heuristic_time = 0.0
    }

    if (msg.hybrid_a_star_rs_time !== undefined) {
      resolved.hybrid_a_star_rs_time = msg.hybrid_a_star_rs_time;
    }
    else {
      resolved.hybrid_a_star_rs_time = 0.0
    }

    if (msg.hybrid_a_star_total_time !== undefined) {
      resolved.hybrid_a_star_total_time = msg.hybrid_a_star_total_time;
    }
    else {
      resolved.hybrid_a_star_total_time = 0.0
    }

    if (msg.ias_collision_avoidance_time !== undefined) {
      resolved.ias_collision_avoidance_time = msg.ias_collision_avoidance_time;
    }
    else {
      resolved.ias_collision_avoidance_time = 0.0
    }

    if (msg.ias_path_smooth_time !== undefined) {
      resolved.ias_path_smooth_time = msg.ias_path_smooth_time;
    }
    else {
      resolved.ias_path_smooth_time = 0.0
    }

    if (msg.ias_speed_smooth_time !== undefined) {
      resolved.ias_speed_smooth_time = msg.ias_speed_smooth_time;
    }
    else {
      resolved.ias_speed_smooth_time = 0.0
    }

    if (msg.ias_total_time !== undefined) {
      resolved.ias_total_time = msg.ias_total_time;
    }
    else {
      resolved.ias_total_time = 0.0
    }

    if (msg.samping_trajectory_time !== undefined) {
      resolved.samping_trajectory_time = msg.samping_trajectory_time;
    }
    else {
      resolved.samping_trajectory_time = 0.0
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

    if (msg.replan_time !== undefined) {
      resolved.replan_time = msg.replan_time;
    }
    else {
      resolved.replan_time = 0.0
    }

    if (msg.replan_num !== undefined) {
      resolved.replan_num = msg.replan_num;
    }
    else {
      resolved.replan_num = 0
    }

    if (msg.optimizer_thread_counter !== undefined) {
      resolved.optimizer_thread_counter = msg.optimizer_thread_counter;
    }
    else {
      resolved.optimizer_thread_counter = 0
    }

    if (msg.replan_by_context_update_counter !== undefined) {
      resolved.replan_by_context_update_counter = msg.replan_by_context_update_counter;
    }
    else {
      resolved.replan_by_context_update_counter = 0
    }

    if (msg.replan_by_large_error_counter !== undefined) {
      resolved.replan_by_large_error_counter = msg.replan_by_large_error_counter;
    }
    else {
      resolved.replan_by_large_error_counter = 0
    }

    if (msg.parking_type !== undefined) {
      resolved.parking_type = msg.parking_type;
    }
    else {
      resolved.parking_type = 0
    }

    if (msg.moves_counter !== undefined) {
      resolved.moves_counter = msg.moves_counter;
    }
    else {
      resolved.moves_counter = 0
    }

    if (msg.remain_distance !== undefined) {
      resolved.remain_distance = msg.remain_distance;
    }
    else {
      resolved.remain_distance = 0.0
    }

    if (msg.distance_to_leader_obj !== undefined) {
      resolved.distance_to_leader_obj = msg.distance_to_leader_obj;
    }
    else {
      resolved.distance_to_leader_obj = 0.0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = PlanningParkingDebug;
