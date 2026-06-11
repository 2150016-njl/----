// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('./Obstacle.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObstacleList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sensor_id = null;
      this.obstacle = null;
      this.error_code = null;
      this.is_valid = null;
      this.change_origin_flag = null;
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
      if (initObj.hasOwnProperty('obstacle')) {
        this.obstacle = initObj.obstacle
      }
      else {
        this.obstacle = [];
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
      if (initObj.hasOwnProperty('change_origin_flag')) {
        this.change_origin_flag = initObj.change_origin_flag
      }
      else {
        this.change_origin_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstacleList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.int32(obj.sensor_id, buffer, bufferOffset);
    // Serialize message field [obstacle]
    // Serialize the length for message field [obstacle]
    bufferOffset = _serializer.uint32(obj.obstacle.length, buffer, bufferOffset);
    obj.obstacle.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_code]
    bufferOffset = _serializer.int32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [is_valid]
    bufferOffset = _serializer.bool(obj.is_valid, buffer, bufferOffset);
    // Serialize message field [change_origin_flag]
    bufferOffset = _serializer.int32(obj.change_origin_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstacleList
    let len;
    let data = new ObstacleList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [obstacle]
    // Deserialize array length for message field [obstacle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_valid]
    data.is_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [change_origin_flag]
    data.change_origin_flag = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.obstacle.forEach((val) => {
      length += Obstacle.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/ObstacleList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '557209d27fc972d8822c67ecf57858ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # 消息头
    int32   sensor_id     # 安装的传感器id(camera,lidar,radar) ' 相机id: 0-front_center相机 1-front_left相机 2-front_right相机 3-left_front相机 4-left_back右后相机 5-right_front相机 6-right_back相机 7-back相机'  8-相机融合
    Obstacle[] obstacle # 检测出的障碍物数组
    int32   error_code     # 错误码（default = OK）
    bool   is_valid     # 障碍物数据是否合法
    int32   change_origin_flag     # 坐标切换状态（0-坐标系切换成功 1-坐标系切换中 2-坐标系切换故障）
    
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
    MSG: ros_interface/Obstacle
    Time   timestamp     # 时间戳
    int32   id     # 障碍物id
    float64   existence_prob     # 障碍物存在的概率
    Time   create_time     # 障碍物被识别的时间戳
    Time   last_updated_time     # 障碍物上一次更新的时间
    Point3D   center_pos_vehicle     # 车辆坐标系下障碍物的中心位置
    Point3D   center_pos_abs     # 世界坐标系下障碍物的中心位置
    float64   theta_vehicle     # 车辆坐标系下障碍物的朝向
    float64   theta_abs     # 世界坐标系下障碍物的朝向
    Point3D   velocity_vehicle     # 车辆坐标系下障碍物的速度
    Point3D   velocity_abs     # 世界坐标系下障碍物的速度
    float64   length     # 障碍物长度
    float64   width     # 障碍物宽度
    float64   height     # 障碍物高度
    ImageKeyPoint[] image_key_points # 图像坐标系下障碍物多边形
    Point3D[] polygon_point_abs # 世界坐标系下障碍物多边形
    Point3D[] polygon_point_vehicle # 车辆坐标系下障碍物多边形
    float64   tracking_time     # 障碍物被追踪的时间
    int32   type     # 障碍物类别： UNKNOWN = 0; UNKNOWN_MOVABLE = 1; UNKNOWN_UNMOVABLE = 2; PEDESTRIAN = 3; BICYCLE = 4; VEHICLE = 5;
    float64   confidence     # 障碍物类别置信度
    int32   confidence_type     # 障碍物置信度类别： CONFIDENCE_UNKNOWN = 0; CONFIDENCE_CNN = 1; CONFIDENCE_RADAR = 2;
    Point3D[] drops # 障碍物轨迹点
    Point3D   acceleration_vehicle     # 车辆坐标系下障碍物的加速度
    Point3D   acceleration_abs     # 世界坐标系下障碍物的加速度
    Point2D   anchor_point_image     # 障碍物尾框中心点(图像坐标系)
    Point3D   anchor_point_vehicle     # 障碍物尾框中心点(车辆坐标系)
    Point3D   anchor_point_abs     # 障碍物尾框中心点(世界坐标系)
    BBox2D   bbox2d     # 障碍物图像框
    BBox2D   bbox2d_rear     # 障碍物图像尾框
    int32   sub_type     # 障碍物类别： ST_UNKNOWN = 0; ST_UNKNOWN_MOVABLE = 1; ST_UNKNOWN_UNMOVABLE = 2; ST_CAR = 3; ST_VAN = 4; ST_TRUCK = 5; ST_BUS = 6; ST_CYCLIST = 7; ST_MOTORCYCLIST = 8; ST_TRICYCLIST = 9; ST_PEDESTRIAN = 10; ST_TRAFFICCONE = 11; ST_PILLAR = 12; ST_SPEED_BUMP = 13;
    float64   height_above_ground     # 障碍物近地点到地面的高度
    float64[] position_abs_covariance # 世界坐标系下障碍物中心位置的协方差矩阵
    float64[] velocity_abs_covariance # 世界坐标系下障碍物速度的协方差矩阵
    float64[] acceleration_abs_covariance # 世界坐标系下障碍物加速度的协方差矩阵
    float64   theta_abs_covariance     # 世界坐标系下障碍物朝向的协方差矩阵
    float64[] position_vehicle_covariance # 车辆坐标系下障碍物中心位置的协方差矩阵
    float64[] velocity_vehicle_covariance # 车辆坐标系下障碍物速度的协方差矩阵
    float64[] acceleration_vehicle_covariance # 车辆坐标系下障碍物加速度的协方差矩阵
    float64   theta_vehicle_covariance     # 车辆坐标系下障碍物朝向的协方差矩阵
    SensorCalibrator   sensor_calibrator     # 传感器标定参数
    uint8   cipv_flag     # 障碍物状态标志（0-CIPV 1-CIPS 2-LPIHP 3-RPIHP 4-NONE）
    int32   lane_position     # 车道线位置 -2-NEXT_LEFT_LANE -1-LEFT_LANE 0-EGO_LANE 1-RIGHT_LANE 2-NEXT_RIGHT_LANE 3-OTHERS 4-UNKNOWN
    float64   pihp_percentage     # 临车道车辆压线比例
    int32   blinker_flag     # 障碍物车辆信号灯状态： 0-OFF 1-LEFT_TURN_VISIBLE 2-LEFT_TURN_ON 3-RIGHT_TURN_VISIBLE 4-RIGHT_TURN_ON 5-BRAKE_VISIBLE 6-BRAKE_ON 7-UNKNOWN
    int32   fusion_type     # 融合障碍物类型 0-CAMERA 1-RADAR 2-LIDAR 3-ULTRASONIC 4-FUSED 5-UNKNOWN
    
    ================================================================================
    MSG: ros_interface/Time
    uint32   sec     # 秒
    uint32   nsec     # 纳秒
    
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
    MSG: ros_interface/Point2D
    float64   x     # 位置坐标x
    float64   y     # 位置坐标y
    
    ================================================================================
    MSG: ros_interface/BBox2D
    int16   xmin     # 图像框左上角的x坐标
    int16   ymin     # 图像框左上角的y坐标
    int16   xmax     # 图像框右下角的x坐标
    int16   ymax     # 图像框右下角的y坐标
    
    ================================================================================
    MSG: ros_interface/SensorCalibrator
    Point3D   pose     # 传感器安装位置(相对于后轴中心点)
    Point3D   angle     # 传感器安装角度(车体坐标系)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstacleList(null);
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

    if (msg.obstacle !== undefined) {
      resolved.obstacle = new Array(msg.obstacle.length);
      for (let i = 0; i < resolved.obstacle.length; ++i) {
        resolved.obstacle[i] = Obstacle.Resolve(msg.obstacle[i]);
      }
    }
    else {
      resolved.obstacle = []
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

    if (msg.change_origin_flag !== undefined) {
      resolved.change_origin_flag = msg.change_origin_flag;
    }
    else {
      resolved.change_origin_flag = 0
    }

    return resolved;
    }
};

module.exports = ObstacleList;
