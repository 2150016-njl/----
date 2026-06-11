// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SensorCalibrator = require('./SensorCalibrator.js');
let LaneLine = require('./LaneLine.js');
let HolisticPathPrediction = require('./HolisticPathPrediction.js');
let RoadMark = require('./RoadMark.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaneList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_id = null;
      this.error_code = null;
      this.sensor_status = null;
      this.change_origin_flag = null;
      this.is_valid = null;
      this.sensor_calibrator = null;
      this.camera_laneline = null;
      this.hpp = null;
      this.road_marks = null;
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
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('sensor_status')) {
        this.sensor_status = initObj.sensor_status
      }
      else {
        this.sensor_status = 0;
      }
      if (initObj.hasOwnProperty('change_origin_flag')) {
        this.change_origin_flag = initObj.change_origin_flag
      }
      else {
        this.change_origin_flag = 0;
      }
      if (initObj.hasOwnProperty('is_valid')) {
        this.is_valid = initObj.is_valid
      }
      else {
        this.is_valid = false;
      }
      if (initObj.hasOwnProperty('sensor_calibrator')) {
        this.sensor_calibrator = initObj.sensor_calibrator
      }
      else {
        this.sensor_calibrator = new SensorCalibrator();
      }
      if (initObj.hasOwnProperty('camera_laneline')) {
        this.camera_laneline = initObj.camera_laneline
      }
      else {
        this.camera_laneline = [];
      }
      if (initObj.hasOwnProperty('hpp')) {
        this.hpp = initObj.hpp
      }
      else {
        this.hpp = new HolisticPathPrediction();
      }
      if (initObj.hasOwnProperty('road_marks')) {
        this.road_marks = initObj.road_marks
      }
      else {
        this.road_marks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaneList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int32(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [sensor_status]
    bufferOffset = _serializer.uint8(obj.sensor_status, buffer, bufferOffset);
    // Serialize message field [change_origin_flag]
    bufferOffset = _serializer.int32(obj.change_origin_flag, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    // Serialize message field [sensor_calibrator]
    bufferOffset = SensorCalibrator.serialize(obj.sensor_calibrator, buffer, bufferOffset);
    // Serialize message field [camera_laneline]
    // Serialize the length for message field [camera_laneline]
    bufferOffset = _serializer.uint32(obj.camera_laneline.length, buffer, bufferOffset);
    obj.camera_laneline.forEach((val) => {
      bufferOffset = LaneLine.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [hpp]
    bufferOffset = HolisticPathPrediction.serialize(obj.hpp, buffer, bufferOffset);
    // Serialize message field [road_marks]
    // Serialize the length for message field [road_marks]
    bufferOffset = _serializer.uint32(obj.road_marks.length, buffer, bufferOffset);
    obj.road_marks.forEach((val) => {
      bufferOffset = RoadMark.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaneList
    let len;
    let data = new LaneList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sensor_status]
    data.sensor_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [change_origin_flag]
    data.change_origin_flag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensor_calibrator]
    data.sensor_calibrator = SensorCalibrator.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_laneline]
    // Deserialize array length for message field [camera_laneline]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.camera_laneline = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.camera_laneline[i] = LaneLine.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [hpp]
    data.hpp = HolisticPathPrediction.deserialize(buffer, bufferOffset);
    // Deserialize message field [road_marks]
    // Deserialize array length for message field [road_marks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.road_marks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.road_marks[i] = RoadMark.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.camera_laneline.forEach((val) => {
      length += LaneLine.getMessageSize(val);
    });
    length += 52 * object.road_marks.length;
    return length + 135;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/LaneList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48b68a31434316e84d258accd4457bd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合
    int8   error_code     # 错误码： ERROR_NONE = 0; ERROR_UNKNOWN = 1;
    uint8   sensor_status     # 传感器状态： NORMAL=0； ABNORMAL=1；
    int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）
    bool   is_valid     # 车道线数据是否合法
    SensorCalibrator   sensor_calibrator     # 传感器标定参数
    LaneLine[] camera_laneline # 车道线检测结果数组
    HolisticPathPrediction   hpp     # 行驶预测线
    RoadMark[] road_marks # 路面标识
    
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
    MSG: ros_interface/SensorCalibrator
    Point3D   pose     # 传感器安装位置(相对于后轴中心点)
    Point3D   angle     # 传感器安装角度(车体坐标系)
    
    ================================================================================
    MSG: ros_interface/Point3D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    float64   z     # 位置坐标z
    
    ================================================================================
    MSG: ros_interface/LaneLine
    int32   lane_type     #  车道线类型：   SOLID = 0;   DASHED = 1;   ROAD_DELIMITER = 2;   NONE = 3;   UNKNOWN = 4;
    int32   lane_color     #  车道线颜色：   WHITE = 0;   YELLOW = 1;   OTHERS = 2;   UNKNOWN = 3;
    int32   pos_type     # 车道线位置类别：    BOLLARD_LEFT = -5;   FOURTH_LEFT = -4;   THIRD_LEFT = -3;   ADJACENT_LEFT = -2;  //!< lane marking on the left side next to ego lane   EGO_LEFT = -1;       //!< left lane marking of the ego lane   EGO_RIGHT = 1;       //!< right lane marking of the ego lane   ADJACENT_RIGHT = 2;  //!< lane marking on the right side next to ego lane   THIRD_RIGHT = 3;   FOURTH_RIGHT = 4;   BOLLARD_RIGHT = 5;   OTHER = 6;    //!< other types of lane   UNKNOWN = 7;  //!< background
    LaneLineCubicCurve   curve_vehicle     # 车辆坐标系车道线三次曲线系数
    LaneLineCubicCurve   curve_image     # 图像坐标系车道线三次曲线系数
    LaneLineCubicCurve   curve_abs     # 世界坐标系车道线三次曲线系数
    Point3D[] pts_vehicle # 车辆坐标系车道线点集
    Point2D[] pts_image # 图像坐标系车道线点集
    Point3D[] pts_abs # 世界坐标系车道线点集
    EndPoints   image_end_point     # 车道线上顶点与下顶点
    Point2D[] pts_key # 车道线关键点数组
    uint8   hd_lane_id     # 高精车道线id
    float64   confidence     # 车道线置信度
    int32   lane_quality     #   车道线质量：   VERY_LOW = 0;   LOW = 1;   HIGH = 2;   VERY_HIGH = 3;
    int32   fused_lane_type     #   融合车道线类别：   CAMERA = 0;   HD = 1;   FUSED = 2;   UNKNOWN = 3;   if value is 1, lane_quality = 3
    float64[] homography_mat # 透视变换矩阵
    float64[] homography_mat_inv # 透视变换逆矩阵
    int32   lane_coordinate_type     #   坐标系类别：   FRAME = 0;   IMAGE = 1;   CAMERA = 2;   VEHICLE = 3;   ABSOLUTE = 4;
    int32   use_type     #   使用类别：   REAL = 0;   VIRTUAL = 1;
    Time   create_time     # 车道线被识别的时间戳
    
    ================================================================================
    MSG: ros_interface/LaneLineCubicCurve
    float64   start_x     # 车道线起始位置
    float64   end_x     # 车道线结束位置
    float64   a     # 三次曲线系数
    float64   b     #  
    float64   c     #  
    float64   d     #  
    
    ================================================================================
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    ================================================================================
    MSG: ros_interface/EndPoints
    Point2D   start     # 车道线上顶点
    Point2D   end     # 车道线下顶点
    
    ================================================================================
    MSG: ros_interface/Time
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
    ================================================================================
    MSG: ros_interface/HolisticPathPrediction
    LaneLineCubicCurve   hpp     # 行驶路径预测： 1、针对没有车道线等特殊路段如：收费站附近、进出匝道附近、 维修区域附近，可以虚拟出可行驶路径预测； 2、针对车辆遮挡的区域，可以虚拟出可行驶路径预测；
    int32   planning_source     # 规划路径来源:  0 - invalid,  1 - 双侧车道线,  2 - 左侧车道线,  3 - 右侧车道线, 4 - 左侧路沿，  5 - 右侧路沿， 6 - 前车轨迹，  7 - freespace, 8 - 本车轨迹预测
    float64   ego_lane_width     # 自车道宽度
    float64   confidence     # 置信度[0 - 1]
    
    ================================================================================
    MSG: ros_interface/RoadMark
    float64   longitude_dist     # 相对于车身坐标系原点的纵向距离,单位m
    float64   lateral_dist     # 相对于车身坐标系原点的横向距离,单位m
    float64   x     # 质心坐标x
    float64   y     # 质心坐标y
    float64   z     # 质心坐标z
    float64   confidence     # 置信度[0 - 1]
    int32   type     # 标识类型 1 - 停止线 2 - 斑马线 3 - 禁停区 4 - 直行箭头 5 - 左转箭头 6 - 右转箭头 7 - 直行+左转 8 - 直行+右转 9 - 直行+左转+右转 10 - 掉头 11 - 左掉头 12 - 菱形(前方有人行横道) 13 - 倒三角 (减速让行) 14 - 地面文字
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaneList(null);
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

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.sensor_status !== undefined) {
      resolved.sensor_status = msg.sensor_status;
    }
    else {
      resolved.sensor_status = 0
    }

    if (msg.change_origin_flag !== undefined) {
      resolved.change_origin_flag = msg.change_origin_flag;
    }
    else {
      resolved.change_origin_flag = 0
    }

    if (msg.is_valid !== undefined) {
      resolved.is_valid = msg.is_valid;
    }
    else {
      resolved.is_valid = false
    }

    if (msg.sensor_calibrator !== undefined) {
      resolved.sensor_calibrator = SensorCalibrator.Resolve(msg.sensor_calibrator)
    }
    else {
      resolved.sensor_calibrator = new SensorCalibrator()
    }

    if (msg.camera_laneline !== undefined) {
      resolved.camera_laneline = new Array(msg.camera_laneline.length);
      for (let i = 0; i < resolved.camera_laneline.length; ++i) {
        resolved.camera_laneline[i] = LaneLine.Resolve(msg.camera_laneline[i]);
      }
    }
    else {
      resolved.camera_laneline = []
    }

    if (msg.hpp !== undefined) {
      resolved.hpp = HolisticPathPrediction.Resolve(msg.hpp)
    }
    else {
      resolved.hpp = new HolisticPathPrediction()
    }

    if (msg.road_marks !== undefined) {
      resolved.road_marks = new Array(msg.road_marks.length);
      for (let i = 0; i < resolved.road_marks.length; ++i) {
        resolved.road_marks[i] = RoadMark.Resolve(msg.road_marks[i]);
      }
    }
    else {
      resolved.road_marks = []
    }

    return resolved;
    }
};

module.exports = LaneList;
