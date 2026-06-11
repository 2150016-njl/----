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

class ParkingStateDisplay {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parking_type = null;
      this.moves_counter = null;
      this.remian_distance = null;
      this.display_info = null;
      this.distance_to_leader_obj = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parking_type')) {
        this.parking_type = initObj.parking_type
      }
      else {
        this.parking_type = 0;
      }
      if (initObj.hasOwnProperty('moves_counter')) {
        this.moves_counter = initObj.moves_counter
      }
      else {
        this.moves_counter = 0;
      }
      if (initObj.hasOwnProperty('remian_distance')) {
        this.remian_distance = initObj.remian_distance
      }
      else {
        this.remian_distance = 0.0;
      }
      if (initObj.hasOwnProperty('display_info')) {
        this.display_info = initObj.display_info
      }
      else {
        this.display_info = 0;
      }
      if (initObj.hasOwnProperty('distance_to_leader_obj')) {
        this.distance_to_leader_obj = initObj.distance_to_leader_obj
      }
      else {
        this.distance_to_leader_obj = 0.0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingStateDisplay
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parking_type]
    bufferOffset = _serializer.int32(obj.parking_type, buffer, bufferOffset);
    // Serialize message field [moves_counter]
    bufferOffset = _serializer.int32(obj.moves_counter, buffer, bufferOffset);
    // Serialize message field [remian_distance]
    bufferOffset = _serializer.float64(obj.remian_distance, buffer, bufferOffset);
    // Serialize message field [display_info]
    bufferOffset = _serializer.int32(obj.display_info, buffer, bufferOffset);
    // Serialize message field [distance_to_leader_obj]
    bufferOffset = _serializer.float64(obj.distance_to_leader_obj, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingStateDisplay
    let len;
    let data = new ParkingStateDisplay(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_type]
    data.parking_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [moves_counter]
    data.moves_counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remian_distance]
    data.remian_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [display_info]
    data.display_info = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [distance_to_leader_obj]
    data.distance_to_leader_obj = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ParkingStateDisplay';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '877b72abf16a45360d8ea1120bf76726';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    int32   parking_type     # 0：无效 1：垂直泊车 2：水平泊车 3：斜方泊车
    int32   moves_counter     # 揉库次数
    float64   remian_distance     # 剩余距离
    int32   display_info     # 详细信息
    float64   distance_to_leader_obj     # 距离最近障碍物距离
    int32   state     #  
    
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
    const resolved = new ParkingStateDisplay(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parking_type !== undefined) {
      resolved.parking_type = msg.parking_type;
    }
    else {
      resolved.parking_type = 0
    }

    if (msg.moves_counter !== undefined) {
      resolved.moves_counter = msg.moves_counter;
    }
    else {
      resolved.moves_counter = 0
    }

    if (msg.remian_distance !== undefined) {
      resolved.remian_distance = msg.remian_distance;
    }
    else {
      resolved.remian_distance = 0.0
    }

    if (msg.display_info !== undefined) {
      resolved.display_info = msg.display_info;
    }
    else {
      resolved.display_info = 0
    }

    if (msg.distance_to_leader_obj !== undefined) {
      resolved.distance_to_leader_obj = msg.distance_to_leader_obj;
    }
    else {
      resolved.distance_to_leader_obj = 0.0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = ParkingStateDisplay;
