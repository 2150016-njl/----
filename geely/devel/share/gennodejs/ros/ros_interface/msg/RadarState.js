// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarStateError = require('./RadarStateError.js');
let RadarStateMode = require('./RadarStateMode.js');

//-----------------------------------------------------------

class RadarState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor_id = null;
      this.nvm_read_status = null;
      this.nvm_write_status = null;
      this.radar_state_error = null;
      this.radar_state_mode = null;
      this.max_distance = null;
      this.sort_index = null;
      this.radar_power = null;
      this.ctl_relay = null;
      this.output_type = null;
      this.send_quality = null;
      this.send_extinfo = null;
      this.motion_rx_state = null;
      this.rcs_threshold = null;
      this.connector_direction = null;
      this.radar_position = null;
      this.hw_error = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('nvm_read_status')) {
        this.nvm_read_status = initObj.nvm_read_status
      }
      else {
        this.nvm_read_status = 0;
      }
      if (initObj.hasOwnProperty('nvm_write_status')) {
        this.nvm_write_status = initObj.nvm_write_status
      }
      else {
        this.nvm_write_status = 0;
      }
      if (initObj.hasOwnProperty('radar_state_error')) {
        this.radar_state_error = initObj.radar_state_error
      }
      else {
        this.radar_state_error = new RadarStateError();
      }
      if (initObj.hasOwnProperty('radar_state_mode')) {
        this.radar_state_mode = initObj.radar_state_mode
      }
      else {
        this.radar_state_mode = new RadarStateMode();
      }
      if (initObj.hasOwnProperty('max_distance')) {
        this.max_distance = initObj.max_distance
      }
      else {
        this.max_distance = 0;
      }
      if (initObj.hasOwnProperty('sort_index')) {
        this.sort_index = initObj.sort_index
      }
      else {
        this.sort_index = 0;
      }
      if (initObj.hasOwnProperty('radar_power')) {
        this.radar_power = initObj.radar_power
      }
      else {
        this.radar_power = 0;
      }
      if (initObj.hasOwnProperty('ctl_relay')) {
        this.ctl_relay = initObj.ctl_relay
      }
      else {
        this.ctl_relay = 0;
      }
      if (initObj.hasOwnProperty('output_type')) {
        this.output_type = initObj.output_type
      }
      else {
        this.output_type = 0;
      }
      if (initObj.hasOwnProperty('send_quality')) {
        this.send_quality = initObj.send_quality
      }
      else {
        this.send_quality = 0;
      }
      if (initObj.hasOwnProperty('send_extinfo')) {
        this.send_extinfo = initObj.send_extinfo
      }
      else {
        this.send_extinfo = 0;
      }
      if (initObj.hasOwnProperty('motion_rx_state')) {
        this.motion_rx_state = initObj.motion_rx_state
      }
      else {
        this.motion_rx_state = 0;
      }
      if (initObj.hasOwnProperty('rcs_threshold')) {
        this.rcs_threshold = initObj.rcs_threshold
      }
      else {
        this.rcs_threshold = 0;
      }
      if (initObj.hasOwnProperty('connector_direction')) {
        this.connector_direction = initObj.connector_direction
      }
      else {
        this.connector_direction = 0;
      }
      if (initObj.hasOwnProperty('radar_position')) {
        this.radar_position = initObj.radar_position
      }
      else {
        this.radar_position = 0;
      }
      if (initObj.hasOwnProperty('hw_error')) {
        this.hw_error = initObj.hw_error
      }
      else {
        this.hw_error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarState
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.uint8(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [nvm_read_status]
    bufferOffset = _serializer.uint8(obj.nvm_read_status, buffer, bufferOffset);
    // Serialize message field [nvm_write_status]
    bufferOffset = _serializer.uint8(obj.nvm_write_status, buffer, bufferOffset);
    // Serialize message field [radar_state_error]
    bufferOffset = RadarStateError.serialize(obj.radar_state_error, buffer, bufferOffset);
    // Serialize message field [radar_state_mode]
    bufferOffset = RadarStateMode.serialize(obj.radar_state_mode, buffer, bufferOffset);
    // Serialize message field [max_distance]
    bufferOffset = _serializer.uint16(obj.max_distance, buffer, bufferOffset);
    // Serialize message field [sort_index]
    bufferOffset = _serializer.uint8(obj.sort_index, buffer, bufferOffset);
    // Serialize message field [radar_power]
    bufferOffset = _serializer.uint8(obj.radar_power, buffer, bufferOffset);
    // Serialize message field [ctl_relay]
    bufferOffset = _serializer.uint8(obj.ctl_relay, buffer, bufferOffset);
    // Serialize message field [output_type]
    bufferOffset = _serializer.uint8(obj.output_type, buffer, bufferOffset);
    // Serialize message field [send_quality]
    bufferOffset = _serializer.uint8(obj.send_quality, buffer, bufferOffset);
    // Serialize message field [send_extinfo]
    bufferOffset = _serializer.uint8(obj.send_extinfo, buffer, bufferOffset);
    // Serialize message field [motion_rx_state]
    bufferOffset = _serializer.uint8(obj.motion_rx_state, buffer, bufferOffset);
    // Serialize message field [rcs_threshold]
    bufferOffset = _serializer.uint8(obj.rcs_threshold, buffer, bufferOffset);
    // Serialize message field [connector_direction]
    bufferOffset = _serializer.uint8(obj.connector_direction, buffer, bufferOffset);
    // Serialize message field [radar_position]
    bufferOffset = _serializer.uint8(obj.radar_position, buffer, bufferOffset);
    // Serialize message field [hw_error]
    bufferOffset = _serializer.uint8(obj.hw_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarState
    let len;
    let data = new RadarState(null);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nvm_read_status]
    data.nvm_read_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [nvm_write_status]
    data.nvm_write_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radar_state_error]
    data.radar_state_error = RadarStateError.deserialize(buffer, bufferOffset);
    // Deserialize message field [radar_state_mode]
    data.radar_state_mode = RadarStateMode.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_distance]
    data.max_distance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sort_index]
    data.sort_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radar_power]
    data.radar_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ctl_relay]
    data.ctl_relay = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [output_type]
    data.output_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [send_quality]
    data.send_quality = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [send_extinfo]
    data.send_extinfo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motion_rx_state]
    data.motion_rx_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rcs_threshold]
    data.rcs_threshold = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [connector_direction]
    data.connector_direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [radar_position]
    data.radar_position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hw_error]
    data.hw_error = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RadarState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00e0b3643bf386c2d41f0895e61c5428';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   sensor_id     #  
    uint8   nvm_read_status     #  
    uint8   nvm_write_status     #  
    RadarStateError   radar_state_error     #  
    RadarStateMode   radar_state_mode     #  
    uint16   max_distance     #  
    uint8   sort_index     #  
    uint8   radar_power     #  
    uint8   ctl_relay     #  
    uint8   output_type     #  
    uint8   send_quality     #  
    uint8   send_extinfo     #  
    uint8   motion_rx_state     #  
    uint8   rcs_threshold     #  
    uint8   connector_direction     #  
    uint8   radar_position     #  
    uint8   hw_error     #  
    
    ================================================================================
    MSG: ros_interface/RadarStateError
    uint8   persistent_error     #  
    uint8   temporary_error     #  
    uint8   interference_error     #  
    uint8   temperature_error     #  
    uint8   voltage_error     #  
    uint8   block_error     #  
    uint8   broadcast_error     #  
    uint8   electric_axis_error     #  
    uint8   config_error     #  
    uint8   calibration_error     #  
    
    ================================================================================
    MSG: ros_interface/RadarStateMode
    uint8   can0_work_mode     # can0工作模式
    uint8   can1_work_mode     # can1工作模式
    uint8   dual_can_mode     # 双总线工作模式
    uint8   timming_mode     # 计时模式
    uint8   power_mode     # 电源模式
    uint8   performance_mode     # 效能模式
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarState(null);
    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.nvm_read_status !== undefined) {
      resolved.nvm_read_status = msg.nvm_read_status;
    }
    else {
      resolved.nvm_read_status = 0
    }

    if (msg.nvm_write_status !== undefined) {
      resolved.nvm_write_status = msg.nvm_write_status;
    }
    else {
      resolved.nvm_write_status = 0
    }

    if (msg.radar_state_error !== undefined) {
      resolved.radar_state_error = RadarStateError.Resolve(msg.radar_state_error)
    }
    else {
      resolved.radar_state_error = new RadarStateError()
    }

    if (msg.radar_state_mode !== undefined) {
      resolved.radar_state_mode = RadarStateMode.Resolve(msg.radar_state_mode)
    }
    else {
      resolved.radar_state_mode = new RadarStateMode()
    }

    if (msg.max_distance !== undefined) {
      resolved.max_distance = msg.max_distance;
    }
    else {
      resolved.max_distance = 0
    }

    if (msg.sort_index !== undefined) {
      resolved.sort_index = msg.sort_index;
    }
    else {
      resolved.sort_index = 0
    }

    if (msg.radar_power !== undefined) {
      resolved.radar_power = msg.radar_power;
    }
    else {
      resolved.radar_power = 0
    }

    if (msg.ctl_relay !== undefined) {
      resolved.ctl_relay = msg.ctl_relay;
    }
    else {
      resolved.ctl_relay = 0
    }

    if (msg.output_type !== undefined) {
      resolved.output_type = msg.output_type;
    }
    else {
      resolved.output_type = 0
    }

    if (msg.send_quality !== undefined) {
      resolved.send_quality = msg.send_quality;
    }
    else {
      resolved.send_quality = 0
    }

    if (msg.send_extinfo !== undefined) {
      resolved.send_extinfo = msg.send_extinfo;
    }
    else {
      resolved.send_extinfo = 0
    }

    if (msg.motion_rx_state !== undefined) {
      resolved.motion_rx_state = msg.motion_rx_state;
    }
    else {
      resolved.motion_rx_state = 0
    }

    if (msg.rcs_threshold !== undefined) {
      resolved.rcs_threshold = msg.rcs_threshold;
    }
    else {
      resolved.rcs_threshold = 0
    }

    if (msg.connector_direction !== undefined) {
      resolved.connector_direction = msg.connector_direction;
    }
    else {
      resolved.connector_direction = 0
    }

    if (msg.radar_position !== undefined) {
      resolved.radar_position = msg.radar_position;
    }
    else {
      resolved.radar_position = 0
    }

    if (msg.hw_error !== undefined) {
      resolved.hw_error = msg.hw_error;
    }
    else {
      resolved.hw_error = 0
    }

    return resolved;
    }
};

module.exports = RadarState;
