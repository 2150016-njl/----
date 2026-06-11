// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ImageRect = require('./ImageRect.js');
let Point3D = require('./Point3D.js');
let Time = require('./Time.js');

//-----------------------------------------------------------

class TrafficLight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.id = null;
      this.type = null;
      this.confidence = null;
      this.light_rect = null;
      this.position = null;
      this.distance = null;
      this.light_lanes = null;
      this.tracking_time = null;
      this.blink = null;
      this.blinking_time = null;
      this.remaining_time = null;
      this.create_time = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
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
      if (initObj.hasOwnProperty('light_rect')) {
        this.light_rect = initObj.light_rect
      }
      else {
        this.light_rect = new ImageRect();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point3D();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('light_lanes')) {
        this.light_lanes = initObj.light_lanes
      }
      else {
        this.light_lanes = [];
      }
      if (initObj.hasOwnProperty('tracking_time')) {
        this.tracking_time = initObj.tracking_time
      }
      else {
        this.tracking_time = 0.0;
      }
      if (initObj.hasOwnProperty('blink')) {
        this.blink = initObj.blink
      }
      else {
        this.blink = false;
      }
      if (initObj.hasOwnProperty('blinking_time')) {
        this.blinking_time = initObj.blinking_time
      }
      else {
        this.blinking_time = 0.0;
      }
      if (initObj.hasOwnProperty('remaining_time')) {
        this.remaining_time = initObj.remaining_time
      }
      else {
        this.remaining_time = 0.0;
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
    // Serializes a message object of type TrafficLight
    // Serialize message field [color]
    bufferOffset = _serializer.int32(obj.color, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [light_rect]
    bufferOffset = ImageRect.serialize(obj.light_rect, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point3D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [light_lanes]
    bufferOffset = _arraySerializer.int32(obj.light_lanes, buffer, bufferOffset, null);
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float64(obj.tracking_time, buffer, bufferOffset);
    // Serialize message field [blink]
    bufferOffset = _serializer.bool(obj.blink, buffer, bufferOffset);
    // Serialize message field [blinking_time]
    bufferOffset = _serializer.float64(obj.blinking_time, buffer, bufferOffset);
    // Serialize message field [remaining_time]
    bufferOffset = _serializer.float64(obj.remaining_time, buffer, bufferOffset);
    // Serialize message field [create_time]
    bufferOffset = Time.serialize(obj.create_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrafficLight
    let len;
    let data = new TrafficLight(null);
    // Deserialize message field [color]
    data.color = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [light_rect]
    data.light_rect = ImageRect.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [light_lanes]
    data.light_lanes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [blink]
    data.blink = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [blinking_time]
    data.blinking_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remaining_time]
    data.remaining_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [create_time]
    data.create_time = Time.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.light_lanes.length;
    return length + 105;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/TrafficLight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d24a7eb9eebb6222dbbfb397efd4db6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32   color     # UNKNOWN = 0; RED = 1; YELLOW = 2; GREEN = 3; BLACK = 4;
    uint32   id     # light id
    int32   type     # STRAIGHT = 0; TURN_LEFT = 1; TURN_RIGHT = 2; STRAIGHT_TURN_LEFT = 3; STRAIGHT_TURN_RIGHT =4; CIRCULAR = 5; PEDESTRIAN = 6; CYCLIST = 7; UNKNOWN = 8;
    float64   confidence     # 置信度confdence: [0-1]
    ImageRect   light_rect     # 交通灯矩形框light rect
    Point3D   position     # 交通灯位置position of light
    float64   distance     # 距离distance between light and stop line
    int32[] light_lanes # corresponding lanes of light
    float64   tracking_time     # duration of a light since track
    bool   blink     # true:
    float64   blinking_time     # duration of a light blinking
    float64   remaining_time     # V2X time of light
    Time   create_time     # time of light detected
    
    ================================================================================
    MSG: ros_interface/ImageRect
    int32   x     # coordinate x of left-top point of image rect
    int32   y     # coordinate y of left-top point of image rect
    int32   width     # width of image rect
    int32   height     # height of image rect
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
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
    const resolved = new TrafficLight(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
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

    if (msg.light_rect !== undefined) {
      resolved.light_rect = ImageRect.Resolve(msg.light_rect)
    }
    else {
      resolved.light_rect = new ImageRect()
    }

    if (msg.position !== undefined) {
      resolved.position = Point3D.Resolve(msg.position)
    }
    else {
      resolved.position = new Point3D()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.light_lanes !== undefined) {
      resolved.light_lanes = msg.light_lanes;
    }
    else {
      resolved.light_lanes = []
    }

    if (msg.tracking_time !== undefined) {
      resolved.tracking_time = msg.tracking_time;
    }
    else {
      resolved.tracking_time = 0.0
    }

    if (msg.blink !== undefined) {
      resolved.blink = msg.blink;
    }
    else {
      resolved.blink = false
    }

    if (msg.blinking_time !== undefined) {
      resolved.blinking_time = msg.blinking_time;
    }
    else {
      resolved.blinking_time = 0.0
    }

    if (msg.remaining_time !== undefined) {
      resolved.remaining_time = msg.remaining_time;
    }
    else {
      resolved.remaining_time = 0.0
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

module.exports = TrafficLight;
