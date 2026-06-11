// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Time = require('./Time.js');
let Point3D = require('./Point3D.js');
let ImageKeyPoint = require('./ImageKeyPoint.js');
let Point2D = require('./Point2D.js');
let BBox2D = require('./BBox2D.js');
let SensorCalibrator = require('./SensorCalibrator.js');

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.id = null;
      this.existence_prob = null;
      this.create_time = null;
      this.last_updated_time = null;
      this.center_pos_vehicle = null;
      this.center_pos_abs = null;
      this.theta_vehicle = null;
      this.theta_abs = null;
      this.velocity_vehicle = null;
      this.velocity_abs = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.image_key_points = null;
      this.polygon_point_abs = null;
      this.polygon_point_vehicle = null;
      this.tracking_time = null;
      this.type = null;
      this.confidence = null;
      this.confidence_type = null;
      this.drops = null;
      this.acceleration_vehicle = null;
      this.acceleration_abs = null;
      this.anchor_point_image = null;
      this.anchor_point_vehicle = null;
      this.anchor_point_abs = null;
      this.bbox2d = null;
      this.bbox2d_rear = null;
      this.sub_type = null;
      this.height_above_ground = null;
      this.position_abs_covariance = null;
      this.velocity_abs_covariance = null;
      this.acceleration_abs_covariance = null;
      this.theta_abs_covariance = null;
      this.position_vehicle_covariance = null;
      this.velocity_vehicle_covariance = null;
      this.acceleration_vehicle_covariance = null;
      this.theta_vehicle_covariance = null;
      this.sensor_calibrator = null;
      this.cipv_flag = null;
      this.lane_position = null;
      this.pihp_percentage = null;
      this.blinker_flag = null;
      this.fusion_type = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = new Time();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('existence_prob')) {
        this.existence_prob = initObj.existence_prob
      }
      else {
        this.existence_prob = 0.0;
      }
      if (initObj.hasOwnProperty('create_time')) {
        this.create_time = initObj.create_time
      }
      else {
        this.create_time = new Time();
      }
      if (initObj.hasOwnProperty('last_updated_time')) {
        this.last_updated_time = initObj.last_updated_time
      }
      else {
        this.last_updated_time = new Time();
      }
      if (initObj.hasOwnProperty('center_pos_vehicle')) {
        this.center_pos_vehicle = initObj.center_pos_vehicle
      }
      else {
        this.center_pos_vehicle = new Point3D();
      }
      if (initObj.hasOwnProperty('center_pos_abs')) {
        this.center_pos_abs = initObj.center_pos_abs
      }
      else {
        this.center_pos_abs = new Point3D();
      }
      if (initObj.hasOwnProperty('theta_vehicle')) {
        this.theta_vehicle = initObj.theta_vehicle
      }
      else {
        this.theta_vehicle = 0.0;
      }
      if (initObj.hasOwnProperty('theta_abs')) {
        this.theta_abs = initObj.theta_abs
      }
      else {
        this.theta_abs = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_vehicle')) {
        this.velocity_vehicle = initObj.velocity_vehicle
      }
      else {
        this.velocity_vehicle = new Point3D();
      }
      if (initObj.hasOwnProperty('velocity_abs')) {
        this.velocity_abs = initObj.velocity_abs
      }
      else {
        this.velocity_abs = new Point3D();
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
      if (initObj.hasOwnProperty('image_key_points')) {
        this.image_key_points = initObj.image_key_points
      }
      else {
        this.image_key_points = [];
      }
      if (initObj.hasOwnProperty('polygon_point_abs')) {
        this.polygon_point_abs = initObj.polygon_point_abs
      }
      else {
        this.polygon_point_abs = [];
      }
      if (initObj.hasOwnProperty('polygon_point_vehicle')) {
        this.polygon_point_vehicle = initObj.polygon_point_vehicle
      }
      else {
        this.polygon_point_vehicle = [];
      }
      if (initObj.hasOwnProperty('tracking_time')) {
        this.tracking_time = initObj.tracking_time
      }
      else {
        this.tracking_time = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('confidence_type')) {
        this.confidence_type = initObj.confidence_type
      }
      else {
        this.confidence_type = 0;
      }
      if (initObj.hasOwnProperty('drops')) {
        this.drops = initObj.drops
      }
      else {
        this.drops = [];
      }
      if (initObj.hasOwnProperty('acceleration_vehicle')) {
        this.acceleration_vehicle = initObj.acceleration_vehicle
      }
      else {
        this.acceleration_vehicle = new Point3D();
      }
      if (initObj.hasOwnProperty('acceleration_abs')) {
        this.acceleration_abs = initObj.acceleration_abs
      }
      else {
        this.acceleration_abs = new Point3D();
      }
      if (initObj.hasOwnProperty('anchor_point_image')) {
        this.anchor_point_image = initObj.anchor_point_image
      }
      else {
        this.anchor_point_image = new Point2D();
      }
      if (initObj.hasOwnProperty('anchor_point_vehicle')) {
        this.anchor_point_vehicle = initObj.anchor_point_vehicle
      }
      else {
        this.anchor_point_vehicle = new Point3D();
      }
      if (initObj.hasOwnProperty('anchor_point_abs')) {
        this.anchor_point_abs = initObj.anchor_point_abs
      }
      else {
        this.anchor_point_abs = new Point3D();
      }
      if (initObj.hasOwnProperty('bbox2d')) {
        this.bbox2d = initObj.bbox2d
      }
      else {
        this.bbox2d = new BBox2D();
      }
      if (initObj.hasOwnProperty('bbox2d_rear')) {
        this.bbox2d_rear = initObj.bbox2d_rear
      }
      else {
        this.bbox2d_rear = new BBox2D();
      }
      if (initObj.hasOwnProperty('sub_type')) {
        this.sub_type = initObj.sub_type
      }
      else {
        this.sub_type = 0;
      }
      if (initObj.hasOwnProperty('height_above_ground')) {
        this.height_above_ground = initObj.height_above_ground
      }
      else {
        this.height_above_ground = 0.0;
      }
      if (initObj.hasOwnProperty('position_abs_covariance')) {
        this.position_abs_covariance = initObj.position_abs_covariance
      }
      else {
        this.position_abs_covariance = [];
      }
      if (initObj.hasOwnProperty('velocity_abs_covariance')) {
        this.velocity_abs_covariance = initObj.velocity_abs_covariance
      }
      else {
        this.velocity_abs_covariance = [];
      }
      if (initObj.hasOwnProperty('acceleration_abs_covariance')) {
        this.acceleration_abs_covariance = initObj.acceleration_abs_covariance
      }
      else {
        this.acceleration_abs_covariance = [];
      }
      if (initObj.hasOwnProperty('theta_abs_covariance')) {
        this.theta_abs_covariance = initObj.theta_abs_covariance
      }
      else {
        this.theta_abs_covariance = 0.0;
      }
      if (initObj.hasOwnProperty('position_vehicle_covariance')) {
        this.position_vehicle_covariance = initObj.position_vehicle_covariance
      }
      else {
        this.position_vehicle_covariance = [];
      }
      if (initObj.hasOwnProperty('velocity_vehicle_covariance')) {
        this.velocity_vehicle_covariance = initObj.velocity_vehicle_covariance
      }
      else {
        this.velocity_vehicle_covariance = [];
      }
      if (initObj.hasOwnProperty('acceleration_vehicle_covariance')) {
        this.acceleration_vehicle_covariance = initObj.acceleration_vehicle_covariance
      }
      else {
        this.acceleration_vehicle_covariance = [];
      }
      if (initObj.hasOwnProperty('theta_vehicle_covariance')) {
        this.theta_vehicle_covariance = initObj.theta_vehicle_covariance
      }
      else {
        this.theta_vehicle_covariance = 0.0;
      }
      if (initObj.hasOwnProperty('sensor_calibrator')) {
        this.sensor_calibrator = initObj.sensor_calibrator
      }
      else {
        this.sensor_calibrator = new SensorCalibrator();
      }
      if (initObj.hasOwnProperty('cipv_flag')) {
        this.cipv_flag = initObj.cipv_flag
      }
      else {
        this.cipv_flag = 0;
      }
      if (initObj.hasOwnProperty('lane_position')) {
        this.lane_position = initObj.lane_position
      }
      else {
        this.lane_position = 0;
      }
      if (initObj.hasOwnProperty('pihp_percentage')) {
        this.pihp_percentage = initObj.pihp_percentage
      }
      else {
        this.pihp_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('blinker_flag')) {
        this.blinker_flag = initObj.blinker_flag
      }
      else {
        this.blinker_flag = 0;
      }
      if (initObj.hasOwnProperty('fusion_type')) {
        this.fusion_type = initObj.fusion_type
      }
      else {
        this.fusion_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [timestamp]
    bufferOffset = Time.serialize(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [existence_prob]
    bufferOffset = _serializer.float64(obj.existence_prob, buffer, bufferOffset);
    // Serialize message field [create_time]
    bufferOffset = Time.serialize(obj.create_time, buffer, bufferOffset);
    // Serialize message field [last_updated_time]
    bufferOffset = Time.serialize(obj.last_updated_time, buffer, bufferOffset);
    // Serialize message field [center_pos_vehicle]
    bufferOffset = Point3D.serialize(obj.center_pos_vehicle, buffer, bufferOffset);
    // Serialize message field [center_pos_abs]
    bufferOffset = Point3D.serialize(obj.center_pos_abs, buffer, bufferOffset);
    // Serialize message field [theta_vehicle]
    bufferOffset = _serializer.float64(obj.theta_vehicle, buffer, bufferOffset);
    // Serialize message field [theta_abs]
    bufferOffset = _serializer.float64(obj.theta_abs, buffer, bufferOffset);
    // Serialize message field [velocity_vehicle]
    bufferOffset = Point3D.serialize(obj.velocity_vehicle, buffer, bufferOffset);
    // Serialize message field [velocity_abs]
    bufferOffset = Point3D.serialize(obj.velocity_abs, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [image_key_points]
    // Serialize the length for message field [image_key_points]
    bufferOffset = _serializer.uint32(obj.image_key_points.length, buffer, bufferOffset);
    obj.image_key_points.forEach((val) => {
      bufferOffset = ImageKeyPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polygon_point_abs]
    // Serialize the length for message field [polygon_point_abs]
    bufferOffset = _serializer.uint32(obj.polygon_point_abs.length, buffer, bufferOffset);
    obj.polygon_point_abs.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polygon_point_vehicle]
    // Serialize the length for message field [polygon_point_vehicle]
    bufferOffset = _serializer.uint32(obj.polygon_point_vehicle.length, buffer, bufferOffset);
    obj.polygon_point_vehicle.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float64(obj.tracking_time, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [confidence_type]
    bufferOffset = _serializer.int32(obj.confidence_type, buffer, bufferOffset);
    // Serialize message field [drops]
    // Serialize the length for message field [drops]
    bufferOffset = _serializer.uint32(obj.drops.length, buffer, bufferOffset);
    obj.drops.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [acceleration_vehicle]
    bufferOffset = Point3D.serialize(obj.acceleration_vehicle, buffer, bufferOffset);
    // Serialize message field [acceleration_abs]
    bufferOffset = Point3D.serialize(obj.acceleration_abs, buffer, bufferOffset);
    // Serialize message field [anchor_point_image]
    bufferOffset = Point2D.serialize(obj.anchor_point_image, buffer, bufferOffset);
    // Serialize message field [anchor_point_vehicle]
    bufferOffset = Point3D.serialize(obj.anchor_point_vehicle, buffer, bufferOffset);
    // Serialize message field [anchor_point_abs]
    bufferOffset = Point3D.serialize(obj.anchor_point_abs, buffer, bufferOffset);
    // Serialize message field [bbox2d]
    bufferOffset = BBox2D.serialize(obj.bbox2d, buffer, bufferOffset);
    // Serialize message field [bbox2d_rear]
    bufferOffset = BBox2D.serialize(obj.bbox2d_rear, buffer, bufferOffset);
    // Serialize message field [sub_type]
    bufferOffset = _serializer.int32(obj.sub_type, buffer, bufferOffset);
    // Serialize message field [height_above_ground]
    bufferOffset = _serializer.float64(obj.height_above_ground, buffer, bufferOffset);
    // Serialize message field [position_abs_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_abs_covariance, buffer, bufferOffset, null);
    // Serialize message field [velocity_abs_covariance]
    bufferOffset = _arraySerializer.float64(obj.velocity_abs_covariance, buffer, bufferOffset, null);
    // Serialize message field [acceleration_abs_covariance]
    bufferOffset = _arraySerializer.float64(obj.acceleration_abs_covariance, buffer, bufferOffset, null);
    // Serialize message field [theta_abs_covariance]
    bufferOffset = _serializer.float64(obj.theta_abs_covariance, buffer, bufferOffset);
    // Serialize message field [position_vehicle_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_vehicle_covariance, buffer, bufferOffset, null);
    // Serialize message field [velocity_vehicle_covariance]
    bufferOffset = _arraySerializer.float64(obj.velocity_vehicle_covariance, buffer, bufferOffset, null);
    // Serialize message field [acceleration_vehicle_covariance]
    bufferOffset = _arraySerializer.float64(obj.acceleration_vehicle_covariance, buffer, bufferOffset, null);
    // Serialize message field [theta_vehicle_covariance]
    bufferOffset = _serializer.float64(obj.theta_vehicle_covariance, buffer, bufferOffset);
    // Serialize message field [sensor_calibrator]
    bufferOffset = SensorCalibrator.serialize(obj.sensor_calibrator, buffer, bufferOffset);
    // Serialize message field [cipv_flag]
    bufferOffset = _serializer.uint8(obj.cipv_flag, buffer, bufferOffset);
    // Serialize message field [lane_position]
    bufferOffset = _serializer.int32(obj.lane_position, buffer, bufferOffset);
    // Serialize message field [pihp_percentage]
    bufferOffset = _serializer.float64(obj.pihp_percentage, buffer, bufferOffset);
    // Serialize message field [blinker_flag]
    bufferOffset = _serializer.int32(obj.blinker_flag, buffer, bufferOffset);
    // Serialize message field [fusion_type]
    bufferOffset = _serializer.int32(obj.fusion_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [timestamp]
    data.timestamp = Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [existence_prob]
    data.existence_prob = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [create_time]
    data.create_time = Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_updated_time]
    data.last_updated_time = Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_pos_vehicle]
    data.center_pos_vehicle = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_pos_abs]
    data.center_pos_abs = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta_vehicle]
    data.theta_vehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_abs]
    data.theta_abs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_vehicle]
    data.velocity_vehicle = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_abs]
    data.velocity_abs = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [image_key_points]
    // Deserialize array length for message field [image_key_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_key_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_key_points[i] = ImageKeyPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polygon_point_abs]
    // Deserialize array length for message field [polygon_point_abs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_point_abs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_point_abs[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polygon_point_vehicle]
    // Deserialize array length for message field [polygon_point_vehicle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_point_vehicle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_point_vehicle[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence_type]
    data.confidence_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drops]
    // Deserialize array length for message field [drops]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.drops = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.drops[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [acceleration_vehicle]
    data.acceleration_vehicle = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_abs]
    data.acceleration_abs = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor_point_image]
    data.anchor_point_image = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor_point_vehicle]
    data.anchor_point_vehicle = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor_point_abs]
    data.anchor_point_abs = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox2d]
    data.bbox2d = BBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox2d_rear]
    data.bbox2d_rear = BBox2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [sub_type]
    data.sub_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height_above_ground]
    data.height_above_ground = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_abs_covariance]
    data.position_abs_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_abs_covariance]
    data.velocity_abs_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acceleration_abs_covariance]
    data.acceleration_abs_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [theta_abs_covariance]
    data.theta_abs_covariance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_vehicle_covariance]
    data.position_vehicle_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_vehicle_covariance]
    data.velocity_vehicle_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acceleration_vehicle_covariance]
    data.acceleration_vehicle_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [theta_vehicle_covariance]
    data.theta_vehicle_covariance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sensor_calibrator]
    data.sensor_calibrator = SensorCalibrator.deserialize(buffer, bufferOffset);
    // Deserialize message field [cipv_flag]
    data.cipv_flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lane_position]
    data.lane_position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pihp_percentage]
    data.pihp_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blinker_flag]
    data.blinker_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fusion_type]
    data.fusion_type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.image_key_points.length;
    length += 24 * object.polygon_point_abs.length;
    length += 24 * object.polygon_point_vehicle.length;
    length += 24 * object.drops.length;
    length += 8 * object.position_abs_covariance.length;
    length += 8 * object.velocity_abs_covariance.length;
    length += 8 * object.acceleration_abs_covariance.length;
    length += 8 * object.position_vehicle_covariance.length;
    length += 8 * object.velocity_vehicle_covariance.length;
    length += 8 * object.acceleration_vehicle_covariance.length;
    return length + 461;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '540c5953bd92bdf84eafae61ed094918';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Time   timestamp     # 时间戳
    int32   id     # 障碍物id
    float64   existence_prob     # 障碍物存在的概率
    Time   create_time     # 障碍物被识别的时间戳
    Time   last_updated_time     # 障碍物上一次更新的时间
    Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置
    Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置
    float64   theta_vehicle     # 车辆坐标系下障碍物的朝向
    float64   theta_abs     # 世界坐标系下障碍物的朝向
    Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度
    Point3D   velocity_abs     # 世界坐标系下障碍物的速度
    float64   length     # 障碍物长度
    float64   width     # 障碍物宽度
    float64   height     # 障碍物高度
    ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形
    Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形
    Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形
    float64   tracking_time     # 障碍物被追踪的时间
    int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;
    float64   confidence     # 障碍物类别置信度
    int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;
    Point3D[] drops # 障碍物轨迹点
    Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度
    Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度
    Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)
    Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)
    Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)
    BBox2D   bbox2d     # 障碍物图像框
    BBox2D   bbox2d_rear     # 障碍物图像尾框
    int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;
    float64   height_above_ground     # 障碍物近地点到地面的高度
    float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵
    float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵
    float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵
    float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵
    float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵
    float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵
    float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵
    float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵
    SensorCalibrator   sensor_calibrator     # 传感器标定参数
    uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）
    int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
    float64   pihp_percentage     # 临车道车辆压线比例
    int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN
    int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN
    
    ================================================================================
    MSG: ros_interface/Time
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/ImageKeyPoint
    float64   x     # 车位图像关键点x坐标
    float64   y     # 车位图像关键点y坐标
    float64   confidence     # 置信度
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    ================================================================================
    MSG: ros_interface/BBox2D
    int16   xmin     # 图像框左上角的x坐标
    int16   ymin     # 图像框左上角的y坐标
    int16   xmax     # 图像框右下角的x坐标
    int16   ymax     # 图像框右下角的y坐标
    
    ================================================================================
    MSG: ros_interface/SensorCalibrator
    Point3D   pose     # 传感器安装位置(相对于后轴中心点)
    Point3D   angle     # 传感器安装角度(车体坐标系)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obstacle(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = Time.Resolve(msg.timestamp)
    }
    else {
      resolved.timestamp = new Time()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.existence_prob !== undefined) {
      resolved.existence_prob = msg.existence_prob;
    }
    else {
      resolved.existence_prob = 0.0
    }

    if (msg.create_time !== undefined) {
      resolved.create_time = Time.Resolve(msg.create_time)
    }
    else {
      resolved.create_time = new Time()
    }

    if (msg.last_updated_time !== undefined) {
      resolved.last_updated_time = Time.Resolve(msg.last_updated_time)
    }
    else {
      resolved.last_updated_time = new Time()
    }

    if (msg.center_pos_vehicle !== undefined) {
      resolved.center_pos_vehicle = Point3D.Resolve(msg.center_pos_vehicle)
    }
    else {
      resolved.center_pos_vehicle = new Point3D()
    }

    if (msg.center_pos_abs !== undefined) {
      resolved.center_pos_abs = Point3D.Resolve(msg.center_pos_abs)
    }
    else {
      resolved.center_pos_abs = new Point3D()
    }

    if (msg.theta_vehicle !== undefined) {
      resolved.theta_vehicle = msg.theta_vehicle;
    }
    else {
      resolved.theta_vehicle = 0.0
    }

    if (msg.theta_abs !== undefined) {
      resolved.theta_abs = msg.theta_abs;
    }
    else {
      resolved.theta_abs = 0.0
    }

    if (msg.velocity_vehicle !== undefined) {
      resolved.velocity_vehicle = Point3D.Resolve(msg.velocity_vehicle)
    }
    else {
      resolved.velocity_vehicle = new Point3D()
    }

    if (msg.velocity_abs !== undefined) {
      resolved.velocity_abs = Point3D.Resolve(msg.velocity_abs)
    }
    else {
      resolved.velocity_abs = new Point3D()
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

    if (msg.image_key_points !== undefined) {
      resolved.image_key_points = new Array(msg.image_key_points.length);
      for (let i = 0; i < resolved.image_key_points.length; ++i) {
        resolved.image_key_points[i] = ImageKeyPoint.Resolve(msg.image_key_points[i]);
      }
    }
    else {
      resolved.image_key_points = []
    }

    if (msg.polygon_point_abs !== undefined) {
      resolved.polygon_point_abs = new Array(msg.polygon_point_abs.length);
      for (let i = 0; i < resolved.polygon_point_abs.length; ++i) {
        resolved.polygon_point_abs[i] = Point3D.Resolve(msg.polygon_point_abs[i]);
      }
    }
    else {
      resolved.polygon_point_abs = []
    }

    if (msg.polygon_point_vehicle !== undefined) {
      resolved.polygon_point_vehicle = new Array(msg.polygon_point_vehicle.length);
      for (let i = 0; i < resolved.polygon_point_vehicle.length; ++i) {
        resolved.polygon_point_vehicle[i] = Point3D.Resolve(msg.polygon_point_vehicle[i]);
      }
    }
    else {
      resolved.polygon_point_vehicle = []
    }

    if (msg.tracking_time !== undefined) {
      resolved.tracking_time = msg.tracking_time;
    }
    else {
      resolved.tracking_time = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.confidence_type !== undefined) {
      resolved.confidence_type = msg.confidence_type;
    }
    else {
      resolved.confidence_type = 0
    }

    if (msg.drops !== undefined) {
      resolved.drops = new Array(msg.drops.length);
      for (let i = 0; i < resolved.drops.length; ++i) {
        resolved.drops[i] = Point3D.Resolve(msg.drops[i]);
      }
    }
    else {
      resolved.drops = []
    }

    if (msg.acceleration_vehicle !== undefined) {
      resolved.acceleration_vehicle = Point3D.Resolve(msg.acceleration_vehicle)
    }
    else {
      resolved.acceleration_vehicle = new Point3D()
    }

    if (msg.acceleration_abs !== undefined) {
      resolved.acceleration_abs = Point3D.Resolve(msg.acceleration_abs)
    }
    else {
      resolved.acceleration_abs = new Point3D()
    }

    if (msg.anchor_point_image !== undefined) {
      resolved.anchor_point_image = Point2D.Resolve(msg.anchor_point_image)
    }
    else {
      resolved.anchor_point_image = new Point2D()
    }

    if (msg.anchor_point_vehicle !== undefined) {
      resolved.anchor_point_vehicle = Point3D.Resolve(msg.anchor_point_vehicle)
    }
    else {
      resolved.anchor_point_vehicle = new Point3D()
    }

    if (msg.anchor_point_abs !== undefined) {
      resolved.anchor_point_abs = Point3D.Resolve(msg.anchor_point_abs)
    }
    else {
      resolved.anchor_point_abs = new Point3D()
    }

    if (msg.bbox2d !== undefined) {
      resolved.bbox2d = BBox2D.Resolve(msg.bbox2d)
    }
    else {
      resolved.bbox2d = new BBox2D()
    }

    if (msg.bbox2d_rear !== undefined) {
      resolved.bbox2d_rear = BBox2D.Resolve(msg.bbox2d_rear)
    }
    else {
      resolved.bbox2d_rear = new BBox2D()
    }

    if (msg.sub_type !== undefined) {
      resolved.sub_type = msg.sub_type;
    }
    else {
      resolved.sub_type = 0
    }

    if (msg.height_above_ground !== undefined) {
      resolved.height_above_ground = msg.height_above_ground;
    }
    else {
      resolved.height_above_ground = 0.0
    }

    if (msg.position_abs_covariance !== undefined) {
      resolved.position_abs_covariance = msg.position_abs_covariance;
    }
    else {
      resolved.position_abs_covariance = []
    }

    if (msg.velocity_abs_covariance !== undefined) {
      resolved.velocity_abs_covariance = msg.velocity_abs_covariance;
    }
    else {
      resolved.velocity_abs_covariance = []
    }

    if (msg.acceleration_abs_covariance !== undefined) {
      resolved.acceleration_abs_covariance = msg.acceleration_abs_covariance;
    }
    else {
      resolved.acceleration_abs_covariance = []
    }

    if (msg.theta_abs_covariance !== undefined) {
      resolved.theta_abs_covariance = msg.theta_abs_covariance;
    }
    else {
      resolved.theta_abs_covariance = 0.0
    }

    if (msg.position_vehicle_covariance !== undefined) {
      resolved.position_vehicle_covariance = msg.position_vehicle_covariance;
    }
    else {
      resolved.position_vehicle_covariance = []
    }

    if (msg.velocity_vehicle_covariance !== undefined) {
      resolved.velocity_vehicle_covariance = msg.velocity_vehicle_covariance;
    }
    else {
      resolved.velocity_vehicle_covariance = []
    }

    if (msg.acceleration_vehicle_covariance !== undefined) {
      resolved.acceleration_vehicle_covariance = msg.acceleration_vehicle_covariance;
    }
    else {
      resolved.acceleration_vehicle_covariance = []
    }

    if (msg.theta_vehicle_covariance !== undefined) {
      resolved.theta_vehicle_covariance = msg.theta_vehicle_covariance;
    }
    else {
      resolved.theta_vehicle_covariance = 0.0
    }

    if (msg.sensor_calibrator !== undefined) {
      resolved.sensor_calibrator = SensorCalibrator.Resolve(msg.sensor_calibrator)
    }
    else {
      resolved.sensor_calibrator = new SensorCalibrator()
    }

    if (msg.cipv_flag !== undefined) {
      resolved.cipv_flag = msg.cipv_flag;
    }
    else {
      resolved.cipv_flag = 0
    }

    if (msg.lane_position !== undefined) {
      resolved.lane_position = msg.lane_position;
    }
    else {
      resolved.lane_position = 0
    }

    if (msg.pihp_percentage !== undefined) {
      resolved.pihp_percentage = msg.pihp_percentage;
    }
    else {
      resolved.pihp_percentage = 0.0
    }

    if (msg.blinker_flag !== undefined) {
      resolved.blinker_flag = msg.blinker_flag;
    }
    else {
      resolved.blinker_flag = 0
    }

    if (msg.fusion_type !== undefined) {
      resolved.fusion_type = msg.fusion_type;
    }
    else {
      resolved.fusion_type = 0
    }

    return resolved;
    }
};

module.exports = Obstacle;
