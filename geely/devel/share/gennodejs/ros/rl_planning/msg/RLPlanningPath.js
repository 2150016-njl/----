// Auto-generated. Do not edit!

// (in-package rl_planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RLPlanningPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fx = null;
      this.fy = null;
      this.v = null;
      this.a = null;
      this.theta = null;
      this.kappa = null;
      this.s = null;
      this.collision_risk = null;
      this.SRQ_value = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fx')) {
        this.fx = initObj.fx
      }
      else {
        this.fx = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('kappa')) {
        this.kappa = initObj.kappa
      }
      else {
        this.kappa = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = new Array(500).fill(0);
      }
      if (initObj.hasOwnProperty('collision_risk')) {
        this.collision_risk = initObj.collision_risk
      }
      else {
        this.collision_risk = 0;
      }
      if (initObj.hasOwnProperty('SRQ_value')) {
        this.SRQ_value = initObj.SRQ_value
      }
      else {
        this.SRQ_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RLPlanningPath
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [fx] has the right length
    if (obj.fx.length !== 500) {
      throw new Error('Unable to serialize array field fx - length must be 500')
    }
    // Serialize message field [fx]
    bufferOffset = _arraySerializer.float64(obj.fx, buffer, bufferOffset, 500);
    // Check that the constant length array field [fy] has the right length
    if (obj.fy.length !== 500) {
      throw new Error('Unable to serialize array field fy - length must be 500')
    }
    // Serialize message field [fy]
    bufferOffset = _arraySerializer.float64(obj.fy, buffer, bufferOffset, 500);
    // Check that the constant length array field [v] has the right length
    if (obj.v.length !== 500) {
      throw new Error('Unable to serialize array field v - length must be 500')
    }
    // Serialize message field [v]
    bufferOffset = _arraySerializer.float64(obj.v, buffer, bufferOffset, 500);
    // Check that the constant length array field [a] has the right length
    if (obj.a.length !== 500) {
      throw new Error('Unable to serialize array field a - length must be 500')
    }
    // Serialize message field [a]
    bufferOffset = _arraySerializer.float64(obj.a, buffer, bufferOffset, 500);
    // Check that the constant length array field [theta] has the right length
    if (obj.theta.length !== 500) {
      throw new Error('Unable to serialize array field theta - length must be 500')
    }
    // Serialize message field [theta]
    bufferOffset = _arraySerializer.float64(obj.theta, buffer, bufferOffset, 500);
    // Check that the constant length array field [kappa] has the right length
    if (obj.kappa.length !== 500) {
      throw new Error('Unable to serialize array field kappa - length must be 500')
    }
    // Serialize message field [kappa]
    bufferOffset = _arraySerializer.float64(obj.kappa, buffer, bufferOffset, 500);
    // Check that the constant length array field [s] has the right length
    if (obj.s.length !== 500) {
      throw new Error('Unable to serialize array field s - length must be 500')
    }
    // Serialize message field [s]
    bufferOffset = _arraySerializer.float64(obj.s, buffer, bufferOffset, 500);
    // Serialize message field [collision_risk]
    bufferOffset = _serializer.int32(obj.collision_risk, buffer, bufferOffset);
    // Serialize message field [SRQ_value]
    bufferOffset = _serializer.float64(obj.SRQ_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RLPlanningPath
    let len;
    let data = new RLPlanningPath(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [fy]
    data.fy = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [v]
    data.v = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [a]
    data.a = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [theta]
    data.theta = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [kappa]
    data.kappa = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [s]
    data.s = _arrayDeserializer.float64(buffer, bufferOffset, 500)
    // Deserialize message field [collision_risk]
    data.collision_risk = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [SRQ_value]
    data.SRQ_value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 28012;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_planning/RLPlanningPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '442a1e70c87c57dd2f625de9cdf24bc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[500] fx
    float64[500] fy
    float64[500] v
    float64[500] a
    float64[500] theta
    float64[500] kappa
    float64[500] s
    int32 collision_risk
    float64 SRQ_value
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
    const resolved = new RLPlanningPath(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fx !== undefined) {
      resolved.fx = msg.fx;
    }
    else {
      resolved.fx = new Array(500).fill(0)
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = new Array(500).fill(0)
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = new Array(500).fill(0)
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = new Array(500).fill(0)
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = new Array(500).fill(0)
    }

    if (msg.kappa !== undefined) {
      resolved.kappa = msg.kappa;
    }
    else {
      resolved.kappa = new Array(500).fill(0)
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = new Array(500).fill(0)
    }

    if (msg.collision_risk !== undefined) {
      resolved.collision_risk = msg.collision_risk;
    }
    else {
      resolved.collision_risk = 0
    }

    if (msg.SRQ_value !== undefined) {
      resolved.SRQ_value = msg.SRQ_value;
    }
    else {
      resolved.SRQ_value = 0.0
    }

    return resolved;
    }
};

module.exports = RLPlanningPath;
