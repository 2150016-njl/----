// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LaneLineCubicCurve = require('./LaneLineCubicCurve.js');
let Point3D = require('./Point3D.js');
let Point2D = require('./Point2D.js');
let EndPoints = require('./EndPoints.js');
let Time = require('./Time.js');

//-----------------------------------------------------------

class LaneLine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lane_type = null;
      this.lane_color = null;
      this.pos_type = null;
      this.curve_vehicle = null;
      this.curve_image = null;
      this.curve_abs = null;
      this.pts_vehicle = null;
      this.pts_image = null;
      this.pts_abs = null;
      this.image_end_point = null;
      this.pts_key = null;
      this.hd_lane_id = null;
      this.confidence = null;
      this.lane_quality = null;
      this.fused_lane_type = null;
      this.homography_mat = null;
      this.homography_mat_inv = null;
      this.lane_coordinate_type = null;
      this.use_type = null;
      this.create_time = null;
    }
    else {
      if (initObj.hasOwnProperty('lane_type')) {
        this.lane_type = initObj.lane_type
      }
      else {
        this.lane_type = 0;
      }
      if (initObj.hasOwnProperty('lane_color')) {
        this.lane_color = initObj.lane_color
      }
      else {
        this.lane_color = 0;
      }
      if (initObj.hasOwnProperty('pos_type')) {
        this.pos_type = initObj.pos_type
      }
      else {
        this.pos_type = 0;
      }
      if (initObj.hasOwnProperty('curve_vehicle')) {
        this.curve_vehicle = initObj.curve_vehicle
      }
      else {
        this.curve_vehicle = new LaneLineCubicCurve();
      }
      if (initObj.hasOwnProperty('curve_image')) {
        this.curve_image = initObj.curve_image
      }
      else {
        this.curve_image = new LaneLineCubicCurve();
      }
      if (initObj.hasOwnProperty('curve_abs')) {
        this.curve_abs = initObj.curve_abs
      }
      else {
        this.curve_abs = new LaneLineCubicCurve();
      }
      if (initObj.hasOwnProperty('pts_vehicle')) {
        this.pts_vehicle = initObj.pts_vehicle
      }
      else {
        this.pts_vehicle = [];
      }
      if (initObj.hasOwnProperty('pts_image')) {
        this.pts_image = initObj.pts_image
      }
      else {
        this.pts_image = [];
      }
      if (initObj.hasOwnProperty('pts_abs')) {
        this.pts_abs = initObj.pts_abs
      }
      else {
        this.pts_abs = [];
      }
      if (initObj.hasOwnProperty('image_end_point')) {
        this.image_end_point = initObj.image_end_point
      }
      else {
        this.image_end_point = new EndPoints();
      }
      if (initObj.hasOwnProperty('pts_key')) {
        this.pts_key = initObj.pts_key
      }
      else {
        this.pts_key = [];
      }
      if (initObj.hasOwnProperty('hd_lane_id')) {
        this.hd_lane_id = initObj.hd_lane_id
      }
      else {
        this.hd_lane_id = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('lane_quality')) {
        this.lane_quality = initObj.lane_quality
      }
      else {
        this.lane_quality = 0;
      }
      if (initObj.hasOwnProperty('fused_lane_type')) {
        this.fused_lane_type = initObj.fused_lane_type
      }
      else {
        this.fused_lane_type = 0;
      }
      if (initObj.hasOwnProperty('homography_mat')) {
        this.homography_mat = initObj.homography_mat
      }
      else {
        this.homography_mat = [];
      }
      if (initObj.hasOwnProperty('homography_mat_inv')) {
        this.homography_mat_inv = initObj.homography_mat_inv
      }
      else {
        this.homography_mat_inv = [];
      }
      if (initObj.hasOwnProperty('lane_coordinate_type')) {
        this.lane_coordinate_type = initObj.lane_coordinate_type
      }
      else {
        this.lane_coordinate_type = 0;
      }
      if (initObj.hasOwnProperty('use_type')) {
        this.use_type = initObj.use_type
      }
      else {
        this.use_type = 0;
      }
      if (initObj.hasOwnProperty('create_time')) {
        this.create_time = initObj.create_time
      }
      else {
        this.create_time = new Time();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneLine
    // Serialize message field [lane_type]
    bufferOffset = _serializer.int32(obj.lane_type, buffer, bufferOffset);
    // Serialize message field [lane_color]
    bufferOffset = _serializer.int32(obj.lane_color, buffer, bufferOffset);
    // Serialize message field [pos_type]
    bufferOffset = _serializer.int32(obj.pos_type, buffer, bufferOffset);
    // Serialize message field [curve_vehicle]
    bufferOffset = LaneLineCubicCurve.serialize(obj.curve_vehicle, buffer, bufferOffset);
    // Serialize message field [curve_image]
    bufferOffset = LaneLineCubicCurve.serialize(obj.curve_image, buffer, bufferOffset);
    // Serialize message field [curve_abs]
    bufferOffset = LaneLineCubicCurve.serialize(obj.curve_abs, buffer, bufferOffset);
    // Serialize message field [pts_vehicle]
    // Serialize the length for message field [pts_vehicle]
    bufferOffset = _serializer.uint32(obj.pts_vehicle.length, buffer, bufferOffset);
    obj.pts_vehicle.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pts_image]
    // Serialize the length for message field [pts_image]
    bufferOffset = _serializer.uint32(obj.pts_image.length, buffer, bufferOffset);
    obj.pts_image.forEach((val) => {
      bufferOffset = Point2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pts_abs]
    // Serialize the length for message field [pts_abs]
    bufferOffset = _serializer.uint32(obj.pts_abs.length, buffer, bufferOffset);
    obj.pts_abs.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [image_end_point]
    bufferOffset = EndPoints.serialize(obj.image_end_point, buffer, bufferOffset);
    // Serialize message field [pts_key]
    // Serialize the length for message field [pts_key]
    bufferOffset = _serializer.uint32(obj.pts_key.length, buffer, bufferOffset);
    obj.pts_key.forEach((val) => {
      bufferOffset = Point2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [hd_lane_id]
    bufferOffset = _serializer.uint8(obj.hd_lane_id, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [lane_quality]
    bufferOffset = _serializer.int32(obj.lane_quality, buffer, bufferOffset);
    // Serialize message field [fused_lane_type]
    bufferOffset = _serializer.int32(obj.fused_lane_type, buffer, bufferOffset);
    // Serialize message field [homography_mat]
    bufferOffset = _arraySerializer.float64(obj.homography_mat, buffer, bufferOffset, null);
    // Serialize message field [homography_mat_inv]
    bufferOffset = _arraySerializer.float64(obj.homography_mat_inv, buffer, bufferOffset, null);
    // Serialize message field [lane_coordinate_type]
    bufferOffset = _serializer.int32(obj.lane_coordinate_type, buffer, bufferOffset);
    // Serialize message field [use_type]
    bufferOffset = _serializer.int32(obj.use_type, buffer, bufferOffset);
    // Serialize message field [create_time]
    bufferOffset = Time.serialize(obj.create_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneLine
    let len;
    let data = new LaneLine(null);
    // Deserialize message field [lane_type]
    data.lane_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_color]
    data.lane_color = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos_type]
    data.pos_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [curve_vehicle]
    data.curve_vehicle = LaneLineCubicCurve.deserialize(buffer, bufferOffset);
    // Deserialize message field [curve_image]
    data.curve_image = LaneLineCubicCurve.deserialize(buffer, bufferOffset);
    // Deserialize message field [curve_abs]
    data.curve_abs = LaneLineCubicCurve.deserialize(buffer, bufferOffset);
    // Deserialize message field [pts_vehicle]
    // Deserialize array length for message field [pts_vehicle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_vehicle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_vehicle[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pts_image]
    // Deserialize array length for message field [pts_image]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_image = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_image[i] = Point2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pts_abs]
    // Deserialize array length for message field [pts_abs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_abs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_abs[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [image_end_point]
    data.image_end_point = EndPoints.deserialize(buffer, bufferOffset);
    // Deserialize message field [pts_key]
    // Deserialize array length for message field [pts_key]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts_key = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts_key[i] = Point2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [hd_lane_id]
    data.hd_lane_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lane_quality]
    data.lane_quality = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fused_lane_type]
    data.fused_lane_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [homography_mat]
    data.homography_mat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [homography_mat_inv]
    data.homography_mat_inv = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [lane_coordinate_type]
    data.lane_coordinate_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [use_type]
    data.use_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [create_time]
    data.create_time = Time.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pts_vehicle.length;
    length += 16 * object.pts_image.length;
    length += 24 * object.pts_abs.length;
    length += 16 * object.pts_key.length;
    length += 8 * object.homography_mat.length;
    length += 8 * object.homography_mat_inv.length;
    return length + 245;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/LaneLine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7984d3674f6a82d78f7d9d8a60ded1b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;
    int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;
    int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background
    LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数
    LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数
    LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数
    Point3D[] pts_vehicle # 车辆坐标系车道线点集
    Point2D[] pts_image # 图像坐标系车道线点集
    Point3D[] pts_abs # 世界坐标系车道线点集
    EndPoints   image_end_point     # 车道线上顶点与下顶点
    Point2D[] pts_key # 车道线关键点数组
    uint8   hd_lane_id     # 高精车道线id
    float64   confidence     # 车道线置信度
    int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;
    int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3
    float64[] homography_mat # 透视变换矩阵
    float64[] homography_mat_inv # 透视变换逆矩阵
    int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;
    int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;
    Time   create_time     # 车道线被识别的时间戳
    
    ================================================================================
    MSG: ros_interface/LaneLineCubicCurve
    float64   start_x     # 车道线起始位置
    float64   end_x     # 车道线结束位置
    float64   a     # 三次曲线系数
    float64   b     #  
    float64   c     #  
    float64   d     #  
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    ================================================================================
    MSG: ros_interface/EndPoints
    Point2D   start     # 车道线上顶点
    Point2D   end     # 车道线下顶点
    
    ================================================================================
    MSG: ros_interface/Time
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneLine(null);
    if (msg.lane_type !== undefined) {
      resolved.lane_type = msg.lane_type;
    }
    else {
      resolved.lane_type = 0
    }

    if (msg.lane_color !== undefined) {
      resolved.lane_color = msg.lane_color;
    }
    else {
      resolved.lane_color = 0
    }

    if (msg.pos_type !== undefined) {
      resolved.pos_type = msg.pos_type;
    }
    else {
      resolved.pos_type = 0
    }

    if (msg.curve_vehicle !== undefined) {
      resolved.curve_vehicle = LaneLineCubicCurve.Resolve(msg.curve_vehicle)
    }
    else {
      resolved.curve_vehicle = new LaneLineCubicCurve()
    }

    if (msg.curve_image !== undefined) {
      resolved.curve_image = LaneLineCubicCurve.Resolve(msg.curve_image)
    }
    else {
      resolved.curve_image = new LaneLineCubicCurve()
    }

    if (msg.curve_abs !== undefined) {
      resolved.curve_abs = LaneLineCubicCurve.Resolve(msg.curve_abs)
    }
    else {
      resolved.curve_abs = new LaneLineCubicCurve()
    }

    if (msg.pts_vehicle !== undefined) {
      resolved.pts_vehicle = new Array(msg.pts_vehicle.length);
      for (let i = 0; i < resolved.pts_vehicle.length; ++i) {
        resolved.pts_vehicle[i] = Point3D.Resolve(msg.pts_vehicle[i]);
      }
    }
    else {
      resolved.pts_vehicle = []
    }

    if (msg.pts_image !== undefined) {
      resolved.pts_image = new Array(msg.pts_image.length);
      for (let i = 0; i < resolved.pts_image.length; ++i) {
        resolved.pts_image[i] = Point2D.Resolve(msg.pts_image[i]);
      }
    }
    else {
      resolved.pts_image = []
    }

    if (msg.pts_abs !== undefined) {
      resolved.pts_abs = new Array(msg.pts_abs.length);
      for (let i = 0; i < resolved.pts_abs.length; ++i) {
        resolved.pts_abs[i] = Point3D.Resolve(msg.pts_abs[i]);
      }
    }
    else {
      resolved.pts_abs = []
    }

    if (msg.image_end_point !== undefined) {
      resolved.image_end_point = EndPoints.Resolve(msg.image_end_point)
    }
    else {
      resolved.image_end_point = new EndPoints()
    }

    if (msg.pts_key !== undefined) {
      resolved.pts_key = new Array(msg.pts_key.length);
      for (let i = 0; i < resolved.pts_key.length; ++i) {
        resolved.pts_key[i] = Point2D.Resolve(msg.pts_key[i]);
      }
    }
    else {
      resolved.pts_key = []
    }

    if (msg.hd_lane_id !== undefined) {
      resolved.hd_lane_id = msg.hd_lane_id;
    }
    else {
      resolved.hd_lane_id = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.lane_quality !== undefined) {
      resolved.lane_quality = msg.lane_quality;
    }
    else {
      resolved.lane_quality = 0
    }

    if (msg.fused_lane_type !== undefined) {
      resolved.fused_lane_type = msg.fused_lane_type;
    }
    else {
      resolved.fused_lane_type = 0
    }

    if (msg.homography_mat !== undefined) {
      resolved.homography_mat = msg.homography_mat;
    }
    else {
      resolved.homography_mat = []
    }

    if (msg.homography_mat_inv !== undefined) {
      resolved.homography_mat_inv = msg.homography_mat_inv;
    }
    else {
      resolved.homography_mat_inv = []
    }

    if (msg.lane_coordinate_type !== undefined) {
      resolved.lane_coordinate_type = msg.lane_coordinate_type;
    }
    else {
      resolved.lane_coordinate_type = 0
    }

    if (msg.use_type !== undefined) {
      resolved.use_type = msg.use_type;
    }
    else {
      resolved.use_type = 0
    }

    if (msg.create_time !== undefined) {
      resolved.create_time = Time.Resolve(msg.create_time)
    }
    else {
      resolved.create_time = new Time()
    }

    return resolved;
    }
};

module.exports = LaneLine;
