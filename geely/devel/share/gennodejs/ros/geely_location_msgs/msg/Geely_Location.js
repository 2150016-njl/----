// Auto-generated. Do not edit!

// (in-package geely_location_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Geely_Location {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.header = null;
      this.position = null;
      this.pitch = null;
      this.roll = null;
      this.heading = null;
      this.linear_velocity = null;
      this.linear_acceleration = null;
      this.angular_velocity = null;
      this.rtk_flag = null;
      this.odom_type = null;
      this.auxiliary_type = null;
      this.location_valid_flag = null;
      this.origin_lat = null;
      this.origin_lon = null;
      this.utm_position = null;
      this.change_origin_flag = null;
      this.utm_position_next = null;
      this.position_std_dev = null;
      this.orientation_std_dev = null;
      this.linear_velocity_std_dev = null;
      this.linear_acceleration_std_dev = null;
      this.angular_velocity_std_dev = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rtk_flag')) {
        this.rtk_flag = initObj.rtk_flag
      }
      else {
        this.rtk_flag = 0;
      }
      if (initObj.hasOwnProperty('odom_type')) {
        this.odom_type = initObj.odom_type
      }
      else {
        this.odom_type = 0;
      }
      if (initObj.hasOwnProperty('auxiliary_type')) {
        this.auxiliary_type = initObj.auxiliary_type
      }
      else {
        this.auxiliary_type = 0;
      }
      if (initObj.hasOwnProperty('location_valid_flag')) {
        this.location_valid_flag = initObj.location_valid_flag
      }
      else {
        this.location_valid_flag = 0;
      }
      if (initObj.hasOwnProperty('origin_lat')) {
        this.origin_lat = initObj.origin_lat
      }
      else {
        this.origin_lat = 0.0;
      }
      if (initObj.hasOwnProperty('origin_lon')) {
        this.origin_lon = initObj.origin_lon
      }
      else {
        this.origin_lon = 0.0;
      }
      if (initObj.hasOwnProperty('utm_position')) {
        this.utm_position = initObj.utm_position
      }
      else {
        this.utm_position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('change_origin_flag')) {
        this.change_origin_flag = initObj.change_origin_flag
      }
      else {
        this.change_origin_flag = 0;
      }
      if (initObj.hasOwnProperty('utm_position_next')) {
        this.utm_position_next = initObj.utm_position_next
      }
      else {
        this.utm_position_next = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('position_std_dev')) {
        this.position_std_dev = initObj.position_std_dev
      }
      else {
        this.position_std_dev = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('orientation_std_dev')) {
        this.orientation_std_dev = initObj.orientation_std_dev
      }
      else {
        this.orientation_std_dev = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_velocity_std_dev')) {
        this.linear_velocity_std_dev = initObj.linear_velocity_std_dev
      }
      else {
        this.linear_velocity_std_dev = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration_std_dev')) {
        this.linear_acceleration_std_dev = initObj.linear_acceleration_std_dev
      }
      else {
        this.linear_acceleration_std_dev = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity_std_dev')) {
        this.angular_velocity_std_dev = initObj.angular_velocity_std_dev
      }
      else {
        this.angular_velocity_std_dev = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Geely_Location
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [rtk_flag]
    bufferOffset = _serializer.int32(obj.rtk_flag, buffer, bufferOffset);
    // Serialize message field [odom_type]
    bufferOffset = _serializer.int32(obj.odom_type, buffer, bufferOffset);
    // Serialize message field [auxiliary_type]
    bufferOffset = _serializer.int32(obj.auxiliary_type, buffer, bufferOffset);
    // Serialize message field [location_valid_flag]
    bufferOffset = _serializer.int32(obj.location_valid_flag, buffer, bufferOffset);
    // Serialize message field [origin_lat]
    bufferOffset = _serializer.float64(obj.origin_lat, buffer, bufferOffset);
    // Serialize message field [origin_lon]
    bufferOffset = _serializer.float64(obj.origin_lon, buffer, bufferOffset);
    // Serialize message field [utm_position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.utm_position, buffer, bufferOffset);
    // Serialize message field [change_origin_flag]
    bufferOffset = _serializer.int32(obj.change_origin_flag, buffer, bufferOffset);
    // Serialize message field [utm_position_next]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.utm_position_next, buffer, bufferOffset);
    // Serialize message field [position_std_dev]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_std_dev, buffer, bufferOffset);
    // Serialize message field [orientation_std_dev]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.orientation_std_dev, buffer, bufferOffset);
    // Serialize message field [linear_velocity_std_dev]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_velocity_std_dev, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_std_dev]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration_std_dev, buffer, bufferOffset);
    // Serialize message field [angular_velocity_std_dev]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity_std_dev, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Geely_Location
    let len;
    let data = new Geely_Location(null);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rtk_flag]
    data.rtk_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [odom_type]
    data.odom_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auxiliary_type]
    data.auxiliary_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [location_valid_flag]
    data.location_valid_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [origin_lat]
    data.origin_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_lon]
    data.origin_lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_position]
    data.utm_position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [change_origin_flag]
    data.change_origin_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [utm_position_next]
    data.utm_position_next = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_std_dev]
    data.position_std_dev = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_std_dev]
    data.orientation_std_dev = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity_std_dev]
    data.linear_velocity_std_dev = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_std_dev]
    data.linear_acceleration_std_dev = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_std_dev]
    data.angular_velocity_std_dev = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 332;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geely_location_msgs/Geely_Location';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87793f2358c4810e566e37606b1cc817';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Geely_Location.msg
    # /localization/global_fusion/Location/tju 对应的消息类型
    
    # 时间戳
    float64 time
    
    # 标准 ROS 头
    std_msgs/Header header
    
    # 原始经纬高
    # 约定：x=lon, y=lat, z=height（仅占位，不影响UTM使用）
    geometry_msgs/Point position
    
    # 姿态（弧度）
    float64 pitch
    float64 roll
    float64 heading
    
    # ENU 速度/加速度/角速度（单位：m/s, m/s^2, rad/s）
    geometry_msgs/Vector3 linear_velocity
    geometry_msgs/Vector3 linear_acceleration
    geometry_msgs/Vector3 angular_velocity
    
    # 状态标志
    int32 rtk_flag
    int32 odom_type
    int32 auxiliary_type
    int32 location_valid_flag
    
    # 原点信息
    float64 origin_lat
    float64 origin_lon
    
    # UTM 位置（m）：x=East, y=North, z=Up
    geometry_msgs/Point utm_position
    
    # 原点切换标记与下一帧UTM
    int32 change_origin_flag
    geometry_msgs/Point utm_position_next
    
    # 各类标准差（Vector3）
    geometry_msgs/Vector3 position_std_dev
    geometry_msgs/Vector3 orientation_std_dev
    geometry_msgs/Vector3 linear_velocity_std_dev
    geometry_msgs/Vector3 linear_acceleration_std_dev
    geometry_msgs/Vector3 angular_velocity_std_dev
    
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
    const resolved = new Geely_Location(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = geometry_msgs.msg.Vector3.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.rtk_flag !== undefined) {
      resolved.rtk_flag = msg.rtk_flag;
    }
    else {
      resolved.rtk_flag = 0
    }

    if (msg.odom_type !== undefined) {
      resolved.odom_type = msg.odom_type;
    }
    else {
      resolved.odom_type = 0
    }

    if (msg.auxiliary_type !== undefined) {
      resolved.auxiliary_type = msg.auxiliary_type;
    }
    else {
      resolved.auxiliary_type = 0
    }

    if (msg.location_valid_flag !== undefined) {
      resolved.location_valid_flag = msg.location_valid_flag;
    }
    else {
      resolved.location_valid_flag = 0
    }

    if (msg.origin_lat !== undefined) {
      resolved.origin_lat = msg.origin_lat;
    }
    else {
      resolved.origin_lat = 0.0
    }

    if (msg.origin_lon !== undefined) {
      resolved.origin_lon = msg.origin_lon;
    }
    else {
      resolved.origin_lon = 0.0
    }

    if (msg.utm_position !== undefined) {
      resolved.utm_position = geometry_msgs.msg.Point.Resolve(msg.utm_position)
    }
    else {
      resolved.utm_position = new geometry_msgs.msg.Point()
    }

    if (msg.change_origin_flag !== undefined) {
      resolved.change_origin_flag = msg.change_origin_flag;
    }
    else {
      resolved.change_origin_flag = 0
    }

    if (msg.utm_position_next !== undefined) {
      resolved.utm_position_next = geometry_msgs.msg.Point.Resolve(msg.utm_position_next)
    }
    else {
      resolved.utm_position_next = new geometry_msgs.msg.Point()
    }

    if (msg.position_std_dev !== undefined) {
      resolved.position_std_dev = geometry_msgs.msg.Vector3.Resolve(msg.position_std_dev)
    }
    else {
      resolved.position_std_dev = new geometry_msgs.msg.Vector3()
    }

    if (msg.orientation_std_dev !== undefined) {
      resolved.orientation_std_dev = geometry_msgs.msg.Vector3.Resolve(msg.orientation_std_dev)
    }
    else {
      resolved.orientation_std_dev = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_velocity_std_dev !== undefined) {
      resolved.linear_velocity_std_dev = geometry_msgs.msg.Vector3.Resolve(msg.linear_velocity_std_dev)
    }
    else {
      resolved.linear_velocity_std_dev = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration_std_dev !== undefined) {
      resolved.linear_acceleration_std_dev = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration_std_dev)
    }
    else {
      resolved.linear_acceleration_std_dev = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_velocity_std_dev !== undefined) {
      resolved.angular_velocity_std_dev = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity_std_dev)
    }
    else {
      resolved.angular_velocity_std_dev = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = Geely_Location;
