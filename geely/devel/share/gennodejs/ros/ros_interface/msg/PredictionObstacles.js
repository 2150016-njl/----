// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PredictionObstacle = require('./PredictionObstacle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PredictionObstacles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.prediction_obstacles = null;
      this.change_origin_flag = null;
      this.start_timestamp = null;
      this.end_timestamp = null;
      this.self_intent = null;
      this.scenario = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('prediction_obstacles')) {
        this.prediction_obstacles = initObj.prediction_obstacles
      }
      else {
        this.prediction_obstacles = [];
      }
      if (initObj.hasOwnProperty('change_origin_flag')) {
        this.change_origin_flag = initObj.change_origin_flag
      }
      else {
        this.change_origin_flag = 0;
      }
      if (initObj.hasOwnProperty('start_timestamp')) {
        this.start_timestamp = initObj.start_timestamp
      }
      else {
        this.start_timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('end_timestamp')) {
        this.end_timestamp = initObj.end_timestamp
      }
      else {
        this.end_timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('self_intent')) {
        this.self_intent = initObj.self_intent
      }
      else {
        this.self_intent = 0;
      }
      if (initObj.hasOwnProperty('scenario')) {
        this.scenario = initObj.scenario
      }
      else {
        this.scenario = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PredictionObstacles
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [prediction_obstacles]
    // Serialize the length for message field [prediction_obstacles]
    bufferOffset = _serializer.uint32(obj.prediction_obstacles.length, buffer, bufferOffset);
    obj.prediction_obstacles.forEach((val) => {
      bufferOffset = PredictionObstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [change_origin_flag]
    bufferOffset = _serializer.int32(obj.change_origin_flag, buffer, bufferOffset);
    // Serialize message field [start_timestamp]
    bufferOffset = _serializer.float64(obj.start_timestamp, buffer, bufferOffset);
    // Serialize message field [end_timestamp]
    bufferOffset = _serializer.float64(obj.end_timestamp, buffer, bufferOffset);
    // Serialize message field [self_intent]
    bufferOffset = _serializer.int32(obj.self_intent, buffer, bufferOffset);
    // Serialize message field [scenario]
    bufferOffset = _serializer.int32(obj.scenario, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PredictionObstacles
    let len;
    let data = new PredictionObstacles(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [prediction_obstacles]
    // Deserialize array length for message field [prediction_obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.prediction_obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prediction_obstacles[i] = PredictionObstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [change_origin_flag]
    data.change_origin_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_timestamp]
    data.start_timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_timestamp]
    data.end_timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [self_intent]
    data.self_intent = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [scenario]
    data.scenario = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.prediction_obstacles.forEach((val) => {
      length += PredictionObstacle.getMessageSize(val);
    });
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PredictionObstacles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9354ec2a726cf7a2762b6008aa699e3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    PredictionObstacle[] prediction_obstacles # make prediction for multiple obstacles
    int32   change_origin_flag     # 0:坐标系切换成功 1:坐标系切换中 2:坐标系切换故障
    float64   start_timestamp     # start timestamp
    float64   end_timestamp     # end timestamp
    int32   self_intent     # 自动驾驶车辆意图  0-UNKNOWN, 1-STOP, 2-CRUISE, 3-CHANGE_LANE
    int32   scenario     # 场景              0-UNKNOWN, 1000-CRUISE, 1001-CRUISE_URBAN 1002-CRUISE_HIGHWAY, 2000-JUNCTION  2001-JUNCTION_TRAFFIC_LIGHT 2002-JUNCTION_STOP_SIGN
    
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
    MSG: ros_interface/PredictionObstacle
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
    const resolved = new PredictionObstacles(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.prediction_obstacles !== undefined) {
      resolved.prediction_obstacles = new Array(msg.prediction_obstacles.length);
      for (let i = 0; i < resolved.prediction_obstacles.length; ++i) {
        resolved.prediction_obstacles[i] = PredictionObstacle.Resolve(msg.prediction_obstacles[i]);
      }
    }
    else {
      resolved.prediction_obstacles = []
    }

    if (msg.change_origin_flag !== undefined) {
      resolved.change_origin_flag = msg.change_origin_flag;
    }
    else {
      resolved.change_origin_flag = 0
    }

    if (msg.start_timestamp !== undefined) {
      resolved.start_timestamp = msg.start_timestamp;
    }
    else {
      resolved.start_timestamp = 0.0
    }

    if (msg.end_timestamp !== undefined) {
      resolved.end_timestamp = msg.end_timestamp;
    }
    else {
      resolved.end_timestamp = 0.0
    }

    if (msg.self_intent !== undefined) {
      resolved.self_intent = msg.self_intent;
    }
    else {
      resolved.self_intent = 0
    }

    if (msg.scenario !== undefined) {
      resolved.scenario = msg.scenario;
    }
    else {
      resolved.scenario = 0
    }

    return resolved;
    }
};

module.exports = PredictionObstacles;
