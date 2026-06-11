// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point3D = require('./Point3D.js');
let ImageKeyPoint = require('./ImageKeyPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraParkingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parking_space_id = null;
      this.parking_type = null;
      this.is_parking_enable = null;
      this.confidence = null;
      this.center_point_of_parking = null;
      this.theta = null;
      this.width = null;
      this.length = null;
      this.yaw_offset = null;
      this.parking_points_in_image = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parking_space_id')) {
        this.parking_space_id = initObj.parking_space_id
      }
      else {
        this.parking_space_id = 0;
      }
      if (initObj.hasOwnProperty('parking_type')) {
        this.parking_type = initObj.parking_type
      }
      else {
        this.parking_type = 0;
      }
      if (initObj.hasOwnProperty('is_parking_enable')) {
        this.is_parking_enable = initObj.is_parking_enable
      }
      else {
        this.is_parking_enable = false;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('center_point_of_parking')) {
        this.center_point_of_parking = initObj.center_point_of_parking
      }
      else {
        this.center_point_of_parking = new Point3D();
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_offset')) {
        this.yaw_offset = initObj.yaw_offset
      }
      else {
        this.yaw_offset = 0.0;
      }
      if (initObj.hasOwnProperty('parking_points_in_image')) {
        this.parking_points_in_image = initObj.parking_points_in_image
      }
      else {
        this.parking_points_in_image = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraParkingInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parking_space_id]
    bufferOffset = _serializer.int32(obj.parking_space_id, buffer, bufferOffset);
    // Serialize message field [parking_type]
    bufferOffset = _serializer.int32(obj.parking_type, buffer, bufferOffset);
    // Serialize message field [is_parking_enable]
    bufferOffset = _serializer.bool(obj.is_parking_enable, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    // Serialize message field [center_point_of_parking]
    bufferOffset = Point3D.serialize(obj.center_point_of_parking, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [yaw_offset]
    bufferOffset = _serializer.float64(obj.yaw_offset, buffer, bufferOffset);
    // Serialize message field [parking_points_in_image]
    // Serialize the length for message field [parking_points_in_image]
    bufferOffset = _serializer.uint32(obj.parking_points_in_image.length, buffer, bufferOffset);
    obj.parking_points_in_image.forEach((val) => {
      bufferOffset = ImageKeyPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraParkingInfo
    let len;
    let data = new CameraParkingInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parking_space_id]
    data.parking_space_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parking_type]
    data.parking_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_parking_enable]
    data.is_parking_enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [center_point_of_parking]
    data.center_point_of_parking = Point3D.deserialize(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_offset]
    data.yaw_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [parking_points_in_image]
    // Deserialize array length for message field [parking_points_in_image]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.parking_points_in_image = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.parking_points_in_image[i] = ImageKeyPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.parking_points_in_image.length;
    return length + 77;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/CameraParkingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '857f775ab536a49a085ea8594ec9e570';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is  included in header
    int32   parking_space_id     # 停车位id
    int32   parking_type     # PARKING_TYPE=0//无效泊车 PARKING_TYPE=1//垂直泊车 PARKING_TYPE=2//水平泊车 PARKING_TYPE=3//倾斜泊车
    bool   is_parking_enable     # PARKING_ENABLE=0//不可泊入 PARKING_ENABLE=1//可泊入
    float64   confidence     # 停车位置信度
    Point3D   center_point_of_parking     # 车辆坐标系的停车位中心点
    float64   theta     # 车辆坐标系下停车位的朝向
    float64   width     # 停车位宽
    float64   length     # 停车位长
    float64   yaw_offset     # 停车位角度偏移量（倾斜车位），倾斜车位与道路边线夹角
    ImageKeyPoint[] parking_points_in_image # 图像坐标系下停车位关键点，顺时针方向
    
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
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/ImageKeyPoint
    float64   x     # 车位图像关键点x坐标
    float64   y     # 车位图像关键点y坐标
    float64   confidence     # 置信度
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraParkingInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parking_space_id !== undefined) {
      resolved.parking_space_id = msg.parking_space_id;
    }
    else {
      resolved.parking_space_id = 0
    }

    if (msg.parking_type !== undefined) {
      resolved.parking_type = msg.parking_type;
    }
    else {
      resolved.parking_type = 0
    }

    if (msg.is_parking_enable !== undefined) {
      resolved.is_parking_enable = msg.is_parking_enable;
    }
    else {
      resolved.is_parking_enable = false
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.center_point_of_parking !== undefined) {
      resolved.center_point_of_parking = Point3D.Resolve(msg.center_point_of_parking)
    }
    else {
      resolved.center_point_of_parking = new Point3D()
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.yaw_offset !== undefined) {
      resolved.yaw_offset = msg.yaw_offset;
    }
    else {
      resolved.yaw_offset = 0.0
    }

    if (msg.parking_points_in_image !== undefined) {
      resolved.parking_points_in_image = new Array(msg.parking_points_in_image.length);
      for (let i = 0; i < resolved.parking_points_in_image.length; ++i) {
        resolved.parking_points_in_image[i] = ImageKeyPoint.Resolve(msg.parking_points_in_image[i]);
      }
    }
    else {
      resolved.parking_points_in_image = []
    }

    return resolved;
    }
};

module.exports = CameraParkingInfo;
