// Auto-generated. Do not edit!

// (in-package vehicle_info_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleInfo = require('./VehicleInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleInfoBatch {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_info_batch = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_info_batch')) {
        this.vehicle_info_batch = initObj.vehicle_info_batch
      }
      else {
        this.vehicle_info_batch = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleInfoBatch
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_info_batch]
    // Serialize the length for message field [vehicle_info_batch]
    bufferOffset = _serializer.uint32(obj.vehicle_info_batch.length, buffer, bufferOffset);
    obj.vehicle_info_batch.forEach((val) => {
      bufferOffset = VehicleInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleInfoBatch
    let len;
    let data = new VehicleInfoBatch(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_info_batch]
    // Deserialize array length for message field [vehicle_info_batch]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vehicle_info_batch = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vehicle_info_batch[i] = VehicleInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.vehicle_info_batch.forEach((val) => {
      length += VehicleInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vehicle_info_msgs/VehicleInfoBatch';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2a582a234afb798175abdbadd03b573';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    vehicle_info_msgs/VehicleInfo[] vehicle_info_batch
    
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
    MSG: vehicle_info_msgs/VehicleInfo
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
    const resolved = new VehicleInfoBatch(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_info_batch !== undefined) {
      resolved.vehicle_info_batch = new Array(msg.vehicle_info_batch.length);
      for (let i = 0; i < resolved.vehicle_info_batch.length; ++i) {
        resolved.vehicle_info_batch[i] = VehicleInfo.Resolve(msg.vehicle_info_batch[i]);
      }
    }
    else {
      resolved.vehicle_info_batch = []
    }

    return resolved;
    }
};

module.exports = VehicleInfoBatch;
