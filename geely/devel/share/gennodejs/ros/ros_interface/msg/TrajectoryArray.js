// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Path = require('./Path.js');
let Trajectory = require('./Trajectory.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TrajectoryArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.spline_s = null;
      this.qp_smooth = null;
      this.trajectory_list = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('spline_s')) {
        this.spline_s = initObj.spline_s
      }
      else {
        this.spline_s = [];
      }
      if (initObj.hasOwnProperty('qp_smooth')) {
        this.qp_smooth = initObj.qp_smooth
      }
      else {
        this.qp_smooth = [];
      }
      if (initObj.hasOwnProperty('trajectory_list')) {
        this.trajectory_list = initObj.trajectory_list
      }
      else {
        this.trajectory_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrajectoryArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [spline_s]
    // Serialize the length for message field [spline_s]
    bufferOffset = _serializer.uint32(obj.spline_s.length, buffer, bufferOffset);
    obj.spline_s.forEach((val) => {
      bufferOffset = Path.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [qp_smooth]
    // Serialize the length for message field [qp_smooth]
    bufferOffset = _serializer.uint32(obj.qp_smooth.length, buffer, bufferOffset);
    obj.qp_smooth.forEach((val) => {
      bufferOffset = Path.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trajectory_list]
    // Serialize the length for message field [trajectory_list]
    bufferOffset = _serializer.uint32(obj.trajectory_list.length, buffer, bufferOffset);
    obj.trajectory_list.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrajectoryArray
    let len;
    let data = new TrajectoryArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [spline_s]
    // Deserialize array length for message field [spline_s]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.spline_s = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.spline_s[i] = Path.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [qp_smooth]
    // Deserialize array length for message field [qp_smooth]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.qp_smooth = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.qp_smooth[i] = Path.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trajectory_list]
    // Deserialize array length for message field [trajectory_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory_list[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.spline_s.forEach((val) => {
      length += Path.getMessageSize(val);
    });
    object.qp_smooth.forEach((val) => {
      length += Path.getMessageSize(val);
    });
    object.trajectory_list.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrajectoryArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6fa2156da02dea66a565f8c06f54666';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    Path[] spline_s # 样条拟合曲线
    Path[] qp_smooth # qp参考线拟合
    Trajectory[] trajectory_list # 轨迹簇
    
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
    MSG: ros_interface/Path
    string   name     # 名称
    PathPoint[] path_points # 路径点集
    
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
    MSG: ros_interface/Trajectory
    string   name     # 轨迹名称
    TrajectoryPoint[] trajectory_points # 轨迹点
    
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
    const resolved = new TrajectoryArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.spline_s !== undefined) {
      resolved.spline_s = new Array(msg.spline_s.length);
      for (let i = 0; i < resolved.spline_s.length; ++i) {
        resolved.spline_s[i] = Path.Resolve(msg.spline_s[i]);
      }
    }
    else {
      resolved.spline_s = []
    }

    if (msg.qp_smooth !== undefined) {
      resolved.qp_smooth = new Array(msg.qp_smooth.length);
      for (let i = 0; i < resolved.qp_smooth.length; ++i) {
        resolved.qp_smooth[i] = Path.Resolve(msg.qp_smooth[i]);
      }
    }
    else {
      resolved.qp_smooth = []
    }

    if (msg.trajectory_list !== undefined) {
      resolved.trajectory_list = new Array(msg.trajectory_list.length);
      for (let i = 0; i < resolved.trajectory_list.length; ++i) {
        resolved.trajectory_list[i] = Trajectory.Resolve(msg.trajectory_list[i]);
      }
    }
    else {
      resolved.trajectory_list = []
    }

    return resolved;
    }
};

module.exports = TrajectoryArray;
