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

class Chassis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.moving_status = null;
      this.driving_mode = null;
      this.steer_driving_mode = null;
      this.steering_status = null;
      this.front_steering_value = null;
      this.rear_steering_value = null;
      this.steering_torque_nm = null;
      this.front_steering_rate_dps = null;
      this.rear_steering_rate_dps = null;
      this.accel_driving_mode = null;
      this.accel_status = null;
      this.accel_value = null;
      this.brake_driving_mode = null;
      this.brake_status = null;
      this.brake_value = null;
      this.backup_brake_driving_mode = null;
      this.backup_brake_status = null;
      this.backup_brake_value = null;
      this.epb_driving_mode = null;
      this.epb_status = null;
      this.epb_level = null;
      this.engine_status = null;
      this.engine_rpm = null;
      this.engine_torque = null;
      this.speed_mps = null;
      this.odometer_m = null;
      this.fuel_range_m = null;
      this.gear_driving_mode = null;
      this.gear_status = null;
      this.gear_location = null;
      this.driver_seat_belt = null;
      this.high_beam_status = null;
      this.low_beam_status = null;
      this.horn_status = null;
      this.turn_lamp_status = null;
      this.front_wiper_status = null;
      this.rear_wiper_status = null;
      this.position_lamp_status = null;
      this.front_fog_lamp_status = null;
      this.rear_fog_lamp_status = null;
      this.brake_lamp_status = null;
      this.alarm_lamp_status = null;
      this.lf_door_status = null;
      this.rf_door_status = null;
      this.lr_door_status = null;
      this.rr_door_status = null;
      this.rearview_mirror_status = null;
      this.trunk_status = null;
      this.engine_bay_door_status = null;
      this.wheel_direction_rr = null;
      this.wheel_spd_rr = null;
      this.wheel_direction_rl = null;
      this.wheel_spd_rl = null;
      this.wheel_direction_fr = null;
      this.wheel_spd_fr = null;
      this.wheel_direction_fl = null;
      this.wheel_spd_fl = null;
      this.is_tire_pressure_ok = null;
      this.is_tire_pressure_lf_valid = null;
      this.tire_pressure_lf = null;
      this.is_tire_pressure_rf_valid = null;
      this.tire_pressure_rf = null;
      this.is_tire_pressure_lr_valid = null;
      this.tire_pressure_lr = null;
      this.is_tire_pressure_rr_valid = null;
      this.tire_pressure_rr = null;
      this.battery_power_percentage = null;
      this.air_bag_status = null;
      this.charging_gun_status = null;
      this.vehicle_power_status = null;
      this.chassis_error_code = null;
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
      if (initObj.hasOwnProperty('driving_mode')) {
        this.driving_mode = initObj.driving_mode
      }
      else {
        this.driving_mode = 0;
      }
      if (initObj.hasOwnProperty('steer_driving_mode')) {
        this.steer_driving_mode = initObj.steer_driving_mode
      }
      else {
        this.steer_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('steering_status')) {
        this.steering_status = initObj.steering_status
      }
      else {
        this.steering_status = 0;
      }
      if (initObj.hasOwnProperty('front_steering_value')) {
        this.front_steering_value = initObj.front_steering_value
      }
      else {
        this.front_steering_value = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_value')) {
        this.rear_steering_value = initObj.rear_steering_value
      }
      else {
        this.rear_steering_value = 0.0;
      }
      if (initObj.hasOwnProperty('steering_torque_nm')) {
        this.steering_torque_nm = initObj.steering_torque_nm
      }
      else {
        this.steering_torque_nm = 0.0;
      }
      if (initObj.hasOwnProperty('front_steering_rate_dps')) {
        this.front_steering_rate_dps = initObj.front_steering_rate_dps
      }
      else {
        this.front_steering_rate_dps = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_rate_dps')) {
        this.rear_steering_rate_dps = initObj.rear_steering_rate_dps
      }
      else {
        this.rear_steering_rate_dps = 0.0;
      }
      if (initObj.hasOwnProperty('accel_driving_mode')) {
        this.accel_driving_mode = initObj.accel_driving_mode
      }
      else {
        this.accel_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('accel_status')) {
        this.accel_status = initObj.accel_status
      }
      else {
        this.accel_status = 0;
      }
      if (initObj.hasOwnProperty('accel_value')) {
        this.accel_value = initObj.accel_value
      }
      else {
        this.accel_value = 0.0;
      }
      if (initObj.hasOwnProperty('brake_driving_mode')) {
        this.brake_driving_mode = initObj.brake_driving_mode
      }
      else {
        this.brake_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('brake_status')) {
        this.brake_status = initObj.brake_status
      }
      else {
        this.brake_status = 0;
      }
      if (initObj.hasOwnProperty('brake_value')) {
        this.brake_value = initObj.brake_value
      }
      else {
        this.brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('backup_brake_driving_mode')) {
        this.backup_brake_driving_mode = initObj.backup_brake_driving_mode
      }
      else {
        this.backup_brake_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('backup_brake_status')) {
        this.backup_brake_status = initObj.backup_brake_status
      }
      else {
        this.backup_brake_status = 0;
      }
      if (initObj.hasOwnProperty('backup_brake_value')) {
        this.backup_brake_value = initObj.backup_brake_value
      }
      else {
        this.backup_brake_value = 0.0;
      }
      if (initObj.hasOwnProperty('epb_driving_mode')) {
        this.epb_driving_mode = initObj.epb_driving_mode
      }
      else {
        this.epb_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('epb_status')) {
        this.epb_status = initObj.epb_status
      }
      else {
        this.epb_status = 0;
      }
      if (initObj.hasOwnProperty('epb_level')) {
        this.epb_level = initObj.epb_level
      }
      else {
        this.epb_level = 0;
      }
      if (initObj.hasOwnProperty('engine_status')) {
        this.engine_status = initObj.engine_status
      }
      else {
        this.engine_status = 0;
      }
      if (initObj.hasOwnProperty('engine_rpm')) {
        this.engine_rpm = initObj.engine_rpm
      }
      else {
        this.engine_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('engine_torque')) {
        this.engine_torque = initObj.engine_torque
      }
      else {
        this.engine_torque = 0.0;
      }
      if (initObj.hasOwnProperty('speed_mps')) {
        this.speed_mps = initObj.speed_mps
      }
      else {
        this.speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('odometer_m')) {
        this.odometer_m = initObj.odometer_m
      }
      else {
        this.odometer_m = 0.0;
      }
      if (initObj.hasOwnProperty('fuel_range_m')) {
        this.fuel_range_m = initObj.fuel_range_m
      }
      else {
        this.fuel_range_m = 0;
      }
      if (initObj.hasOwnProperty('gear_driving_mode')) {
        this.gear_driving_mode = initObj.gear_driving_mode
      }
      else {
        this.gear_driving_mode = 0;
      }
      if (initObj.hasOwnProperty('gear_status')) {
        this.gear_status = initObj.gear_status
      }
      else {
        this.gear_status = 0;
      }
      if (initObj.hasOwnProperty('gear_location')) {
        this.gear_location = initObj.gear_location
      }
      else {
        this.gear_location = 0;
      }
      if (initObj.hasOwnProperty('driver_seat_belt')) {
        this.driver_seat_belt = initObj.driver_seat_belt
      }
      else {
        this.driver_seat_belt = 0;
      }
      if (initObj.hasOwnProperty('high_beam_status')) {
        this.high_beam_status = initObj.high_beam_status
      }
      else {
        this.high_beam_status = 0;
      }
      if (initObj.hasOwnProperty('low_beam_status')) {
        this.low_beam_status = initObj.low_beam_status
      }
      else {
        this.low_beam_status = 0;
      }
      if (initObj.hasOwnProperty('horn_status')) {
        this.horn_status = initObj.horn_status
      }
      else {
        this.horn_status = 0;
      }
      if (initObj.hasOwnProperty('turn_lamp_status')) {
        this.turn_lamp_status = initObj.turn_lamp_status
      }
      else {
        this.turn_lamp_status = 0;
      }
      if (initObj.hasOwnProperty('front_wiper_status')) {
        this.front_wiper_status = initObj.front_wiper_status
      }
      else {
        this.front_wiper_status = 0;
      }
      if (initObj.hasOwnProperty('rear_wiper_status')) {
        this.rear_wiper_status = initObj.rear_wiper_status
      }
      else {
        this.rear_wiper_status = 0;
      }
      if (initObj.hasOwnProperty('position_lamp_status')) {
        this.position_lamp_status = initObj.position_lamp_status
      }
      else {
        this.position_lamp_status = 0;
      }
      if (initObj.hasOwnProperty('front_fog_lamp_status')) {
        this.front_fog_lamp_status = initObj.front_fog_lamp_status
      }
      else {
        this.front_fog_lamp_status = 0;
      }
      if (initObj.hasOwnProperty('rear_fog_lamp_status')) {
        this.rear_fog_lamp_status = initObj.rear_fog_lamp_status
      }
      else {
        this.rear_fog_lamp_status = 0;
      }
      if (initObj.hasOwnProperty('brake_lamp_status')) {
        this.brake_lamp_status = initObj.brake_lamp_status
      }
      else {
        this.brake_lamp_status = 0;
      }
      if (initObj.hasOwnProperty('alarm_lamp_status')) {
        this.alarm_lamp_status = initObj.alarm_lamp_status
      }
      else {
        this.alarm_lamp_status = 0;
      }
      if (initObj.hasOwnProperty('lf_door_status')) {
        this.lf_door_status = initObj.lf_door_status
      }
      else {
        this.lf_door_status = 0;
      }
      if (initObj.hasOwnProperty('rf_door_status')) {
        this.rf_door_status = initObj.rf_door_status
      }
      else {
        this.rf_door_status = 0;
      }
      if (initObj.hasOwnProperty('lr_door_status')) {
        this.lr_door_status = initObj.lr_door_status
      }
      else {
        this.lr_door_status = 0;
      }
      if (initObj.hasOwnProperty('rr_door_status')) {
        this.rr_door_status = initObj.rr_door_status
      }
      else {
        this.rr_door_status = 0;
      }
      if (initObj.hasOwnProperty('rearview_mirror_status')) {
        this.rearview_mirror_status = initObj.rearview_mirror_status
      }
      else {
        this.rearview_mirror_status = 0;
      }
      if (initObj.hasOwnProperty('trunk_status')) {
        this.trunk_status = initObj.trunk_status
      }
      else {
        this.trunk_status = 0;
      }
      if (initObj.hasOwnProperty('engine_bay_door_status')) {
        this.engine_bay_door_status = initObj.engine_bay_door_status
      }
      else {
        this.engine_bay_door_status = 0;
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
      if (initObj.hasOwnProperty('is_tire_pressure_ok')) {
        this.is_tire_pressure_ok = initObj.is_tire_pressure_ok
      }
      else {
        this.is_tire_pressure_ok = 0;
      }
      if (initObj.hasOwnProperty('is_tire_pressure_lf_valid')) {
        this.is_tire_pressure_lf_valid = initObj.is_tire_pressure_lf_valid
      }
      else {
        this.is_tire_pressure_lf_valid = 0;
      }
      if (initObj.hasOwnProperty('tire_pressure_lf')) {
        this.tire_pressure_lf = initObj.tire_pressure_lf
      }
      else {
        this.tire_pressure_lf = 0.0;
      }
      if (initObj.hasOwnProperty('is_tire_pressure_rf_valid')) {
        this.is_tire_pressure_rf_valid = initObj.is_tire_pressure_rf_valid
      }
      else {
        this.is_tire_pressure_rf_valid = 0;
      }
      if (initObj.hasOwnProperty('tire_pressure_rf')) {
        this.tire_pressure_rf = initObj.tire_pressure_rf
      }
      else {
        this.tire_pressure_rf = 0.0;
      }
      if (initObj.hasOwnProperty('is_tire_pressure_lr_valid')) {
        this.is_tire_pressure_lr_valid = initObj.is_tire_pressure_lr_valid
      }
      else {
        this.is_tire_pressure_lr_valid = 0;
      }
      if (initObj.hasOwnProperty('tire_pressure_lr')) {
        this.tire_pressure_lr = initObj.tire_pressure_lr
      }
      else {
        this.tire_pressure_lr = 0.0;
      }
      if (initObj.hasOwnProperty('is_tire_pressure_rr_valid')) {
        this.is_tire_pressure_rr_valid = initObj.is_tire_pressure_rr_valid
      }
      else {
        this.is_tire_pressure_rr_valid = 0;
      }
      if (initObj.hasOwnProperty('tire_pressure_rr')) {
        this.tire_pressure_rr = initObj.tire_pressure_rr
      }
      else {
        this.tire_pressure_rr = 0.0;
      }
      if (initObj.hasOwnProperty('battery_power_percentage')) {
        this.battery_power_percentage = initObj.battery_power_percentage
      }
      else {
        this.battery_power_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('air_bag_status')) {
        this.air_bag_status = initObj.air_bag_status
      }
      else {
        this.air_bag_status = 0;
      }
      if (initObj.hasOwnProperty('charging_gun_status')) {
        this.charging_gun_status = initObj.charging_gun_status
      }
      else {
        this.charging_gun_status = 0;
      }
      if (initObj.hasOwnProperty('vehicle_power_status')) {
        this.vehicle_power_status = initObj.vehicle_power_status
      }
      else {
        this.vehicle_power_status = 0;
      }
      if (initObj.hasOwnProperty('chassis_error_code')) {
        this.chassis_error_code = initObj.chassis_error_code
      }
      else {
        this.chassis_error_code = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Chassis
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [moving_status]
    bufferOffset = _serializer.int32(obj.moving_status, buffer, bufferOffset);
    // Serialize message field [driving_mode]
    bufferOffset = _serializer.int32(obj.driving_mode, buffer, bufferOffset);
    // Serialize message field [steer_driving_mode]
    bufferOffset = _serializer.int32(obj.steer_driving_mode, buffer, bufferOffset);
    // Serialize message field [steering_status]
    bufferOffset = _serializer.int32(obj.steering_status, buffer, bufferOffset);
    // Serialize message field [front_steering_value]
    bufferOffset = _serializer.float64(obj.front_steering_value, buffer, bufferOffset);
    // Serialize message field [rear_steering_value]
    bufferOffset = _serializer.float64(obj.rear_steering_value, buffer, bufferOffset);
    // Serialize message field [steering_torque_nm]
    bufferOffset = _serializer.float64(obj.steering_torque_nm, buffer, bufferOffset);
    // Serialize message field [front_steering_rate_dps]
    bufferOffset = _serializer.float64(obj.front_steering_rate_dps, buffer, bufferOffset);
    // Serialize message field [rear_steering_rate_dps]
    bufferOffset = _serializer.float64(obj.rear_steering_rate_dps, buffer, bufferOffset);
    // Serialize message field [accel_driving_mode]
    bufferOffset = _serializer.int32(obj.accel_driving_mode, buffer, bufferOffset);
    // Serialize message field [accel_status]
    bufferOffset = _serializer.int32(obj.accel_status, buffer, bufferOffset);
    // Serialize message field [accel_value]
    bufferOffset = _serializer.float64(obj.accel_value, buffer, bufferOffset);
    // Serialize message field [brake_driving_mode]
    bufferOffset = _serializer.int32(obj.brake_driving_mode, buffer, bufferOffset);
    // Serialize message field [brake_status]
    bufferOffset = _serializer.int32(obj.brake_status, buffer, bufferOffset);
    // Serialize message field [brake_value]
    bufferOffset = _serializer.float64(obj.brake_value, buffer, bufferOffset);
    // Serialize message field [backup_brake_driving_mode]
    bufferOffset = _serializer.int32(obj.backup_brake_driving_mode, buffer, bufferOffset);
    // Serialize message field [backup_brake_status]
    bufferOffset = _serializer.int32(obj.backup_brake_status, buffer, bufferOffset);
    // Serialize message field [backup_brake_value]
    bufferOffset = _serializer.float64(obj.backup_brake_value, buffer, bufferOffset);
    // Serialize message field [epb_driving_mode]
    bufferOffset = _serializer.int32(obj.epb_driving_mode, buffer, bufferOffset);
    // Serialize message field [epb_status]
    bufferOffset = _serializer.int32(obj.epb_status, buffer, bufferOffset);
    // Serialize message field [epb_level]
    bufferOffset = _serializer.int32(obj.epb_level, buffer, bufferOffset);
    // Serialize message field [engine_status]
    bufferOffset = _serializer.int32(obj.engine_status, buffer, bufferOffset);
    // Serialize message field [engine_rpm]
    bufferOffset = _serializer.float64(obj.engine_rpm, buffer, bufferOffset);
    // Serialize message field [engine_torque]
    bufferOffset = _serializer.float64(obj.engine_torque, buffer, bufferOffset);
    // Serialize message field [speed_mps]
    bufferOffset = _serializer.float64(obj.speed_mps, buffer, bufferOffset);
    // Serialize message field [odometer_m]
    bufferOffset = _serializer.float64(obj.odometer_m, buffer, bufferOffset);
    // Serialize message field [fuel_range_m]
    bufferOffset = _serializer.int32(obj.fuel_range_m, buffer, bufferOffset);
    // Serialize message field [gear_driving_mode]
    bufferOffset = _serializer.int32(obj.gear_driving_mode, buffer, bufferOffset);
    // Serialize message field [gear_status]
    bufferOffset = _serializer.int32(obj.gear_status, buffer, bufferOffset);
    // Serialize message field [gear_location]
    bufferOffset = _serializer.int32(obj.gear_location, buffer, bufferOffset);
    // Serialize message field [driver_seat_belt]
    bufferOffset = _serializer.int32(obj.driver_seat_belt, buffer, bufferOffset);
    // Serialize message field [high_beam_status]
    bufferOffset = _serializer.int32(obj.high_beam_status, buffer, bufferOffset);
    // Serialize message field [low_beam_status]
    bufferOffset = _serializer.int32(obj.low_beam_status, buffer, bufferOffset);
    // Serialize message field [horn_status]
    bufferOffset = _serializer.int32(obj.horn_status, buffer, bufferOffset);
    // Serialize message field [turn_lamp_status]
    bufferOffset = _serializer.int32(obj.turn_lamp_status, buffer, bufferOffset);
    // Serialize message field [front_wiper_status]
    bufferOffset = _serializer.int32(obj.front_wiper_status, buffer, bufferOffset);
    // Serialize message field [rear_wiper_status]
    bufferOffset = _serializer.int32(obj.rear_wiper_status, buffer, bufferOffset);
    // Serialize message field [position_lamp_status]
    bufferOffset = _serializer.int32(obj.position_lamp_status, buffer, bufferOffset);
    // Serialize message field [front_fog_lamp_status]
    bufferOffset = _serializer.int32(obj.front_fog_lamp_status, buffer, bufferOffset);
    // Serialize message field [rear_fog_lamp_status]
    bufferOffset = _serializer.int32(obj.rear_fog_lamp_status, buffer, bufferOffset);
    // Serialize message field [brake_lamp_status]
    bufferOffset = _serializer.int32(obj.brake_lamp_status, buffer, bufferOffset);
    // Serialize message field [alarm_lamp_status]
    bufferOffset = _serializer.int32(obj.alarm_lamp_status, buffer, bufferOffset);
    // Serialize message field [lf_door_status]
    bufferOffset = _serializer.int32(obj.lf_door_status, buffer, bufferOffset);
    // Serialize message field [rf_door_status]
    bufferOffset = _serializer.int32(obj.rf_door_status, buffer, bufferOffset);
    // Serialize message field [lr_door_status]
    bufferOffset = _serializer.int32(obj.lr_door_status, buffer, bufferOffset);
    // Serialize message field [rr_door_status]
    bufferOffset = _serializer.int32(obj.rr_door_status, buffer, bufferOffset);
    // Serialize message field [rearview_mirror_status]
    bufferOffset = _serializer.int32(obj.rearview_mirror_status, buffer, bufferOffset);
    // Serialize message field [trunk_status]
    bufferOffset = _serializer.int32(obj.trunk_status, buffer, bufferOffset);
    // Serialize message field [engine_bay_door_status]
    bufferOffset = _serializer.int32(obj.engine_bay_door_status, buffer, bufferOffset);
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
    // Serialize message field [is_tire_pressure_ok]
    bufferOffset = _serializer.int32(obj.is_tire_pressure_ok, buffer, bufferOffset);
    // Serialize message field [is_tire_pressure_lf_valid]
    bufferOffset = _serializer.int32(obj.is_tire_pressure_lf_valid, buffer, bufferOffset);
    // Serialize message field [tire_pressure_lf]
    bufferOffset = _serializer.float64(obj.tire_pressure_lf, buffer, bufferOffset);
    // Serialize message field [is_tire_pressure_rf_valid]
    bufferOffset = _serializer.int32(obj.is_tire_pressure_rf_valid, buffer, bufferOffset);
    // Serialize message field [tire_pressure_rf]
    bufferOffset = _serializer.float64(obj.tire_pressure_rf, buffer, bufferOffset);
    // Serialize message field [is_tire_pressure_lr_valid]
    bufferOffset = _serializer.int32(obj.is_tire_pressure_lr_valid, buffer, bufferOffset);
    // Serialize message field [tire_pressure_lr]
    bufferOffset = _serializer.float64(obj.tire_pressure_lr, buffer, bufferOffset);
    // Serialize message field [is_tire_pressure_rr_valid]
    bufferOffset = _serializer.int32(obj.is_tire_pressure_rr_valid, buffer, bufferOffset);
    // Serialize message field [tire_pressure_rr]
    bufferOffset = _serializer.float64(obj.tire_pressure_rr, buffer, bufferOffset);
    // Serialize message field [battery_power_percentage]
    bufferOffset = _serializer.float64(obj.battery_power_percentage, buffer, bufferOffset);
    // Serialize message field [air_bag_status]
    bufferOffset = _serializer.int32(obj.air_bag_status, buffer, bufferOffset);
    // Serialize message field [charging_gun_status]
    bufferOffset = _serializer.int32(obj.charging_gun_status, buffer, bufferOffset);
    // Serialize message field [vehicle_power_status]
    bufferOffset = _serializer.int32(obj.vehicle_power_status, buffer, bufferOffset);
    // Serialize message field [chassis_error_code]
    bufferOffset = _arraySerializer.int32(obj.chassis_error_code, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Chassis
    let len;
    let data = new Chassis(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [moving_status]
    data.moving_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driving_mode]
    data.driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_driving_mode]
    data.steer_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steering_status]
    data.steering_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_steering_value]
    data.front_steering_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_value]
    data.rear_steering_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_torque_nm]
    data.steering_torque_nm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steering_rate_dps]
    data.front_steering_rate_dps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_rate_dps]
    data.rear_steering_rate_dps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_driving_mode]
    data.accel_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accel_status]
    data.accel_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accel_value]
    data.accel_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_driving_mode]
    data.brake_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_status]
    data.brake_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_value]
    data.brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backup_brake_driving_mode]
    data.backup_brake_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [backup_brake_status]
    data.backup_brake_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [backup_brake_value]
    data.backup_brake_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [epb_driving_mode]
    data.epb_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epb_status]
    data.epb_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epb_level]
    data.epb_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [engine_status]
    data.engine_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [engine_rpm]
    data.engine_rpm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engine_torque]
    data.engine_torque = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_mps]
    data.speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [odometer_m]
    data.odometer_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fuel_range_m]
    data.fuel_range_m = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_driving_mode]
    data.gear_driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_status]
    data.gear_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_location]
    data.gear_location = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driver_seat_belt]
    data.driver_seat_belt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [high_beam_status]
    data.high_beam_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [low_beam_status]
    data.low_beam_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horn_status]
    data.horn_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [turn_lamp_status]
    data.turn_lamp_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_wiper_status]
    data.front_wiper_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rear_wiper_status]
    data.rear_wiper_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_lamp_status]
    data.position_lamp_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_fog_lamp_status]
    data.front_fog_lamp_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rear_fog_lamp_status]
    data.rear_fog_lamp_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_lamp_status]
    data.brake_lamp_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alarm_lamp_status]
    data.alarm_lamp_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lf_door_status]
    data.lf_door_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rf_door_status]
    data.rf_door_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lr_door_status]
    data.lr_door_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rr_door_status]
    data.rr_door_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rearview_mirror_status]
    data.rearview_mirror_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [trunk_status]
    data.trunk_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [engine_bay_door_status]
    data.engine_bay_door_status = _deserializer.int32(buffer, bufferOffset);
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
    // Deserialize message field [is_tire_pressure_ok]
    data.is_tire_pressure_ok = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_tire_pressure_lf_valid]
    data.is_tire_pressure_lf_valid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tire_pressure_lf]
    data.tire_pressure_lf = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_tire_pressure_rf_valid]
    data.is_tire_pressure_rf_valid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tire_pressure_rf]
    data.tire_pressure_rf = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_tire_pressure_lr_valid]
    data.is_tire_pressure_lr_valid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tire_pressure_lr]
    data.tire_pressure_lr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_tire_pressure_rr_valid]
    data.is_tire_pressure_rr_valid = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tire_pressure_rr]
    data.tire_pressure_rr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery_power_percentage]
    data.battery_power_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_bag_status]
    data.air_bag_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [charging_gun_status]
    data.charging_gun_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_power_status]
    data.vehicle_power_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [chassis_error_code]
    data.chassis_error_code = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.chassis_error_code.length;
    return length + 368;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Chassis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1317f867e7ec2fbfa7cc1f5b9d053a00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   moving_status     # 移动状态
    int32   driving_mode     # 驾驶状态
    int32   steer_driving_mode     # 线控转向驾驶模式
    int32   steering_status     # 线控转向执行器状态
    float64   front_steering_value     # 方向盘转角
    float64   rear_steering_value     # 后轮转角
    float64   steering_torque_nm     # 方向盘扭矩
    float64   front_steering_rate_dps     # 方向盘转速
    float64   rear_steering_rate_dps     # 方向盘转速
    int32   accel_driving_mode     # 线控驱动驾驶模式
    int32   accel_status     # 线控驱动状态
    float64   accel_value     # 线控驱动值（油门值）
    int32   brake_driving_mode     # 线控制动驾驶模式
    int32   brake_status     # 线控制动状态
    float64   brake_value     # 线控制动值（刹车值）
    int32   backup_brake_driving_mode     # 备用线控制动驾驶模式
    int32   backup_brake_status     # 备用线控制动状态
    float64   backup_brake_value     # 备用线控制动值
    int32   epb_driving_mode     # EPB驾驶模式
    int32   epb_status     # EPB状态
    int32   epb_level     # EPB档位
    int32   engine_status     # 发动机状态
    float64   engine_rpm     # 发动机转速
    float64   engine_torque     # 发动机扭矩
    float64   speed_mps     # 车速（m/s）
    float64   odometer_m     # 里程(m)
    int32   fuel_range_m     # 油表值
    int32   gear_driving_mode     # 档位驾驶模式
    int32   gear_status     # 档位状态
    int32   gear_location     # 档位值
    int32   driver_seat_belt     # 主驾驶位安全带状态
    int32   high_beam_status     # 远光灯状态
    int32   low_beam_status     # 近光灯状态
    int32   horn_status     # 喇叭状态
    int32   turn_lamp_status     # 转向灯状态
    int32   front_wiper_status     # 前雨刮器状态
    int32   rear_wiper_status     # 后雨刮器状态
    int32   position_lamp_status     # 位置灯状态
    int32   front_fog_lamp_status     # 前雾灯状态
    int32   rear_fog_lamp_status     # 后雾灯状态
    int32   brake_lamp_status     # 刹车灯状态
    int32   alarm_lamp_status     # 报警灯状态
    int32   lf_door_status     # 左前门状态
    int32   rf_door_status     # 右前门状态
    int32   lr_door_status     # 左后门状态
    int32   rr_door_status     # 右后门状态
    int32   rearview_mirror_status     # 后视镜状态
    int32   trunk_status     # 后备箱盖状态
    int32   engine_bay_door_status     # 发送机舱盖状态
    int32   wheel_direction_rr     # 右后轮方向
    float64   wheel_spd_rr     # 右后轮速
    int32   wheel_direction_rl     # 左后轮方向
    float64   wheel_spd_rl     # 左后轮值
    int32   wheel_direction_fr     # 右前轮方向
    float64   wheel_spd_fr     # 右前轮速
    int32   wheel_direction_fl     # 左前轮方向
    float64   wheel_spd_fl     # 左前轮速
    int32   is_tire_pressure_ok     # 胎压是否正常
    int32   is_tire_pressure_lf_valid     # 左前轮胎压是否有效
    float64   tire_pressure_lf     # 左前轮胎压
    int32   is_tire_pressure_rf_valid     # 右前轮胎压是否有效
    float64   tire_pressure_rf     # 右前轮胎压
    int32   is_tire_pressure_lr_valid     # 左后轮胎压是否有效
    float64   tire_pressure_lr     # 左后轮胎压
    int32   is_tire_pressure_rr_valid     # 右后轮胎压是否有效
    float64   tire_pressure_rr     # 右后轮胎压
    float64   battery_power_percentage     # 电池电量值
    int32   air_bag_status     # 气囊状态
    int32   charging_gun_status     # 充电枪状态
    int32   vehicle_power_status     # 电量表状态
    int32[] chassis_error_code # 底盘错误码
    
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
    const resolved = new Chassis(null);
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

    if (msg.driving_mode !== undefined) {
      resolved.driving_mode = msg.driving_mode;
    }
    else {
      resolved.driving_mode = 0
    }

    if (msg.steer_driving_mode !== undefined) {
      resolved.steer_driving_mode = msg.steer_driving_mode;
    }
    else {
      resolved.steer_driving_mode = 0
    }

    if (msg.steering_status !== undefined) {
      resolved.steering_status = msg.steering_status;
    }
    else {
      resolved.steering_status = 0
    }

    if (msg.front_steering_value !== undefined) {
      resolved.front_steering_value = msg.front_steering_value;
    }
    else {
      resolved.front_steering_value = 0.0
    }

    if (msg.rear_steering_value !== undefined) {
      resolved.rear_steering_value = msg.rear_steering_value;
    }
    else {
      resolved.rear_steering_value = 0.0
    }

    if (msg.steering_torque_nm !== undefined) {
      resolved.steering_torque_nm = msg.steering_torque_nm;
    }
    else {
      resolved.steering_torque_nm = 0.0
    }

    if (msg.front_steering_rate_dps !== undefined) {
      resolved.front_steering_rate_dps = msg.front_steering_rate_dps;
    }
    else {
      resolved.front_steering_rate_dps = 0.0
    }

    if (msg.rear_steering_rate_dps !== undefined) {
      resolved.rear_steering_rate_dps = msg.rear_steering_rate_dps;
    }
    else {
      resolved.rear_steering_rate_dps = 0.0
    }

    if (msg.accel_driving_mode !== undefined) {
      resolved.accel_driving_mode = msg.accel_driving_mode;
    }
    else {
      resolved.accel_driving_mode = 0
    }

    if (msg.accel_status !== undefined) {
      resolved.accel_status = msg.accel_status;
    }
    else {
      resolved.accel_status = 0
    }

    if (msg.accel_value !== undefined) {
      resolved.accel_value = msg.accel_value;
    }
    else {
      resolved.accel_value = 0.0
    }

    if (msg.brake_driving_mode !== undefined) {
      resolved.brake_driving_mode = msg.brake_driving_mode;
    }
    else {
      resolved.brake_driving_mode = 0
    }

    if (msg.brake_status !== undefined) {
      resolved.brake_status = msg.brake_status;
    }
    else {
      resolved.brake_status = 0
    }

    if (msg.brake_value !== undefined) {
      resolved.brake_value = msg.brake_value;
    }
    else {
      resolved.brake_value = 0.0
    }

    if (msg.backup_brake_driving_mode !== undefined) {
      resolved.backup_brake_driving_mode = msg.backup_brake_driving_mode;
    }
    else {
      resolved.backup_brake_driving_mode = 0
    }

    if (msg.backup_brake_status !== undefined) {
      resolved.backup_brake_status = msg.backup_brake_status;
    }
    else {
      resolved.backup_brake_status = 0
    }

    if (msg.backup_brake_value !== undefined) {
      resolved.backup_brake_value = msg.backup_brake_value;
    }
    else {
      resolved.backup_brake_value = 0.0
    }

    if (msg.epb_driving_mode !== undefined) {
      resolved.epb_driving_mode = msg.epb_driving_mode;
    }
    else {
      resolved.epb_driving_mode = 0
    }

    if (msg.epb_status !== undefined) {
      resolved.epb_status = msg.epb_status;
    }
    else {
      resolved.epb_status = 0
    }

    if (msg.epb_level !== undefined) {
      resolved.epb_level = msg.epb_level;
    }
    else {
      resolved.epb_level = 0
    }

    if (msg.engine_status !== undefined) {
      resolved.engine_status = msg.engine_status;
    }
    else {
      resolved.engine_status = 0
    }

    if (msg.engine_rpm !== undefined) {
      resolved.engine_rpm = msg.engine_rpm;
    }
    else {
      resolved.engine_rpm = 0.0
    }

    if (msg.engine_torque !== undefined) {
      resolved.engine_torque = msg.engine_torque;
    }
    else {
      resolved.engine_torque = 0.0
    }

    if (msg.speed_mps !== undefined) {
      resolved.speed_mps = msg.speed_mps;
    }
    else {
      resolved.speed_mps = 0.0
    }

    if (msg.odometer_m !== undefined) {
      resolved.odometer_m = msg.odometer_m;
    }
    else {
      resolved.odometer_m = 0.0
    }

    if (msg.fuel_range_m !== undefined) {
      resolved.fuel_range_m = msg.fuel_range_m;
    }
    else {
      resolved.fuel_range_m = 0
    }

    if (msg.gear_driving_mode !== undefined) {
      resolved.gear_driving_mode = msg.gear_driving_mode;
    }
    else {
      resolved.gear_driving_mode = 0
    }

    if (msg.gear_status !== undefined) {
      resolved.gear_status = msg.gear_status;
    }
    else {
      resolved.gear_status = 0
    }

    if (msg.gear_location !== undefined) {
      resolved.gear_location = msg.gear_location;
    }
    else {
      resolved.gear_location = 0
    }

    if (msg.driver_seat_belt !== undefined) {
      resolved.driver_seat_belt = msg.driver_seat_belt;
    }
    else {
      resolved.driver_seat_belt = 0
    }

    if (msg.high_beam_status !== undefined) {
      resolved.high_beam_status = msg.high_beam_status;
    }
    else {
      resolved.high_beam_status = 0
    }

    if (msg.low_beam_status !== undefined) {
      resolved.low_beam_status = msg.low_beam_status;
    }
    else {
      resolved.low_beam_status = 0
    }

    if (msg.horn_status !== undefined) {
      resolved.horn_status = msg.horn_status;
    }
    else {
      resolved.horn_status = 0
    }

    if (msg.turn_lamp_status !== undefined) {
      resolved.turn_lamp_status = msg.turn_lamp_status;
    }
    else {
      resolved.turn_lamp_status = 0
    }

    if (msg.front_wiper_status !== undefined) {
      resolved.front_wiper_status = msg.front_wiper_status;
    }
    else {
      resolved.front_wiper_status = 0
    }

    if (msg.rear_wiper_status !== undefined) {
      resolved.rear_wiper_status = msg.rear_wiper_status;
    }
    else {
      resolved.rear_wiper_status = 0
    }

    if (msg.position_lamp_status !== undefined) {
      resolved.position_lamp_status = msg.position_lamp_status;
    }
    else {
      resolved.position_lamp_status = 0
    }

    if (msg.front_fog_lamp_status !== undefined) {
      resolved.front_fog_lamp_status = msg.front_fog_lamp_status;
    }
    else {
      resolved.front_fog_lamp_status = 0
    }

    if (msg.rear_fog_lamp_status !== undefined) {
      resolved.rear_fog_lamp_status = msg.rear_fog_lamp_status;
    }
    else {
      resolved.rear_fog_lamp_status = 0
    }

    if (msg.brake_lamp_status !== undefined) {
      resolved.brake_lamp_status = msg.brake_lamp_status;
    }
    else {
      resolved.brake_lamp_status = 0
    }

    if (msg.alarm_lamp_status !== undefined) {
      resolved.alarm_lamp_status = msg.alarm_lamp_status;
    }
    else {
      resolved.alarm_lamp_status = 0
    }

    if (msg.lf_door_status !== undefined) {
      resolved.lf_door_status = msg.lf_door_status;
    }
    else {
      resolved.lf_door_status = 0
    }

    if (msg.rf_door_status !== undefined) {
      resolved.rf_door_status = msg.rf_door_status;
    }
    else {
      resolved.rf_door_status = 0
    }

    if (msg.lr_door_status !== undefined) {
      resolved.lr_door_status = msg.lr_door_status;
    }
    else {
      resolved.lr_door_status = 0
    }

    if (msg.rr_door_status !== undefined) {
      resolved.rr_door_status = msg.rr_door_status;
    }
    else {
      resolved.rr_door_status = 0
    }

    if (msg.rearview_mirror_status !== undefined) {
      resolved.rearview_mirror_status = msg.rearview_mirror_status;
    }
    else {
      resolved.rearview_mirror_status = 0
    }

    if (msg.trunk_status !== undefined) {
      resolved.trunk_status = msg.trunk_status;
    }
    else {
      resolved.trunk_status = 0
    }

    if (msg.engine_bay_door_status !== undefined) {
      resolved.engine_bay_door_status = msg.engine_bay_door_status;
    }
    else {
      resolved.engine_bay_door_status = 0
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

    if (msg.is_tire_pressure_ok !== undefined) {
      resolved.is_tire_pressure_ok = msg.is_tire_pressure_ok;
    }
    else {
      resolved.is_tire_pressure_ok = 0
    }

    if (msg.is_tire_pressure_lf_valid !== undefined) {
      resolved.is_tire_pressure_lf_valid = msg.is_tire_pressure_lf_valid;
    }
    else {
      resolved.is_tire_pressure_lf_valid = 0
    }

    if (msg.tire_pressure_lf !== undefined) {
      resolved.tire_pressure_lf = msg.tire_pressure_lf;
    }
    else {
      resolved.tire_pressure_lf = 0.0
    }

    if (msg.is_tire_pressure_rf_valid !== undefined) {
      resolved.is_tire_pressure_rf_valid = msg.is_tire_pressure_rf_valid;
    }
    else {
      resolved.is_tire_pressure_rf_valid = 0
    }

    if (msg.tire_pressure_rf !== undefined) {
      resolved.tire_pressure_rf = msg.tire_pressure_rf;
    }
    else {
      resolved.tire_pressure_rf = 0.0
    }

    if (msg.is_tire_pressure_lr_valid !== undefined) {
      resolved.is_tire_pressure_lr_valid = msg.is_tire_pressure_lr_valid;
    }
    else {
      resolved.is_tire_pressure_lr_valid = 0
    }

    if (msg.tire_pressure_lr !== undefined) {
      resolved.tire_pressure_lr = msg.tire_pressure_lr;
    }
    else {
      resolved.tire_pressure_lr = 0.0
    }

    if (msg.is_tire_pressure_rr_valid !== undefined) {
      resolved.is_tire_pressure_rr_valid = msg.is_tire_pressure_rr_valid;
    }
    else {
      resolved.is_tire_pressure_rr_valid = 0
    }

    if (msg.tire_pressure_rr !== undefined) {
      resolved.tire_pressure_rr = msg.tire_pressure_rr;
    }
    else {
      resolved.tire_pressure_rr = 0.0
    }

    if (msg.battery_power_percentage !== undefined) {
      resolved.battery_power_percentage = msg.battery_power_percentage;
    }
    else {
      resolved.battery_power_percentage = 0.0
    }

    if (msg.air_bag_status !== undefined) {
      resolved.air_bag_status = msg.air_bag_status;
    }
    else {
      resolved.air_bag_status = 0
    }

    if (msg.charging_gun_status !== undefined) {
      resolved.charging_gun_status = msg.charging_gun_status;
    }
    else {
      resolved.charging_gun_status = 0
    }

    if (msg.vehicle_power_status !== undefined) {
      resolved.vehicle_power_status = msg.vehicle_power_status;
    }
    else {
      resolved.vehicle_power_status = 0
    }

    if (msg.chassis_error_code !== undefined) {
      resolved.chassis_error_code = msg.chassis_error_code;
    }
    else {
      resolved.chassis_error_code = []
    }

    return resolved;
    }
};

module.exports = Chassis;
