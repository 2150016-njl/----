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

//-----------------------------------------------------------

class HMIObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.center_pos_vehicle = null;
      this.center_pos_abs = null;
      this.points_vehicle = null;
      this.points_abs = null;
      this.theta_vehicle = null;
      this.theta_abs = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.type = null;
      this.confidence = null;
      this.confidence_type = null;
      this.sub_type = null;
      this.cipv_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
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
      if (initObj.hasOwnProperty('points_vehicle')) {
        this.points_vehicle = initObj.points_vehicle
      }
      else {
        this.points_vehicle = [];
      }
      if (initObj.hasOwnProperty('points_abs')) {
        this.points_abs = initObj.points_abs
      }
      else {
        this.points_abs = [];
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
      if (initObj.hasOwnProperty('sub_type')) {
        this.sub_type = initObj.sub_type
      }
      else {
        this.sub_type = 0;
      }
      if (initObj.hasOwnProperty('cipv_flag')) {
        this.cipv_flag = initObj.cipv_flag
      }
      else {
        this.cipv_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIObstacle
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [center_pos_vehicle]
    bufferOffset = Point3D.serialize(obj.center_pos_vehicle, buffer, bufferOffset);
    // Serialize message field [center_pos_abs]
    bufferOffset = Point3D.serialize(obj.center_pos_abs, buffer, bufferOffset);
    // Serialize message field [points_vehicle]
    // Serialize the length for message field [points_vehicle]
    bufferOffset = _serializer.uint32(obj.points_vehicle.length, buffer, bufferOffset);
    obj.points_vehicle.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [points_abs]
    // Serialize the length for message field [points_abs]
    bufferOffset = _serializer.uint32(obj.points_abs.length, buffer, bufferOffset);
    obj.points_abs.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [theta_vehicle]
    bufferOffset = _serializer.float64(obj.theta_vehicle, buffer, bufferOffset);
    // Serialize message field [theta_abs]
    bufferOffset = _serializer.float64(obj.theta_abs, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [confidence_type]
    bufferOffset = _serializer.int32(obj.confidence_type, buffer, bufferOffset);
    // Serialize message field [sub_type]
    bufferOffset = _serializer.int32(obj.sub_type, buffer, bufferOffset);
    // Serialize message field [cipv_flag]
    bufferOffset = _serializer.uint8(obj.cipv_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIObstacle
    let len;
    let data = new HMIObstacle(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [center_pos_vehicle]
    data.center_pos_vehicle = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_pos_abs]
    data.center_pos_abs = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [points_vehicle]
    // Deserialize array length for message field [points_vehicle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_vehicle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_vehicle[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [points_abs]
    // Deserialize array length for message field [points_abs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points_abs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points_abs[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [theta_vehicle]
    data.theta_vehicle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_abs]
    data.theta_abs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence_type]
    data.confidence_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [sub_type]
    data.sub_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cipv_flag]
    data.cipv_flag = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.points_vehicle.length;
    length += 24 * object.points_abs.length;
    return length + 121;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/HMIObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf5ff5fbe5cf1d1c9d9747a2892db609';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   id     # 障碍物id
    Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置
    Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置
    Point3D[] points_vehicle # 车辆坐标系下障碍物的点集
    Point3D[] points_abs # 世界坐标系下障碍物的点集
    float64   theta_vehicle     # 车辆坐标系下障碍物的朝向
    float64   theta_abs     # 世界坐标系下障碍物的朝向
    float64   length     # 障碍物长度
    float64   width     # 障碍物宽度
    float64   height     # 障碍物高度
    int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;
    float64   confidence     # 障碍物类别置信度
    int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;
    int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;
    uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）
    
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
    const resolved = new HMIObstacle(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
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

    if (msg.points_vehicle !== undefined) {
      resolved.points_vehicle = new Array(msg.points_vehicle.length);
      for (let i = 0; i < resolved.points_vehicle.length; ++i) {
        resolved.points_vehicle[i] = Point3D.Resolve(msg.points_vehicle[i]);
      }
    }
    else {
      resolved.points_vehicle = []
    }

    if (msg.points_abs !== undefined) {
      resolved.points_abs = new Array(msg.points_abs.length);
      for (let i = 0; i < resolved.points_abs.length; ++i) {
        resolved.points_abs[i] = Point3D.Resolve(msg.points_abs[i]);
      }
    }
    else {
      resolved.points_abs = []
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

    if (msg.sub_type !== undefined) {
      resolved.sub_type = msg.sub_type;
    }
    else {
      resolved.sub_type = 0
    }

    if (msg.cipv_flag !== undefined) {
      resolved.cipv_flag = msg.cipv_flag;
    }
    else {
      resolved.cipv_flag = 0
    }

    return resolved;
    }
};

module.exports = HMIObstacle;
