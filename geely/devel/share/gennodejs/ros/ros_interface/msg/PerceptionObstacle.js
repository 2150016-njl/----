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

class PerceptionObstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.theta = null;
      this.velocity = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.polygon_point = null;
      this.tracking_time = null;
      this.type = null;
      this.lane_position = null;
      this.confidence = null;
      this.timestamp = null;
      this.confidence_type = null;
      this.drops = null;
      this.acceleration = null;
      this.anchor_point = null;
      this.bounding_box = null;
      this.sub_type = null;
      this.height_above_ground = null;
      this.position_covariance = null;
      this.velocity_covariance = null;
      this.acceleration_covariance = null;
      this.light_status = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point3D();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Point3D();
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
      if (initObj.hasOwnProperty('polygon_point')) {
        this.polygon_point = initObj.polygon_point
      }
      else {
        this.polygon_point = [];
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
      if (initObj.hasOwnProperty('lane_position')) {
        this.lane_position = initObj.lane_position
      }
      else {
        this.lane_position = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
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
        this.drops = new Point3D();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new Point3D();
      }
      if (initObj.hasOwnProperty('anchor_point')) {
        this.anchor_point = initObj.anchor_point
      }
      else {
        this.anchor_point = new Point3D();
      }
      if (initObj.hasOwnProperty('bounding_box')) {
        this.bounding_box = initObj.bounding_box
      }
      else {
        this.bounding_box = [];
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
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = [];
      }
      if (initObj.hasOwnProperty('velocity_covariance')) {
        this.velocity_covariance = initObj.velocity_covariance
      }
      else {
        this.velocity_covariance = [];
      }
      if (initObj.hasOwnProperty('acceleration_covariance')) {
        this.acceleration_covariance = initObj.acceleration_covariance
      }
      else {
        this.acceleration_covariance = [];
      }
      if (initObj.hasOwnProperty('light_status')) {
        this.light_status = initObj.light_status
      }
      else {
        this.light_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionObstacle
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point3D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Point3D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [polygon_point]
    // Serialize the length for message field [polygon_point]
    bufferOffset = _serializer.uint32(obj.polygon_point.length, buffer, bufferOffset);
    obj.polygon_point.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float64(obj.tracking_time, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [lane_position]
    bufferOffset = _serializer.int32(obj.lane_position, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [confidence_type]
    bufferOffset = _serializer.uint8(obj.confidence_type, buffer, bufferOffset);
    // Serialize message field [drops]
    bufferOffset = Point3D.serialize(obj.drops, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = Point3D.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [anchor_point]
    bufferOffset = Point3D.serialize(obj.anchor_point, buffer, bufferOffset);
    // Serialize message field [bounding_box]
    // Serialize the length for message field [bounding_box]
    bufferOffset = _serializer.uint32(obj.bounding_box.length, buffer, bufferOffset);
    obj.bounding_box.forEach((val) => {
      bufferOffset = Point3D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sub_type]
    bufferOffset = _serializer.int32(obj.sub_type, buffer, bufferOffset);
    // Serialize message field [height_above_ground]
    bufferOffset = _serializer.float64(obj.height_above_ground, buffer, bufferOffset);
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_covariance, buffer, bufferOffset, null);
    // Serialize message field [velocity_covariance]
    bufferOffset = _arraySerializer.float64(obj.velocity_covariance, buffer, bufferOffset, null);
    // Serialize message field [acceleration_covariance]
    bufferOffset = _arraySerializer.float64(obj.acceleration_covariance, buffer, bufferOffset, null);
    // Serialize message field [light_status]
    bufferOffset = _serializer.uint8(obj.light_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionObstacle
    let len;
    let data = new PerceptionObstacle(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [polygon_point]
    // Deserialize array length for message field [polygon_point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon_point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon_point[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_position]
    data.lane_position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence_type]
    data.confidence_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [drops]
    data.drops = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [anchor_point]
    data.anchor_point = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box]
    // Deserialize array length for message field [bounding_box]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.bounding_box = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bounding_box[i] = Point3D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sub_type]
    data.sub_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height_above_ground]
    data.height_above_ground = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity_covariance]
    data.velocity_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acceleration_covariance]
    data.acceleration_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [light_status]
    data.light_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.polygon_point.length;
    length += 24 * object.bounding_box.length;
    length += 8 * object.position_covariance.length;
    length += 8 * object.velocity_covariance.length;
    length += 8 * object.acceleration_covariance.length;
    return length + 222;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/PerceptionObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eec97df9ec7b9c83ab21ca50cb74bf7c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   id     #  
    Point3D   position     #  
    float64   theta     #  
    Point3D   velocity     #  
    float64   length     #  
    float64   width     #  
    float64   height     #  
    Point3D[] polygon_point #  
    float64   tracking_time     #  
    int32   type     # 障碍物类型： 0-Unknown 1-Unknown_movable 2-Unknown_unmovable 3-Pedestrian 4-Bicycle   5-Vehicle
    int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
    float64   confidence     #  
    float64   timestamp     #  
    uint8   confidence_type     # 置信度类型                  0-CONFIDENCE_UNKNOWN, 1-CONFIDENCE_CN, 2-CONFIDENCE_RAD
    Point3D   drops     #  
    Point3D   acceleration     #  
    Point3D   anchor_point     #  
    Point3D[] bounding_box #  
    int32   sub_type     #  
    float64   height_above_ground     #  
    float64[] position_covariance #  
    float64[] velocity_covariance #  
    float64[] acceleration_covariance #  
    uint8   light_status     #  
    
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
    const resolved = new PerceptionObstacle(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = Point3D.Resolve(msg.position)
    }
    else {
      resolved.position = new Point3D()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Point3D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Point3D()
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

    if (msg.polygon_point !== undefined) {
      resolved.polygon_point = new Array(msg.polygon_point.length);
      for (let i = 0; i < resolved.polygon_point.length; ++i) {
        resolved.polygon_point[i] = Point3D.Resolve(msg.polygon_point[i]);
      }
    }
    else {
      resolved.polygon_point = []
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

    if (msg.lane_position !== undefined) {
      resolved.lane_position = msg.lane_position;
    }
    else {
      resolved.lane_position = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.confidence_type !== undefined) {
      resolved.confidence_type = msg.confidence_type;
    }
    else {
      resolved.confidence_type = 0
    }

    if (msg.drops !== undefined) {
      resolved.drops = Point3D.Resolve(msg.drops)
    }
    else {
      resolved.drops = new Point3D()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = Point3D.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new Point3D()
    }

    if (msg.anchor_point !== undefined) {
      resolved.anchor_point = Point3D.Resolve(msg.anchor_point)
    }
    else {
      resolved.anchor_point = new Point3D()
    }

    if (msg.bounding_box !== undefined) {
      resolved.bounding_box = new Array(msg.bounding_box.length);
      for (let i = 0; i < resolved.bounding_box.length; ++i) {
        resolved.bounding_box[i] = Point3D.Resolve(msg.bounding_box[i]);
      }
    }
    else {
      resolved.bounding_box = []
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

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = []
    }

    if (msg.velocity_covariance !== undefined) {
      resolved.velocity_covariance = msg.velocity_covariance;
    }
    else {
      resolved.velocity_covariance = []
    }

    if (msg.acceleration_covariance !== undefined) {
      resolved.acceleration_covariance = msg.acceleration_covariance;
    }
    else {
      resolved.acceleration_covariance = []
    }

    if (msg.light_status !== undefined) {
      resolved.light_status = msg.light_status;
    }
    else {
      resolved.light_status = 0
    }

    return resolved;
    }
};

module.exports = PerceptionObstacle;
