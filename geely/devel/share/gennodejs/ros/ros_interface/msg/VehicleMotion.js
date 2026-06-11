// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleMotionPoint = require('./VehicleMotionPoint.js');

//-----------------------------------------------------------

class VehicleMotion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.vehicle_motion_point = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('vehicle_motion_point')) {
        this.vehicle_motion_point = initObj.vehicle_motion_point
      }
      else {
        this.vehicle_motion_point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleMotion
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [vehicle_motion_point]
    // Serialize the length for message field [vehicle_motion_point]
    bufferOffset = _serializer.uint32(obj.vehicle_motion_point.length, buffer, bufferOffset);
    obj.vehicle_motion_point.forEach((val) => {
      bufferOffset = VehicleMotionPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleMotion
    let len;
    let data = new VehicleMotion(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vehicle_motion_point]
    // Deserialize array length for message field [vehicle_motion_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicle_motion_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicle_motion_point[i] = VehicleMotionPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 205 * object.vehicle_motion_point.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/VehicleMotion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf8e94116d427d0fb900e441d5adcce5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   name     # 名称
    VehicleMotionPoint[] vehicle_motion_point #  
    
    ================================================================================
    MSG: ros_interface/VehicleMotionPoint
    TrajectoryPoint   trajectory_point     # trajectory point
    float64   steer     # The angle between vehicle front wheel and vehicle longitudinal axis
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleMotion(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.vehicle_motion_point !== undefined) {
      resolved.vehicle_motion_point = new Array(msg.vehicle_motion_point.length);
      for (let i = 0; i < resolved.vehicle_motion_point.length; ++i) {
        resolved.vehicle_motion_point[i] = VehicleMotionPoint.Resolve(msg.vehicle_motion_point[i]);
      }
    }
    else {
      resolved.vehicle_motion_point = []
    }

    return resolved;
    }
};

module.exports = VehicleMotion;
