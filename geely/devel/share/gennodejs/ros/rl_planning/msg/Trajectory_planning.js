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

class Trajectory_planning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fx = null;
      this.fy = null;
      this.ftheta = null;
      this.fkappa = null;
      this.V_optimal = null;
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
        this.fx = new Array(400).fill(0);
      }
      if (initObj.hasOwnProperty('fy')) {
        this.fy = initObj.fy
      }
      else {
        this.fy = new Array(400).fill(0);
      }
      if (initObj.hasOwnProperty('ftheta')) {
        this.ftheta = initObj.ftheta
      }
      else {
        this.ftheta = new Array(400).fill(0);
      }
      if (initObj.hasOwnProperty('fkappa')) {
        this.fkappa = initObj.fkappa
      }
      else {
        this.fkappa = new Array(400).fill(0);
      }
      if (initObj.hasOwnProperty('V_optimal')) {
        this.V_optimal = initObj.V_optimal
      }
      else {
        this.V_optimal = new Array(400).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory_planning
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [fx] has the right length
    if (obj.fx.length !== 400) {
      throw new Error('Unable to serialize array field fx - length must be 400')
    }
    // Serialize message field [fx]
    bufferOffset = _arraySerializer.float64(obj.fx, buffer, bufferOffset, 400);
    // Check that the constant length array field [fy] has the right length
    if (obj.fy.length !== 400) {
      throw new Error('Unable to serialize array field fy - length must be 400')
    }
    // Serialize message field [fy]
    bufferOffset = _arraySerializer.float64(obj.fy, buffer, bufferOffset, 400);
    // Check that the constant length array field [ftheta] has the right length
    if (obj.ftheta.length !== 400) {
      throw new Error('Unable to serialize array field ftheta - length must be 400')
    }
    // Serialize message field [ftheta]
    bufferOffset = _arraySerializer.float64(obj.ftheta, buffer, bufferOffset, 400);
    // Check that the constant length array field [fkappa] has the right length
    if (obj.fkappa.length !== 400) {
      throw new Error('Unable to serialize array field fkappa - length must be 400')
    }
    // Serialize message field [fkappa]
    bufferOffset = _arraySerializer.float64(obj.fkappa, buffer, bufferOffset, 400);
    // Check that the constant length array field [V_optimal] has the right length
    if (obj.V_optimal.length !== 400) {
      throw new Error('Unable to serialize array field V_optimal - length must be 400')
    }
    // Serialize message field [V_optimal]
    bufferOffset = _arraySerializer.float64(obj.V_optimal, buffer, bufferOffset, 400);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory_planning
    let len;
    let data = new Trajectory_planning(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fx]
    data.fx = _arrayDeserializer.float64(buffer, bufferOffset, 400)
    // Deserialize message field [fy]
    data.fy = _arrayDeserializer.float64(buffer, bufferOffset, 400)
    // Deserialize message field [ftheta]
    data.ftheta = _arrayDeserializer.float64(buffer, bufferOffset, 400)
    // Deserialize message field [fkappa]
    data.fkappa = _arrayDeserializer.float64(buffer, bufferOffset, 400)
    // Deserialize message field [V_optimal]
    data.V_optimal = _arrayDeserializer.float64(buffer, bufferOffset, 400)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16000;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_planning/Trajectory_planning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c7d8c9ac7599b04f381f6cd30bcd15e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64[400] fx
    float64[400] fy
    float64[400] ftheta
    float64[400] fkappa
    float64[400] V_optimal
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
    const resolved = new Trajectory_planning(null);
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
      resolved.fx = new Array(400).fill(0)
    }

    if (msg.fy !== undefined) {
      resolved.fy = msg.fy;
    }
    else {
      resolved.fy = new Array(400).fill(0)
    }

    if (msg.ftheta !== undefined) {
      resolved.ftheta = msg.ftheta;
    }
    else {
      resolved.ftheta = new Array(400).fill(0)
    }

    if (msg.fkappa !== undefined) {
      resolved.fkappa = msg.fkappa;
    }
    else {
      resolved.fkappa = new Array(400).fill(0)
    }

    if (msg.V_optimal !== undefined) {
      resolved.V_optimal = msg.V_optimal;
    }
    else {
      resolved.V_optimal = new Array(400).fill(0)
    }

    return resolved;
    }
};

module.exports = Trajectory_planning;
