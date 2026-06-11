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

class RSSInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_rss_safe = null;
      this.cur_dist_lon = null;
      this.rss_safe_dist_lon = null;
      this.acc_lon_range_minimum = null;
      this.acc_lon_range_maximum = null;
      this.acc_lat_left_range_minimum = null;
      this.acc_lat_left_range_maximum = null;
      this.acc_lat_right_range_minimum = null;
      this.acc_lat_right_range_maximum = null;
    }
    else {
      if (initObj.hasOwnProperty('is_rss_safe')) {
        this.is_rss_safe = initObj.is_rss_safe
      }
      else {
        this.is_rss_safe = false;
      }
      if (initObj.hasOwnProperty('cur_dist_lon')) {
        this.cur_dist_lon = initObj.cur_dist_lon
      }
      else {
        this.cur_dist_lon = 0.0;
      }
      if (initObj.hasOwnProperty('rss_safe_dist_lon')) {
        this.rss_safe_dist_lon = initObj.rss_safe_dist_lon
      }
      else {
        this.rss_safe_dist_lon = 0.0;
      }
      if (initObj.hasOwnProperty('acc_lon_range_minimum')) {
        this.acc_lon_range_minimum = initObj.acc_lon_range_minimum
      }
      else {
        this.acc_lon_range_minimum = 0.0;
      }
      if (initObj.hasOwnProperty('acc_lon_range_maximum')) {
        this.acc_lon_range_maximum = initObj.acc_lon_range_maximum
      }
      else {
        this.acc_lon_range_maximum = 0.0;
      }
      if (initObj.hasOwnProperty('acc_lat_left_range_minimum')) {
        this.acc_lat_left_range_minimum = initObj.acc_lat_left_range_minimum
      }
      else {
        this.acc_lat_left_range_minimum = 0.0;
      }
      if (initObj.hasOwnProperty('acc_lat_left_range_maximum')) {
        this.acc_lat_left_range_maximum = initObj.acc_lat_left_range_maximum
      }
      else {
        this.acc_lat_left_range_maximum = 0.0;
      }
      if (initObj.hasOwnProperty('acc_lat_right_range_minimum')) {
        this.acc_lat_right_range_minimum = initObj.acc_lat_right_range_minimum
      }
      else {
        this.acc_lat_right_range_minimum = 0.0;
      }
      if (initObj.hasOwnProperty('acc_lat_right_range_maximum')) {
        this.acc_lat_right_range_maximum = initObj.acc_lat_right_range_maximum
      }
      else {
        this.acc_lat_right_range_maximum = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RSSInfo
    // Serialize message field [is_rss_safe]
    bufferOffset = _serializer.bool(obj.is_rss_safe, buffer, bufferOffset);
    // Serialize message field [cur_dist_lon]
    bufferOffset = _serializer.float64(obj.cur_dist_lon, buffer, bufferOffset);
    // Serialize message field [rss_safe_dist_lon]
    bufferOffset = _serializer.float64(obj.rss_safe_dist_lon, buffer, bufferOffset);
    // Serialize message field [acc_lon_range_minimum]
    bufferOffset = _serializer.float64(obj.acc_lon_range_minimum, buffer, bufferOffset);
    // Serialize message field [acc_lon_range_maximum]
    bufferOffset = _serializer.float64(obj.acc_lon_range_maximum, buffer, bufferOffset);
    // Serialize message field [acc_lat_left_range_minimum]
    bufferOffset = _serializer.float64(obj.acc_lat_left_range_minimum, buffer, bufferOffset);
    // Serialize message field [acc_lat_left_range_maximum]
    bufferOffset = _serializer.float64(obj.acc_lat_left_range_maximum, buffer, bufferOffset);
    // Serialize message field [acc_lat_right_range_minimum]
    bufferOffset = _serializer.float64(obj.acc_lat_right_range_minimum, buffer, bufferOffset);
    // Serialize message field [acc_lat_right_range_maximum]
    bufferOffset = _serializer.float64(obj.acc_lat_right_range_maximum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RSSInfo
    let len;
    let data = new RSSInfo(null);
    // Deserialize message field [is_rss_safe]
    data.is_rss_safe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cur_dist_lon]
    data.cur_dist_lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rss_safe_dist_lon]
    data.rss_safe_dist_lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_lon_range_minimum]
    data.acc_lon_range_minimum = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_lon_range_maximum]
    data.acc_lon_range_maximum = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_lat_left_range_minimum]
    data.acc_lat_left_range_minimum = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_lat_left_range_maximum]
    data.acc_lat_left_range_maximum = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_lat_right_range_minimum]
    data.acc_lat_right_range_minimum = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_lat_right_range_maximum]
    data.acc_lat_right_range_maximum = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/RSSInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4490533d712ba2082a34d1533267ea6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool   is_rss_safe     #  
    float64   cur_dist_lon     # current longitudinal distance
    float64   rss_safe_dist_lon     # longitudinal safe distance of rss
    float64   acc_lon_range_minimum     # Minimum range of longitudinal acceleration
    float64   acc_lon_range_maximum     # Maximum range of longitudinal acceleration
    float64   acc_lat_left_range_minimum     # Minimum left range of lateral acceleration
    float64   acc_lat_left_range_maximum     # Maximum left range of lateral acceleration
    float64   acc_lat_right_range_minimum     # Minimum right range of lateral acceleration
    float64   acc_lat_right_range_maximum     # Maximum right range of lateral acceleration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RSSInfo(null);
    if (msg.is_rss_safe !== undefined) {
      resolved.is_rss_safe = msg.is_rss_safe;
    }
    else {
      resolved.is_rss_safe = false
    }

    if (msg.cur_dist_lon !== undefined) {
      resolved.cur_dist_lon = msg.cur_dist_lon;
    }
    else {
      resolved.cur_dist_lon = 0.0
    }

    if (msg.rss_safe_dist_lon !== undefined) {
      resolved.rss_safe_dist_lon = msg.rss_safe_dist_lon;
    }
    else {
      resolved.rss_safe_dist_lon = 0.0
    }

    if (msg.acc_lon_range_minimum !== undefined) {
      resolved.acc_lon_range_minimum = msg.acc_lon_range_minimum;
    }
    else {
      resolved.acc_lon_range_minimum = 0.0
    }

    if (msg.acc_lon_range_maximum !== undefined) {
      resolved.acc_lon_range_maximum = msg.acc_lon_range_maximum;
    }
    else {
      resolved.acc_lon_range_maximum = 0.0
    }

    if (msg.acc_lat_left_range_minimum !== undefined) {
      resolved.acc_lat_left_range_minimum = msg.acc_lat_left_range_minimum;
    }
    else {
      resolved.acc_lat_left_range_minimum = 0.0
    }

    if (msg.acc_lat_left_range_maximum !== undefined) {
      resolved.acc_lat_left_range_maximum = msg.acc_lat_left_range_maximum;
    }
    else {
      resolved.acc_lat_left_range_maximum = 0.0
    }

    if (msg.acc_lat_right_range_minimum !== undefined) {
      resolved.acc_lat_right_range_minimum = msg.acc_lat_right_range_minimum;
    }
    else {
      resolved.acc_lat_right_range_minimum = 0.0
    }

    if (msg.acc_lat_right_range_maximum !== undefined) {
      resolved.acc_lat_right_range_maximum = msg.acc_lat_right_range_maximum;
    }
    else {
      resolved.acc_lat_right_range_maximum = 0.0
    }

    return resolved;
    }
};

module.exports = RSSInfo;
