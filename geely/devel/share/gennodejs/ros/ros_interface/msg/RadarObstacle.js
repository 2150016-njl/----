// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2D = require('./Point2D.js');
let Status = require('./Status.js');

//-----------------------------------------------------------

class RadarObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.life_time = null;
      this.relative_position = null;
      this.relative_position_rms = null;
      this.relative_velocity = null;
      this.relative_velocity_rms = null;
      this.relative_acceleration = null;
      this.relative_acceleration_rms = null;
      this.rcs = null;
      this.snr = null;
      this.moving_status = null;
      this.width = null;
      this.length = null;
      this.height = null;
      this.theta = null;
      this.absolute_position = null;
      this.absolute_position_rms = null;
      this.absolute_velocity = null;
      this.absolute_velocity_rms = null;
      this.absolute_acceleration = null;
      this.absolute_acceleration_rms = null;
      this.orientation = null;
      this.orient_rms = null;
      this.yaw = null;
      this.yaw_rms = null;
      this.count = null;
      this.moving_frames_count = null;
      this.status = null;
      this.underpass_probability = null;
      this.overpass_probability = null;
      this.exist_probability = null;
      this.mov_property = null;
      this.track_state = null;
      this.track_type = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('life_time')) {
        this.life_time = initObj.life_time
      }
      else {
        this.life_time = 0;
      }
      if (initObj.hasOwnProperty('relative_position')) {
        this.relative_position = initObj.relative_position
      }
      else {
        this.relative_position = new Point2D();
      }
      if (initObj.hasOwnProperty('relative_position_rms')) {
        this.relative_position_rms = initObj.relative_position_rms
      }
      else {
        this.relative_position_rms = new Point2D();
      }
      if (initObj.hasOwnProperty('relative_velocity')) {
        this.relative_velocity = initObj.relative_velocity
      }
      else {
        this.relative_velocity = new Point2D();
      }
      if (initObj.hasOwnProperty('relative_velocity_rms')) {
        this.relative_velocity_rms = initObj.relative_velocity_rms
      }
      else {
        this.relative_velocity_rms = new Point2D();
      }
      if (initObj.hasOwnProperty('relative_acceleration')) {
        this.relative_acceleration = initObj.relative_acceleration
      }
      else {
        this.relative_acceleration = new Point2D();
      }
      if (initObj.hasOwnProperty('relative_acceleration_rms')) {
        this.relative_acceleration_rms = initObj.relative_acceleration_rms
      }
      else {
        this.relative_acceleration_rms = new Point2D();
      }
      if (initObj.hasOwnProperty('rcs')) {
        this.rcs = initObj.rcs
      }
      else {
        this.rcs = 0.0;
      }
      if (initObj.hasOwnProperty('snr')) {
        this.snr = initObj.snr
      }
      else {
        this.snr = 0.0;
      }
      if (initObj.hasOwnProperty('moving_status')) {
        this.moving_status = initObj.moving_status
      }
      else {
        this.moving_status = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('absolute_position')) {
        this.absolute_position = initObj.absolute_position
      }
      else {
        this.absolute_position = new Point2D();
      }
      if (initObj.hasOwnProperty('absolute_position_rms')) {
        this.absolute_position_rms = initObj.absolute_position_rms
      }
      else {
        this.absolute_position_rms = new Point2D();
      }
      if (initObj.hasOwnProperty('absolute_velocity')) {
        this.absolute_velocity = initObj.absolute_velocity
      }
      else {
        this.absolute_velocity = new Point2D();
      }
      if (initObj.hasOwnProperty('absolute_velocity_rms')) {
        this.absolute_velocity_rms = initObj.absolute_velocity_rms
      }
      else {
        this.absolute_velocity_rms = new Point2D();
      }
      if (initObj.hasOwnProperty('absolute_acceleration')) {
        this.absolute_acceleration = initObj.absolute_acceleration
      }
      else {
        this.absolute_acceleration = new Point2D();
      }
      if (initObj.hasOwnProperty('absolute_acceleration_rms')) {
        this.absolute_acceleration_rms = initObj.absolute_acceleration_rms
      }
      else {
        this.absolute_acceleration_rms = new Point2D();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = 0.0;
      }
      if (initObj.hasOwnProperty('orient_rms')) {
        this.orient_rms = initObj.orient_rms
      }
      else {
        this.orient_rms = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rms')) {
        this.yaw_rms = initObj.yaw_rms
      }
      else {
        this.yaw_rms = 0.0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('moving_frames_count')) {
        this.moving_frames_count = initObj.moving_frames_count
      }
      else {
        this.moving_frames_count = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new Status();
      }
      if (initObj.hasOwnProperty('underpass_probability')) {
        this.underpass_probability = initObj.underpass_probability
      }
      else {
        this.underpass_probability = 0.0;
      }
      if (initObj.hasOwnProperty('overpass_probability')) {
        this.overpass_probability = initObj.overpass_probability
      }
      else {
        this.overpass_probability = 0.0;
      }
      if (initObj.hasOwnProperty('exist_probability')) {
        this.exist_probability = initObj.exist_probability
      }
      else {
        this.exist_probability = 0;
      }
      if (initObj.hasOwnProperty('mov_property')) {
        this.mov_property = initObj.mov_property
      }
      else {
        this.mov_property = 0;
      }
      if (initObj.hasOwnProperty('track_state')) {
        this.track_state = initObj.track_state
      }
      else {
        this.track_state = 0;
      }
      if (initObj.hasOwnProperty('track_type')) {
        this.track_type = initObj.track_type
      }
      else {
        this.track_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarObstacle
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [life_time]
    bufferOffset = _serializer.uint8(obj.life_time, buffer, bufferOffset);
    // Serialize message field [relative_position]
    bufferOffset = Point2D.serialize(obj.relative_position, buffer, bufferOffset);
    // Serialize message field [relative_position_rms]
    bufferOffset = Point2D.serialize(obj.relative_position_rms, buffer, bufferOffset);
    // Serialize message field [relative_velocity]
    bufferOffset = Point2D.serialize(obj.relative_velocity, buffer, bufferOffset);
    // Serialize message field [relative_velocity_rms]
    bufferOffset = Point2D.serialize(obj.relative_velocity_rms, buffer, bufferOffset);
    // Serialize message field [relative_acceleration]
    bufferOffset = Point2D.serialize(obj.relative_acceleration, buffer, bufferOffset);
    // Serialize message field [relative_acceleration_rms]
    bufferOffset = Point2D.serialize(obj.relative_acceleration_rms, buffer, bufferOffset);
    // Serialize message field [rcs]
    bufferOffset = _serializer.float64(obj.rcs, buffer, bufferOffset);
    // Serialize message field [snr]
    bufferOffset = _serializer.float64(obj.snr, buffer, bufferOffset);
    // Serialize message field [moving_status]
    bufferOffset = _serializer.int32(obj.moving_status, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [absolute_position]
    bufferOffset = Point2D.serialize(obj.absolute_position, buffer, bufferOffset);
    // Serialize message field [absolute_position_rms]
    bufferOffset = Point2D.serialize(obj.absolute_position_rms, buffer, bufferOffset);
    // Serialize message field [absolute_velocity]
    bufferOffset = Point2D.serialize(obj.absolute_velocity, buffer, bufferOffset);
    // Serialize message field [absolute_velocity_rms]
    bufferOffset = Point2D.serialize(obj.absolute_velocity_rms, buffer, bufferOffset);
    // Serialize message field [absolute_acceleration]
    bufferOffset = Point2D.serialize(obj.absolute_acceleration, buffer, bufferOffset);
    // Serialize message field [absolute_acceleration_rms]
    bufferOffset = Point2D.serialize(obj.absolute_acceleration_rms, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = _serializer.float64(obj.orientation, buffer, bufferOffset);
    // Serialize message field [orient_rms]
    bufferOffset = _serializer.float64(obj.orient_rms, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yaw_rms]
    bufferOffset = _serializer.float64(obj.yaw_rms, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.int32(obj.count, buffer, bufferOffset);
    // Serialize message field [moving_frames_count]
    bufferOffset = _serializer.int32(obj.moving_frames_count, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = Status.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [underpass_probability]
    bufferOffset = _serializer.float64(obj.underpass_probability, buffer, bufferOffset);
    // Serialize message field [overpass_probability]
    bufferOffset = _serializer.float64(obj.overpass_probability, buffer, bufferOffset);
    // Serialize message field [exist_probability]
    bufferOffset = _serializer.uint8(obj.exist_probability, buffer, bufferOffset);
    // Serialize message field [mov_property]
    bufferOffset = _serializer.uint8(obj.mov_property, buffer, bufferOffset);
    // Serialize message field [track_state]
    bufferOffset = _serializer.uint8(obj.track_state, buffer, bufferOffset);
    // Serialize message field [track_type]
    bufferOffset = _serializer.uint8(obj.track_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarObstacle
    let len;
    let data = new RadarObstacle(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [life_time]
    data.life_time = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [relative_position]
    data.relative_position = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_position_rms]
    data.relative_position_rms = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity]
    data.relative_velocity = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_velocity_rms]
    data.relative_velocity_rms = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_acceleration]
    data.relative_acceleration = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_acceleration_rms]
    data.relative_acceleration_rms = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [rcs]
    data.rcs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [snr]
    data.snr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [moving_status]
    data.moving_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [absolute_position]
    data.absolute_position = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_position_rms]
    data.absolute_position_rms = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_velocity]
    data.absolute_velocity = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_velocity_rms]
    data.absolute_velocity_rms = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_acceleration]
    data.absolute_acceleration = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute_acceleration_rms]
    data.absolute_acceleration_rms = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orient_rms]
    data.orient_rms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rms]
    data.yaw_rms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [moving_frames_count]
    data.moving_frames_count = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = Status.deserialize(buffer, bufferOffset);
    // Deserialize message field [underpass_probability]
    data.underpass_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [overpass_probability]
    data.overpass_probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [exist_probability]
    data.exist_probability = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mov_property]
    data.mov_property = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_state]
    data.track_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [track_type]
    data.track_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Status.getMessageSize(object.status);
    return length + 309;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RadarObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd415f3f1097d79c4238ba7b7df30ac73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarObstacle(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.life_time !== undefined) {
      resolved.life_time = msg.life_time;
    }
    else {
      resolved.life_time = 0
    }

    if (msg.relative_position !== undefined) {
      resolved.relative_position = Point2D.Resolve(msg.relative_position)
    }
    else {
      resolved.relative_position = new Point2D()
    }

    if (msg.relative_position_rms !== undefined) {
      resolved.relative_position_rms = Point2D.Resolve(msg.relative_position_rms)
    }
    else {
      resolved.relative_position_rms = new Point2D()
    }

    if (msg.relative_velocity !== undefined) {
      resolved.relative_velocity = Point2D.Resolve(msg.relative_velocity)
    }
    else {
      resolved.relative_velocity = new Point2D()
    }

    if (msg.relative_velocity_rms !== undefined) {
      resolved.relative_velocity_rms = Point2D.Resolve(msg.relative_velocity_rms)
    }
    else {
      resolved.relative_velocity_rms = new Point2D()
    }

    if (msg.relative_acceleration !== undefined) {
      resolved.relative_acceleration = Point2D.Resolve(msg.relative_acceleration)
    }
    else {
      resolved.relative_acceleration = new Point2D()
    }

    if (msg.relative_acceleration_rms !== undefined) {
      resolved.relative_acceleration_rms = Point2D.Resolve(msg.relative_acceleration_rms)
    }
    else {
      resolved.relative_acceleration_rms = new Point2D()
    }

    if (msg.rcs !== undefined) {
      resolved.rcs = msg.rcs;
    }
    else {
      resolved.rcs = 0.0
    }

    if (msg.snr !== undefined) {
      resolved.snr = msg.snr;
    }
    else {
      resolved.snr = 0.0
    }

    if (msg.moving_status !== undefined) {
      resolved.moving_status = msg.moving_status;
    }
    else {
      resolved.moving_status = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.absolute_position !== undefined) {
      resolved.absolute_position = Point2D.Resolve(msg.absolute_position)
    }
    else {
      resolved.absolute_position = new Point2D()
    }

    if (msg.absolute_position_rms !== undefined) {
      resolved.absolute_position_rms = Point2D.Resolve(msg.absolute_position_rms)
    }
    else {
      resolved.absolute_position_rms = new Point2D()
    }

    if (msg.absolute_velocity !== undefined) {
      resolved.absolute_velocity = Point2D.Resolve(msg.absolute_velocity)
    }
    else {
      resolved.absolute_velocity = new Point2D()
    }

    if (msg.absolute_velocity_rms !== undefined) {
      resolved.absolute_velocity_rms = Point2D.Resolve(msg.absolute_velocity_rms)
    }
    else {
      resolved.absolute_velocity_rms = new Point2D()
    }

    if (msg.absolute_acceleration !== undefined) {
      resolved.absolute_acceleration = Point2D.Resolve(msg.absolute_acceleration)
    }
    else {
      resolved.absolute_acceleration = new Point2D()
    }

    if (msg.absolute_acceleration_rms !== undefined) {
      resolved.absolute_acceleration_rms = Point2D.Resolve(msg.absolute_acceleration_rms)
    }
    else {
      resolved.absolute_acceleration_rms = new Point2D()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = msg.orientation;
    }
    else {
      resolved.orientation = 0.0
    }

    if (msg.orient_rms !== undefined) {
      resolved.orient_rms = msg.orient_rms;
    }
    else {
      resolved.orient_rms = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.yaw_rms !== undefined) {
      resolved.yaw_rms = msg.yaw_rms;
    }
    else {
      resolved.yaw_rms = 0.0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.moving_frames_count !== undefined) {
      resolved.moving_frames_count = msg.moving_frames_count;
    }
    else {
      resolved.moving_frames_count = 0
    }

    if (msg.status !== undefined) {
      resolved.status = Status.Resolve(msg.status)
    }
    else {
      resolved.status = new Status()
    }

    if (msg.underpass_probability !== undefined) {
      resolved.underpass_probability = msg.underpass_probability;
    }
    else {
      resolved.underpass_probability = 0.0
    }

    if (msg.overpass_probability !== undefined) {
      resolved.overpass_probability = msg.overpass_probability;
    }
    else {
      resolved.overpass_probability = 0.0
    }

    if (msg.exist_probability !== undefined) {
      resolved.exist_probability = msg.exist_probability;
    }
    else {
      resolved.exist_probability = 0
    }

    if (msg.mov_property !== undefined) {
      resolved.mov_property = msg.mov_property;
    }
    else {
      resolved.mov_property = 0
    }

    if (msg.track_state !== undefined) {
      resolved.track_state = msg.track_state;
    }
    else {
      resolved.track_state = 0
    }

    if (msg.track_type !== undefined) {
      resolved.track_type = msg.track_type;
    }
    else {
      resolved.track_type = 0
    }

    return resolved;
    }
};

module.exports = RadarObstacle;
