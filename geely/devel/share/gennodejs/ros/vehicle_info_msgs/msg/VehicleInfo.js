// Auto-generated. Do not edit!

// (in-package vehicle_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class VehicleInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.label = null;
      this.points = null;
      this.convex_hull = null;
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
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('convex_hull')) {
        this.convex_hull = initObj.convex_hull
      }
      else {
        this.convex_hull = new geometry_msgs.msg.PolygonStamped();
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
        this.actor_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('actor_rel_pos')) {
        this.actor_rel_pos = initObj.actor_rel_pos
      }
      else {
        this.actor_rel_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('actor_vel')) {
        this.actor_vel = initObj.actor_vel
      }
      else {
        this.actor_vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('actor_rel_vel')) {
        this.actor_rel_vel = initObj.actor_rel_vel
      }
      else {
        this.actor_rel_vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('actor_acc')) {
        this.actor_acc = initObj.actor_acc
      }
      else {
        this.actor_acc = new geometry_msgs.msg.Vector3();
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
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [convex_hull]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.convex_hull, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [actor_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.actor_pos, buffer, bufferOffset);
    // Serialize message field [actor_rel_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.actor_rel_pos, buffer, bufferOffset);
    // Serialize message field [actor_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.actor_vel, buffer, bufferOffset);
    // Serialize message field [actor_rel_vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.actor_rel_vel, buffer, bufferOffset);
    // Serialize message field [actor_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.actor_acc, buffer, bufferOffset);
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
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [convex_hull]
    data.convex_hull = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actor_pos]
    data.actor_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_rel_pos]
    data.actor_rel_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_vel]
    data.actor_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_rel_vel]
    data.actor_rel_vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_acc]
    data.actor_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [actor_psi]
    data.actor_psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actor_speed]
    data.actor_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.label.length;
    length += 12 * object.points.length;
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.convex_hull);
    return length + 156;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_info_msgs/VehicleInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ca1327c8a619c30ee2b344f65cb183c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 单个车辆信息
    uint32 id
    string label
    
    # 新增：原始点集合（一般取目标的凸包点）
    geometry_msgs/Point32[] points
    
    # 新增：凸包（带坐标系和时间戳）
    geometry_msgs/PolygonStamped convex_hull
    
    # 目标高度（m）
    float64 height
    
    # 绝对坐标（全局/地图坐标系）
    geometry_msgs/Point actor_pos
    
    # 相对自车坐标（若无法计算，可与绝对坐标一致或置零）
    geometry_msgs/Point actor_rel_pos
    
    # 速度/相对速度/加速度（m/s, m/s, m/s^2）
    geometry_msgs/Vector3 actor_vel
    geometry_msgs/Vector3 actor_rel_vel
    geometry_msgs/Vector3 actor_acc
    
    # 航向（rad，右手系，建议与 plusgo 的 theta 一致）
    float64 actor_psi
    
    # 速度标量（m/s）
    float64 actor_speed
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point32.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.convex_hull !== undefined) {
      resolved.convex_hull = geometry_msgs.msg.PolygonStamped.Resolve(msg.convex_hull)
    }
    else {
      resolved.convex_hull = new geometry_msgs.msg.PolygonStamped()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.actor_pos !== undefined) {
      resolved.actor_pos = geometry_msgs.msg.Point.Resolve(msg.actor_pos)
    }
    else {
      resolved.actor_pos = new geometry_msgs.msg.Point()
    }

    if (msg.actor_rel_pos !== undefined) {
      resolved.actor_rel_pos = geometry_msgs.msg.Point.Resolve(msg.actor_rel_pos)
    }
    else {
      resolved.actor_rel_pos = new geometry_msgs.msg.Point()
    }

    if (msg.actor_vel !== undefined) {
      resolved.actor_vel = geometry_msgs.msg.Vector3.Resolve(msg.actor_vel)
    }
    else {
      resolved.actor_vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.actor_rel_vel !== undefined) {
      resolved.actor_rel_vel = geometry_msgs.msg.Vector3.Resolve(msg.actor_rel_vel)
    }
    else {
      resolved.actor_rel_vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.actor_acc !== undefined) {
      resolved.actor_acc = geometry_msgs.msg.Vector3.Resolve(msg.actor_acc)
    }
    else {
      resolved.actor_acc = new geometry_msgs.msg.Vector3()
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
