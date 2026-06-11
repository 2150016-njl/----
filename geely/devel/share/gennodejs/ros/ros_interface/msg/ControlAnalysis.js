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

class ControlAnalysis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driving_mode = null;
      this.driving_mode_fd = null;
      this.gear_location_fd = null;
      this.gear_location_cmd = null;
      this.epb_level_fd = null;
      this.epb_level_cmd = null;
      this.speed_mps = null;
      this.speed_reference = null;
      this.accel_value_fd = null;
      this.accel_value_cmd = null;
      this.brake_value_fd = null;
      this.brake_value_cmd = null;
      this.path_remain = null;
      this.has_stop_point = null;
      this.is_full_stop = null;
      this.is_stopped = null;
      this.lon_acc_jerk = null;
      this.acceleration_cmd = null;
      this.acceleration_cmd_closeloop = null;
      this.preview_acceleration_reference = null;
      this.slope_offset_compensation = null;
      this.turning_offset_compensation = null;
      this.speed_error_limited = null;
      this.speed_error = null;
      this.speed_offset = null;
      this.station_error_limited = null;
      this.station_error = null;
      this.lon_target_point_s = null;
      this.lon_calculate_time = null;
      this.lon_calculate_time_max = null;
      this.ref_curvature = null;
      this.ref_heading = null;
      this.current_heading = null;
      this.heading_error = null;
      this.heading_error_rate = null;
      this.lateral_error = null;
      this.lateral_error_rate = null;
      this.lon_error = null;
      this.front_steering_value_fd = null;
      this.front_steering_target = null;
      this.front_steering_rate = null;
      this.front_steer_angle_feedforward = null;
      this.front_steer_angle_feedback = null;
      this.front_steer_angle_lateral_contribution = null;
      this.front_steer_angle_lateral_rate_contribution = null;
      this.front_steer_angle_heading_contribution = null;
      this.front_steer_angle_heading_rate_contribution = null;
      this.rear_steering_value_fd = null;
      this.rear_steering_target = null;
      this.rear_steering_rate = null;
      this.rear_steer_angle_feedforward = null;
      this.rear_steer_angle_feedback = null;
      this.rear_steer_angle_lateral_contribution = null;
      this.rear_steer_angle_lateral_rate_contribution = null;
      this.rear_steer_angle_heading_contribution = null;
      this.rear_steer_angle_heading_rate_contribution = null;
      this.matrix_k_00 = null;
      this.matrix_k_01 = null;
      this.matrix_k_02 = null;
      this.matrix_k_03 = null;
      this.matrix_k_10 = null;
      this.matrix_k_11 = null;
      this.matrix_k_12 = null;
      this.matrix_k_13 = null;
      this.matrix_state_0 = null;
      this.matrix_state_1 = null;
      this.matrix_state_2 = null;
      this.matrix_state_3 = null;
      this.matrix_q_updated_0 = null;
      this.matrix_q_updated_1 = null;
      this.matrix_q_updated_2 = null;
      this.matrix_q_updated_3 = null;
      this.current_x = null;
      this.current_y = null;
      this.target_point_x = null;
      this.target_point_y = null;
      this.lat_target_point_s = null;
      this.lqr_calculate_time = null;
      this.lqr_calculate_time_max = null;
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
      if (initObj.hasOwnProperty('driving_mode_fd')) {
        this.driving_mode_fd = initObj.driving_mode_fd
      }
      else {
        this.driving_mode_fd = 0;
      }
      if (initObj.hasOwnProperty('gear_location_fd')) {
        this.gear_location_fd = initObj.gear_location_fd
      }
      else {
        this.gear_location_fd = 0;
      }
      if (initObj.hasOwnProperty('gear_location_cmd')) {
        this.gear_location_cmd = initObj.gear_location_cmd
      }
      else {
        this.gear_location_cmd = 0;
      }
      if (initObj.hasOwnProperty('epb_level_fd')) {
        this.epb_level_fd = initObj.epb_level_fd
      }
      else {
        this.epb_level_fd = 0;
      }
      if (initObj.hasOwnProperty('epb_level_cmd')) {
        this.epb_level_cmd = initObj.epb_level_cmd
      }
      else {
        this.epb_level_cmd = 0;
      }
      if (initObj.hasOwnProperty('speed_mps')) {
        this.speed_mps = initObj.speed_mps
      }
      else {
        this.speed_mps = 0.0;
      }
      if (initObj.hasOwnProperty('speed_reference')) {
        this.speed_reference = initObj.speed_reference
      }
      else {
        this.speed_reference = 0.0;
      }
      if (initObj.hasOwnProperty('accel_value_fd')) {
        this.accel_value_fd = initObj.accel_value_fd
      }
      else {
        this.accel_value_fd = 0.0;
      }
      if (initObj.hasOwnProperty('accel_value_cmd')) {
        this.accel_value_cmd = initObj.accel_value_cmd
      }
      else {
        this.accel_value_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('brake_value_fd')) {
        this.brake_value_fd = initObj.brake_value_fd
      }
      else {
        this.brake_value_fd = 0.0;
      }
      if (initObj.hasOwnProperty('brake_value_cmd')) {
        this.brake_value_cmd = initObj.brake_value_cmd
      }
      else {
        this.brake_value_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('path_remain')) {
        this.path_remain = initObj.path_remain
      }
      else {
        this.path_remain = 0.0;
      }
      if (initObj.hasOwnProperty('has_stop_point')) {
        this.has_stop_point = initObj.has_stop_point
      }
      else {
        this.has_stop_point = false;
      }
      if (initObj.hasOwnProperty('is_full_stop')) {
        this.is_full_stop = initObj.is_full_stop
      }
      else {
        this.is_full_stop = false;
      }
      if (initObj.hasOwnProperty('is_stopped')) {
        this.is_stopped = initObj.is_stopped
      }
      else {
        this.is_stopped = false;
      }
      if (initObj.hasOwnProperty('lon_acc_jerk')) {
        this.lon_acc_jerk = initObj.lon_acc_jerk
      }
      else {
        this.lon_acc_jerk = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_cmd')) {
        this.acceleration_cmd = initObj.acceleration_cmd
      }
      else {
        this.acceleration_cmd = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration_cmd_closeloop')) {
        this.acceleration_cmd_closeloop = initObj.acceleration_cmd_closeloop
      }
      else {
        this.acceleration_cmd_closeloop = 0.0;
      }
      if (initObj.hasOwnProperty('preview_acceleration_reference')) {
        this.preview_acceleration_reference = initObj.preview_acceleration_reference
      }
      else {
        this.preview_acceleration_reference = 0.0;
      }
      if (initObj.hasOwnProperty('slope_offset_compensation')) {
        this.slope_offset_compensation = initObj.slope_offset_compensation
      }
      else {
        this.slope_offset_compensation = 0.0;
      }
      if (initObj.hasOwnProperty('turning_offset_compensation')) {
        this.turning_offset_compensation = initObj.turning_offset_compensation
      }
      else {
        this.turning_offset_compensation = 0.0;
      }
      if (initObj.hasOwnProperty('speed_error_limited')) {
        this.speed_error_limited = initObj.speed_error_limited
      }
      else {
        this.speed_error_limited = 0.0;
      }
      if (initObj.hasOwnProperty('speed_error')) {
        this.speed_error = initObj.speed_error
      }
      else {
        this.speed_error = 0.0;
      }
      if (initObj.hasOwnProperty('speed_offset')) {
        this.speed_offset = initObj.speed_offset
      }
      else {
        this.speed_offset = 0.0;
      }
      if (initObj.hasOwnProperty('station_error_limited')) {
        this.station_error_limited = initObj.station_error_limited
      }
      else {
        this.station_error_limited = 0.0;
      }
      if (initObj.hasOwnProperty('station_error')) {
        this.station_error = initObj.station_error
      }
      else {
        this.station_error = 0.0;
      }
      if (initObj.hasOwnProperty('lon_target_point_s')) {
        this.lon_target_point_s = initObj.lon_target_point_s
      }
      else {
        this.lon_target_point_s = 0.0;
      }
      if (initObj.hasOwnProperty('lon_calculate_time')) {
        this.lon_calculate_time = initObj.lon_calculate_time
      }
      else {
        this.lon_calculate_time = 0;
      }
      if (initObj.hasOwnProperty('lon_calculate_time_max')) {
        this.lon_calculate_time_max = initObj.lon_calculate_time_max
      }
      else {
        this.lon_calculate_time_max = 0;
      }
      if (initObj.hasOwnProperty('ref_curvature')) {
        this.ref_curvature = initObj.ref_curvature
      }
      else {
        this.ref_curvature = 0.0;
      }
      if (initObj.hasOwnProperty('ref_heading')) {
        this.ref_heading = initObj.ref_heading
      }
      else {
        this.ref_heading = 0.0;
      }
      if (initObj.hasOwnProperty('current_heading')) {
        this.current_heading = initObj.current_heading
      }
      else {
        this.current_heading = 0.0;
      }
      if (initObj.hasOwnProperty('heading_error')) {
        this.heading_error = initObj.heading_error
      }
      else {
        this.heading_error = 0.0;
      }
      if (initObj.hasOwnProperty('heading_error_rate')) {
        this.heading_error_rate = initObj.heading_error_rate
      }
      else {
        this.heading_error_rate = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_error')) {
        this.lateral_error = initObj.lateral_error
      }
      else {
        this.lateral_error = 0.0;
      }
      if (initObj.hasOwnProperty('lateral_error_rate')) {
        this.lateral_error_rate = initObj.lateral_error_rate
      }
      else {
        this.lateral_error_rate = 0.0;
      }
      if (initObj.hasOwnProperty('lon_error')) {
        this.lon_error = initObj.lon_error
      }
      else {
        this.lon_error = 0.0;
      }
      if (initObj.hasOwnProperty('front_steering_value_fd')) {
        this.front_steering_value_fd = initObj.front_steering_value_fd
      }
      else {
        this.front_steering_value_fd = 0.0;
      }
      if (initObj.hasOwnProperty('front_steering_target')) {
        this.front_steering_target = initObj.front_steering_target
      }
      else {
        this.front_steering_target = 0.0;
      }
      if (initObj.hasOwnProperty('front_steering_rate')) {
        this.front_steering_rate = initObj.front_steering_rate
      }
      else {
        this.front_steering_rate = 0.0;
      }
      if (initObj.hasOwnProperty('front_steer_angle_feedforward')) {
        this.front_steer_angle_feedforward = initObj.front_steer_angle_feedforward
      }
      else {
        this.front_steer_angle_feedforward = 0.0;
      }
      if (initObj.hasOwnProperty('front_steer_angle_feedback')) {
        this.front_steer_angle_feedback = initObj.front_steer_angle_feedback
      }
      else {
        this.front_steer_angle_feedback = 0.0;
      }
      if (initObj.hasOwnProperty('front_steer_angle_lateral_contribution')) {
        this.front_steer_angle_lateral_contribution = initObj.front_steer_angle_lateral_contribution
      }
      else {
        this.front_steer_angle_lateral_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('front_steer_angle_lateral_rate_contribution')) {
        this.front_steer_angle_lateral_rate_contribution = initObj.front_steer_angle_lateral_rate_contribution
      }
      else {
        this.front_steer_angle_lateral_rate_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('front_steer_angle_heading_contribution')) {
        this.front_steer_angle_heading_contribution = initObj.front_steer_angle_heading_contribution
      }
      else {
        this.front_steer_angle_heading_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('front_steer_angle_heading_rate_contribution')) {
        this.front_steer_angle_heading_rate_contribution = initObj.front_steer_angle_heading_rate_contribution
      }
      else {
        this.front_steer_angle_heading_rate_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_value_fd')) {
        this.rear_steering_value_fd = initObj.rear_steering_value_fd
      }
      else {
        this.rear_steering_value_fd = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_target')) {
        this.rear_steering_target = initObj.rear_steering_target
      }
      else {
        this.rear_steering_target = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering_rate')) {
        this.rear_steering_rate = initObj.rear_steering_rate
      }
      else {
        this.rear_steering_rate = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer_angle_feedforward')) {
        this.rear_steer_angle_feedforward = initObj.rear_steer_angle_feedforward
      }
      else {
        this.rear_steer_angle_feedforward = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer_angle_feedback')) {
        this.rear_steer_angle_feedback = initObj.rear_steer_angle_feedback
      }
      else {
        this.rear_steer_angle_feedback = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer_angle_lateral_contribution')) {
        this.rear_steer_angle_lateral_contribution = initObj.rear_steer_angle_lateral_contribution
      }
      else {
        this.rear_steer_angle_lateral_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer_angle_lateral_rate_contribution')) {
        this.rear_steer_angle_lateral_rate_contribution = initObj.rear_steer_angle_lateral_rate_contribution
      }
      else {
        this.rear_steer_angle_lateral_rate_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer_angle_heading_contribution')) {
        this.rear_steer_angle_heading_contribution = initObj.rear_steer_angle_heading_contribution
      }
      else {
        this.rear_steer_angle_heading_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steer_angle_heading_rate_contribution')) {
        this.rear_steer_angle_heading_rate_contribution = initObj.rear_steer_angle_heading_rate_contribution
      }
      else {
        this.rear_steer_angle_heading_rate_contribution = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_00')) {
        this.matrix_k_00 = initObj.matrix_k_00
      }
      else {
        this.matrix_k_00 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_01')) {
        this.matrix_k_01 = initObj.matrix_k_01
      }
      else {
        this.matrix_k_01 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_02')) {
        this.matrix_k_02 = initObj.matrix_k_02
      }
      else {
        this.matrix_k_02 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_03')) {
        this.matrix_k_03 = initObj.matrix_k_03
      }
      else {
        this.matrix_k_03 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_10')) {
        this.matrix_k_10 = initObj.matrix_k_10
      }
      else {
        this.matrix_k_10 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_11')) {
        this.matrix_k_11 = initObj.matrix_k_11
      }
      else {
        this.matrix_k_11 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_12')) {
        this.matrix_k_12 = initObj.matrix_k_12
      }
      else {
        this.matrix_k_12 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_k_13')) {
        this.matrix_k_13 = initObj.matrix_k_13
      }
      else {
        this.matrix_k_13 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_state_0')) {
        this.matrix_state_0 = initObj.matrix_state_0
      }
      else {
        this.matrix_state_0 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_state_1')) {
        this.matrix_state_1 = initObj.matrix_state_1
      }
      else {
        this.matrix_state_1 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_state_2')) {
        this.matrix_state_2 = initObj.matrix_state_2
      }
      else {
        this.matrix_state_2 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_state_3')) {
        this.matrix_state_3 = initObj.matrix_state_3
      }
      else {
        this.matrix_state_3 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_q_updated_0')) {
        this.matrix_q_updated_0 = initObj.matrix_q_updated_0
      }
      else {
        this.matrix_q_updated_0 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_q_updated_1')) {
        this.matrix_q_updated_1 = initObj.matrix_q_updated_1
      }
      else {
        this.matrix_q_updated_1 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_q_updated_2')) {
        this.matrix_q_updated_2 = initObj.matrix_q_updated_2
      }
      else {
        this.matrix_q_updated_2 = 0.0;
      }
      if (initObj.hasOwnProperty('matrix_q_updated_3')) {
        this.matrix_q_updated_3 = initObj.matrix_q_updated_3
      }
      else {
        this.matrix_q_updated_3 = 0.0;
      }
      if (initObj.hasOwnProperty('current_x')) {
        this.current_x = initObj.current_x
      }
      else {
        this.current_x = 0.0;
      }
      if (initObj.hasOwnProperty('current_y')) {
        this.current_y = initObj.current_y
      }
      else {
        this.current_y = 0.0;
      }
      if (initObj.hasOwnProperty('target_point_x')) {
        this.target_point_x = initObj.target_point_x
      }
      else {
        this.target_point_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_point_y')) {
        this.target_point_y = initObj.target_point_y
      }
      else {
        this.target_point_y = 0.0;
      }
      if (initObj.hasOwnProperty('lat_target_point_s')) {
        this.lat_target_point_s = initObj.lat_target_point_s
      }
      else {
        this.lat_target_point_s = 0.0;
      }
      if (initObj.hasOwnProperty('lqr_calculate_time')) {
        this.lqr_calculate_time = initObj.lqr_calculate_time
      }
      else {
        this.lqr_calculate_time = 0;
      }
      if (initObj.hasOwnProperty('lqr_calculate_time_max')) {
        this.lqr_calculate_time_max = initObj.lqr_calculate_time_max
      }
      else {
        this.lqr_calculate_time_max = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlAnalysis
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driving_mode]
    bufferOffset = _serializer.int32(obj.driving_mode, buffer, bufferOffset);
    // Serialize message field [driving_mode_fd]
    bufferOffset = _serializer.int32(obj.driving_mode_fd, buffer, bufferOffset);
    // Serialize message field [gear_location_fd]
    bufferOffset = _serializer.int32(obj.gear_location_fd, buffer, bufferOffset);
    // Serialize message field [gear_location_cmd]
    bufferOffset = _serializer.int32(obj.gear_location_cmd, buffer, bufferOffset);
    // Serialize message field [epb_level_fd]
    bufferOffset = _serializer.int32(obj.epb_level_fd, buffer, bufferOffset);
    // Serialize message field [epb_level_cmd]
    bufferOffset = _serializer.int32(obj.epb_level_cmd, buffer, bufferOffset);
    // Serialize message field [speed_mps]
    bufferOffset = _serializer.float64(obj.speed_mps, buffer, bufferOffset);
    // Serialize message field [speed_reference]
    bufferOffset = _serializer.float64(obj.speed_reference, buffer, bufferOffset);
    // Serialize message field [accel_value_fd]
    bufferOffset = _serializer.float64(obj.accel_value_fd, buffer, bufferOffset);
    // Serialize message field [accel_value_cmd]
    bufferOffset = _serializer.float64(obj.accel_value_cmd, buffer, bufferOffset);
    // Serialize message field [brake_value_fd]
    bufferOffset = _serializer.float64(obj.brake_value_fd, buffer, bufferOffset);
    // Serialize message field [brake_value_cmd]
    bufferOffset = _serializer.float64(obj.brake_value_cmd, buffer, bufferOffset);
    // Serialize message field [path_remain]
    bufferOffset = _serializer.float64(obj.path_remain, buffer, bufferOffset);
    // Serialize message field [has_stop_point]
    bufferOffset = _serializer.bool(obj.has_stop_point, buffer, bufferOffset);
    // Serialize message field [is_full_stop]
    bufferOffset = _serializer.bool(obj.is_full_stop, buffer, bufferOffset);
    // Serialize message field [is_stopped]
    bufferOffset = _serializer.bool(obj.is_stopped, buffer, bufferOffset);
    // Serialize message field [lon_acc_jerk]
    bufferOffset = _serializer.float64(obj.lon_acc_jerk, buffer, bufferOffset);
    // Serialize message field [acceleration_cmd]
    bufferOffset = _serializer.float64(obj.acceleration_cmd, buffer, bufferOffset);
    // Serialize message field [acceleration_cmd_closeloop]
    bufferOffset = _serializer.float64(obj.acceleration_cmd_closeloop, buffer, bufferOffset);
    // Serialize message field [preview_acceleration_reference]
    bufferOffset = _serializer.float64(obj.preview_acceleration_reference, buffer, bufferOffset);
    // Serialize message field [slope_offset_compensation]
    bufferOffset = _serializer.float64(obj.slope_offset_compensation, buffer, bufferOffset);
    // Serialize message field [turning_offset_compensation]
    bufferOffset = _serializer.float64(obj.turning_offset_compensation, buffer, bufferOffset);
    // Serialize message field [speed_error_limited]
    bufferOffset = _serializer.float64(obj.speed_error_limited, buffer, bufferOffset);
    // Serialize message field [speed_error]
    bufferOffset = _serializer.float64(obj.speed_error, buffer, bufferOffset);
    // Serialize message field [speed_offset]
    bufferOffset = _serializer.float64(obj.speed_offset, buffer, bufferOffset);
    // Serialize message field [station_error_limited]
    bufferOffset = _serializer.float64(obj.station_error_limited, buffer, bufferOffset);
    // Serialize message field [station_error]
    bufferOffset = _serializer.float64(obj.station_error, buffer, bufferOffset);
    // Serialize message field [lon_target_point_s]
    bufferOffset = _serializer.float64(obj.lon_target_point_s, buffer, bufferOffset);
    // Serialize message field [lon_calculate_time]
    bufferOffset = _serializer.int64(obj.lon_calculate_time, buffer, bufferOffset);
    // Serialize message field [lon_calculate_time_max]
    bufferOffset = _serializer.int64(obj.lon_calculate_time_max, buffer, bufferOffset);
    // Serialize message field [ref_curvature]
    bufferOffset = _serializer.float64(obj.ref_curvature, buffer, bufferOffset);
    // Serialize message field [ref_heading]
    bufferOffset = _serializer.float64(obj.ref_heading, buffer, bufferOffset);
    // Serialize message field [current_heading]
    bufferOffset = _serializer.float64(obj.current_heading, buffer, bufferOffset);
    // Serialize message field [heading_error]
    bufferOffset = _serializer.float64(obj.heading_error, buffer, bufferOffset);
    // Serialize message field [heading_error_rate]
    bufferOffset = _serializer.float64(obj.heading_error_rate, buffer, bufferOffset);
    // Serialize message field [lateral_error]
    bufferOffset = _serializer.float64(obj.lateral_error, buffer, bufferOffset);
    // Serialize message field [lateral_error_rate]
    bufferOffset = _serializer.float64(obj.lateral_error_rate, buffer, bufferOffset);
    // Serialize message field [lon_error]
    bufferOffset = _serializer.float64(obj.lon_error, buffer, bufferOffset);
    // Serialize message field [front_steering_value_fd]
    bufferOffset = _serializer.float64(obj.front_steering_value_fd, buffer, bufferOffset);
    // Serialize message field [front_steering_target]
    bufferOffset = _serializer.float64(obj.front_steering_target, buffer, bufferOffset);
    // Serialize message field [front_steering_rate]
    bufferOffset = _serializer.float64(obj.front_steering_rate, buffer, bufferOffset);
    // Serialize message field [front_steer_angle_feedforward]
    bufferOffset = _serializer.float64(obj.front_steer_angle_feedforward, buffer, bufferOffset);
    // Serialize message field [front_steer_angle_feedback]
    bufferOffset = _serializer.float64(obj.front_steer_angle_feedback, buffer, bufferOffset);
    // Serialize message field [front_steer_angle_lateral_contribution]
    bufferOffset = _serializer.float64(obj.front_steer_angle_lateral_contribution, buffer, bufferOffset);
    // Serialize message field [front_steer_angle_lateral_rate_contribution]
    bufferOffset = _serializer.float64(obj.front_steer_angle_lateral_rate_contribution, buffer, bufferOffset);
    // Serialize message field [front_steer_angle_heading_contribution]
    bufferOffset = _serializer.float64(obj.front_steer_angle_heading_contribution, buffer, bufferOffset);
    // Serialize message field [front_steer_angle_heading_rate_contribution]
    bufferOffset = _serializer.float64(obj.front_steer_angle_heading_rate_contribution, buffer, bufferOffset);
    // Serialize message field [rear_steering_value_fd]
    bufferOffset = _serializer.float64(obj.rear_steering_value_fd, buffer, bufferOffset);
    // Serialize message field [rear_steering_target]
    bufferOffset = _serializer.float64(obj.rear_steering_target, buffer, bufferOffset);
    // Serialize message field [rear_steering_rate]
    bufferOffset = _serializer.float64(obj.rear_steering_rate, buffer, bufferOffset);
    // Serialize message field [rear_steer_angle_feedforward]
    bufferOffset = _serializer.float64(obj.rear_steer_angle_feedforward, buffer, bufferOffset);
    // Serialize message field [rear_steer_angle_feedback]
    bufferOffset = _serializer.float64(obj.rear_steer_angle_feedback, buffer, bufferOffset);
    // Serialize message field [rear_steer_angle_lateral_contribution]
    bufferOffset = _serializer.float64(obj.rear_steer_angle_lateral_contribution, buffer, bufferOffset);
    // Serialize message field [rear_steer_angle_lateral_rate_contribution]
    bufferOffset = _serializer.float64(obj.rear_steer_angle_lateral_rate_contribution, buffer, bufferOffset);
    // Serialize message field [rear_steer_angle_heading_contribution]
    bufferOffset = _serializer.float64(obj.rear_steer_angle_heading_contribution, buffer, bufferOffset);
    // Serialize message field [rear_steer_angle_heading_rate_contribution]
    bufferOffset = _serializer.float64(obj.rear_steer_angle_heading_rate_contribution, buffer, bufferOffset);
    // Serialize message field [matrix_k_00]
    bufferOffset = _serializer.float64(obj.matrix_k_00, buffer, bufferOffset);
    // Serialize message field [matrix_k_01]
    bufferOffset = _serializer.float64(obj.matrix_k_01, buffer, bufferOffset);
    // Serialize message field [matrix_k_02]
    bufferOffset = _serializer.float64(obj.matrix_k_02, buffer, bufferOffset);
    // Serialize message field [matrix_k_03]
    bufferOffset = _serializer.float64(obj.matrix_k_03, buffer, bufferOffset);
    // Serialize message field [matrix_k_10]
    bufferOffset = _serializer.float64(obj.matrix_k_10, buffer, bufferOffset);
    // Serialize message field [matrix_k_11]
    bufferOffset = _serializer.float64(obj.matrix_k_11, buffer, bufferOffset);
    // Serialize message field [matrix_k_12]
    bufferOffset = _serializer.float64(obj.matrix_k_12, buffer, bufferOffset);
    // Serialize message field [matrix_k_13]
    bufferOffset = _serializer.float64(obj.matrix_k_13, buffer, bufferOffset);
    // Serialize message field [matrix_state_0]
    bufferOffset = _serializer.float64(obj.matrix_state_0, buffer, bufferOffset);
    // Serialize message field [matrix_state_1]
    bufferOffset = _serializer.float64(obj.matrix_state_1, buffer, bufferOffset);
    // Serialize message field [matrix_state_2]
    bufferOffset = _serializer.float64(obj.matrix_state_2, buffer, bufferOffset);
    // Serialize message field [matrix_state_3]
    bufferOffset = _serializer.float64(obj.matrix_state_3, buffer, bufferOffset);
    // Serialize message field [matrix_q_updated_0]
    bufferOffset = _serializer.float64(obj.matrix_q_updated_0, buffer, bufferOffset);
    // Serialize message field [matrix_q_updated_1]
    bufferOffset = _serializer.float64(obj.matrix_q_updated_1, buffer, bufferOffset);
    // Serialize message field [matrix_q_updated_2]
    bufferOffset = _serializer.float64(obj.matrix_q_updated_2, buffer, bufferOffset);
    // Serialize message field [matrix_q_updated_3]
    bufferOffset = _serializer.float64(obj.matrix_q_updated_3, buffer, bufferOffset);
    // Serialize message field [current_x]
    bufferOffset = _serializer.float64(obj.current_x, buffer, bufferOffset);
    // Serialize message field [current_y]
    bufferOffset = _serializer.float64(obj.current_y, buffer, bufferOffset);
    // Serialize message field [target_point_x]
    bufferOffset = _serializer.float64(obj.target_point_x, buffer, bufferOffset);
    // Serialize message field [target_point_y]
    bufferOffset = _serializer.float64(obj.target_point_y, buffer, bufferOffset);
    // Serialize message field [lat_target_point_s]
    bufferOffset = _serializer.float64(obj.lat_target_point_s, buffer, bufferOffset);
    // Serialize message field [lqr_calculate_time]
    bufferOffset = _serializer.int64(obj.lqr_calculate_time, buffer, bufferOffset);
    // Serialize message field [lqr_calculate_time_max]
    bufferOffset = _serializer.int64(obj.lqr_calculate_time_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlAnalysis
    let len;
    let data = new ControlAnalysis(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driving_mode]
    data.driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driving_mode_fd]
    data.driving_mode_fd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_location_fd]
    data.gear_location_fd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_location_cmd]
    data.gear_location_cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epb_level_fd]
    data.epb_level_fd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epb_level_cmd]
    data.epb_level_cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_mps]
    data.speed_mps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_reference]
    data.speed_reference = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_value_fd]
    data.accel_value_fd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_value_cmd]
    data.accel_value_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_value_fd]
    data.brake_value_fd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_value_cmd]
    data.brake_value_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path_remain]
    data.path_remain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [has_stop_point]
    data.has_stop_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_full_stop]
    data.is_full_stop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_stopped]
    data.is_stopped = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lon_acc_jerk]
    data.lon_acc_jerk = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_cmd]
    data.acceleration_cmd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration_cmd_closeloop]
    data.acceleration_cmd_closeloop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [preview_acceleration_reference]
    data.preview_acceleration_reference = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [slope_offset_compensation]
    data.slope_offset_compensation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [turning_offset_compensation]
    data.turning_offset_compensation = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_error_limited]
    data.speed_error_limited = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_error]
    data.speed_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_offset]
    data.speed_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [station_error_limited]
    data.station_error_limited = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [station_error]
    data.station_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_target_point_s]
    data.lon_target_point_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_calculate_time]
    data.lon_calculate_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [lon_calculate_time_max]
    data.lon_calculate_time_max = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ref_curvature]
    data.ref_curvature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ref_heading]
    data.ref_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_heading]
    data.current_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_error]
    data.heading_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_error_rate]
    data.heading_error_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_error]
    data.lateral_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lateral_error_rate]
    data.lateral_error_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon_error]
    data.lon_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steering_value_fd]
    data.front_steering_value_fd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steering_target]
    data.front_steering_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steering_rate]
    data.front_steering_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steer_angle_feedforward]
    data.front_steer_angle_feedforward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steer_angle_feedback]
    data.front_steer_angle_feedback = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steer_angle_lateral_contribution]
    data.front_steer_angle_lateral_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steer_angle_lateral_rate_contribution]
    data.front_steer_angle_lateral_rate_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steer_angle_heading_contribution]
    data.front_steer_angle_heading_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_steer_angle_heading_rate_contribution]
    data.front_steer_angle_heading_rate_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_value_fd]
    data.rear_steering_value_fd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_target]
    data.rear_steering_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_rate]
    data.rear_steering_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer_angle_feedforward]
    data.rear_steer_angle_feedforward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer_angle_feedback]
    data.rear_steer_angle_feedback = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer_angle_lateral_contribution]
    data.rear_steer_angle_lateral_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer_angle_lateral_rate_contribution]
    data.rear_steer_angle_lateral_rate_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer_angle_heading_contribution]
    data.rear_steer_angle_heading_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steer_angle_heading_rate_contribution]
    data.rear_steer_angle_heading_rate_contribution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_00]
    data.matrix_k_00 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_01]
    data.matrix_k_01 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_02]
    data.matrix_k_02 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_03]
    data.matrix_k_03 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_10]
    data.matrix_k_10 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_11]
    data.matrix_k_11 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_12]
    data.matrix_k_12 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_k_13]
    data.matrix_k_13 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_state_0]
    data.matrix_state_0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_state_1]
    data.matrix_state_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_state_2]
    data.matrix_state_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_state_3]
    data.matrix_state_3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_q_updated_0]
    data.matrix_q_updated_0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_q_updated_1]
    data.matrix_q_updated_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_q_updated_2]
    data.matrix_q_updated_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [matrix_q_updated_3]
    data.matrix_q_updated_3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_x]
    data.current_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_y]
    data.current_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_point_x]
    data.target_point_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_point_y]
    data.target_point_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat_target_point_s]
    data.lat_target_point_s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lqr_calculate_time]
    data.lqr_calculate_time = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [lqr_calculate_time_max]
    data.lqr_calculate_time_max = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 587;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ControlAnalysis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6457731febea5c324804cbbe27562bf5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   driving_mode     # 驾驶模式
    int32   driving_mode_fd     # 驾驶模式反馈
    int32   gear_location_fd     # 档位反馈
    int32   gear_location_cmd     # 档位命令
    int32   epb_level_fd     # EPB状态反馈
    int32   epb_level_cmd     # EPB命令
    float64   speed_mps     # 车辆速度
    float64   speed_reference     # 参考速度
    float64   accel_value_fd     # 油门反馈
    float64   accel_value_cmd     # 油门命令
    float64   brake_value_fd     # 刹车反馈
    float64   brake_value_cmd     # 刹车命令
    float64   path_remain     # 剩余轨迹里程
    bool   has_stop_point     # 是否有停车点
    bool   is_full_stop     # 是否有停车轨迹
    bool   is_stopped     # 是否停车
    float64   lon_acc_jerk     # 纵向加加速度
    float64   acceleration_cmd     # 加速度命令
    float64   acceleration_cmd_closeloop     # 闭环加速度命令
    float64   preview_acceleration_reference     # 预描参考加速度
    float64   slope_offset_compensation     # 坡道补偿
    float64   turning_offset_compensation     # 转向补偿
    float64   speed_error_limited     # 速度差限值
    float64   speed_error     # 速度差
    float64   speed_offset     #  
    float64   station_error_limited     # 位置误差限值
    float64   station_error     # 位置误差
    float64   lon_target_point_s     # 纵向控制目标点里程
    int64   lon_calculate_time     # 纵向计算时间
    int64   lon_calculate_time_max     # 纵向时间限值
    float64   ref_curvature     # 参考曲率
    float64   ref_heading     # 参考航向角
    float64   current_heading     # 当前航向角
    float64   heading_error     # 航向角误差
    float64   heading_error_rate     # 航向角误差率
    float64   lateral_error     # 横向误差
    float64   lateral_error_rate     # 横向误差率
    float64   lon_error     # 纵向误差
    float64   front_steering_value_fd     # 前轮转向反馈
    float64   front_steering_target     # 前轮目标转向
    float64   front_steering_rate     # 前轮转向角速率
    float64   front_steer_angle_feedforward     # 前轮前馈计算
    float64   front_steer_angle_feedback     # 前轮反馈计算
    float64   front_steer_angle_lateral_contribution     # 前轮横向误差贡献
    float64   front_steer_angle_lateral_rate_contribution     # 前轮横向误差率贡献
    float64   front_steer_angle_heading_contribution     # 前轮航向角误差贡献
    float64   front_steer_angle_heading_rate_contribution     # 前轮航向角误差率贡献
    float64   rear_steering_value_fd     # 后轮转向反馈
    float64   rear_steering_target     # 后轮目标转向
    float64   rear_steering_rate     # 后轮转向角速率
    float64   rear_steer_angle_feedforward     # 后轮前馈计算
    float64   rear_steer_angle_feedback     # 后轮反馈计算
    float64   rear_steer_angle_lateral_contribution     # 后轮横向误差贡献
    float64   rear_steer_angle_lateral_rate_contribution     # 后轮横向误差率贡献
    float64   rear_steer_angle_heading_contribution     # 后轮航向角误差贡献
    float64   rear_steer_angle_heading_rate_contribution     # 后轮航向角误差率贡献
    float64   matrix_k_00     # k矩阵
    float64   matrix_k_01     # k矩阵
    float64   matrix_k_02     # k矩阵
    float64   matrix_k_03     # k矩阵
    float64   matrix_k_10     # k矩阵
    float64   matrix_k_11     # k矩阵
    float64   matrix_k_12     # k矩阵
    float64   matrix_k_13     # k矩阵
    float64   matrix_state_0     # 状态矩阵
    float64   matrix_state_1     # 状态矩阵
    float64   matrix_state_2     # 状态矩阵
    float64   matrix_state_3     # 状态矩阵
    float64   matrix_q_updated_0     # 权重矩阵
    float64   matrix_q_updated_1     # 权重矩阵
    float64   matrix_q_updated_2     # 权重矩阵
    float64   matrix_q_updated_3     # 权重矩阵
    float64   current_x     # 当前位置x
    float64   current_y     # 当前位置y
    float64   target_point_x     # 目标点x
    float64   target_point_y     # 目标点y
    float64   lat_target_point_s     # 横向目标点里程
    int64   lqr_calculate_time     # LQR计算时间
    int64   lqr_calculate_time_max     # LQR计算时间限值
    
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
    const resolved = new ControlAnalysis(null);
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

    if (msg.driving_mode_fd !== undefined) {
      resolved.driving_mode_fd = msg.driving_mode_fd;
    }
    else {
      resolved.driving_mode_fd = 0
    }

    if (msg.gear_location_fd !== undefined) {
      resolved.gear_location_fd = msg.gear_location_fd;
    }
    else {
      resolved.gear_location_fd = 0
    }

    if (msg.gear_location_cmd !== undefined) {
      resolved.gear_location_cmd = msg.gear_location_cmd;
    }
    else {
      resolved.gear_location_cmd = 0
    }

    if (msg.epb_level_fd !== undefined) {
      resolved.epb_level_fd = msg.epb_level_fd;
    }
    else {
      resolved.epb_level_fd = 0
    }

    if (msg.epb_level_cmd !== undefined) {
      resolved.epb_level_cmd = msg.epb_level_cmd;
    }
    else {
      resolved.epb_level_cmd = 0
    }

    if (msg.speed_mps !== undefined) {
      resolved.speed_mps = msg.speed_mps;
    }
    else {
      resolved.speed_mps = 0.0
    }

    if (msg.speed_reference !== undefined) {
      resolved.speed_reference = msg.speed_reference;
    }
    else {
      resolved.speed_reference = 0.0
    }

    if (msg.accel_value_fd !== undefined) {
      resolved.accel_value_fd = msg.accel_value_fd;
    }
    else {
      resolved.accel_value_fd = 0.0
    }

    if (msg.accel_value_cmd !== undefined) {
      resolved.accel_value_cmd = msg.accel_value_cmd;
    }
    else {
      resolved.accel_value_cmd = 0.0
    }

    if (msg.brake_value_fd !== undefined) {
      resolved.brake_value_fd = msg.brake_value_fd;
    }
    else {
      resolved.brake_value_fd = 0.0
    }

    if (msg.brake_value_cmd !== undefined) {
      resolved.brake_value_cmd = msg.brake_value_cmd;
    }
    else {
      resolved.brake_value_cmd = 0.0
    }

    if (msg.path_remain !== undefined) {
      resolved.path_remain = msg.path_remain;
    }
    else {
      resolved.path_remain = 0.0
    }

    if (msg.has_stop_point !== undefined) {
      resolved.has_stop_point = msg.has_stop_point;
    }
    else {
      resolved.has_stop_point = false
    }

    if (msg.is_full_stop !== undefined) {
      resolved.is_full_stop = msg.is_full_stop;
    }
    else {
      resolved.is_full_stop = false
    }

    if (msg.is_stopped !== undefined) {
      resolved.is_stopped = msg.is_stopped;
    }
    else {
      resolved.is_stopped = false
    }

    if (msg.lon_acc_jerk !== undefined) {
      resolved.lon_acc_jerk = msg.lon_acc_jerk;
    }
    else {
      resolved.lon_acc_jerk = 0.0
    }

    if (msg.acceleration_cmd !== undefined) {
      resolved.acceleration_cmd = msg.acceleration_cmd;
    }
    else {
      resolved.acceleration_cmd = 0.0
    }

    if (msg.acceleration_cmd_closeloop !== undefined) {
      resolved.acceleration_cmd_closeloop = msg.acceleration_cmd_closeloop;
    }
    else {
      resolved.acceleration_cmd_closeloop = 0.0
    }

    if (msg.preview_acceleration_reference !== undefined) {
      resolved.preview_acceleration_reference = msg.preview_acceleration_reference;
    }
    else {
      resolved.preview_acceleration_reference = 0.0
    }

    if (msg.slope_offset_compensation !== undefined) {
      resolved.slope_offset_compensation = msg.slope_offset_compensation;
    }
    else {
      resolved.slope_offset_compensation = 0.0
    }

    if (msg.turning_offset_compensation !== undefined) {
      resolved.turning_offset_compensation = msg.turning_offset_compensation;
    }
    else {
      resolved.turning_offset_compensation = 0.0
    }

    if (msg.speed_error_limited !== undefined) {
      resolved.speed_error_limited = msg.speed_error_limited;
    }
    else {
      resolved.speed_error_limited = 0.0
    }

    if (msg.speed_error !== undefined) {
      resolved.speed_error = msg.speed_error;
    }
    else {
      resolved.speed_error = 0.0
    }

    if (msg.speed_offset !== undefined) {
      resolved.speed_offset = msg.speed_offset;
    }
    else {
      resolved.speed_offset = 0.0
    }

    if (msg.station_error_limited !== undefined) {
      resolved.station_error_limited = msg.station_error_limited;
    }
    else {
      resolved.station_error_limited = 0.0
    }

    if (msg.station_error !== undefined) {
      resolved.station_error = msg.station_error;
    }
    else {
      resolved.station_error = 0.0
    }

    if (msg.lon_target_point_s !== undefined) {
      resolved.lon_target_point_s = msg.lon_target_point_s;
    }
    else {
      resolved.lon_target_point_s = 0.0
    }

    if (msg.lon_calculate_time !== undefined) {
      resolved.lon_calculate_time = msg.lon_calculate_time;
    }
    else {
      resolved.lon_calculate_time = 0
    }

    if (msg.lon_calculate_time_max !== undefined) {
      resolved.lon_calculate_time_max = msg.lon_calculate_time_max;
    }
    else {
      resolved.lon_calculate_time_max = 0
    }

    if (msg.ref_curvature !== undefined) {
      resolved.ref_curvature = msg.ref_curvature;
    }
    else {
      resolved.ref_curvature = 0.0
    }

    if (msg.ref_heading !== undefined) {
      resolved.ref_heading = msg.ref_heading;
    }
    else {
      resolved.ref_heading = 0.0
    }

    if (msg.current_heading !== undefined) {
      resolved.current_heading = msg.current_heading;
    }
    else {
      resolved.current_heading = 0.0
    }

    if (msg.heading_error !== undefined) {
      resolved.heading_error = msg.heading_error;
    }
    else {
      resolved.heading_error = 0.0
    }

    if (msg.heading_error_rate !== undefined) {
      resolved.heading_error_rate = msg.heading_error_rate;
    }
    else {
      resolved.heading_error_rate = 0.0
    }

    if (msg.lateral_error !== undefined) {
      resolved.lateral_error = msg.lateral_error;
    }
    else {
      resolved.lateral_error = 0.0
    }

    if (msg.lateral_error_rate !== undefined) {
      resolved.lateral_error_rate = msg.lateral_error_rate;
    }
    else {
      resolved.lateral_error_rate = 0.0
    }

    if (msg.lon_error !== undefined) {
      resolved.lon_error = msg.lon_error;
    }
    else {
      resolved.lon_error = 0.0
    }

    if (msg.front_steering_value_fd !== undefined) {
      resolved.front_steering_value_fd = msg.front_steering_value_fd;
    }
    else {
      resolved.front_steering_value_fd = 0.0
    }

    if (msg.front_steering_target !== undefined) {
      resolved.front_steering_target = msg.front_steering_target;
    }
    else {
      resolved.front_steering_target = 0.0
    }

    if (msg.front_steering_rate !== undefined) {
      resolved.front_steering_rate = msg.front_steering_rate;
    }
    else {
      resolved.front_steering_rate = 0.0
    }

    if (msg.front_steer_angle_feedforward !== undefined) {
      resolved.front_steer_angle_feedforward = msg.front_steer_angle_feedforward;
    }
    else {
      resolved.front_steer_angle_feedforward = 0.0
    }

    if (msg.front_steer_angle_feedback !== undefined) {
      resolved.front_steer_angle_feedback = msg.front_steer_angle_feedback;
    }
    else {
      resolved.front_steer_angle_feedback = 0.0
    }

    if (msg.front_steer_angle_lateral_contribution !== undefined) {
      resolved.front_steer_angle_lateral_contribution = msg.front_steer_angle_lateral_contribution;
    }
    else {
      resolved.front_steer_angle_lateral_contribution = 0.0
    }

    if (msg.front_steer_angle_lateral_rate_contribution !== undefined) {
      resolved.front_steer_angle_lateral_rate_contribution = msg.front_steer_angle_lateral_rate_contribution;
    }
    else {
      resolved.front_steer_angle_lateral_rate_contribution = 0.0
    }

    if (msg.front_steer_angle_heading_contribution !== undefined) {
      resolved.front_steer_angle_heading_contribution = msg.front_steer_angle_heading_contribution;
    }
    else {
      resolved.front_steer_angle_heading_contribution = 0.0
    }

    if (msg.front_steer_angle_heading_rate_contribution !== undefined) {
      resolved.front_steer_angle_heading_rate_contribution = msg.front_steer_angle_heading_rate_contribution;
    }
    else {
      resolved.front_steer_angle_heading_rate_contribution = 0.0
    }

    if (msg.rear_steering_value_fd !== undefined) {
      resolved.rear_steering_value_fd = msg.rear_steering_value_fd;
    }
    else {
      resolved.rear_steering_value_fd = 0.0
    }

    if (msg.rear_steering_target !== undefined) {
      resolved.rear_steering_target = msg.rear_steering_target;
    }
    else {
      resolved.rear_steering_target = 0.0
    }

    if (msg.rear_steering_rate !== undefined) {
      resolved.rear_steering_rate = msg.rear_steering_rate;
    }
    else {
      resolved.rear_steering_rate = 0.0
    }

    if (msg.rear_steer_angle_feedforward !== undefined) {
      resolved.rear_steer_angle_feedforward = msg.rear_steer_angle_feedforward;
    }
    else {
      resolved.rear_steer_angle_feedforward = 0.0
    }

    if (msg.rear_steer_angle_feedback !== undefined) {
      resolved.rear_steer_angle_feedback = msg.rear_steer_angle_feedback;
    }
    else {
      resolved.rear_steer_angle_feedback = 0.0
    }

    if (msg.rear_steer_angle_lateral_contribution !== undefined) {
      resolved.rear_steer_angle_lateral_contribution = msg.rear_steer_angle_lateral_contribution;
    }
    else {
      resolved.rear_steer_angle_lateral_contribution = 0.0
    }

    if (msg.rear_steer_angle_lateral_rate_contribution !== undefined) {
      resolved.rear_steer_angle_lateral_rate_contribution = msg.rear_steer_angle_lateral_rate_contribution;
    }
    else {
      resolved.rear_steer_angle_lateral_rate_contribution = 0.0
    }

    if (msg.rear_steer_angle_heading_contribution !== undefined) {
      resolved.rear_steer_angle_heading_contribution = msg.rear_steer_angle_heading_contribution;
    }
    else {
      resolved.rear_steer_angle_heading_contribution = 0.0
    }

    if (msg.rear_steer_angle_heading_rate_contribution !== undefined) {
      resolved.rear_steer_angle_heading_rate_contribution = msg.rear_steer_angle_heading_rate_contribution;
    }
    else {
      resolved.rear_steer_angle_heading_rate_contribution = 0.0
    }

    if (msg.matrix_k_00 !== undefined) {
      resolved.matrix_k_00 = msg.matrix_k_00;
    }
    else {
      resolved.matrix_k_00 = 0.0
    }

    if (msg.matrix_k_01 !== undefined) {
      resolved.matrix_k_01 = msg.matrix_k_01;
    }
    else {
      resolved.matrix_k_01 = 0.0
    }

    if (msg.matrix_k_02 !== undefined) {
      resolved.matrix_k_02 = msg.matrix_k_02;
    }
    else {
      resolved.matrix_k_02 = 0.0
    }

    if (msg.matrix_k_03 !== undefined) {
      resolved.matrix_k_03 = msg.matrix_k_03;
    }
    else {
      resolved.matrix_k_03 = 0.0
    }

    if (msg.matrix_k_10 !== undefined) {
      resolved.matrix_k_10 = msg.matrix_k_10;
    }
    else {
      resolved.matrix_k_10 = 0.0
    }

    if (msg.matrix_k_11 !== undefined) {
      resolved.matrix_k_11 = msg.matrix_k_11;
    }
    else {
      resolved.matrix_k_11 = 0.0
    }

    if (msg.matrix_k_12 !== undefined) {
      resolved.matrix_k_12 = msg.matrix_k_12;
    }
    else {
      resolved.matrix_k_12 = 0.0
    }

    if (msg.matrix_k_13 !== undefined) {
      resolved.matrix_k_13 = msg.matrix_k_13;
    }
    else {
      resolved.matrix_k_13 = 0.0
    }

    if (msg.matrix_state_0 !== undefined) {
      resolved.matrix_state_0 = msg.matrix_state_0;
    }
    else {
      resolved.matrix_state_0 = 0.0
    }

    if (msg.matrix_state_1 !== undefined) {
      resolved.matrix_state_1 = msg.matrix_state_1;
    }
    else {
      resolved.matrix_state_1 = 0.0
    }

    if (msg.matrix_state_2 !== undefined) {
      resolved.matrix_state_2 = msg.matrix_state_2;
    }
    else {
      resolved.matrix_state_2 = 0.0
    }

    if (msg.matrix_state_3 !== undefined) {
      resolved.matrix_state_3 = msg.matrix_state_3;
    }
    else {
      resolved.matrix_state_3 = 0.0
    }

    if (msg.matrix_q_updated_0 !== undefined) {
      resolved.matrix_q_updated_0 = msg.matrix_q_updated_0;
    }
    else {
      resolved.matrix_q_updated_0 = 0.0
    }

    if (msg.matrix_q_updated_1 !== undefined) {
      resolved.matrix_q_updated_1 = msg.matrix_q_updated_1;
    }
    else {
      resolved.matrix_q_updated_1 = 0.0
    }

    if (msg.matrix_q_updated_2 !== undefined) {
      resolved.matrix_q_updated_2 = msg.matrix_q_updated_2;
    }
    else {
      resolved.matrix_q_updated_2 = 0.0
    }

    if (msg.matrix_q_updated_3 !== undefined) {
      resolved.matrix_q_updated_3 = msg.matrix_q_updated_3;
    }
    else {
      resolved.matrix_q_updated_3 = 0.0
    }

    if (msg.current_x !== undefined) {
      resolved.current_x = msg.current_x;
    }
    else {
      resolved.current_x = 0.0
    }

    if (msg.current_y !== undefined) {
      resolved.current_y = msg.current_y;
    }
    else {
      resolved.current_y = 0.0
    }

    if (msg.target_point_x !== undefined) {
      resolved.target_point_x = msg.target_point_x;
    }
    else {
      resolved.target_point_x = 0.0
    }

    if (msg.target_point_y !== undefined) {
      resolved.target_point_y = msg.target_point_y;
    }
    else {
      resolved.target_point_y = 0.0
    }

    if (msg.lat_target_point_s !== undefined) {
      resolved.lat_target_point_s = msg.lat_target_point_s;
    }
    else {
      resolved.lat_target_point_s = 0.0
    }

    if (msg.lqr_calculate_time !== undefined) {
      resolved.lqr_calculate_time = msg.lqr_calculate_time;
    }
    else {
      resolved.lqr_calculate_time = 0
    }

    if (msg.lqr_calculate_time_max !== undefined) {
      resolved.lqr_calculate_time_max = msg.lqr_calculate_time_max;
    }
    else {
      resolved.lqr_calculate_time_max = 0
    }

    return resolved;
    }
};

module.exports = ControlAnalysis;
