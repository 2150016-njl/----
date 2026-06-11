// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.moving_status = null;
      this.steer_driving_mode = null;
      this.steering_value = null;
      this.steering_torque_nm = null;
      this.steering_rate_dps = null;
      this.speed_mps = null;
      this.veh_spd_vld = null;
      this.gear = null;
      this.gear_vld = null;
      this.wheel_direction_rr = null;
      this.wheel_spd_rr = null;
      this.wheel_direction_rl = null;
      this.wheel_spd_rl = null;
      this.wheel_direction_fr = null;
      this.wheel_spd_fr = null;
      this.wheel_direction_fl = null;
      this.wheel_spd_fl = null;
      this.yaw_rate = null;
      this.wss_fl_edges_sum = null;
      this.wss_fr_edges_sum = null;
      this.wss_rl_edges_sum = null;
      this.wss_rr_edges_sum = null;
      this.wss_fl_edges_sum_vld = null;
      this.wss_fr_edges_sum_vld = null;
      this.wss_rl_edges_sum_vld = null;
      this.wss_rr_edges_sum_vld = null;
      this.veh_lat_accel = null;
      this.veh_lgt_accel = null;
      this.veh_lat_accel_vld = null;
      this.veh_lgt_accel_vld = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('moving_status')) {
        this.moving_status = initObj.moving_status
      }
      else {
        this.moving_status = 0;
      }
      if (initObj.hasOwnProperty('steer_driving_mode')) {
        this.steer_driving_mode = initObj.steer_driving_mode
      }
      else {
        this.steer_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('steering_value')) {
        this.steering_value = initObj.steering_value
      }
      else {
        this.steering_value = 0.0;
      }
      if (initObj.hasOwnProperty('steering_torque_nm')) {
        this.steering_torque_nm = initObj.steering_torque_nm
      }
      else {
        this.steering_torque_nm = 0.0;
      }
      if (initObj.hasOwnProperty('steering_rate_dps')) {
        this.steering_rate_dps = initObj.steering_rate_dps
      }
      else {
        this.steering_rate_dps = 0.0;
      }
      if (initObj.hasOwnProperty('speed_mps')) {
        this.speed_mps = initObj.speed_mps
      }
      else {
        this.speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('veh_spd_vld')) {
        this.veh_spd_vld = initObj.veh_spd_vld
      }
      else {
        this.veh_spd_vld = false;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('gear_vld')) {
        this.gear_vld = initObj.gear_vld
      }
      else {
        this.gear_vld = false;
      }
      if (initObj.hasOwnProperty('wheel_direction_rr')) {
        this.wheel_direction_rr = initObj.wheel_direction_rr
      }
      else {
        this.wheel_direction_rr = 0;
      }
      if (initObj.hasOwnProperty('wheel_spd_rr')) {
        this.wheel_spd_rr = initObj.wheel_spd_rr
      }
      else {
        this.wheel_spd_rr = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_direction_rl')) {
        this.wheel_direction_rl = initObj.wheel_direction_rl
      }
      else {
        this.wheel_direction_rl = 0;
      }
      if (initObj.hasOwnProperty('wheel_spd_rl')) {
        this.wheel_spd_rl = initObj.wheel_spd_rl
      }
      else {
        this.wheel_spd_rl = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_direction_fr')) {
        this.wheel_direction_fr = initObj.wheel_direction_fr
      }
      else {
        this.wheel_direction_fr = 0;
      }
      if (initObj.hasOwnProperty('wheel_spd_fr')) {
        this.wheel_spd_fr = initObj.wheel_spd_fr
      }
      else {
        this.wheel_spd_fr = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_direction_fl')) {
        this.wheel_direction_fl = initObj.wheel_direction_fl
      }
      else {
        this.wheel_direction_fl = 0;
      }
      if (initObj.hasOwnProperty('wheel_spd_fl')) {
        this.wheel_spd_fl = initObj.wheel_spd_fl
      }
      else {
        this.wheel_spd_fl = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('wss_fl_edges_sum')) {
        this.wss_fl_edges_sum = initObj.wss_fl_edges_sum
      }
      else {
        this.wss_fl_edges_sum = 0;
      }
      if (initObj.hasOwnProperty('wss_fr_edges_sum')) {
        this.wss_fr_edges_sum = initObj.wss_fr_edges_sum
      }
      else {
        this.wss_fr_edges_sum = 0;
      }
      if (initObj.hasOwnProperty('wss_rl_edges_sum')) {
        this.wss_rl_edges_sum = initObj.wss_rl_edges_sum
      }
      else {
        this.wss_rl_edges_sum = 0;
      }
      if (initObj.hasOwnProperty('wss_rr_edges_sum')) {
        this.wss_rr_edges_sum = initObj.wss_rr_edges_sum
      }
      else {
        this.wss_rr_edges_sum = 0;
      }
      if (initObj.hasOwnProperty('wss_fl_edges_sum_vld')) {
        this.wss_fl_edges_sum_vld = initObj.wss_fl_edges_sum_vld
      }
      else {
        this.wss_fl_edges_sum_vld = false;
      }
      if (initObj.hasOwnProperty('wss_fr_edges_sum_vld')) {
        this.wss_fr_edges_sum_vld = initObj.wss_fr_edges_sum_vld
      }
      else {
        this.wss_fr_edges_sum_vld = false;
      }
      if (initObj.hasOwnProperty('wss_rl_edges_sum_vld')) {
        this.wss_rl_edges_sum_vld = initObj.wss_rl_edges_sum_vld
      }
      else {
        this.wss_rl_edges_sum_vld = false;
      }
      if (initObj.hasOwnProperty('wss_rr_edges_sum_vld')) {
        this.wss_rr_edges_sum_vld = initObj.wss_rr_edges_sum_vld
      }
      else {
        this.wss_rr_edges_sum_vld = false;
      }
      if (initObj.hasOwnProperty('veh_lat_accel')) {
        this.veh_lat_accel = initObj.veh_lat_accel
      }
      else {
        this.veh_lat_accel = 0.0;
      }
      if (initObj.hasOwnProperty('veh_lgt_accel')) {
        this.veh_lgt_accel = initObj.veh_lgt_accel
      }
      else {
        this.veh_lgt_accel = 0.0;
      }
      if (initObj.hasOwnProperty('veh_lat_accel_vld')) {
        this.veh_lat_accel_vld = initObj.veh_lat_accel_vld
      }
      else {
        this.veh_lat_accel_vld = false;
      }
      if (initObj.hasOwnProperty('veh_lgt_accel_vld')) {
        this.veh_lgt_accel_vld = initObj.veh_lgt_accel_vld
      }
      else {
        this.veh_lgt_accel_vld = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [moving_status]
    bufferOffset = _serializer.int32(obj.moving_status, buffer, bufferOffset);
    // Serialize message field [steer_driving_mode]
    bufferOffset = _serializer.int32(obj.steer_driving_mode, buffer, bufferOffset);
    // Serialize message field [steering_value]
    bufferOffset = _serializer.float64(obj.steering_value, buffer, bufferOffset);
    // Serialize message field [steering_torque_nm]
    bufferOffset = _serializer.float64(obj.steering_torque_nm, buffer, bufferOffset);
    // Serialize message field [steering_rate_dps]
    bufferOffset = _serializer.float64(obj.steering_rate_dps, buffer, bufferOffset);
    // Serialize message field [speed_mps]
    bufferOffset = _serializer.float64(obj.speed_mps, buffer, bufferOffset);
    // Serialize message field [veh_spd_vld]
    bufferOffset = _serializer.bool(obj.veh_spd_vld, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int32(obj.gear, buffer, bufferOffset);
    // Serialize message field [gear_vld]
    bufferOffset = _serializer.bool(obj.gear_vld, buffer, bufferOffset);
    // Serialize message field [wheel_direction_rr]
    bufferOffset = _serializer.int32(obj.wheel_direction_rr, buffer, bufferOffset);
    // Serialize message field [wheel_spd_rr]
    bufferOffset = _serializer.float64(obj.wheel_spd_rr, buffer, bufferOffset);
    // Serialize message field [wheel_direction_rl]
    bufferOffset = _serializer.int32(obj.wheel_direction_rl, buffer, bufferOffset);
    // Serialize message field [wheel_spd_rl]
    bufferOffset = _serializer.float64(obj.wheel_spd_rl, buffer, bufferOffset);
    // Serialize message field [wheel_direction_fr]
    bufferOffset = _serializer.int32(obj.wheel_direction_fr, buffer, bufferOffset);
    // Serialize message field [wheel_spd_fr]
    bufferOffset = _serializer.float64(obj.wheel_spd_fr, buffer, bufferOffset);
    // Serialize message field [wheel_direction_fl]
    bufferOffset = _serializer.int32(obj.wheel_direction_fl, buffer, bufferOffset);
    // Serialize message field [wheel_spd_fl]
    bufferOffset = _serializer.float64(obj.wheel_spd_fl, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [wss_fl_edges_sum]
    bufferOffset = _serializer.int32(obj.wss_fl_edges_sum, buffer, bufferOffset);
    // Serialize message field [wss_fr_edges_sum]
    bufferOffset = _serializer.int32(obj.wss_fr_edges_sum, buffer, bufferOffset);
    // Serialize message field [wss_rl_edges_sum]
    bufferOffset = _serializer.int32(obj.wss_rl_edges_sum, buffer, bufferOffset);
    // Serialize message field [wss_rr_edges_sum]
    bufferOffset = _serializer.int32(obj.wss_rr_edges_sum, buffer, bufferOffset);
    // Serialize message field [wss_fl_edges_sum_vld]
    bufferOffset = _serializer.bool(obj.wss_fl_edges_sum_vld, buffer, bufferOffset);
    // Serialize message field [wss_fr_edges_sum_vld]
    bufferOffset = _serializer.bool(obj.wss_fr_edges_sum_vld, buffer, bufferOffset);
    // Serialize message field [wss_rl_edges_sum_vld]
    bufferOffset = _serializer.bool(obj.wss_rl_edges_sum_vld, buffer, bufferOffset);
    // Serialize message field [wss_rr_edges_sum_vld]
    bufferOffset = _serializer.bool(obj.wss_rr_edges_sum_vld, buffer, bufferOffset);
    // Serialize message field [veh_lat_accel]
    bufferOffset = _serializer.float64(obj.veh_lat_accel, buffer, bufferOffset);
    // Serialize message field [veh_lgt_accel]
    bufferOffset = _serializer.float64(obj.veh_lgt_accel, buffer, bufferOffset);
    // Serialize message field [veh_lat_accel_vld]
    bufferOffset = _serializer.bool(obj.veh_lat_accel_vld, buffer, bufferOffset);
    // Serialize message field [veh_lgt_accel_vld]
    bufferOffset = _serializer.bool(obj.veh_lgt_accel_vld, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelInfo
    let len;
    let data = new WheelInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [moving_status]
    data.moving_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_driving_mode]
    data.steer_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steering_value]
    data.steering_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_torque_nm]
    data.steering_torque_nm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_rate_dps]
    data.steering_rate_dps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_mps]
    data.speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [veh_spd_vld]
    data.veh_spd_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_vld]
    data.gear_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_rr]
    data.wheel_direction_rr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_spd_rr]
    data.wheel_spd_rr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_rl]
    data.wheel_direction_rl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_spd_rl]
    data.wheel_spd_rl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_fr]
    data.wheel_direction_fr = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_spd_fr]
    data.wheel_spd_fr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_direction_fl]
    data.wheel_direction_fl = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wheel_spd_fl]
    data.wheel_spd_fl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wss_fl_edges_sum]
    data.wss_fl_edges_sum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wss_fr_edges_sum]
    data.wss_fr_edges_sum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wss_rl_edges_sum]
    data.wss_rl_edges_sum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wss_rr_edges_sum]
    data.wss_rr_edges_sum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wss_fl_edges_sum_vld]
    data.wss_fl_edges_sum_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wss_fr_edges_sum_vld]
    data.wss_fr_edges_sum_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wss_rl_edges_sum_vld]
    data.wss_rl_edges_sum_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wss_rr_edges_sum_vld]
    data.wss_rr_edges_sum_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [veh_lat_accel]
    data.veh_lat_accel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [veh_lgt_accel]
    data.veh_lgt_accel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [veh_lat_accel_vld]
    data.veh_lat_accel_vld = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [veh_lgt_accel_vld]
    data.veh_lgt_accel_vld = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 140;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/WheelInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89a45d7281d30b62ae7cbb5f0d17e21a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   moving_status     # 0=UNKNOWN_VEHICLE_STATE  1=STATIONARY  2=MOVING_FORWARD  3=MOVING_BACKWARD
    int32   steer_driving_mode     # 0=COMPLETE_MANUAL  1=COMPLETE_AUTO_DRIVE  4=EMERGENCY_MODE
    float64   steering_value     # Real steering location
    float64   steering_torque_nm     # Applied steering torque in [Nm]
    float64   steering_rate_dps     # degree/s
    float64   speed_mps     # Vehicle Speed in meters per second
    bool   veh_spd_vld     # 车速有效性
    int32   gear     # 档位
    bool   gear_vld     # 档位有效性
    int32   wheel_direction_rr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
    float64   wheel_spd_rr     # Actual speed of the right rear wheel
    int32   wheel_direction_rl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
    float64   wheel_spd_rl     # Actual speed of the left rear wheel
    int32   wheel_direction_fr     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
    float64   wheel_spd_fr     # Actual speed of the right front wheel
    int32   wheel_direction_fl     # 0=FORWARD 1=BACKWARD 2=STANDSTILL 3=INVALID
    float64   wheel_spd_fl     # Actual speed of the left front wheel
    float64   yaw_rate     # Yaw rate[degree/s] [-163.84|163.835]
    int32   wss_fl_edges_sum     # 左前轮边缘和
    int32   wss_fr_edges_sum     # 右前轮边缘和
    int32   wss_rl_edges_sum     # 左后轮边缘和
    int32   wss_rr_edges_sum     # 右后轮边缘和
    bool   wss_fl_edges_sum_vld     # 左前轮边缘和有效位（0：无效 1：有效）
    bool   wss_fr_edges_sum_vld     # 右前轮边缘和有效位（0：无效 1：有效）
    bool   wss_rl_edges_sum_vld     # 左后轮边缘和有效位（0：无效 1：有效）
    bool   wss_rr_edges_sum_vld     # 右后轮边缘和有效位（0：无效 1：有效）
    float64   veh_lat_accel     # 车辆横向加速度
    float64   veh_lgt_accel     # 车辆纵向加速度
    bool   veh_lat_accel_vld     # 车辆横向加速度有效性
    bool   veh_lgt_accel_vld     # 车辆纵向加速度有效性
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.moving_status !== undefined) {
      resolved.moving_status = msg.moving_status;
    }
    else {
      resolved.moving_status = 0
    }

    if (msg.steer_driving_mode !== undefined) {
      resolved.steer_driving_mode = msg.steer_driving_mode;
    }
    else {
      resolved.steer_driving_mode = 0
    }

    if (msg.steering_value !== undefined) {
      resolved.steering_value = msg.steering_value;
    }
    else {
      resolved.steering_value = 0.0
    }

    if (msg.steering_torque_nm !== undefined) {
      resolved.steering_torque_nm = msg.steering_torque_nm;
    }
    else {
      resolved.steering_torque_nm = 0.0
    }

    if (msg.steering_rate_dps !== undefined) {
      resolved.steering_rate_dps = msg.steering_rate_dps;
    }
    else {
      resolved.steering_rate_dps = 0.0
    }

    if (msg.speed_mps !== undefined) {
      resolved.speed_mps = msg.speed_mps;
    }
    else {
      resolved.speed_mps = 0.0
    }

    if (msg.veh_spd_vld !== undefined) {
      resolved.veh_spd_vld = msg.veh_spd_vld;
    }
    else {
      resolved.veh_spd_vld = false
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.gear_vld !== undefined) {
      resolved.gear_vld = msg.gear_vld;
    }
    else {
      resolved.gear_vld = false
    }

    if (msg.wheel_direction_rr !== undefined) {
      resolved.wheel_direction_rr = msg.wheel_direction_rr;
    }
    else {
      resolved.wheel_direction_rr = 0
    }

    if (msg.wheel_spd_rr !== undefined) {
      resolved.wheel_spd_rr = msg.wheel_spd_rr;
    }
    else {
      resolved.wheel_spd_rr = 0.0
    }

    if (msg.wheel_direction_rl !== undefined) {
      resolved.wheel_direction_rl = msg.wheel_direction_rl;
    }
    else {
      resolved.wheel_direction_rl = 0
    }

    if (msg.wheel_spd_rl !== undefined) {
      resolved.wheel_spd_rl = msg.wheel_spd_rl;
    }
    else {
      resolved.wheel_spd_rl = 0.0
    }

    if (msg.wheel_direction_fr !== undefined) {
      resolved.wheel_direction_fr = msg.wheel_direction_fr;
    }
    else {
      resolved.wheel_direction_fr = 0
    }

    if (msg.wheel_spd_fr !== undefined) {
      resolved.wheel_spd_fr = msg.wheel_spd_fr;
    }
    else {
      resolved.wheel_spd_fr = 0.0
    }

    if (msg.wheel_direction_fl !== undefined) {
      resolved.wheel_direction_fl = msg.wheel_direction_fl;
    }
    else {
      resolved.wheel_direction_fl = 0
    }

    if (msg.wheel_spd_fl !== undefined) {
      resolved.wheel_spd_fl = msg.wheel_spd_fl;
    }
    else {
      resolved.wheel_spd_fl = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.wss_fl_edges_sum !== undefined) {
      resolved.wss_fl_edges_sum = msg.wss_fl_edges_sum;
    }
    else {
      resolved.wss_fl_edges_sum = 0
    }

    if (msg.wss_fr_edges_sum !== undefined) {
      resolved.wss_fr_edges_sum = msg.wss_fr_edges_sum;
    }
    else {
      resolved.wss_fr_edges_sum = 0
    }

    if (msg.wss_rl_edges_sum !== undefined) {
      resolved.wss_rl_edges_sum = msg.wss_rl_edges_sum;
    }
    else {
      resolved.wss_rl_edges_sum = 0
    }

    if (msg.wss_rr_edges_sum !== undefined) {
      resolved.wss_rr_edges_sum = msg.wss_rr_edges_sum;
    }
    else {
      resolved.wss_rr_edges_sum = 0
    }

    if (msg.wss_fl_edges_sum_vld !== undefined) {
      resolved.wss_fl_edges_sum_vld = msg.wss_fl_edges_sum_vld;
    }
    else {
      resolved.wss_fl_edges_sum_vld = false
    }

    if (msg.wss_fr_edges_sum_vld !== undefined) {
      resolved.wss_fr_edges_sum_vld = msg.wss_fr_edges_sum_vld;
    }
    else {
      resolved.wss_fr_edges_sum_vld = false
    }

    if (msg.wss_rl_edges_sum_vld !== undefined) {
      resolved.wss_rl_edges_sum_vld = msg.wss_rl_edges_sum_vld;
    }
    else {
      resolved.wss_rl_edges_sum_vld = false
    }

    if (msg.wss_rr_edges_sum_vld !== undefined) {
      resolved.wss_rr_edges_sum_vld = msg.wss_rr_edges_sum_vld;
    }
    else {
      resolved.wss_rr_edges_sum_vld = false
    }

    if (msg.veh_lat_accel !== undefined) {
      resolved.veh_lat_accel = msg.veh_lat_accel;
    }
    else {
      resolved.veh_lat_accel = 0.0
    }

    if (msg.veh_lgt_accel !== undefined) {
      resolved.veh_lgt_accel = msg.veh_lgt_accel;
    }
    else {
      resolved.veh_lgt_accel = 0.0
    }

    if (msg.veh_lat_accel_vld !== undefined) {
      resolved.veh_lat_accel_vld = msg.veh_lat_accel_vld;
    }
    else {
      resolved.veh_lat_accel_vld = false
    }

    if (msg.veh_lgt_accel_vld !== undefined) {
      resolved.veh_lgt_accel_vld = msg.veh_lgt_accel_vld;
    }
    else {
      resolved.veh_lgt_accel_vld = false
    }

    return resolved;
    }
};

module.exports = WheelInfo;
