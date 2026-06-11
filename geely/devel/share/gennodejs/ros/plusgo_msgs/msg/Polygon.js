// Auto-generated. Do not edit!

// (in-package plusgo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Polygon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min_height = null;
      this.max_height = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('min_height')) {
        this.min_height = initObj.min_height
      }
      else {
        this.min_height = 0.0;
      }
      if (initObj.hasOwnProperty('max_height')) {
        this.max_height = initObj.max_height
      }
      else {
        this.max_height = 0.0;
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Polygon
    // Serialize message field [min_height]
    bufferOffset = _serializer.float32(obj.min_height, buffer, bufferOffset);
    // Serialize message field [max_height]
    bufferOffset = _serializer.float32(obj.max_height, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Polygon
    let len;
    let data = new Polygon(null);
    // Deserialize message field [min_height]
    data.min_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_height]
    data.max_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.points.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plusgo_msgs/Polygon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6917ea739af953ab09877cf096265dc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 min_height
    float32 max_height
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Polygon(null);
    if (msg.min_height !== undefined) {
      resolved.min_height = msg.min_height;
    }
    else {
      resolved.min_height = 0.0
    }

    if (msg.max_height !== undefined) {
      resolved.max_height = msg.max_height;
    }
    else {
      resolved.max_height = 0.0
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = geometry_msgs.msg.Point32.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = Polygon;
