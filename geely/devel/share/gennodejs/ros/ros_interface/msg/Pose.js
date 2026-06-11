// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointENU = require('./PointENU.js');
let Quaternion = require('./Quaternion.js');
let Point3D = require('./Point3D.js');

//-----------------------------------------------------------

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
      this.linear_velocity = null;
      this.linear_acceleration = null;
      this.angular_velocity = null;
      this.heading = null;
      this.linear_acceleration_vrf = null;
      this.angular_velocity_vrf = null;
      this.euler_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new PointENU();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Quaternion();
      }
      if (initObj.hasOwnProperty('linear_velocity')) {
        this.linear_velocity = initObj.linear_velocity
      }
      else {
        this.linear_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new Point3D();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Point3D();
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('linear_acceleration_vrf')) {
        this.linear_acceleration_vrf = initObj.linear_acceleration_vrf
      }
      else {
        this.linear_acceleration_vrf = new Point3D();
      }
      if (initObj.hasOwnProperty('angular_velocity_vrf')) {
        this.angular_velocity_vrf = initObj.angular_velocity_vrf
      }
      else {
        this.angular_velocity_vrf = new Point3D();
      }
      if (initObj.hasOwnProperty('euler_angles')) {
        this.euler_angles = initObj.euler_angles
      }
      else {
        this.euler_angles = new Point3D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [position]
    bufferOffset = PointENU.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [linear_velocity]
    bufferOffset = Point3D.serialize(obj.linear_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = Point3D.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = Point3D.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_vrf]
    bufferOffset = Point3D.serialize(obj.linear_acceleration_vrf, buffer, bufferOffset);
    // Serialize message field [angular_velocity_vrf]
    bufferOffset = Point3D.serialize(obj.angular_velocity_vrf, buffer, bufferOffset);
    // Serialize message field [euler_angles]
    bufferOffset = Point3D.serialize(obj.euler_angles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [position]
    data.position = PointENU.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_velocity]
    data.linear_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_vrf]
    data.linear_acceleration_vrf = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_vrf]
    data.angular_velocity_vrf = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [euler_angles]
    data.euler_angles = Point3D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 208;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c21debd869f05bb5d743b9f76884b06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Pose(null);
    if (msg.position !== undefined) {
      resolved.position = PointENU.Resolve(msg.position)
    }
    else {
      resolved.position = new PointENU()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new Quaternion()
    }

    if (msg.linear_velocity !== undefined) {
      resolved.linear_velocity = Point3D.Resolve(msg.linear_velocity)
    }
    else {
      resolved.linear_velocity = new Point3D()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = Point3D.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new Point3D()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Point3D.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Point3D()
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.linear_acceleration_vrf !== undefined) {
      resolved.linear_acceleration_vrf = Point3D.Resolve(msg.linear_acceleration_vrf)
    }
    else {
      resolved.linear_acceleration_vrf = new Point3D()
    }

    if (msg.angular_velocity_vrf !== undefined) {
      resolved.angular_velocity_vrf = Point3D.Resolve(msg.angular_velocity_vrf)
    }
    else {
      resolved.angular_velocity_vrf = new Point3D()
    }

    if (msg.euler_angles !== undefined) {
      resolved.euler_angles = Point3D.Resolve(msg.euler_angles)
    }
    else {
      resolved.euler_angles = new Point3D()
    }

    return resolved;
    }
};

module.exports = Pose;
