// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointLLH = require('./PointLLH.js');
let PointENU = require('./PointENU.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HMIVehicleMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driving_mode = null;
      this.gear_location = null;
      this.steering_value = null;
      this.accel_value = null;
      this.brake_value = null;
      this.speed_mps = null;
      this.position = null;
      this.utm_position = null;
      this.pitch = null;
      this.roll = null;
      this.heading = null;
      this.rtk_flag = null;
      this.origin_lat = null;
      this.origin_lon = null;
      this.current_ins_yaw = null;
      this.auto_safe = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('driving_mode')) {
        this.driving_mode = initObj.driving_mode
      }
      else {
        this.driving_mode = 0;
      }
      if (initObj.hasOwnProperty('gear_location')) {
        this.gear_location = initObj.gear_location
      }
      else {
        this.gear_location = 0;
      }
      if (initObj.hasOwnProperty('steering_value')) {
        this.steering_value = initObj.steering_value
      }
      else {
        this.steering_value = 0.0;
      }
      if (initObj.hasOwnProperty('accel_value')) {
        this.accel_value = initObj.accel_value
      }
      else {
        this.accel_value = 0.0;
      }
      if (initObj.hasOwnProperty('brake_value')) {
        this.brake_value = initObj.brake_value
      }
      else {
        this.brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('speed_mps')) {
        this.speed_mps = initObj.speed_mps
      }
      else {
        this.speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new PointLLH();
      }
      if (initObj.hasOwnProperty('utm_position')) {
        this.utm_position = initObj.utm_position
      }
      else {
        this.utm_position = new PointENU();
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
      if (initObj.hasOwnProperty('rtk_flag')) {
        this.rtk_flag = initObj.rtk_flag
      }
      else {
        this.rtk_flag = 0;
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
      if (initObj.hasOwnProperty('current_ins_yaw')) {
        this.current_ins_yaw = initObj.current_ins_yaw
      }
      else {
        this.current_ins_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('auto_safe')) {
        this.auto_safe = initObj.auto_safe
      }
      else {
        this.auto_safe = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMIVehicleMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driving_mode]
    bufferOffset = _serializer.int32(obj.driving_mode, buffer, bufferOffset);
    // Serialize message field [gear_location]
    bufferOffset = _serializer.int32(obj.gear_location, buffer, bufferOffset);
    // Serialize message field [steering_value]
    bufferOffset = _serializer.float64(obj.steering_value, buffer, bufferOffset);
    // Serialize message field [accel_value]
    bufferOffset = _serializer.float64(obj.accel_value, buffer, bufferOffset);
    // Serialize message field [brake_value]
    bufferOffset = _serializer.float64(obj.brake_value, buffer, bufferOffset);
    // Serialize message field [speed_mps]
    bufferOffset = _serializer.float64(obj.speed_mps, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = PointLLH.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [utm_position]
    bufferOffset = PointENU.serialize(obj.utm_position, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [rtk_flag]
    bufferOffset = _serializer.int32(obj.rtk_flag, buffer, bufferOffset);
    // Serialize message field [origin_lat]
    bufferOffset = _serializer.float64(obj.origin_lat, buffer, bufferOffset);
    // Serialize message field [origin_lon]
    bufferOffset = _serializer.float64(obj.origin_lon, buffer, bufferOffset);
    // Serialize message field [current_ins_yaw]
    bufferOffset = _serializer.float64(obj.current_ins_yaw, buffer, bufferOffset);
    // Serialize message field [auto_safe]
    bufferOffset = _serializer.int32(obj.auto_safe, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMIVehicleMsg
    let len;
    let data = new HMIVehicleMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driving_mode]
    data.driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_location]
    data.gear_location = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steering_value]
    data.steering_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_value]
    data.accel_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_value]
    data.brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_mps]
    data.speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = PointLLH.deserialize(buffer, bufferOffset);
    // Deserialize message field [utm_position]
    data.utm_position = PointENU.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rtk_flag]
    data.rtk_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [origin_lat]
    data.origin_lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [origin_lon]
    data.origin_lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_ins_yaw]
    data.current_ins_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [auto_safe]
    data.auto_safe = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/HMIVehicleMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4098864152844e6b0beb6b39eb265a1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   driving_mode     # 驾驶状态
    int32   gear_location     # 档位值
    float64   steering_value     # 方向盘转角
    float64   accel_value     # 线控驱动值（油门值）
    float64   brake_value     # 线控制动值（刹车值）
    float64   speed_mps     # 车速（m/s）
    PointLLH   position     # 经纬度高程
    PointENU   utm_position     # 相对参考点xyz坐标
    float64   pitch     # 方向(单位弧度，-π～π,正东:0, 逆时针。都满足右手定则)
    float64   roll     #  
    float64   heading     #  
    int32   rtk_flag     # RTK标志值
    float64   origin_lat     # // 参考点纬度 GCJ-02格式
    float64   origin_lon     # // 参考点经度 GCJ-02格式
    float64   current_ins_yaw     #  
    int32   auto_safe     # //  安全驾驶0:正常 1:左前车门没关 2:右前车门没关 3:左后车门没关 4:右后车门没关 5:未系安全带 6: 未打开反观镜 7:车辆未静止
    
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
    MSG: ros_interface/PointLLH
    float64   lon     # Longitude in degrees, ranging from -180 to 180.
    float64   lat     # Latitude in degrees, ranging from -90 to 90.
    float64   height     # WGS-84 ellipsoid height in meters.
    
    ================================================================================
    MSG: ros_interface/PointENU
    float64   x     # East from the origin, in meters.
    float64   y     # North from the origin, in meters.
    float64   z     # Up from the WGS-84 ellipsoid, in meters.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMIVehicleMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.driving_mode !== undefined) {
      resolved.driving_mode = msg.driving_mode;
    }
    else {
      resolved.driving_mode = 0
    }

    if (msg.gear_location !== undefined) {
      resolved.gear_location = msg.gear_location;
    }
    else {
      resolved.gear_location = 0
    }

    if (msg.steering_value !== undefined) {
      resolved.steering_value = msg.steering_value;
    }
    else {
      resolved.steering_value = 0.0
    }

    if (msg.accel_value !== undefined) {
      resolved.accel_value = msg.accel_value;
    }
    else {
      resolved.accel_value = 0.0
    }

    if (msg.brake_value !== undefined) {
      resolved.brake_value = msg.brake_value;
    }
    else {
      resolved.brake_value = 0.0
    }

    if (msg.speed_mps !== undefined) {
      resolved.speed_mps = msg.speed_mps;
    }
    else {
      resolved.speed_mps = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = PointLLH.Resolve(msg.position)
    }
    else {
      resolved.position = new PointLLH()
    }

    if (msg.utm_position !== undefined) {
      resolved.utm_position = PointENU.Resolve(msg.utm_position)
    }
    else {
      resolved.utm_position = new PointENU()
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

    if (msg.rtk_flag !== undefined) {
      resolved.rtk_flag = msg.rtk_flag;
    }
    else {
      resolved.rtk_flag = 0
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

    if (msg.current_ins_yaw !== undefined) {
      resolved.current_ins_yaw = msg.current_ins_yaw;
    }
    else {
      resolved.current_ins_yaw = 0.0
    }

    if (msg.auto_safe !== undefined) {
      resolved.auto_safe = msg.auto_safe;
    }
    else {
      resolved.auto_safe = 0
    }

    return resolved;
    }
};

module.exports = HMIVehicleMsg;
