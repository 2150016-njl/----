// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraParkingInfo = require('./CameraParkingInfo.js');
let CameraParkingStopper = require('./CameraParkingStopper.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CameraParkingInfoList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_id = null;
      this.camera_parking = null;
      this.camera_parking_stoppers = null;
      this.error_code = null;
      this.is_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = 0;
      }
      if (initObj.hasOwnProperty('camera_parking')) {
        this.camera_parking = initObj.camera_parking
      }
      else {
        this.camera_parking = [];
      }
      if (initObj.hasOwnProperty('camera_parking_stoppers')) {
        this.camera_parking_stoppers = initObj.camera_parking_stoppers
      }
      else {
        this.camera_parking_stoppers = [];
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraParkingInfoList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int32(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [camera_parking]
    // Serialize the length for message field [camera_parking]
    bufferOffset = _serializer.uint32(obj.camera_parking.length, buffer, bufferOffset);
    obj.camera_parking.forEach((val) => {
      bufferOffset = CameraParkingInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [camera_parking_stoppers]
    // Serialize the length for message field [camera_parking_stoppers]
    bufferOffset = _serializer.uint32(obj.camera_parking_stoppers.length, buffer, bufferOffset);
    obj.camera_parking_stoppers.forEach((val) => {
      bufferOffset = CameraParkingStopper.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraParkingInfoList
    let len;
    let data = new CameraParkingInfoList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [camera_parking]
    // Deserialize array length for message field [camera_parking]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_parking = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_parking[i] = CameraParkingInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [camera_parking_stoppers]
    // Deserialize array length for message field [camera_parking_stoppers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_parking_stoppers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_parking_stoppers[i] = CameraParkingStopper.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.camera_parking.forEach((val) => {
      length += CameraParkingInfo.getMessageSize(val);
    });
    object.camera_parking_stoppers.forEach((val) => {
      length += CameraParkingStopper.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/CameraParkingInfoList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4caa94d6814e1d645bcbe41c8c0b57d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头，时间戳使用接收的图像的时间戳
    int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合
    CameraParkingInfo[] camera_parking # 检测出的障碍物数组
    CameraParkingStopper[] camera_parking_stoppers # 检测出的限位器数组
    int32   error_code     # 错误码（default = OK）
    bool   is_valid     # 障碍物数据是否合法
    
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
    MSG: ros_interface/CameraParkingInfo
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
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/ImageKeyPoint
    float64   x     # 车位图像关键点x坐标
    float64   y     # 车位图像关键点y坐标
    float64   confidence     # 置信度
    
    ================================================================================
    MSG: ros_interface/CameraParkingStopper
    Header   header     # timestamp is  included in header
    BBox2D   bbox2d     # 限位器图像框
    
    ================================================================================
    MSG: ros_interface/BBox2D
    int16   xmin     # 图像框左上角的x坐标
    int16   ymin     # 图像框左上角的y坐标
    int16   xmax     # 图像框右下角的x坐标
    int16   ymax     # 图像框右下角的y坐标
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraParkingInfoList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = 0
    }

    if (msg.camera_parking !== undefined) {
      resolved.camera_parking = new Array(msg.camera_parking.length);
      for (let i = 0; i < resolved.camera_parking.length; ++i) {
        resolved.camera_parking[i] = CameraParkingInfo.Resolve(msg.camera_parking[i]);
      }
    }
    else {
      resolved.camera_parking = []
    }

    if (msg.camera_parking_stoppers !== undefined) {
      resolved.camera_parking_stoppers = new Array(msg.camera_parking_stoppers.length);
      for (let i = 0; i < resolved.camera_parking_stoppers.length; ++i) {
        resolved.camera_parking_stoppers[i] = CameraParkingStopper.Resolve(msg.camera_parking_stoppers[i]);
      }
    }
    else {
      resolved.camera_parking_stoppers = []
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    return resolved;
    }
};

module.exports = CameraParkingInfoList;
