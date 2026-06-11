// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose = require('./Pose.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.timestamp = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.heading = null;
      this.kappa = null;
      this.linear_velocity = null;
      this.angular_velocity = null;
      this.linear_acceleration = null;
      this.gear = null;
      this.driving_mode = null;
      this.pose = null;
      this.front_steering_value = null;
      this.rear_steering_value = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('kappa')) {
        this.kappa = initObj.kappa
      }
      else {
        this.kappa = 0.0;
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('driving_mode')) {
        this.driving_mode = initObj.driving_mode
      }
      else {
        this.driving_mode = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [kappa]
    bufferOffset = _serializer.float64(obj.kappa, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = _serializer.float64(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = _serializer.float64(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = _serializer.float64(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int32(obj.gear, buffer, bufferOffset);
    // Serialize message field [driving_mode]
    bufferOffset = _serializer.int32(obj.driving_mode, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [front_steering_value]
    bufferOffset = _serializer.float64(obj.front_steering_value, buffer, bufferOffset);
    // Serialize message field [rear_steering_value]
    bufferOffset = _serializer.float64(obj.rear_steering_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleState
    let len;
    let data = new VehicleState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kappa]
    data.kappa = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driving_mode]
    data.driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_steering_value]
    data.front_steering_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rear_steering_value]
    data.rear_steering_value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 328;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/VehicleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08d2c2b080782b21d4ad592ab6471a80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     #  
    float64   x     #  
    float64   y     #  
    float64   z     #  
    float64   timestamp     #  
    float64   roll     #  
    float64   pitch     #  
    float64   yaw     #  
    float64   heading     #  
    float64   kappa     #  
    float64   linear_velocity     #  
    float64   angular_velocity     #  
    float64   linear_acceleration     #  
    int32   gear     #  
    int32   driving_mode     #  
    Pose   pose     #  
    float64   front_steering_value     #  
    float64   rear_steering_value     #  
    
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
    MSG: ros_interface/Pose
    PointENU   position     # Position of the vehicle reference point (VRP) in the map reference frame.   The VRP is the center of rear axle.
    Quaternion   orientation     # A quaternion that represents the rotation from the IMU coordinate (Right/Forward/Up) to the world coordinate (East/North/Up).
    Point3D   linear_velocity     # Linear velocity of the VRP in the map reference frame.East/north/up in meters per second.
    Point3D   linear_acceleration     # Linear acceleration of the VRP in the map reference frame. East/north/up in meters per square second.
    Point3D   angular_velocity     # Angular velocity of the vehicle in the map reference frame.Around east/north/up axes in radians per second.
    float64   heading     # The heading is zero when the car is facing East and positive when facing North
    Point3D   linear_acceleration_vrf     # Linear acceleration of the VRP in the vehicle reference frame.Right/forward/up in meters per square second.
    Point3D   angular_velocity_vrf     # Angular velocity of the VRP in the vehicle reference frame. Around right/forward/up axes in radians per second.
    Point3D   euler_angles     # // Roll/pitch/yaw that represents a rotation with intrinsic sequence z-x-y.   // in world coordinate (East/North/Up)   // The roll, in (-pi/2, pi/2), corresponds to a rotation around the y-axis.   // The pitch, in [-pi, pi), corresponds to a rotation around the x-axis.   // The yaw, in [-pi, pi), corresponds to a rotation around the z-axis.   // The direction of rotation follows the right-hand rule.
    
    ================================================================================
    MSG: ros_interface/PointENU
    float64   x     # East from the origin, in meters.
    float64   y     # North from the origin, in meters.
    float64   z     # Up from the WGS-84 ellipsoid, in meters.
    
    ================================================================================
    MSG: ros_interface/Quaternion
    float64   qx     # 四维空间x
    float64   qy     # 四维空间y
    float64   qz     # 四维空间z
    float64   qw     # 四维空间w
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.kappa !== undefined) {
      resolved.kappa = msg.kappa;
    }
    else {
      resolved.kappa = 0.0
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = msg.linear_velocity;
    }
    else {
      resolved.linear_velocity = 0.0
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = msg.angular_velocity;
    }
    else {
      resolved.angular_velocity = 0.0
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = msg.linear_acceleration;
    }
    else {
      resolved.linear_acceleration = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.driving_mode !== undefined) {
      resolved.driving_mode = msg.driving_mode;
    }
    else {
      resolved.driving_mode = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose()
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

    return resolved;
    }
};

module.exports = VehicleState;
