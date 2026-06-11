// Auto-generated. Do not edit!

// (in-package rl_planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');
let Vector3D = require('./Vector3D.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class VehicleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.label = null;
      this.convex_hull = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.actor_pos = null;
      this.actor_rel_pos = null;
      this.actor_vel = null;
      this.actor_rel_vel = null;
      this.actor_acc = null;
      this.actor_psi = null;
      this.actor_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('convex_hull')) {
        this.convex_hull = initObj.convex_hull
      }
      else {
        this.convex_hull = new geometry_msgs.msg.PolygonStamped();
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
      if (initObj.hasOwnProperty('actor_pos')) {
        this.actor_pos = initObj.actor_pos
      }
      else {
        this.actor_pos = new Point();
      }
      if (initObj.hasOwnProperty('actor_rel_pos')) {
        this.actor_rel_pos = initObj.actor_rel_pos
      }
      else {
        this.actor_rel_pos = new Point();
      }
      if (initObj.hasOwnProperty('actor_vel')) {
        this.actor_vel = initObj.actor_vel
      }
      else {
        this.actor_vel = new Vector3D();
      }
      if (initObj.hasOwnProperty('actor_rel_vel')) {
        this.actor_rel_vel = initObj.actor_rel_vel
      }
      else {
        this.actor_rel_vel = new Vector3D();
      }
      if (initObj.hasOwnProperty('actor_acc')) {
        this.actor_acc = initObj.actor_acc
      }
      else {
        this.actor_acc = new Vector3D();
      }
      if (initObj.hasOwnProperty('actor_psi')) {
        this.actor_psi = initObj.actor_psi
      }
      else {
        this.actor_psi = 0.0;
      }
      if (initObj.hasOwnProperty('actor_speed')) {
        this.actor_speed = initObj.actor_speed
      }
      else {
        this.actor_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfo
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [convex_hull]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.convex_hull, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [actor_pos]
    bufferOffset = Point.serialize(obj.actor_pos, buffer, bufferOffset);
    // Serialize message field [actor_rel_pos]
    bufferOffset = Point.serialize(obj.actor_rel_pos, buffer, bufferOffset);
    // Serialize message field [actor_vel]
    bufferOffset = Vector3D.serialize(obj.actor_vel, buffer, bufferOffset);
    // Serialize message field [actor_rel_vel]
    bufferOffset = Vector3D.serialize(obj.actor_rel_vel, buffer, bufferOffset);
    // Serialize message field [actor_acc]
    bufferOffset = Vector3D.serialize(obj.actor_acc, buffer, bufferOffset);
    // Serialize message field [actor_psi]
    bufferOffset = _serializer.float64(obj.actor_psi, buffer, bufferOffset);
    // Serialize message field [actor_speed]
    bufferOffset = _serializer.float64(obj.actor_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfo
    let len;
    let data = new VehicleInfo(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [convex_hull]
    data.convex_hull = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actor_pos]
    data.actor_pos = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_rel_pos]
    data.actor_rel_pos = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_vel]
    data.actor_vel = Vector3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_rel_vel]
    data.actor_rel_vel = Vector3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_acc]
    data.actor_acc = Vector3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_psi]
    data.actor_psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actor_speed]
    data.actor_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.convex_hull);
    return length + 168;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_planning/VehicleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2080f30d52a247820d94f7875c4574f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    string label
    geometry_msgs/PolygonStamped convex_hull
    float64 length
    float64 width
    float64 height
    Point actor_pos
    Point actor_rel_pos
    Vector3D actor_vel
    Vector3D actor_rel_vel
    Vector3D actor_acc
    float64 actor_psi
    float64 actor_speed
    
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
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
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
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
    MSG: rl_planning/Point
    float64 x 
    float64 y 
    float64 z 
    
    ================================================================================
    MSG: rl_planning/Vector3D
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleInfo(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.convex_hull !== undefined) {
      resolved.convex_hull = geometry_msgs.msg.PolygonStamped.Resolve(msg.convex_hull)
    }
    else {
      resolved.convex_hull = new geometry_msgs.msg.PolygonStamped()
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

    if (msg.actor_pos !== undefined) {
      resolved.actor_pos = Point.Resolve(msg.actor_pos)
    }
    else {
      resolved.actor_pos = new Point()
    }

    if (msg.actor_rel_pos !== undefined) {
      resolved.actor_rel_pos = Point.Resolve(msg.actor_rel_pos)
    }
    else {
      resolved.actor_rel_pos = new Point()
    }

    if (msg.actor_vel !== undefined) {
      resolved.actor_vel = Vector3D.Resolve(msg.actor_vel)
    }
    else {
      resolved.actor_vel = new Vector3D()
    }

    if (msg.actor_rel_vel !== undefined) {
      resolved.actor_rel_vel = Vector3D.Resolve(msg.actor_rel_vel)
    }
    else {
      resolved.actor_rel_vel = new Vector3D()
    }

    if (msg.actor_acc !== undefined) {
      resolved.actor_acc = Vector3D.Resolve(msg.actor_acc)
    }
    else {
      resolved.actor_acc = new Vector3D()
    }

    if (msg.actor_psi !== undefined) {
      resolved.actor_psi = msg.actor_psi;
    }
    else {
      resolved.actor_psi = 0.0
    }

    if (msg.actor_speed !== undefined) {
      resolved.actor_speed = msg.actor_speed;
    }
    else {
      resolved.actor_speed = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleInfo;
