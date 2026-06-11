// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PerceptionObstacle = require('./PerceptionObstacle.js');
let TrajectoryInPrediction = require('./TrajectoryInPrediction.js');
let ObstacleIntent = require('./ObstacleIntent.js');
let ObstaclePriority = require('./ObstaclePriority.js');
let ObstacleInteractiveTag = require('./ObstacleInteractiveTag.js');

//-----------------------------------------------------------

class PredictionObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.perception_obstacle = null;
      this.timestamp = null;
      this.predicted_period = null;
      this.trajectory = null;
      this.intent = null;
      this.priority = null;
      this.interactive_tag = null;
      this.is_static = null;
    }
    else {
      if (initObj.hasOwnProperty('perception_obstacle')) {
        this.perception_obstacle = initObj.perception_obstacle
      }
      else {
        this.perception_obstacle = new PerceptionObstacle();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('predicted_period')) {
        this.predicted_period = initObj.predicted_period
      }
      else {
        this.predicted_period = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
      if (initObj.hasOwnProperty('intent')) {
        this.intent = initObj.intent
      }
      else {
        this.intent = new ObstacleIntent();
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = new ObstaclePriority();
      }
      if (initObj.hasOwnProperty('interactive_tag')) {
        this.interactive_tag = initObj.interactive_tag
      }
      else {
        this.interactive_tag = new ObstacleInteractiveTag();
      }
      if (initObj.hasOwnProperty('is_static')) {
        this.is_static = initObj.is_static
      }
      else {
        this.is_static = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionObstacle
    // Serialize message field [perception_obstacle]
    bufferOffset = PerceptionObstacle.serialize(obj.perception_obstacle, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [predicted_period]
    bufferOffset = _serializer.float64(obj.predicted_period, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = TrajectoryInPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [intent]
    bufferOffset = ObstacleIntent.serialize(obj.intent, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = ObstaclePriority.serialize(obj.priority, buffer, bufferOffset);
    // Serialize message field [interactive_tag]
    bufferOffset = ObstacleInteractiveTag.serialize(obj.interactive_tag, buffer, bufferOffset);
    // Serialize message field [is_static]
    bufferOffset = _serializer.bool(obj.is_static, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionObstacle
    let len;
    let data = new PredictionObstacle(null);
    // Deserialize message field [perception_obstacle]
    data.perception_obstacle = PerceptionObstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [predicted_period]
    data.predicted_period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = TrajectoryInPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [intent]
    data.intent = ObstacleIntent.deserialize(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = ObstaclePriority.deserialize(buffer, bufferOffset);
    // Deserialize message field [interactive_tag]
    data.interactive_tag = ObstacleInteractiveTag.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_static]
    data.is_static = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PerceptionObstacle.getMessageSize(object.perception_obstacle);
    object.trajectory.forEach((val) => {
      length += TrajectoryInPrediction.getMessageSize(val);
    });
    return length + 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PredictionObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de205312bb9fab36d338b8733d52dd18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PerceptionObstacle   perception_obstacle     # perception info of obstacle
    float64   timestamp     # GPS time in seconds
    float64   predicted_period     # the length of the time for this prediction (e.g. 10s)
    TrajectoryInPrediction[] trajectory # can have multiple trajectories per obstacle
    ObstacleIntent   intent     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, 
    ObstaclePriority   priority     # 障碍物优先级               1-CAUTION, 2-NORMAL, 3-IGNORE
    ObstacleInteractiveTag   interactive_tag     #  
    bool   is_static     # is obstacle static (default = false)
    
    ================================================================================
    MSG: ros_interface/PerceptionObstacle
    int32   id     #  
    Point3D   position     #  
    float64   theta     #  
    Point3D   velocity     #  
    float64   length     #  
    float64   width     #  
    float64   height     #  
    Point3D[] polygon_point #  
    float64   tracking_time     #  
    int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle
    int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
    float64   confidence     #  
    float64   timestamp     #  
    uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD
    Point3D   drops     #  
    Point3D   acceleration     #  
    Point3D   anchor_point     #  
    Point3D[] bounding_box #  
    int32   sub_type     #  
    float64   height_above_ground     #  
    float64[] position_covariance #  
    float64[] velocity_covariance #  
    float64[] acceleration_covariance #  
    uint8   light_status     #  
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/TrajectoryInPrediction
    float64   probability     # probability of this trajectory
    TrajectoryPoint[] trajectory_points #  
    
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
    MSG: ros_interface/ObstacleIntent
    int32   type     # 估计障碍物的意图        0-UNKNOWN, 1-STOP, 2-STATIONARY, 3-移动 MOVING, 4-HANGE_LANE, 5-LOW_ACCELERATION, 6-HIGH_ACCELERATION, 7-LOW_DECELERATION, 8-HIGH_DECELERATION, 
    
    ================================================================================
    MSG: ros_interface/ObstaclePriority
    int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;
    
    ================================================================================
    MSG: ros_interface/ObstacleInteractiveTag
    int32   interactive_tag     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PredictionObstacle(null);
    if (msg.perception_obstacle !== undefined) {
      resolved.perception_obstacle = PerceptionObstacle.Resolve(msg.perception_obstacle)
    }
    else {
      resolved.perception_obstacle = new PerceptionObstacle()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.predicted_period !== undefined) {
      resolved.predicted_period = msg.predicted_period;
    }
    else {
      resolved.predicted_period = 0.0
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = TrajectoryInPrediction.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    if (msg.intent !== undefined) {
      resolved.intent = ObstacleIntent.Resolve(msg.intent)
    }
    else {
      resolved.intent = new ObstacleIntent()
    }

    if (msg.priority !== undefined) {
      resolved.priority = ObstaclePriority.Resolve(msg.priority)
    }
    else {
      resolved.priority = new ObstaclePriority()
    }

    if (msg.interactive_tag !== undefined) {
      resolved.interactive_tag = ObstacleInteractiveTag.Resolve(msg.interactive_tag)
    }
    else {
      resolved.interactive_tag = new ObstacleInteractiveTag()
    }

    if (msg.is_static !== undefined) {
      resolved.is_static = msg.is_static;
    }
    else {
      resolved.is_static = false
    }

    return resolved;
    }
};

module.exports = PredictionObstacle;
