// Auto-generated. Do not edit!

// (in-package plusgo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Objects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Objects
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Objects
    let len;
    let data = new Objects(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plusgo_msgs/Objects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a6120d4df241a7f1dc2a96922ad41dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    Object[] objects
    
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
    MSG: plusgo_msgs/Object
    std_msgs/Header header
    uint8  source
    float32 exist_confidence
    
    # "UNKNOWN","CONE","PED","BIC","CAR","TRUCK_BUS","ULTRA_VEHICLE"
    int64  type
    float32 type_confidence
    int64  track_id
    float32 tracking_time
    
    int64  motion_state
    
    geometry_msgs/Point32 anchor
    
    # the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)
    float32 theta
    
    # the main direction is the bbox length orientation
    geometry_msgs/Vector3 direction
    geometry_msgs/Vector3 direction_cov
    geometry_msgs/Point32  center
    geometry_msgs/Point32  center_cov
    
    # size of the oriented boundingbox, length is the size in the main direction
    geometry_msgs/Vector3 size
    geometry_msgs/Vector3 size_cov
    
    bool is_absolute_position
    
    geometry_msgs/Vector3 velocity
    geometry_msgs/Vector3 velocity_cov
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 acceleration_cov
    
    float32 angle_velocity
    float32 angle_velocity_cov
    float32 angle_acceleration
    float32 angle_acceleration_cov
    
    geometry_msgs/Point32[]  trajectory
    geometry_msgs/Point32[]  history_type
    geometry_msgs/Vector3[]  history_velocity
    
    Polygon    polygon
    ImageRect  rect
    
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
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: plusgo_msgs/Polygon
    float32 min_height
    float32 max_height
    geometry_msgs/Point32[] points
    
    ================================================================================
    MSG: plusgo_msgs/ImageRect
    string  image_frame
    int32   x
    int32   y
    int32   x_
    int32   y_
    int32   width
    int32   height
    float32 angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Objects(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = Object.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = Objects;
