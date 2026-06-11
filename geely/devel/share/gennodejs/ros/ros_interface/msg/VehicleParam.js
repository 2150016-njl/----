// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.brand = null;
      this.steer_mode = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.mass_fl = null;
      this.mass_fr = null;
      this.mass_rl = null;
      this.mass_rr = null;
      this.wheel_radius = null;
      this.wheelbase = null;
      this.front_edge_to_center = null;
      this.back_edge_to_center = null;
      this.lf = null;
      this.lr = null;
      this.cf = null;
      this.cr = null;
      this.steer_ratio = null;
      this.rolling_coefficient = null;
      this.air_density = null;
      this.air_damping_coefficient = null;
      this.max_front_steer_angle = null;
      this.min_front_steer_angle = null;
      this.max_rear_steer_angle = null;
      this.min_rear_steer_angle = null;
      this.speed_limit = null;
      this.max_brake_value = null;
      this.min_brake_value = null;
      this.max_accel_value = null;
      this.min_accel_value = null;
      this.speed_deadzone = null;
      this.standstill_acceleration = null;
      this.max_front_steer_angle_rate = null;
      this.max_rear_steer_angle_rate = null;
      this.max_abs_speed_when_stopped = null;
      this.max_abs_speed_when_stopped_duration = null;
      this.brake_value_when_gear_transitioning = null;
      this.accel_deadzone = null;
      this.brake_deadzone = null;
      this.acceleration_in_idle = null;
      this.deceleration_in_idle = null;
      this.max_acceleration_jerk = null;
      this.max_acceleration = null;
      this.max_deceleration = null;
      this.min_turning_radius = null;
    }
    else {
      if (initObj.hasOwnProperty('brand')) {
        this.brand = initObj.brand
      }
      else {
        this.brand = '';
      }
      if (initObj.hasOwnProperty('steer_mode')) {
        this.steer_mode = initObj.steer_mode
      }
      else {
        this.steer_mode = 0;
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
      if (initObj.hasOwnProperty('mass_fl')) {
        this.mass_fl = initObj.mass_fl
      }
      else {
        this.mass_fl = 0.0;
      }
      if (initObj.hasOwnProperty('mass_fr')) {
        this.mass_fr = initObj.mass_fr
      }
      else {
        this.mass_fr = 0.0;
      }
      if (initObj.hasOwnProperty('mass_rl')) {
        this.mass_rl = initObj.mass_rl
      }
      else {
        this.mass_rl = 0.0;
      }
      if (initObj.hasOwnProperty('mass_rr')) {
        this.mass_rr = initObj.mass_rr
      }
      else {
        this.mass_rr = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_radius')) {
        this.wheel_radius = initObj.wheel_radius
      }
      else {
        this.wheel_radius = 0.0;
      }
      if (initObj.hasOwnProperty('wheelbase')) {
        this.wheelbase = initObj.wheelbase
      }
      else {
        this.wheelbase = 0.0;
      }
      if (initObj.hasOwnProperty('front_edge_to_center')) {
        this.front_edge_to_center = initObj.front_edge_to_center
      }
      else {
        this.front_edge_to_center = 0.0;
      }
      if (initObj.hasOwnProperty('back_edge_to_center')) {
        this.back_edge_to_center = initObj.back_edge_to_center
      }
      else {
        this.back_edge_to_center = 0.0;
      }
      if (initObj.hasOwnProperty('lf')) {
        this.lf = initObj.lf
      }
      else {
        this.lf = 0.0;
      }
      if (initObj.hasOwnProperty('lr')) {
        this.lr = initObj.lr
      }
      else {
        this.lr = 0.0;
      }
      if (initObj.hasOwnProperty('cf')) {
        this.cf = initObj.cf
      }
      else {
        this.cf = 0.0;
      }
      if (initObj.hasOwnProperty('cr')) {
        this.cr = initObj.cr
      }
      else {
        this.cr = 0.0;
      }
      if (initObj.hasOwnProperty('steer_ratio')) {
        this.steer_ratio = initObj.steer_ratio
      }
      else {
        this.steer_ratio = 0.0;
      }
      if (initObj.hasOwnProperty('rolling_coefficient')) {
        this.rolling_coefficient = initObj.rolling_coefficient
      }
      else {
        this.rolling_coefficient = 0.0;
      }
      if (initObj.hasOwnProperty('air_density')) {
        this.air_density = initObj.air_density
      }
      else {
        this.air_density = 0.0;
      }
      if (initObj.hasOwnProperty('air_damping_coefficient')) {
        this.air_damping_coefficient = initObj.air_damping_coefficient
      }
      else {
        this.air_damping_coefficient = 0.0;
      }
      if (initObj.hasOwnProperty('max_front_steer_angle')) {
        this.max_front_steer_angle = initObj.max_front_steer_angle
      }
      else {
        this.max_front_steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('min_front_steer_angle')) {
        this.min_front_steer_angle = initObj.min_front_steer_angle
      }
      else {
        this.min_front_steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('max_rear_steer_angle')) {
        this.max_rear_steer_angle = initObj.max_rear_steer_angle
      }
      else {
        this.max_rear_steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('min_rear_steer_angle')) {
        this.min_rear_steer_angle = initObj.min_rear_steer_angle
      }
      else {
        this.min_rear_steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('max_brake_value')) {
        this.max_brake_value = initObj.max_brake_value
      }
      else {
        this.max_brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('min_brake_value')) {
        this.min_brake_value = initObj.min_brake_value
      }
      else {
        this.min_brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('max_accel_value')) {
        this.max_accel_value = initObj.max_accel_value
      }
      else {
        this.max_accel_value = 0.0;
      }
      if (initObj.hasOwnProperty('min_accel_value')) {
        this.min_accel_value = initObj.min_accel_value
      }
      else {
        this.min_accel_value = 0.0;
      }
      if (initObj.hasOwnProperty('speed_deadzone')) {
        this.speed_deadzone = initObj.speed_deadzone
      }
      else {
        this.speed_deadzone = 0.0;
      }
      if (initObj.hasOwnProperty('standstill_acceleration')) {
        this.standstill_acceleration = initObj.standstill_acceleration
      }
      else {
        this.standstill_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('max_front_steer_angle_rate')) {
        this.max_front_steer_angle_rate = initObj.max_front_steer_angle_rate
      }
      else {
        this.max_front_steer_angle_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_rear_steer_angle_rate')) {
        this.max_rear_steer_angle_rate = initObj.max_rear_steer_angle_rate
      }
      else {
        this.max_rear_steer_angle_rate = 0.0;
      }
      if (initObj.hasOwnProperty('max_abs_speed_when_stopped')) {
        this.max_abs_speed_when_stopped = initObj.max_abs_speed_when_stopped
      }
      else {
        this.max_abs_speed_when_stopped = 0.0;
      }
      if (initObj.hasOwnProperty('max_abs_speed_when_stopped_duration')) {
        this.max_abs_speed_when_stopped_duration = initObj.max_abs_speed_when_stopped_duration
      }
      else {
        this.max_abs_speed_when_stopped_duration = 0.0;
      }
      if (initObj.hasOwnProperty('brake_value_when_gear_transitioning')) {
        this.brake_value_when_gear_transitioning = initObj.brake_value_when_gear_transitioning
      }
      else {
        this.brake_value_when_gear_transitioning = 0.0;
      }
      if (initObj.hasOwnProperty('accel_deadzone')) {
        this.accel_deadzone = initObj.accel_deadzone
      }
      else {
        this.accel_deadzone = 0.0;
      }
      if (initObj.hasOwnProperty('brake_deadzone')) {
        this.brake_deadzone = initObj.brake_deadzone
      }
      else {
        this.brake_deadzone = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_in_idle')) {
        this.acceleration_in_idle = initObj.acceleration_in_idle
      }
      else {
        this.acceleration_in_idle = 0.0;
      }
      if (initObj.hasOwnProperty('deceleration_in_idle')) {
        this.deceleration_in_idle = initObj.deceleration_in_idle
      }
      else {
        this.deceleration_in_idle = 0.0;
      }
      if (initObj.hasOwnProperty('max_acceleration_jerk')) {
        this.max_acceleration_jerk = initObj.max_acceleration_jerk
      }
      else {
        this.max_acceleration_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('max_acceleration')) {
        this.max_acceleration = initObj.max_acceleration
      }
      else {
        this.max_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('max_deceleration')) {
        this.max_deceleration = initObj.max_deceleration
      }
      else {
        this.max_deceleration = 0.0;
      }
      if (initObj.hasOwnProperty('min_turning_radius')) {
        this.min_turning_radius = initObj.min_turning_radius
      }
      else {
        this.min_turning_radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleParam
    // Serialize message field [brand]
    bufferOffset = _serializer.string(obj.brand, buffer, bufferOffset);
    // Serialize message field [steer_mode]
    bufferOffset = _serializer.int32(obj.steer_mode, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [mass_fl]
    bufferOffset = _serializer.float64(obj.mass_fl, buffer, bufferOffset);
    // Serialize message field [mass_fr]
    bufferOffset = _serializer.float64(obj.mass_fr, buffer, bufferOffset);
    // Serialize message field [mass_rl]
    bufferOffset = _serializer.float64(obj.mass_rl, buffer, bufferOffset);
    // Serialize message field [mass_rr]
    bufferOffset = _serializer.float64(obj.mass_rr, buffer, bufferOffset);
    // Serialize message field [wheel_radius]
    bufferOffset = _serializer.float64(obj.wheel_radius, buffer, bufferOffset);
    // Serialize message field [wheelbase]
    bufferOffset = _serializer.float64(obj.wheelbase, buffer, bufferOffset);
    // Serialize message field [front_edge_to_center]
    bufferOffset = _serializer.float64(obj.front_edge_to_center, buffer, bufferOffset);
    // Serialize message field [back_edge_to_center]
    bufferOffset = _serializer.float64(obj.back_edge_to_center, buffer, bufferOffset);
    // Serialize message field [lf]
    bufferOffset = _serializer.float64(obj.lf, buffer, bufferOffset);
    // Serialize message field [lr]
    bufferOffset = _serializer.float64(obj.lr, buffer, bufferOffset);
    // Serialize message field [cf]
    bufferOffset = _serializer.float64(obj.cf, buffer, bufferOffset);
    // Serialize message field [cr]
    bufferOffset = _serializer.float64(obj.cr, buffer, bufferOffset);
    // Serialize message field [steer_ratio]
    bufferOffset = _serializer.float64(obj.steer_ratio, buffer, bufferOffset);
    // Serialize message field [rolling_coefficient]
    bufferOffset = _serializer.float64(obj.rolling_coefficient, buffer, bufferOffset);
    // Serialize message field [air_density]
    bufferOffset = _serializer.float64(obj.air_density, buffer, bufferOffset);
    // Serialize message field [air_damping_coefficient]
    bufferOffset = _serializer.float64(obj.air_damping_coefficient, buffer, bufferOffset);
    // Serialize message field [max_front_steer_angle]
    bufferOffset = _serializer.float64(obj.max_front_steer_angle, buffer, bufferOffset);
    // Serialize message field [min_front_steer_angle]
    bufferOffset = _serializer.float64(obj.min_front_steer_angle, buffer, bufferOffset);
    // Serialize message field [max_rear_steer_angle]
    bufferOffset = _serializer.float64(obj.max_rear_steer_angle, buffer, bufferOffset);
    // Serialize message field [min_rear_steer_angle]
    bufferOffset = _serializer.float64(obj.min_rear_steer_angle, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float64(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [max_brake_value]
    bufferOffset = _serializer.float64(obj.max_brake_value, buffer, bufferOffset);
    // Serialize message field [min_brake_value]
    bufferOffset = _serializer.float64(obj.min_brake_value, buffer, bufferOffset);
    // Serialize message field [max_accel_value]
    bufferOffset = _serializer.float64(obj.max_accel_value, buffer, bufferOffset);
    // Serialize message field [min_accel_value]
    bufferOffset = _serializer.float64(obj.min_accel_value, buffer, bufferOffset);
    // Serialize message field [speed_deadzone]
    bufferOffset = _serializer.float64(obj.speed_deadzone, buffer, bufferOffset);
    // Serialize message field [standstill_acceleration]
    bufferOffset = _serializer.float64(obj.standstill_acceleration, buffer, bufferOffset);
    // Serialize message field [max_front_steer_angle_rate]
    bufferOffset = _serializer.float64(obj.max_front_steer_angle_rate, buffer, bufferOffset);
    // Serialize message field [max_rear_steer_angle_rate]
    bufferOffset = _serializer.float64(obj.max_rear_steer_angle_rate, buffer, bufferOffset);
    // Serialize message field [max_abs_speed_when_stopped]
    bufferOffset = _serializer.float64(obj.max_abs_speed_when_stopped, buffer, bufferOffset);
    // Serialize message field [max_abs_speed_when_stopped_duration]
    bufferOffset = _serializer.float64(obj.max_abs_speed_when_stopped_duration, buffer, bufferOffset);
    // Serialize message field [brake_value_when_gear_transitioning]
    bufferOffset = _serializer.float64(obj.brake_value_when_gear_transitioning, buffer, bufferOffset);
    // Serialize message field [accel_deadzone]
    bufferOffset = _serializer.float64(obj.accel_deadzone, buffer, bufferOffset);
    // Serialize message field [brake_deadzone]
    bufferOffset = _serializer.float64(obj.brake_deadzone, buffer, bufferOffset);
    // Serialize message field [acceleration_in_idle]
    bufferOffset = _serializer.float64(obj.acceleration_in_idle, buffer, bufferOffset);
    // Serialize message field [deceleration_in_idle]
    bufferOffset = _serializer.float64(obj.deceleration_in_idle, buffer, bufferOffset);
    // Serialize message field [max_acceleration_jerk]
    bufferOffset = _serializer.float64(obj.max_acceleration_jerk, buffer, bufferOffset);
    // Serialize message field [max_acceleration]
    bufferOffset = _serializer.float64(obj.max_acceleration, buffer, bufferOffset);
    // Serialize message field [max_deceleration]
    bufferOffset = _serializer.float64(obj.max_deceleration, buffer, bufferOffset);
    // Serialize message field [min_turning_radius]
    bufferOffset = _serializer.float64(obj.min_turning_radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleParam
    let len;
    let data = new VehicleParam(null);
    // Deserialize message field [brand]
    data.brand = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [steer_mode]
    data.steer_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mass_fl]
    data.mass_fl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mass_fr]
    data.mass_fr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mass_rl]
    data.mass_rl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mass_rr]
    data.mass_rr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_radius]
    data.wheel_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheelbase]
    data.wheelbase = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_edge_to_center]
    data.front_edge_to_center = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_edge_to_center]
    data.back_edge_to_center = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lf]
    data.lf = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lr]
    data.lr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cf]
    data.cf = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cr]
    data.cr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_ratio]
    data.steer_ratio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rolling_coefficient]
    data.rolling_coefficient = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_density]
    data.air_density = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_damping_coefficient]
    data.air_damping_coefficient = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_front_steer_angle]
    data.max_front_steer_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_front_steer_angle]
    data.min_front_steer_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_rear_steer_angle]
    data.max_rear_steer_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_rear_steer_angle]
    data.min_rear_steer_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_brake_value]
    data.max_brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_brake_value]
    data.min_brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_accel_value]
    data.max_accel_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_accel_value]
    data.min_accel_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_deadzone]
    data.speed_deadzone = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [standstill_acceleration]
    data.standstill_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_front_steer_angle_rate]
    data.max_front_steer_angle_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_rear_steer_angle_rate]
    data.max_rear_steer_angle_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_abs_speed_when_stopped]
    data.max_abs_speed_when_stopped = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_abs_speed_when_stopped_duration]
    data.max_abs_speed_when_stopped_duration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_value_when_gear_transitioning]
    data.brake_value_when_gear_transitioning = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_deadzone]
    data.accel_deadzone = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_deadzone]
    data.brake_deadzone = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_in_idle]
    data.acceleration_in_idle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [deceleration_in_idle]
    data.deceleration_in_idle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_acceleration_jerk]
    data.max_acceleration_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_acceleration]
    data.max_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_deceleration]
    data.max_deceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_turning_radius]
    data.min_turning_radius = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.brand.length;
    return length + 352;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/VehicleParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'af312f82f3e9c18a66abf5e713a2f676';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   brand     #  
    int32   steer_mode     #  
    float64   length     #  
    float64   width     #  
    float64   height     #  
    float64   mass_fl     #  
    float64   mass_fr     #  
    float64   mass_rl     #  
    float64   mass_rr     #  
    float64   wheel_radius     #  
    float64   wheelbase     #  
    float64   front_edge_to_center     #  
    float64   back_edge_to_center     #  
    float64   lf     #  
    float64   lr     #  
    float64   cf     #  
    float64   cr     #  
    float64   steer_ratio     #  
    float64   rolling_coefficient     #  
    float64   air_density     #  
    float64   air_damping_coefficient     #  
    float64   max_front_steer_angle     #  
    float64   min_front_steer_angle     #  
    float64   max_rear_steer_angle     #  
    float64   min_rear_steer_angle     #  
    float64   speed_limit     #  
    float64   max_brake_value     #  
    float64   min_brake_value     #  
    float64   max_accel_value     #  
    float64   min_accel_value     #  
    float64   speed_deadzone     #  
    float64   standstill_acceleration     #  
    float64   max_front_steer_angle_rate     #  
    float64   max_rear_steer_angle_rate     #  
    float64   max_abs_speed_when_stopped     #  
    float64   max_abs_speed_when_stopped_duration     #  
    float64   brake_value_when_gear_transitioning     #  
    float64   accel_deadzone     #  
    float64   brake_deadzone     #  
    float64   acceleration_in_idle     #  
    float64   deceleration_in_idle     #  
    float64   max_acceleration_jerk     #  
    float64   max_acceleration     #  
    float64   max_deceleration     #  
    float64   min_turning_radius     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleParam(null);
    if (msg.brand !== undefined) {
      resolved.brand = msg.brand;
    }
    else {
      resolved.brand = ''
    }

    if (msg.steer_mode !== undefined) {
      resolved.steer_mode = msg.steer_mode;
    }
    else {
      resolved.steer_mode = 0
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

    if (msg.mass_fl !== undefined) {
      resolved.mass_fl = msg.mass_fl;
    }
    else {
      resolved.mass_fl = 0.0
    }

    if (msg.mass_fr !== undefined) {
      resolved.mass_fr = msg.mass_fr;
    }
    else {
      resolved.mass_fr = 0.0
    }

    if (msg.mass_rl !== undefined) {
      resolved.mass_rl = msg.mass_rl;
    }
    else {
      resolved.mass_rl = 0.0
    }

    if (msg.mass_rr !== undefined) {
      resolved.mass_rr = msg.mass_rr;
    }
    else {
      resolved.mass_rr = 0.0
    }

    if (msg.wheel_radius !== undefined) {
      resolved.wheel_radius = msg.wheel_radius;
    }
    else {
      resolved.wheel_radius = 0.0
    }

    if (msg.wheelbase !== undefined) {
      resolved.wheelbase = msg.wheelbase;
    }
    else {
      resolved.wheelbase = 0.0
    }

    if (msg.front_edge_to_center !== undefined) {
      resolved.front_edge_to_center = msg.front_edge_to_center;
    }
    else {
      resolved.front_edge_to_center = 0.0
    }

    if (msg.back_edge_to_center !== undefined) {
      resolved.back_edge_to_center = msg.back_edge_to_center;
    }
    else {
      resolved.back_edge_to_center = 0.0
    }

    if (msg.lf !== undefined) {
      resolved.lf = msg.lf;
    }
    else {
      resolved.lf = 0.0
    }

    if (msg.lr !== undefined) {
      resolved.lr = msg.lr;
    }
    else {
      resolved.lr = 0.0
    }

    if (msg.cf !== undefined) {
      resolved.cf = msg.cf;
    }
    else {
      resolved.cf = 0.0
    }

    if (msg.cr !== undefined) {
      resolved.cr = msg.cr;
    }
    else {
      resolved.cr = 0.0
    }

    if (msg.steer_ratio !== undefined) {
      resolved.steer_ratio = msg.steer_ratio;
    }
    else {
      resolved.steer_ratio = 0.0
    }

    if (msg.rolling_coefficient !== undefined) {
      resolved.rolling_coefficient = msg.rolling_coefficient;
    }
    else {
      resolved.rolling_coefficient = 0.0
    }

    if (msg.air_density !== undefined) {
      resolved.air_density = msg.air_density;
    }
    else {
      resolved.air_density = 0.0
    }

    if (msg.air_damping_coefficient !== undefined) {
      resolved.air_damping_coefficient = msg.air_damping_coefficient;
    }
    else {
      resolved.air_damping_coefficient = 0.0
    }

    if (msg.max_front_steer_angle !== undefined) {
      resolved.max_front_steer_angle = msg.max_front_steer_angle;
    }
    else {
      resolved.max_front_steer_angle = 0.0
    }

    if (msg.min_front_steer_angle !== undefined) {
      resolved.min_front_steer_angle = msg.min_front_steer_angle;
    }
    else {
      resolved.min_front_steer_angle = 0.0
    }

    if (msg.max_rear_steer_angle !== undefined) {
      resolved.max_rear_steer_angle = msg.max_rear_steer_angle;
    }
    else {
      resolved.max_rear_steer_angle = 0.0
    }

    if (msg.min_rear_steer_angle !== undefined) {
      resolved.min_rear_steer_angle = msg.min_rear_steer_angle;
    }
    else {
      resolved.min_rear_steer_angle = 0.0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.max_brake_value !== undefined) {
      resolved.max_brake_value = msg.max_brake_value;
    }
    else {
      resolved.max_brake_value = 0.0
    }

    if (msg.min_brake_value !== undefined) {
      resolved.min_brake_value = msg.min_brake_value;
    }
    else {
      resolved.min_brake_value = 0.0
    }

    if (msg.max_accel_value !== undefined) {
      resolved.max_accel_value = msg.max_accel_value;
    }
    else {
      resolved.max_accel_value = 0.0
    }

    if (msg.min_accel_value !== undefined) {
      resolved.min_accel_value = msg.min_accel_value;
    }
    else {
      resolved.min_accel_value = 0.0
    }

    if (msg.speed_deadzone !== undefined) {
      resolved.speed_deadzone = msg.speed_deadzone;
    }
    else {
      resolved.speed_deadzone = 0.0
    }

    if (msg.standstill_acceleration !== undefined) {
      resolved.standstill_acceleration = msg.standstill_acceleration;
    }
    else {
      resolved.standstill_acceleration = 0.0
    }

    if (msg.max_front_steer_angle_rate !== undefined) {
      resolved.max_front_steer_angle_rate = msg.max_front_steer_angle_rate;
    }
    else {
      resolved.max_front_steer_angle_rate = 0.0
    }

    if (msg.max_rear_steer_angle_rate !== undefined) {
      resolved.max_rear_steer_angle_rate = msg.max_rear_steer_angle_rate;
    }
    else {
      resolved.max_rear_steer_angle_rate = 0.0
    }

    if (msg.max_abs_speed_when_stopped !== undefined) {
      resolved.max_abs_speed_when_stopped = msg.max_abs_speed_when_stopped;
    }
    else {
      resolved.max_abs_speed_when_stopped = 0.0
    }

    if (msg.max_abs_speed_when_stopped_duration !== undefined) {
      resolved.max_abs_speed_when_stopped_duration = msg.max_abs_speed_when_stopped_duration;
    }
    else {
      resolved.max_abs_speed_when_stopped_duration = 0.0
    }

    if (msg.brake_value_when_gear_transitioning !== undefined) {
      resolved.brake_value_when_gear_transitioning = msg.brake_value_when_gear_transitioning;
    }
    else {
      resolved.brake_value_when_gear_transitioning = 0.0
    }

    if (msg.accel_deadzone !== undefined) {
      resolved.accel_deadzone = msg.accel_deadzone;
    }
    else {
      resolved.accel_deadzone = 0.0
    }

    if (msg.brake_deadzone !== undefined) {
      resolved.brake_deadzone = msg.brake_deadzone;
    }
    else {
      resolved.brake_deadzone = 0.0
    }

    if (msg.acceleration_in_idle !== undefined) {
      resolved.acceleration_in_idle = msg.acceleration_in_idle;
    }
    else {
      resolved.acceleration_in_idle = 0.0
    }

    if (msg.deceleration_in_idle !== undefined) {
      resolved.deceleration_in_idle = msg.deceleration_in_idle;
    }
    else {
      resolved.deceleration_in_idle = 0.0
    }

    if (msg.max_acceleration_jerk !== undefined) {
      resolved.max_acceleration_jerk = msg.max_acceleration_jerk;
    }
    else {
      resolved.max_acceleration_jerk = 0.0
    }

    if (msg.max_acceleration !== undefined) {
      resolved.max_acceleration = msg.max_acceleration;
    }
    else {
      resolved.max_acceleration = 0.0
    }

    if (msg.max_deceleration !== undefined) {
      resolved.max_deceleration = msg.max_deceleration;
    }
    else {
      resolved.max_deceleration = 0.0
    }

    if (msg.min_turning_radius !== undefined) {
      resolved.min_turning_radius = msg.min_turning_radius;
    }
    else {
      resolved.min_turning_radius = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleParam;
