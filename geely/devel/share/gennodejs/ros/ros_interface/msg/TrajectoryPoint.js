// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPoint = require('./PathPoint.js');
let GaussianInfo = require('./GaussianInfo.js');

//-----------------------------------------------------------

class TrajectoryPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_point = null;
      this.v = null;
      this.a = null;
      this.relative_time = null;
      this.da = null;
      this.is_steer_valid = null;
      this.front_steer = null;
      this.rear_steer = null;
      this.gear = null;
      this.gaussian_info = null;
    }
    else {
      if (initObj.hasOwnProperty('path_point')) {
        this.path_point = initObj.path_point
      }
      else {
        this.path_point = new PathPoint();
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = 0.0;
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0.0;
      }
      if (initObj.hasOwnProperty('relative_time')) {
        this.relative_time = initObj.relative_time
      }
      else {
        this.relative_time = 0.0;
      }
      if (initObj.hasOwnProperty('da')) {
        this.da = initObj.da
      }
      else {
        this.da = 0.0;
      }
      if (initObj.hasOwnProperty('is_steer_valid')) {
        this.is_steer_valid = initObj.is_steer_valid
      }
      else {
        this.is_steer_valid = false;
      }
      if (initObj.hasOwnProperty('front_steer')) {
        this.front_steer = initObj.front_steer
      }
      else {
        this.front_steer = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer')) {
        this.rear_steer = initObj.rear_steer
      }
      else {
        this.rear_steer = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('gaussian_info')) {
        this.gaussian_info = initObj.gaussian_info
      }
      else {
        this.gaussian_info = new GaussianInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryPoint
    // Serialize message field [path_point]
    bufferOffset = PathPoint.serialize(obj.path_point, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.float64(obj.v, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.float64(obj.a, buffer, bufferOffset);
    // Serialize message field [relative_time]
    bufferOffset = _serializer.float64(obj.relative_time, buffer, bufferOffset);
    // Serialize message field [da]
    bufferOffset = _serializer.float64(obj.da, buffer, bufferOffset);
    // Serialize message field [is_steer_valid]
    bufferOffset = _serializer.bool(obj.is_steer_valid, buffer, bufferOffset);
    // Serialize message field [front_steer]
    bufferOffset = _serializer.float64(obj.front_steer, buffer, bufferOffset);
    // Serialize message field [rear_steer]
    bufferOffset = _serializer.float64(obj.rear_steer, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int32(obj.gear, buffer, bufferOffset);
    // Serialize message field [gaussian_info]
    bufferOffset = GaussianInfo.serialize(obj.gaussian_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryPoint
    let len;
    let data = new TrajectoryPoint(null);
    // Deserialize message field [path_point]
    data.path_point = PathPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_time]
    data.relative_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [da]
    data.da = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_steer_valid]
    data.is_steer_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_steer]
    data.front_steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer]
    data.rear_steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gaussian_info]
    data.gaussian_info = GaussianInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 197;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrajectoryPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83c41220037674c2962fa7a8fe3a16d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrajectoryPoint(null);
    if (msg.path_point !== undefined) {
      resolved.path_point = PathPoint.Resolve(msg.path_point)
    }
    else {
      resolved.path_point = new PathPoint()
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = 0.0
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0.0
    }

    if (msg.relative_time !== undefined) {
      resolved.relative_time = msg.relative_time;
    }
    else {
      resolved.relative_time = 0.0
    }

    if (msg.da !== undefined) {
      resolved.da = msg.da;
    }
    else {
      resolved.da = 0.0
    }

    if (msg.is_steer_valid !== undefined) {
      resolved.is_steer_valid = msg.is_steer_valid;
    }
    else {
      resolved.is_steer_valid = false
    }

    if (msg.front_steer !== undefined) {
      resolved.front_steer = msg.front_steer;
    }
    else {
      resolved.front_steer = 0.0
    }

    if (msg.rear_steer !== undefined) {
      resolved.rear_steer = msg.rear_steer;
    }
    else {
      resolved.rear_steer = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.gaussian_info !== undefined) {
      resolved.gaussian_info = GaussianInfo.Resolve(msg.gaussian_info)
    }
    else {
      resolved.gaussian_info = new GaussianInfo()
    }

    return resolved;
    }
};

module.exports = TrajectoryPoint;
