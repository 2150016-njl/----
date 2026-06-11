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
let Polygon3D = require('./Polygon3D.js');
let ParkingStopper = require('./ParkingStopper.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ParkingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parking_space_id = null;
      this.parking_type = null;
      this.confidence = null;
      this.center_point_of_parking = null;
      this.theta = null;
      this.width = null;
      this.length = null;
      this.yaw_offset = null;
      this.polygon = null;
      this.sensor_id = null;
      this.is_lane_width_valid = null;
      this.lane_width = null;
      this.parking_stoppers = null;
      this.parking_direction_type = null;
      this.parking_source_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parking_space_id')) {
        this.parking_space_id = initObj.parking_space_id
      }
      else {
        this.parking_space_id = 0;
      }
      if (initObj.hasOwnProperty('parking_type')) {
        this.parking_type = initObj.parking_type
      }
      else {
        this.parking_type = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('center_point_of_parking')) {
        this.center_point_of_parking = initObj.center_point_of_parking
      }
      else {
        this.center_point_of_parking = new Point3D();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
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
      if (initObj.hasOwnProperty('yaw_offset')) {
        this.yaw_offset = initObj.yaw_offset
      }
      else {
        this.yaw_offset = 0.0;
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new Polygon3D();
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('is_lane_width_valid')) {
        this.is_lane_width_valid = initObj.is_lane_width_valid
      }
      else {
        this.is_lane_width_valid = false;
      }
      if (initObj.hasOwnProperty('lane_width')) {
        this.lane_width = initObj.lane_width
      }
      else {
        this.lane_width = 0.0;
      }
      if (initObj.hasOwnProperty('parking_stoppers')) {
        this.parking_stoppers = initObj.parking_stoppers
      }
      else {
        this.parking_stoppers = [];
      }
      if (initObj.hasOwnProperty('parking_direction_type')) {
        this.parking_direction_type = initObj.parking_direction_type
      }
      else {
        this.parking_direction_type = 0;
      }
      if (initObj.hasOwnProperty('parking_source_type')) {
        this.parking_source_type = initObj.parking_source_type
      }
      else {
        this.parking_source_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parking_space_id]
    bufferOffset = _serializer.int32(obj.parking_space_id, buffer, bufferOffset);
    // Serialize message field [parking_type]
    bufferOffset = _serializer.int32(obj.parking_type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [center_point_of_parking]
    bufferOffset = Point3D.serialize(obj.center_point_of_parking, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [yaw_offset]
    bufferOffset = _serializer.float64(obj.yaw_offset, buffer, bufferOffset);
    // Serialize message field [polygon]
    bufferOffset = Polygon3D.serialize(obj.polygon, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int32(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [is_lane_width_valid]
    bufferOffset = _serializer.bool(obj.is_lane_width_valid, buffer, bufferOffset);
    // Serialize message field [lane_width]
    bufferOffset = _serializer.float64(obj.lane_width, buffer, bufferOffset);
    // Serialize message field [parking_stoppers]
    // Serialize the length for message field [parking_stoppers]
    bufferOffset = _serializer.uint32(obj.parking_stoppers.length, buffer, bufferOffset);
    obj.parking_stoppers.forEach((val) => {
      bufferOffset = ParkingStopper.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [parking_direction_type]
    bufferOffset = _serializer.int32(obj.parking_direction_type, buffer, bufferOffset);
    // Serialize message field [parking_source_type]
    bufferOffset = _serializer.int32(obj.parking_source_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingInfo
    let len;
    let data = new ParkingInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_space_id]
    data.parking_space_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_type]
    data.parking_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [center_point_of_parking]
    data.center_point_of_parking = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_offset]
    data.yaw_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [polygon]
    data.polygon = Polygon3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_lane_width_valid]
    data.is_lane_width_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lane_width]
    data.lane_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [parking_stoppers]
    // Deserialize array length for message field [parking_stoppers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_stoppers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_stoppers[i] = ParkingStopper.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [parking_direction_type]
    data.parking_direction_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_source_type]
    data.parking_source_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Polygon3D.getMessageSize(object.polygon);
    object.parking_stoppers.forEach((val) => {
      length += ParkingStopper.getMessageSize(val);
    });
    return length + 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ParkingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c7785e504d091d658cd31aca35c7f91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is included in header
    int32   parking_space_id     # 停车位id
    int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//水平泊车 PARKING_TYPE=2//垂直泊车 PARKING_TYPE=3//倾斜泊车
    float64   confidence     # 车位置信度
    Point3D   center_point_of_parking     # 世界坐标系下停车位中心点
    float64   theta     # 世界坐标系下的夹角（单位rad），车位出口与正东方向夹角
    float64   width     # 停车位宽（单位m）
    float64   length     # 停车位长单位m）
    float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角,(单位m）
    Polygon3D   polygon     # 世界坐标系下的车位多边形
    int32   sensor_id     # 车位数据来自相机id 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机 8-相机融合
    bool   is_lane_width_valid     # 车道宽度是否有效
    float64   lane_width     # 泊车可用(双)车道宽度
    ParkingStopper[] parking_stoppers # 车位内部的限位器数组
    int32   parking_direction_type     #   DIR_INVALID = 0,   LEFT = 1,   UP = 2,   RIGHT = 3,   DOWN = 4,
    int32   parking_source_type     # 0-线车位， 1-空间车位， 2-融合车位
    
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
    
    ================================================================================
    MSG: ros_interface/Polygon3D
    int32   coordinate_system     # 坐标系
    Point3D[] points # 三维点集
    
    ================================================================================
    MSG: ros_interface/ParkingStopper
    Header   header     # timestamp is  included in header
    Point3D   center_point_vehicle     # 车辆坐标系下限位器中心点坐标
    Point3D   center_point_abs     # 绝对坐标系下限位器中心点坐标
    Point3D[] stopper_points_vehicle # 车辆坐标系下限位器关键点
    Point3D[] stopper_points_abs # 绝对坐标系下限位器关键点
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parking_space_id !== undefined) {
      resolved.parking_space_id = msg.parking_space_id;
    }
    else {
      resolved.parking_space_id = 0
    }

    if (msg.parking_type !== undefined) {
      resolved.parking_type = msg.parking_type;
    }
    else {
      resolved.parking_type = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.center_point_of_parking !== undefined) {
      resolved.center_point_of_parking = Point3D.Resolve(msg.center_point_of_parking)
    }
    else {
      resolved.center_point_of_parking = new Point3D()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
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

    if (msg.yaw_offset !== undefined) {
      resolved.yaw_offset = msg.yaw_offset;
    }
    else {
      resolved.yaw_offset = 0.0
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = Polygon3D.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new Polygon3D()
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.is_lane_width_valid !== undefined) {
      resolved.is_lane_width_valid = msg.is_lane_width_valid;
    }
    else {
      resolved.is_lane_width_valid = false
    }

    if (msg.lane_width !== undefined) {
      resolved.lane_width = msg.lane_width;
    }
    else {
      resolved.lane_width = 0.0
    }

    if (msg.parking_stoppers !== undefined) {
      resolved.parking_stoppers = new Array(msg.parking_stoppers.length);
      for (let i = 0; i < resolved.parking_stoppers.length; ++i) {
        resolved.parking_stoppers[i] = ParkingStopper.Resolve(msg.parking_stoppers[i]);
      }
    }
    else {
      resolved.parking_stoppers = []
    }

    if (msg.parking_direction_type !== undefined) {
      resolved.parking_direction_type = msg.parking_direction_type;
    }
    else {
      resolved.parking_direction_type = 0
    }

    if (msg.parking_source_type !== undefined) {
      resolved.parking_source_type = msg.parking_source_type;
    }
    else {
      resolved.parking_source_type = 0
    }

    return resolved;
    }
};

module.exports = ParkingInfo;
