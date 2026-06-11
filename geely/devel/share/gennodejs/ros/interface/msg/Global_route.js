// Auto-generated. Do not edit!

// (in-package interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Route = require('./Route.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Global_route {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.routes = null;
      this.target_route_id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('routes')) {
        this.routes = initObj.routes
      }
      else {
        this.routes = [];
      }
      if (initObj.hasOwnProperty('target_route_id')) {
        this.target_route_id = initObj.target_route_id
      }
      else {
        this.target_route_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Global_route
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [routes]
    // Serialize the length for message field [routes]
    bufferOffset = _serializer.uint32(obj.routes.length, buffer, bufferOffset);
    obj.routes.forEach((val) => {
      bufferOffset = Route.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [target_route_id]
    bufferOffset = _serializer.int32(obj.target_route_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Global_route
    let len;
    let data = new Global_route(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [routes]
    // Deserialize array length for message field [routes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.routes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.routes[i] = Route.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [target_route_id]
    data.target_route_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.routes.forEach((val) => {
      length += Route.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'interface/Global_route';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f592139074c730b00ce6171d3313b807';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Route[] routes
    int32 target_route_id
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
    MSG: interface/Route
    Route_point[] points
    ================================================================================
    MSG: interface/Route_point
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Global_route(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.routes !== undefined) {
      resolved.routes = new Array(msg.routes.length);
      for (let i = 0; i < resolved.routes.length; ++i) {
        resolved.routes[i] = Route.Resolve(msg.routes[i]);
      }
    }
    else {
      resolved.routes = []
    }

    if (msg.target_route_id !== undefined) {
      resolved.target_route_id = msg.target_route_id;
    }
    else {
      resolved.target_route_id = 0
    }

    return resolved;
    }
};

module.exports = Global_route;
