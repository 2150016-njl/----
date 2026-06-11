// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DiagnosticStatus = require('./DiagnosticStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DiagnosticArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiagnosticArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    // Serialize the length for message field [status]
    bufferOffset = _serializer.uint32(obj.status.length, buffer, bufferOffset);
    obj.status.forEach((val) => {
      bufferOffset = DiagnosticStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiagnosticArray
    let len;
    let data = new DiagnosticArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    // Deserialize array length for message field [status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.status[i] = DiagnosticStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.status.forEach((val) => {
      length += DiagnosticStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/DiagnosticArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '243ceda84eaeef8b31086b7c7a595d9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header   header     # timestamp is  included in header
    DiagnosticStatus[] status # 诊断状态
    
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
    MSG: ros_interface/DiagnosticStatus
    Header   header     # timestamp is  included in header
    int32   id     # level*100000 + 序号（RECOVER 400000） WARN 车运动状态（静止）100001 左前门状态（关闭）100002 右前门状态（关闭）100003 左后门状态（关闭）100004 右后门状态（关闭）100005 安全带状态（关闭）100006 后视镜状态（打开）100007 充电枪状态 100008 油门状态 （正常）100009 智驾系统（正常）100010 动力系统（正常）100011 左前轮胎压（正常）100012 右前轮胎压（正常）100013 左后轮胎压（正常）100014 右后轮胎压（正常）100015 转向系统（正常）100016 制动系统（正常）100017 档位系统（正常）100018 EPB系统（正常）100019 气囊状态（正常）100020 油箱盖状态（正常）100021 后备箱状态（正常）100022 底盘信息（正常）100023 定位信息（正常）100024 方向盘人工接管 100025 电量表（正常）100026 暂停超时 100027 暂停次数过多 100028 泊车超时 100029 人为刹车 100030 人为挂P挡 100031 障碍物碰撞 100032 EPB状态(释放) 100033 ERROR 规划失败 200000
    int32   level     # 诊断状态
    string   name     # 测试/组件报告的描述
    string   message     # 状态描述
    string   hardware_id     # 硬件的唯一描述
    KeyValues[] values # 与状态关联的key-value组
    
    ================================================================================
    MSG: ros_interface/KeyValues
    string   key     #  
    string   value     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiagnosticArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = new Array(msg.status.length);
      for (let i = 0; i < resolved.status.length; ++i) {
        resolved.status[i] = DiagnosticStatus.Resolve(msg.status[i]);
      }
    }
    else {
      resolved.status = []
    }

    return resolved;
    }
};

module.exports = DiagnosticArray;
