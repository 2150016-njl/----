// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3D = require('./Point3D.js');
let ObstaclePriority = require('./ObstaclePriority.js');
let PredictionTrajectoryPoint = require('./PredictionTrajectoryPoint.js');
let TrajectoryPointInPrediction = require('./TrajectoryPointInPrediction.js');
let TrajectoryInPrediction = require('./TrajectoryInPrediction.js');

//-----------------------------------------------------------

class ObstacleFeature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle_id = null;
      this.polygon_point = null;
      this.position = null;
      this.front_position = null;
      this.velocity = null;
      this.raw_velocity = null;
      this.acceleration = null;
      this.velocity_heading = null;
      this.speed = null;
      this.acc = null;
      this.theta = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.tracking_time = null;
      this.timestamp = null;
      this.t_position = null;
      this.t_velocity = null;
      this.t_velocity_heading = null;
      this.t_speed = null;
      this.t_acceleration = null;
      this.t_acc = null;
      this.is_still = null;
      this.type = null;
      this.label_update_time_delta = null;
      this.priority = null;
      this.is_near_junction = null;
      this.future_trajectory_points = null;
      this.short_term_predicted_trajectory_points = null;
      this.predicted_trajectory = null;
      this.adc_trajectory_point = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle_id')) {
        this.obstacle_id = initObj.obstacle_id
      }
      else {
        this.obstacle_id = 0;
      }
      if (initObj.hasOwnProperty('polygon_point')) {
        this.polygon_point = initObj.polygon_point
      }
      else {
        this.polygon_point = new Point3D();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point3D();
      }
      if (initObj.hasOwnProperty('front_position')) {
        this.front_position = initObj.front_position
      }
      else {
        this.front_position = new Point3D();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('raw_velocity')) {
        this.raw_velocity = initObj.raw_velocity
      }
      else {
        this.raw_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new Point3D();
      }
      if (initObj.hasOwnProperty('velocity_heading')) {
        this.velocity_heading = initObj.velocity_heading
      }
      else {
        this.velocity_heading = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('tracking_time')) {
        this.tracking_time = initObj.tracking_time
      }
      else {
        this.tracking_time = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('t_position')) {
        this.t_position = initObj.t_position
      }
      else {
        this.t_position = new Point3D();
      }
      if (initObj.hasOwnProperty('t_velocity')) {
        this.t_velocity = initObj.t_velocity
      }
      else {
        this.t_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('t_velocity_heading')) {
        this.t_velocity_heading = initObj.t_velocity_heading
      }
      else {
        this.t_velocity_heading = 0.0;
      }
      if (initObj.hasOwnProperty('t_speed')) {
        this.t_speed = initObj.t_speed
      }
      else {
        this.t_speed = 0.0;
      }
      if (initObj.hasOwnProperty('t_acceleration')) {
        this.t_acceleration = initObj.t_acceleration
      }
      else {
        this.t_acceleration = new Point3D();
      }
      if (initObj.hasOwnProperty('t_acc')) {
        this.t_acc = initObj.t_acc
      }
      else {
        this.t_acc = 0.0;
      }
      if (initObj.hasOwnProperty('is_still')) {
        this.is_still = initObj.is_still
      }
      else {
        this.is_still = false;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('label_update_time_delta')) {
        this.label_update_time_delta = initObj.label_update_time_delta
      }
      else {
        this.label_update_time_delta = 0.0;
      }
      if (initObj.hasOwnProperty('priority')) {
        this.priority = initObj.priority
      }
      else {
        this.priority = new ObstaclePriority();
      }
      if (initObj.hasOwnProperty('is_near_junction')) {
        this.is_near_junction = initObj.is_near_junction
      }
      else {
        this.is_near_junction = false;
      }
      if (initObj.hasOwnProperty('future_trajectory_points')) {
        this.future_trajectory_points = initObj.future_trajectory_points
      }
      else {
        this.future_trajectory_points = [];
      }
      if (initObj.hasOwnProperty('short_term_predicted_trajectory_points')) {
        this.short_term_predicted_trajectory_points = initObj.short_term_predicted_trajectory_points
      }
      else {
        this.short_term_predicted_trajectory_points = [];
      }
      if (initObj.hasOwnProperty('predicted_trajectory')) {
        this.predicted_trajectory = initObj.predicted_trajectory
      }
      else {
        this.predicted_trajectory = [];
      }
      if (initObj.hasOwnProperty('adc_trajectory_point')) {
        this.adc_trajectory_point = initObj.adc_trajectory_point
      }
      else {
        this.adc_trajectory_point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleFeature
    // Serialize message field [obstacle_id]
    bufferOffset = _serializer.int32(obj.obstacle_id, buffer, bufferOffset);
    // Serialize message field [polygon_point]
    bufferOffset = Point3D.serialize(obj.polygon_point, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point3D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [front_position]
    bufferOffset = Point3D.serialize(obj.front_position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Point3D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [raw_velocity]
    bufferOffset = Point3D.serialize(obj.raw_velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = Point3D.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [velocity_heading]
    bufferOffset = _serializer.float64(obj.velocity_heading, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.float64(obj.acc, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float64(obj.tracking_time, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [t_position]
    bufferOffset = Point3D.serialize(obj.t_position, buffer, bufferOffset);
    // Serialize message field [t_velocity]
    bufferOffset = Point3D.serialize(obj.t_velocity, buffer, bufferOffset);
    // Serialize message field [t_velocity_heading]
    bufferOffset = _serializer.float64(obj.t_velocity_heading, buffer, bufferOffset);
    // Serialize message field [t_speed]
    bufferOffset = _serializer.float64(obj.t_speed, buffer, bufferOffset);
    // Serialize message field [t_acceleration]
    bufferOffset = Point3D.serialize(obj.t_acceleration, buffer, bufferOffset);
    // Serialize message field [t_acc]
    bufferOffset = _serializer.float64(obj.t_acc, buffer, bufferOffset);
    // Serialize message field [is_still]
    bufferOffset = _serializer.bool(obj.is_still, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [label_update_time_delta]
    bufferOffset = _serializer.float64(obj.label_update_time_delta, buffer, bufferOffset);
    // Serialize message field [priority]
    bufferOffset = ObstaclePriority.serialize(obj.priority, buffer, bufferOffset);
    // Serialize message field [is_near_junction]
    bufferOffset = _serializer.bool(obj.is_near_junction, buffer, bufferOffset);
    // Serialize message field [future_trajectory_points]
    // Serialize the length for message field [future_trajectory_points]
    bufferOffset = _serializer.uint32(obj.future_trajectory_points.length, buffer, bufferOffset);
    obj.future_trajectory_points.forEach((val) => {
      bufferOffset = PredictionTrajectoryPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [short_term_predicted_trajectory_points]
    // Serialize the length for message field [short_term_predicted_trajectory_points]
    bufferOffset = _serializer.uint32(obj.short_term_predicted_trajectory_points.length, buffer, bufferOffset);
    obj.short_term_predicted_trajectory_points.forEach((val) => {
      bufferOffset = TrajectoryPointInPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [predicted_trajectory]
    // Serialize the length for message field [predicted_trajectory]
    bufferOffset = _serializer.uint32(obj.predicted_trajectory.length, buffer, bufferOffset);
    obj.predicted_trajectory.forEach((val) => {
      bufferOffset = TrajectoryInPrediction.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [adc_trajectory_point]
    // Serialize the length for message field [adc_trajectory_point]
    bufferOffset = _serializer.uint32(obj.adc_trajectory_point.length, buffer, bufferOffset);
    obj.adc_trajectory_point.forEach((val) => {
      bufferOffset = TrajectoryPointInPrediction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleFeature
    let len;
    let data = new ObstacleFeature(null);
    // Deserialize message field [obstacle_id]
    data.obstacle_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [polygon_point]
    data.polygon_point = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_position]
    data.front_position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [raw_velocity]
    data.raw_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_heading]
    data.velocity_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t_position]
    data.t_position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_velocity]
    data.t_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_velocity_heading]
    data.t_velocity_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t_speed]
    data.t_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t_acceleration]
    data.t_acceleration = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [t_acc]
    data.t_acc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_still]
    data.is_still = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [label_update_time_delta]
    data.label_update_time_delta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [priority]
    data.priority = ObstaclePriority.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_near_junction]
    data.is_near_junction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [future_trajectory_points]
    // Deserialize array length for message field [future_trajectory_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.future_trajectory_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.future_trajectory_points[i] = PredictionTrajectoryPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [short_term_predicted_trajectory_points]
    // Deserialize array length for message field [short_term_predicted_trajectory_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.short_term_predicted_trajectory_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.short_term_predicted_trajectory_points[i] = TrajectoryPointInPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [predicted_trajectory]
    // Deserialize array length for message field [predicted_trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.predicted_trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.predicted_trajectory[i] = TrajectoryInPrediction.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [adc_trajectory_point]
    // Deserialize array length for message field [adc_trajectory_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.adc_trajectory_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.adc_trajectory_point[i] = TrajectoryPointInPrediction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 32 * object.future_trajectory_points.length;
    length += 112 * object.short_term_predicted_trajectory_points.length;
    object.predicted_trajectory.forEach((val) => {
      length += TrajectoryInPrediction.getMessageSize(val);
    });
    length += 112 * object.adc_trajectory_point.length;
    return length + 350;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ObstacleFeature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5db825b7f5c05c840b2b7624a450755';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   obstacle_id     # Obstacle ID
    Point3D   polygon_point     # 障碍物边框点列
    Point3D   position     #  
    Point3D   front_position     #  
    Point3D   velocity     #  
    Point3D   raw_velocity     # from perception
    Point3D   acceleration     #  
    float64   velocity_heading     #  
    float64   speed     #  
    float64   acc     #  
    float64   theta     #  
    float64   length     #  
    float64   width     #  
    float64   height     #  
    float64   tracking_time     #  
    float64   timestamp     #  
    Point3D   t_position     #  
    Point3D   t_velocity     # [deprecated = true]
    float64   t_velocity_heading     # [deprecated = true]
    float64   t_speed     # [deprecated = true]
    Point3D   t_acceleration     # [deprecated = true]
    float64   t_acc     # [deprecated = true]
    bool   is_still     # [deprecated = false]
    int32   type     # 感知到的障碍物类型         0-UNKNOWN, 1-UNKNOWN_MOVABLE, 2-UNKNOWN_UNMOVABLE, 3-PEDESTRIAN, 4-BICYCLE,     5-VEHICLE
    float64   label_update_time_delta     #  
    ObstaclePriority   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;
    bool   is_near_junction     #  
    PredictionTrajectoryPoint[] future_trajectory_points # Obstacle ground-truth labels:
    TrajectoryPointInPrediction[] short_term_predicted_trajectory_points # Obstacle short-term predicted trajectory points
    TrajectoryInPrediction[] predicted_trajectory # Obstacle predicted trajectories
    TrajectoryPointInPrediction[] adc_trajectory_point # ADC trajectory at the same frame
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/ObstaclePriority
    int32   priority     # CAUTION = 1; NORMAL = 2; IGNORE = 3;
    
    ================================================================================
    MSG: ros_interface/PredictionTrajectoryPoint
    Point3D   predition_path_point     #  
    float64   timestamp     #  
    
    ================================================================================
    MSG: ros_interface/TrajectoryPointInPrediction
    PathPoint   path_point     # path point
    float64   v     # linear velocity
    float64   a     # linear acceleration
    float64   relative_time     # relative time from beginning of the trajectory
    
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
    MSG: ros_interface/GaussianInfo
    float64   sigma_x     # 标准差x
    float64   sigma_y     # 标准差y
    float64   correlation     # 相关性
    float64   area_probability     # Information of representative uncertainty area
    float64   ellipse_a     # 椭圆长轴
    float64   ellipse_b     # 椭圆短轴
    float64   theta_a     # 椭圆朝向
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleFeature(null);
    if (msg.obstacle_id !== undefined) {
      resolved.obstacle_id = msg.obstacle_id;
    }
    else {
      resolved.obstacle_id = 0
    }

    if (msg.polygon_point !== undefined) {
      resolved.polygon_point = Point3D.Resolve(msg.polygon_point)
    }
    else {
      resolved.polygon_point = new Point3D()
    }

    if (msg.position !== undefined) {
      resolved.position = Point3D.Resolve(msg.position)
    }
    else {
      resolved.position = new Point3D()
    }

    if (msg.front_position !== undefined) {
      resolved.front_position = Point3D.Resolve(msg.front_position)
    }
    else {
      resolved.front_position = new Point3D()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Point3D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Point3D()
    }

    if (msg.raw_velocity !== undefined) {
      resolved.raw_velocity = Point3D.Resolve(msg.raw_velocity)
    }
    else {
      resolved.raw_velocity = new Point3D()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = Point3D.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new Point3D()
    }

    if (msg.velocity_heading !== undefined) {
      resolved.velocity_heading = msg.velocity_heading;
    }
    else {
      resolved.velocity_heading = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.tracking_time !== undefined) {
      resolved.tracking_time = msg.tracking_time;
    }
    else {
      resolved.tracking_time = 0.0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.t_position !== undefined) {
      resolved.t_position = Point3D.Resolve(msg.t_position)
    }
    else {
      resolved.t_position = new Point3D()
    }

    if (msg.t_velocity !== undefined) {
      resolved.t_velocity = Point3D.Resolve(msg.t_velocity)
    }
    else {
      resolved.t_velocity = new Point3D()
    }

    if (msg.t_velocity_heading !== undefined) {
      resolved.t_velocity_heading = msg.t_velocity_heading;
    }
    else {
      resolved.t_velocity_heading = 0.0
    }

    if (msg.t_speed !== undefined) {
      resolved.t_speed = msg.t_speed;
    }
    else {
      resolved.t_speed = 0.0
    }

    if (msg.t_acceleration !== undefined) {
      resolved.t_acceleration = Point3D.Resolve(msg.t_acceleration)
    }
    else {
      resolved.t_acceleration = new Point3D()
    }

    if (msg.t_acc !== undefined) {
      resolved.t_acc = msg.t_acc;
    }
    else {
      resolved.t_acc = 0.0
    }

    if (msg.is_still !== undefined) {
      resolved.is_still = msg.is_still;
    }
    else {
      resolved.is_still = false
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.label_update_time_delta !== undefined) {
      resolved.label_update_time_delta = msg.label_update_time_delta;
    }
    else {
      resolved.label_update_time_delta = 0.0
    }

    if (msg.priority !== undefined) {
      resolved.priority = ObstaclePriority.Resolve(msg.priority)
    }
    else {
      resolved.priority = new ObstaclePriority()
    }

    if (msg.is_near_junction !== undefined) {
      resolved.is_near_junction = msg.is_near_junction;
    }
    else {
      resolved.is_near_junction = false
    }

    if (msg.future_trajectory_points !== undefined) {
      resolved.future_trajectory_points = new Array(msg.future_trajectory_points.length);
      for (let i = 0; i < resolved.future_trajectory_points.length; ++i) {
        resolved.future_trajectory_points[i] = PredictionTrajectoryPoint.Resolve(msg.future_trajectory_points[i]);
      }
    }
    else {
      resolved.future_trajectory_points = []
    }

    if (msg.short_term_predicted_trajectory_points !== undefined) {
      resolved.short_term_predicted_trajectory_points = new Array(msg.short_term_predicted_trajectory_points.length);
      for (let i = 0; i < resolved.short_term_predicted_trajectory_points.length; ++i) {
        resolved.short_term_predicted_trajectory_points[i] = TrajectoryPointInPrediction.Resolve(msg.short_term_predicted_trajectory_points[i]);
      }
    }
    else {
      resolved.short_term_predicted_trajectory_points = []
    }

    if (msg.predicted_trajectory !== undefined) {
      resolved.predicted_trajectory = new Array(msg.predicted_trajectory.length);
      for (let i = 0; i < resolved.predicted_trajectory.length; ++i) {
        resolved.predicted_trajectory[i] = TrajectoryInPrediction.Resolve(msg.predicted_trajectory[i]);
      }
    }
    else {
      resolved.predicted_trajectory = []
    }

    if (msg.adc_trajectory_point !== undefined) {
      resolved.adc_trajectory_point = new Array(msg.adc_trajectory_point.length);
      for (let i = 0; i < resolved.adc_trajectory_point.length; ++i) {
        resolved.adc_trajectory_point[i] = TrajectoryPointInPrediction.Resolve(msg.adc_trajectory_point[i]);
      }
    }
    else {
      resolved.adc_trajectory_point = []
    }

    return resolved;
    }
};

module.exports = ObstacleFeature;
