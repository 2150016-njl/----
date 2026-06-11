// Auto-generated. Do not edit!

// (in-package plusgo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Polygon = require('./Polygon.js');
let ImageRect = require('./ImageRect.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.source = null;
      this.exist_confidence = null;
      this.type = null;
      this.type_confidence = null;
      this.track_id = null;
      this.tracking_time = null;
      this.motion_state = null;
      this.anchor = null;
      this.theta = null;
      this.direction = null;
      this.direction_cov = null;
      this.center = null;
      this.center_cov = null;
      this.size = null;
      this.size_cov = null;
      this.is_absolute_position = null;
      this.velocity = null;
      this.velocity_cov = null;
      this.acceleration = null;
      this.acceleration_cov = null;
      this.angle_velocity = null;
      this.angle_velocity_cov = null;
      this.angle_acceleration = null;
      this.angle_acceleration_cov = null;
      this.trajectory = null;
      this.history_type = null;
      this.history_velocity = null;
      this.polygon = null;
      this.rect = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = 0;
      }
      if (initObj.hasOwnProperty('exist_confidence')) {
        this.exist_confidence = initObj.exist_confidence
      }
      else {
        this.exist_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('type_confidence')) {
        this.type_confidence = initObj.type_confidence
      }
      else {
        this.type_confidence = 0.0;
      }
      if (initObj.hasOwnProperty('track_id')) {
        this.track_id = initObj.track_id
      }
      else {
        this.track_id = 0;
      }
      if (initObj.hasOwnProperty('tracking_time')) {
        this.tracking_time = initObj.tracking_time
      }
      else {
        this.tracking_time = 0.0;
      }
      if (initObj.hasOwnProperty('motion_state')) {
        this.motion_state = initObj.motion_state
      }
      else {
        this.motion_state = 0;
      }
      if (initObj.hasOwnProperty('anchor')) {
        this.anchor = initObj.anchor
      }
      else {
        this.anchor = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('direction_cov')) {
        this.direction_cov = initObj.direction_cov
      }
      else {
        this.direction_cov = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('center_cov')) {
        this.center_cov = initObj.center_cov
      }
      else {
        this.center_cov = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('size_cov')) {
        this.size_cov = initObj.size_cov
      }
      else {
        this.size_cov = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('is_absolute_position')) {
        this.is_absolute_position = initObj.is_absolute_position
      }
      else {
        this.is_absolute_position = false;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_cov')) {
        this.velocity_cov = initObj.velocity_cov
      }
      else {
        this.velocity_cov = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration_cov')) {
        this.acceleration_cov = initObj.acceleration_cov
      }
      else {
        this.acceleration_cov = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angle_velocity')) {
        this.angle_velocity = initObj.angle_velocity
      }
      else {
        this.angle_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('angle_velocity_cov')) {
        this.angle_velocity_cov = initObj.angle_velocity_cov
      }
      else {
        this.angle_velocity_cov = 0.0;
      }
      if (initObj.hasOwnProperty('angle_acceleration')) {
        this.angle_acceleration = initObj.angle_acceleration
      }
      else {
        this.angle_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('angle_acceleration_cov')) {
        this.angle_acceleration_cov = initObj.angle_acceleration_cov
      }
      else {
        this.angle_acceleration_cov = 0.0;
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
      if (initObj.hasOwnProperty('history_type')) {
        this.history_type = initObj.history_type
      }
      else {
        this.history_type = [];
      }
      if (initObj.hasOwnProperty('history_velocity')) {
        this.history_velocity = initObj.history_velocity
      }
      else {
        this.history_velocity = [];
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new Polygon();
      }
      if (initObj.hasOwnProperty('rect')) {
        this.rect = initObj.rect
      }
      else {
        this.rect = new ImageRect();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = _serializer.uint8(obj.source, buffer, bufferOffset);
    // Serialize message field [exist_confidence]
    bufferOffset = _serializer.float32(obj.exist_confidence, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int64(obj.type, buffer, bufferOffset);
    // Serialize message field [type_confidence]
    bufferOffset = _serializer.float32(obj.type_confidence, buffer, bufferOffset);
    // Serialize message field [track_id]
    bufferOffset = _serializer.int64(obj.track_id, buffer, bufferOffset);
    // Serialize message field [tracking_time]
    bufferOffset = _serializer.float32(obj.tracking_time, buffer, bufferOffset);
    // Serialize message field [motion_state]
    bufferOffset = _serializer.int64(obj.motion_state, buffer, bufferOffset);
    // Serialize message field [anchor]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.anchor, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float32(obj.theta, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [direction_cov]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction_cov, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [center_cov]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.center_cov, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [size_cov]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size_cov, buffer, bufferOffset);
    // Serialize message field [is_absolute_position]
    bufferOffset = _serializer.bool(obj.is_absolute_position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [velocity_cov]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_cov, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [acceleration_cov]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration_cov, buffer, bufferOffset);
    // Serialize message field [angle_velocity]
    bufferOffset = _serializer.float32(obj.angle_velocity, buffer, bufferOffset);
    // Serialize message field [angle_velocity_cov]
    bufferOffset = _serializer.float32(obj.angle_velocity_cov, buffer, bufferOffset);
    // Serialize message field [angle_acceleration]
    bufferOffset = _serializer.float32(obj.angle_acceleration, buffer, bufferOffset);
    // Serialize message field [angle_acceleration_cov]
    bufferOffset = _serializer.float32(obj.angle_acceleration_cov, buffer, bufferOffset);
    // Serialize message field [trajectory]
    // Serialize the length for message field [trajectory]
    bufferOffset = _serializer.uint32(obj.trajectory.length, buffer, bufferOffset);
    obj.trajectory.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [history_type]
    // Serialize the length for message field [history_type]
    bufferOffset = _serializer.uint32(obj.history_type.length, buffer, bufferOffset);
    obj.history_type.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [history_velocity]
    // Serialize the length for message field [history_velocity]
    bufferOffset = _serializer.uint32(obj.history_velocity.length, buffer, bufferOffset);
    obj.history_velocity.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polygon]
    bufferOffset = Polygon.serialize(obj.polygon, buffer, bufferOffset);
    // Serialize message field [rect]
    bufferOffset = ImageRect.serialize(obj.rect, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exist_confidence]
    data.exist_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [type_confidence]
    data.type_confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [track_id]
    data.track_id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [tracking_time]
    data.tracking_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motion_state]
    data.motion_state = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [anchor]
    data.anchor = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [direction_cov]
    data.direction_cov = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [center_cov]
    data.center_cov = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [size_cov]
    data.size_cov = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_absolute_position]
    data.is_absolute_position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_cov]
    data.velocity_cov = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration_cov]
    data.acceleration_cov = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_velocity]
    data.angle_velocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_velocity_cov]
    data.angle_velocity_cov = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_acceleration]
    data.angle_acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_acceleration_cov]
    data.angle_acceleration_cov = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    // Deserialize array length for message field [trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectory[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [history_type]
    // Deserialize array length for message field [history_type]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.history_type = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.history_type[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [history_velocity]
    // Deserialize array length for message field [history_velocity]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.history_velocity = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.history_velocity[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polygon]
    data.polygon = Polygon.deserialize(buffer, bufferOffset);
    // Deserialize message field [rect]
    data.rect = ImageRect.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.trajectory.length;
    length += 12 * object.history_type.length;
    length += 24 * object.history_velocity.length;
    length += Polygon.getMessageSize(object.polygon);
    length += ImageRect.getMessageSize(object.rect);
    return length + 298;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plusgo_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '391c844aee60900a62ef240fbbd6467d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8  source
    float32 exist_confidence
    
    # "UNKNOWN","CONE","PED","BIC","CAR","TRUCK_BUS","ULTRA_VEHICLE"
    int64  type
    float32 type_confidence
    int64  track_id
    float32 tracking_time
    
    int64  motion_state
    
    geometry_msgs/Point32 anchor
    
    # the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)
    float32 theta
    
    # the main direction is the bbox length orientation
    geometry_msgs/Vector3 direction
    geometry_msgs/Vector3 direction_cov
    geometry_msgs/Point32  center
    geometry_msgs/Point32  center_cov
    
    # size of the oriented boundingbox, length is the size in the main direction
    geometry_msgs/Vector3 size
    geometry_msgs/Vector3 size_cov
    
    bool is_absolute_position
    
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 velocity_cov
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 acceleration_cov
    
    float32 angle_velocity
    float32 angle_velocity_cov
    float32 angle_acceleration
    float32 angle_acceleration_cov
    
    geometry_msgs/Point32[]  trajectory
    geometry_msgs/Point32[]  history_type
    geometry_msgs/Vector3[]  history_velocity
    
    Polygon    polygon
    ImageRect  rect
    
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
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: plusgo_msgs/Polygon
    float32 min_height
    float32 max_height
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: plusgo_msgs/ImageRect
    string  image_frame
    int32   x
    int32   y
    int32   x_
    int32   y_
    int32   width
    int32   height
    float32 angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.source !== undefined) {
      resolved.source = msg.source;
    }
    else {
      resolved.source = 0
    }

    if (msg.exist_confidence !== undefined) {
      resolved.exist_confidence = msg.exist_confidence;
    }
    else {
      resolved.exist_confidence = 0.0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.type_confidence !== undefined) {
      resolved.type_confidence = msg.type_confidence;
    }
    else {
      resolved.type_confidence = 0.0
    }

    if (msg.track_id !== undefined) {
      resolved.track_id = msg.track_id;
    }
    else {
      resolved.track_id = 0
    }

    if (msg.tracking_time !== undefined) {
      resolved.tracking_time = msg.tracking_time;
    }
    else {
      resolved.tracking_time = 0.0
    }

    if (msg.motion_state !== undefined) {
      resolved.motion_state = msg.motion_state;
    }
    else {
      resolved.motion_state = 0
    }

    if (msg.anchor !== undefined) {
      resolved.anchor = geometry_msgs.msg.Point32.Resolve(msg.anchor)
    }
    else {
      resolved.anchor = new geometry_msgs.msg.Point32()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.direction_cov !== undefined) {
      resolved.direction_cov = geometry_msgs.msg.Vector3.Resolve(msg.direction_cov)
    }
    else {
      resolved.direction_cov = new geometry_msgs.msg.Vector3()
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point32.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point32()
    }

    if (msg.center_cov !== undefined) {
      resolved.center_cov = geometry_msgs.msg.Point32.Resolve(msg.center_cov)
    }
    else {
      resolved.center_cov = new geometry_msgs.msg.Point32()
    }

    if (msg.size !== undefined) {
      resolved.size = geometry_msgs.msg.Vector3.Resolve(msg.size)
    }
    else {
      resolved.size = new geometry_msgs.msg.Vector3()
    }

    if (msg.size_cov !== undefined) {
      resolved.size_cov = geometry_msgs.msg.Vector3.Resolve(msg.size_cov)
    }
    else {
      resolved.size_cov = new geometry_msgs.msg.Vector3()
    }

    if (msg.is_absolute_position !== undefined) {
      resolved.is_absolute_position = msg.is_absolute_position;
    }
    else {
      resolved.is_absolute_position = false
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_cov !== undefined) {
      resolved.velocity_cov = geometry_msgs.msg.Vector3.Resolve(msg.velocity_cov)
    }
    else {
      resolved.velocity_cov = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration_cov !== undefined) {
      resolved.acceleration_cov = geometry_msgs.msg.Vector3.Resolve(msg.acceleration_cov)
    }
    else {
      resolved.acceleration_cov = new geometry_msgs.msg.Vector3()
    }

    if (msg.angle_velocity !== undefined) {
      resolved.angle_velocity = msg.angle_velocity;
    }
    else {
      resolved.angle_velocity = 0.0
    }

    if (msg.angle_velocity_cov !== undefined) {
      resolved.angle_velocity_cov = msg.angle_velocity_cov;
    }
    else {
      resolved.angle_velocity_cov = 0.0
    }

    if (msg.angle_acceleration !== undefined) {
      resolved.angle_acceleration = msg.angle_acceleration;
    }
    else {
      resolved.angle_acceleration = 0.0
    }

    if (msg.angle_acceleration_cov !== undefined) {
      resolved.angle_acceleration_cov = msg.angle_acceleration_cov;
    }
    else {
      resolved.angle_acceleration_cov = 0.0
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = new Array(msg.trajectory.length);
      for (let i = 0; i < resolved.trajectory.length; ++i) {
        resolved.trajectory[i] = geometry_msgs.msg.Point32.Resolve(msg.trajectory[i]);
      }
    }
    else {
      resolved.trajectory = []
    }

    if (msg.history_type !== undefined) {
      resolved.history_type = new Array(msg.history_type.length);
      for (let i = 0; i < resolved.history_type.length; ++i) {
        resolved.history_type[i] = geometry_msgs.msg.Point32.Resolve(msg.history_type[i]);
      }
    }
    else {
      resolved.history_type = []
    }

    if (msg.history_velocity !== undefined) {
      resolved.history_velocity = new Array(msg.history_velocity.length);
      for (let i = 0; i < resolved.history_velocity.length; ++i) {
        resolved.history_velocity[i] = geometry_msgs.msg.Vector3.Resolve(msg.history_velocity[i]);
      }
    }
    else {
      resolved.history_velocity = []
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = Polygon.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new Polygon()
    }

    if (msg.rect !== undefined) {
      resolved.rect = ImageRect.Resolve(msg.rect)
    }
    else {
      resolved.rect = new ImageRect()
    }

    return resolved;
    }
};

module.exports = Object;
