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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Ins {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_valid = null;
      this.latitude = null;
      this.longitude = null;
      this.elevation = null;
      this.utm_position = null;
      this.utm_zone_mumber = null;
      this.utm_zone_char = null;
      this.attitude = null;
      this.linear_velocity = null;
      this.sd_position = null;
      this.sd_attitude = null;
      this.sd_velocity = null;
      this.cep68 = null;
      this.cep95 = null;
      this.second = null;
      this.sat_use_num = null;
      this.sat_in_view_num = null;
      this.solution_status = null;
      this.position_type = null;
      this.p_dop = null;
      this.h_dop = null;
      this.v_dop = null;
      this.attitude_dual = null;
      this.sd_angle_dual = null;
      this.base_line_length_dual = null;
      this.solution_status_dual = null;
      this.position_type_dual = null;
      this.solution_source_dual = null;
      this.aoc = null;
      this.rtk_baseline = null;
      this.angular_velocity = null;
      this.acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = 0.0;
      }
      if (initObj.hasOwnProperty('utm_position')) {
        this.utm_position = initObj.utm_position
      }
      else {
        this.utm_position = new Point3D();
      }
      if (initObj.hasOwnProperty('utm_zone_mumber')) {
        this.utm_zone_mumber = initObj.utm_zone_mumber
      }
      else {
        this.utm_zone_mumber = 0;
      }
      if (initObj.hasOwnProperty('utm_zone_char')) {
        this.utm_zone_char = initObj.utm_zone_char
      }
      else {
        this.utm_zone_char = 0;
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('sd_position')) {
        this.sd_position = initObj.sd_position
      }
      else {
        this.sd_position = new Point3D();
      }
      if (initObj.hasOwnProperty('sd_attitude')) {
        this.sd_attitude = initObj.sd_attitude
      }
      else {
        this.sd_attitude = new Point3D();
      }
      if (initObj.hasOwnProperty('sd_velocity')) {
        this.sd_velocity = initObj.sd_velocity
      }
      else {
        this.sd_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('cep68')) {
        this.cep68 = initObj.cep68
      }
      else {
        this.cep68 = 0.0;
      }
      if (initObj.hasOwnProperty('cep95')) {
        this.cep95 = initObj.cep95
      }
      else {
        this.cep95 = 0.0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0.0;
      }
      if (initObj.hasOwnProperty('sat_use_num')) {
        this.sat_use_num = initObj.sat_use_num
      }
      else {
        this.sat_use_num = 0;
      }
      if (initObj.hasOwnProperty('sat_in_view_num')) {
        this.sat_in_view_num = initObj.sat_in_view_num
      }
      else {
        this.sat_in_view_num = 0;
      }
      if (initObj.hasOwnProperty('solution_status')) {
        this.solution_status = initObj.solution_status
      }
      else {
        this.solution_status = 0;
      }
      if (initObj.hasOwnProperty('position_type')) {
        this.position_type = initObj.position_type
      }
      else {
        this.position_type = 0;
      }
      if (initObj.hasOwnProperty('p_dop')) {
        this.p_dop = initObj.p_dop
      }
      else {
        this.p_dop = 0.0;
      }
      if (initObj.hasOwnProperty('h_dop')) {
        this.h_dop = initObj.h_dop
      }
      else {
        this.h_dop = 0.0;
      }
      if (initObj.hasOwnProperty('v_dop')) {
        this.v_dop = initObj.v_dop
      }
      else {
        this.v_dop = 0.0;
      }
      if (initObj.hasOwnProperty('attitude_dual')) {
        this.attitude_dual = initObj.attitude_dual
      }
      else {
        this.attitude_dual = new Point3D();
      }
      if (initObj.hasOwnProperty('sd_angle_dual')) {
        this.sd_angle_dual = initObj.sd_angle_dual
      }
      else {
        this.sd_angle_dual = new Point3D();
      }
      if (initObj.hasOwnProperty('base_line_length_dual')) {
        this.base_line_length_dual = initObj.base_line_length_dual
      }
      else {
        this.base_line_length_dual = 0.0;
      }
      if (initObj.hasOwnProperty('solution_status_dual')) {
        this.solution_status_dual = initObj.solution_status_dual
      }
      else {
        this.solution_status_dual = 0;
      }
      if (initObj.hasOwnProperty('position_type_dual')) {
        this.position_type_dual = initObj.position_type_dual
      }
      else {
        this.position_type_dual = 0;
      }
      if (initObj.hasOwnProperty('solution_source_dual')) {
        this.solution_source_dual = initObj.solution_source_dual
      }
      else {
        this.solution_source_dual = 0;
      }
      if (initObj.hasOwnProperty('aoc')) {
        this.aoc = initObj.aoc
      }
      else {
        this.aoc = 0;
      }
      if (initObj.hasOwnProperty('rtk_baseline')) {
        this.rtk_baseline = initObj.rtk_baseline
      }
      else {
        this.rtk_baseline = 0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ins
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.float64(obj.elevation, buffer, bufferOffset);
    // Serialize message field [utm_position]
    bufferOffset = Point3D.serialize(obj.utm_position, buffer, bufferOffset);
    // Serialize message field [utm_zone_mumber]
    bufferOffset = _serializer.int32(obj.utm_zone_mumber, buffer, bufferOffset);
    // Serialize message field [utm_zone_char]
    bufferOffset = _serializer.uint8(obj.utm_zone_char, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = Point3D.serialize(obj.attitude, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = Point3D.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [sd_position]
    bufferOffset = Point3D.serialize(obj.sd_position, buffer, bufferOffset);
    // Serialize message field [sd_attitude]
    bufferOffset = Point3D.serialize(obj.sd_attitude, buffer, bufferOffset);
    // Serialize message field [sd_velocity]
    bufferOffset = Point3D.serialize(obj.sd_velocity, buffer, bufferOffset);
    // Serialize message field [cep68]
    bufferOffset = _serializer.float64(obj.cep68, buffer, bufferOffset);
    // Serialize message field [cep95]
    bufferOffset = _serializer.float64(obj.cep95, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.float64(obj.second, buffer, bufferOffset);
    // Serialize message field [sat_use_num]
    bufferOffset = _serializer.int32(obj.sat_use_num, buffer, bufferOffset);
    // Serialize message field [sat_in_view_num]
    bufferOffset = _serializer.int32(obj.sat_in_view_num, buffer, bufferOffset);
    // Serialize message field [solution_status]
    bufferOffset = _serializer.uint16(obj.solution_status, buffer, bufferOffset);
    // Serialize message field [position_type]
    bufferOffset = _serializer.uint16(obj.position_type, buffer, bufferOffset);
    // Serialize message field [p_dop]
    bufferOffset = _serializer.float64(obj.p_dop, buffer, bufferOffset);
    // Serialize message field [h_dop]
    bufferOffset = _serializer.float64(obj.h_dop, buffer, bufferOffset);
    // Serialize message field [v_dop]
    bufferOffset = _serializer.float64(obj.v_dop, buffer, bufferOffset);
    // Serialize message field [attitude_dual]
    bufferOffset = Point3D.serialize(obj.attitude_dual, buffer, bufferOffset);
    // Serialize message field [sd_angle_dual]
    bufferOffset = Point3D.serialize(obj.sd_angle_dual, buffer, bufferOffset);
    // Serialize message field [base_line_length_dual]
    bufferOffset = _serializer.float64(obj.base_line_length_dual, buffer, bufferOffset);
    // Serialize message field [solution_status_dual]
    bufferOffset = _serializer.int32(obj.solution_status_dual, buffer, bufferOffset);
    // Serialize message field [position_type_dual]
    bufferOffset = _serializer.int32(obj.position_type_dual, buffer, bufferOffset);
    // Serialize message field [solution_source_dual]
    bufferOffset = _serializer.int32(obj.solution_source_dual, buffer, bufferOffset);
    // Serialize message field [aoc]
    bufferOffset = _serializer.uint32(obj.aoc, buffer, bufferOffset);
    // Serialize message field [rtk_baseline]
    bufferOffset = _serializer.uint32(obj.rtk_baseline, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = Point3D.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = Point3D.serialize(obj.acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ins
    let len;
    let data = new Ins(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_position]
    data.utm_position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [utm_zone_mumber]
    data.utm_zone_mumber = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [utm_zone_char]
    data.utm_zone_char = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sd_position]
    data.sd_position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sd_attitude]
    data.sd_attitude = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sd_velocity]
    data.sd_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [cep68]
    data.cep68 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cep95]
    data.cep95 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sat_use_num]
    data.sat_use_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sat_in_view_num]
    data.sat_in_view_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [solution_status]
    data.solution_status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position_type]
    data.position_type = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [p_dop]
    data.p_dop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [h_dop]
    data.h_dop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_dop]
    data.v_dop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [attitude_dual]
    data.attitude_dual = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sd_angle_dual]
    data.sd_angle_dual = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_line_length_dual]
    data.base_line_length_dual = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [solution_status_dual]
    data.solution_status_dual = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_type_dual]
    data.position_type_dual = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [solution_source_dual]
    data.solution_source_dual = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [aoc]
    data.aoc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rtk_baseline]
    data.rtk_baseline = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 358;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Ins';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a208bce72b0cc6abb54188331564ad26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 头部信息
    bool   is_valid     # 数据有效性标志位
    float64   latitude     # 纬度信息
    float64   longitude     # 经度信息
    float64   elevation     # 海拔信息
    Point3D   utm_position     # UTM坐标位置
    int32   utm_zone_mumber     # UTM区号
    uint8   utm_zone_char     # UTM区号
    Point3D   attitude     # 三轴姿态
    Point3D   linear_velocity     # 线速度信息
    Point3D   sd_position     # 位置标准差
    Point3D   sd_attitude     # 姿态标准差
    Point3D   sd_velocity     # 速度标准差
    float64   cep68     # cep68数据位
    float64   cep95     # cep95数据位
    float64   second     # 时间
    int32   sat_use_num     # 使用卫星数
    int32   sat_in_view_num     # 可见卫星数
    uint16   solution_status     # 求解状态
    uint16   position_type     # 定位状态
    float64   p_dop     # pDop数据位
    float64   h_dop     # hDop数据位
    float64   v_dop     # vDop数据位
    Point3D   attitude_dual     # 双天线姿态
    Point3D   sd_angle_dual     # 双天线角度标准差
    float64   base_line_length_dual     # 双天线距离
    int32   solution_status_dual     # 双天线求解状态
    int32   position_type_dual     # 双天线定位状态
    int32   solution_source_dual     # 双天线求解源
    uint32   aoc     # Aoc数据位
    uint32   rtk_baseline     # RTK基线信息
    Point3D   angular_velocity     # 角速度信息
    Point3D   acceleration     # 加速度信息
    
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
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ins(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = 0.0
    }

    if (msg.utm_position !== undefined) {
      resolved.utm_position = Point3D.Resolve(msg.utm_position)
    }
    else {
      resolved.utm_position = new Point3D()
    }

    if (msg.utm_zone_mumber !== undefined) {
      resolved.utm_zone_mumber = msg.utm_zone_mumber;
    }
    else {
      resolved.utm_zone_mumber = 0
    }

    if (msg.utm_zone_char !== undefined) {
      resolved.utm_zone_char = msg.utm_zone_char;
    }
    else {
      resolved.utm_zone_char = 0
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = Point3D.Resolve(msg.attitude)
    }
    else {
      resolved.attitude = new Point3D()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = Point3D.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new Point3D()
    }

    if (msg.sd_position !== undefined) {
      resolved.sd_position = Point3D.Resolve(msg.sd_position)
    }
    else {
      resolved.sd_position = new Point3D()
    }

    if (msg.sd_attitude !== undefined) {
      resolved.sd_attitude = Point3D.Resolve(msg.sd_attitude)
    }
    else {
      resolved.sd_attitude = new Point3D()
    }

    if (msg.sd_velocity !== undefined) {
      resolved.sd_velocity = Point3D.Resolve(msg.sd_velocity)
    }
    else {
      resolved.sd_velocity = new Point3D()
    }

    if (msg.cep68 !== undefined) {
      resolved.cep68 = msg.cep68;
    }
    else {
      resolved.cep68 = 0.0
    }

    if (msg.cep95 !== undefined) {
      resolved.cep95 = msg.cep95;
    }
    else {
      resolved.cep95 = 0.0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0.0
    }

    if (msg.sat_use_num !== undefined) {
      resolved.sat_use_num = msg.sat_use_num;
    }
    else {
      resolved.sat_use_num = 0
    }

    if (msg.sat_in_view_num !== undefined) {
      resolved.sat_in_view_num = msg.sat_in_view_num;
    }
    else {
      resolved.sat_in_view_num = 0
    }

    if (msg.solution_status !== undefined) {
      resolved.solution_status = msg.solution_status;
    }
    else {
      resolved.solution_status = 0
    }

    if (msg.position_type !== undefined) {
      resolved.position_type = msg.position_type;
    }
    else {
      resolved.position_type = 0
    }

    if (msg.p_dop !== undefined) {
      resolved.p_dop = msg.p_dop;
    }
    else {
      resolved.p_dop = 0.0
    }

    if (msg.h_dop !== undefined) {
      resolved.h_dop = msg.h_dop;
    }
    else {
      resolved.h_dop = 0.0
    }

    if (msg.v_dop !== undefined) {
      resolved.v_dop = msg.v_dop;
    }
    else {
      resolved.v_dop = 0.0
    }

    if (msg.attitude_dual !== undefined) {
      resolved.attitude_dual = Point3D.Resolve(msg.attitude_dual)
    }
    else {
      resolved.attitude_dual = new Point3D()
    }

    if (msg.sd_angle_dual !== undefined) {
      resolved.sd_angle_dual = Point3D.Resolve(msg.sd_angle_dual)
    }
    else {
      resolved.sd_angle_dual = new Point3D()
    }

    if (msg.base_line_length_dual !== undefined) {
      resolved.base_line_length_dual = msg.base_line_length_dual;
    }
    else {
      resolved.base_line_length_dual = 0.0
    }

    if (msg.solution_status_dual !== undefined) {
      resolved.solution_status_dual = msg.solution_status_dual;
    }
    else {
      resolved.solution_status_dual = 0
    }

    if (msg.position_type_dual !== undefined) {
      resolved.position_type_dual = msg.position_type_dual;
    }
    else {
      resolved.position_type_dual = 0
    }

    if (msg.solution_source_dual !== undefined) {
      resolved.solution_source_dual = msg.solution_source_dual;
    }
    else {
      resolved.solution_source_dual = 0
    }

    if (msg.aoc !== undefined) {
      resolved.aoc = msg.aoc;
    }
    else {
      resolved.aoc = 0
    }

    if (msg.rtk_baseline !== undefined) {
      resolved.rtk_baseline = msg.rtk_baseline;
    }
    else {
      resolved.rtk_baseline = 0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Point3D.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Point3D()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = Point3D.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new Point3D()
    }

    return resolved;
    }
};

module.exports = Ins;
