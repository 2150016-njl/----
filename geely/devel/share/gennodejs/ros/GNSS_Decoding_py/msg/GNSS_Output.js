// Auto-generated. Do not edit!

// (in-package GNSS_Decoding_py.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GNSS_Output {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.OutputRecordType = null;
      this.RecordLength = null;
      this.GPSWeek = null;
      this.GPSTime = null;
      this.IMUAlignmentStatus = null;
      this.GNSSStatus = null;
      this.X_E = null;
      this.Y_N = null;
      this.Altitude = null;
      this.VelocityN = null;
      this.VelocityE = null;
      this.VelocityDown = null;
      this.TotalVelocity = null;
      this.Roll = null;
      this.Pitch = null;
      this.Yaw_N = null;
      this.TrackingAngle = null;
      this.RollRate = null;
      this.PitchRate = null;
      this.YawRate_N = null;
      this.ax = null;
      this.ay = null;
      this.az = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('OutputRecordType')) {
        this.OutputRecordType = initObj.OutputRecordType
      }
      else {
        this.OutputRecordType = false;
      }
      if (initObj.hasOwnProperty('RecordLength')) {
        this.RecordLength = initObj.RecordLength
      }
      else {
        this.RecordLength = false;
      }
      if (initObj.hasOwnProperty('GPSWeek')) {
        this.GPSWeek = initObj.GPSWeek
      }
      else {
        this.GPSWeek = 0;
      }
      if (initObj.hasOwnProperty('GPSTime')) {
        this.GPSTime = initObj.GPSTime
      }
      else {
        this.GPSTime = 0;
      }
      if (initObj.hasOwnProperty('IMUAlignmentStatus')) {
        this.IMUAlignmentStatus = initObj.IMUAlignmentStatus
      }
      else {
        this.IMUAlignmentStatus = false;
      }
      if (initObj.hasOwnProperty('GNSSStatus')) {
        this.GNSSStatus = initObj.GNSSStatus
      }
      else {
        this.GNSSStatus = false;
      }
      if (initObj.hasOwnProperty('X_E')) {
        this.X_E = initObj.X_E
      }
      else {
        this.X_E = 0.0;
      }
      if (initObj.hasOwnProperty('Y_N')) {
        this.Y_N = initObj.Y_N
      }
      else {
        this.Y_N = 0.0;
      }
      if (initObj.hasOwnProperty('Altitude')) {
        this.Altitude = initObj.Altitude
      }
      else {
        this.Altitude = 0.0;
      }
      if (initObj.hasOwnProperty('VelocityN')) {
        this.VelocityN = initObj.VelocityN
      }
      else {
        this.VelocityN = 0.0;
      }
      if (initObj.hasOwnProperty('VelocityE')) {
        this.VelocityE = initObj.VelocityE
      }
      else {
        this.VelocityE = 0.0;
      }
      if (initObj.hasOwnProperty('VelocityDown')) {
        this.VelocityDown = initObj.VelocityDown
      }
      else {
        this.VelocityDown = 0.0;
      }
      if (initObj.hasOwnProperty('TotalVelocity')) {
        this.TotalVelocity = initObj.TotalVelocity
      }
      else {
        this.TotalVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('Roll')) {
        this.Roll = initObj.Roll
      }
      else {
        this.Roll = 0.0;
      }
      if (initObj.hasOwnProperty('Pitch')) {
        this.Pitch = initObj.Pitch
      }
      else {
        this.Pitch = 0.0;
      }
      if (initObj.hasOwnProperty('Yaw_N')) {
        this.Yaw_N = initObj.Yaw_N
      }
      else {
        this.Yaw_N = 0.0;
      }
      if (initObj.hasOwnProperty('TrackingAngle')) {
        this.TrackingAngle = initObj.TrackingAngle
      }
      else {
        this.TrackingAngle = 0.0;
      }
      if (initObj.hasOwnProperty('RollRate')) {
        this.RollRate = initObj.RollRate
      }
      else {
        this.RollRate = 0.0;
      }
      if (initObj.hasOwnProperty('PitchRate')) {
        this.PitchRate = initObj.PitchRate
      }
      else {
        this.PitchRate = 0.0;
      }
      if (initObj.hasOwnProperty('YawRate_N')) {
        this.YawRate_N = initObj.YawRate_N
      }
      else {
        this.YawRate_N = 0.0;
      }
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GNSS_Output
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [OutputRecordType]
    bufferOffset = _serializer.bool(obj.OutputRecordType, buffer, bufferOffset);
    // Serialize message field [RecordLength]
    bufferOffset = _serializer.bool(obj.RecordLength, buffer, bufferOffset);
    // Serialize message field [GPSWeek]
    bufferOffset = _serializer.uint16(obj.GPSWeek, buffer, bufferOffset);
    // Serialize message field [GPSTime]
    bufferOffset = _serializer.uint32(obj.GPSTime, buffer, bufferOffset);
    // Serialize message field [IMUAlignmentStatus]
    bufferOffset = _serializer.bool(obj.IMUAlignmentStatus, buffer, bufferOffset);
    // Serialize message field [GNSSStatus]
    bufferOffset = _serializer.bool(obj.GNSSStatus, buffer, bufferOffset);
    // Serialize message field [X_E]
    bufferOffset = _serializer.float32(obj.X_E, buffer, bufferOffset);
    // Serialize message field [Y_N]
    bufferOffset = _serializer.float32(obj.Y_N, buffer, bufferOffset);
    // Serialize message field [Altitude]
    bufferOffset = _serializer.float32(obj.Altitude, buffer, bufferOffset);
    // Serialize message field [VelocityN]
    bufferOffset = _serializer.float32(obj.VelocityN, buffer, bufferOffset);
    // Serialize message field [VelocityE]
    bufferOffset = _serializer.float32(obj.VelocityE, buffer, bufferOffset);
    // Serialize message field [VelocityDown]
    bufferOffset = _serializer.float32(obj.VelocityDown, buffer, bufferOffset);
    // Serialize message field [TotalVelocity]
    bufferOffset = _serializer.float32(obj.TotalVelocity, buffer, bufferOffset);
    // Serialize message field [Roll]
    bufferOffset = _serializer.float32(obj.Roll, buffer, bufferOffset);
    // Serialize message field [Pitch]
    bufferOffset = _serializer.float32(obj.Pitch, buffer, bufferOffset);
    // Serialize message field [Yaw_N]
    bufferOffset = _serializer.float32(obj.Yaw_N, buffer, bufferOffset);
    // Serialize message field [TrackingAngle]
    bufferOffset = _serializer.float32(obj.TrackingAngle, buffer, bufferOffset);
    // Serialize message field [RollRate]
    bufferOffset = _serializer.float32(obj.RollRate, buffer, bufferOffset);
    // Serialize message field [PitchRate]
    bufferOffset = _serializer.float32(obj.PitchRate, buffer, bufferOffset);
    // Serialize message field [YawRate_N]
    bufferOffset = _serializer.float32(obj.YawRate_N, buffer, bufferOffset);
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GNSS_Output
    let len;
    let data = new GNSS_Output(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [OutputRecordType]
    data.OutputRecordType = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RecordLength]
    data.RecordLength = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [GPSWeek]
    data.GPSWeek = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [GPSTime]
    data.GPSTime = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [IMUAlignmentStatus]
    data.IMUAlignmentStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [GNSSStatus]
    data.GNSSStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [X_E]
    data.X_E = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Y_N]
    data.Y_N = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Altitude]
    data.Altitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VelocityN]
    data.VelocityN = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VelocityE]
    data.VelocityE = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VelocityDown]
    data.VelocityDown = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TotalVelocity]
    data.TotalVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Roll]
    data.Roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Pitch]
    data.Pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Yaw_N]
    data.Yaw_N = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TrackingAngle]
    data.TrackingAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RollRate]
    data.RollRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [PitchRate]
    data.PitchRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [YawRate_N]
    data.YawRate_N = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'GNSS_Decoding_py/GNSS_Output';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a180986276a6872e41703ee50456ad6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool OutputRecordType
    bool RecordLength
    uint16 GPSWeek
    uint32 GPSTime
    bool IMUAlignmentStatus
    bool GNSSStatus
    float32 X_E
    float32 Y_N
    float32 Altitude
    float32 VelocityN
    float32 VelocityE
    float32 VelocityDown
    float32 TotalVelocity
    float32 Roll
    float32 Pitch
    float32 Yaw_N
    float32 TrackingAngle
    float32 RollRate
    float32 PitchRate
    float32 YawRate_N
    float32 ax
    float32 ay
    float32 az
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GNSS_Output(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.OutputRecordType !== undefined) {
      resolved.OutputRecordType = msg.OutputRecordType;
    }
    else {
      resolved.OutputRecordType = false
    }

    if (msg.RecordLength !== undefined) {
      resolved.RecordLength = msg.RecordLength;
    }
    else {
      resolved.RecordLength = false
    }

    if (msg.GPSWeek !== undefined) {
      resolved.GPSWeek = msg.GPSWeek;
    }
    else {
      resolved.GPSWeek = 0
    }

    if (msg.GPSTime !== undefined) {
      resolved.GPSTime = msg.GPSTime;
    }
    else {
      resolved.GPSTime = 0
    }

    if (msg.IMUAlignmentStatus !== undefined) {
      resolved.IMUAlignmentStatus = msg.IMUAlignmentStatus;
    }
    else {
      resolved.IMUAlignmentStatus = false
    }

    if (msg.GNSSStatus !== undefined) {
      resolved.GNSSStatus = msg.GNSSStatus;
    }
    else {
      resolved.GNSSStatus = false
    }

    if (msg.X_E !== undefined) {
      resolved.X_E = msg.X_E;
    }
    else {
      resolved.X_E = 0.0
    }

    if (msg.Y_N !== undefined) {
      resolved.Y_N = msg.Y_N;
    }
    else {
      resolved.Y_N = 0.0
    }

    if (msg.Altitude !== undefined) {
      resolved.Altitude = msg.Altitude;
    }
    else {
      resolved.Altitude = 0.0
    }

    if (msg.VelocityN !== undefined) {
      resolved.VelocityN = msg.VelocityN;
    }
    else {
      resolved.VelocityN = 0.0
    }

    if (msg.VelocityE !== undefined) {
      resolved.VelocityE = msg.VelocityE;
    }
    else {
      resolved.VelocityE = 0.0
    }

    if (msg.VelocityDown !== undefined) {
      resolved.VelocityDown = msg.VelocityDown;
    }
    else {
      resolved.VelocityDown = 0.0
    }

    if (msg.TotalVelocity !== undefined) {
      resolved.TotalVelocity = msg.TotalVelocity;
    }
    else {
      resolved.TotalVelocity = 0.0
    }

    if (msg.Roll !== undefined) {
      resolved.Roll = msg.Roll;
    }
    else {
      resolved.Roll = 0.0
    }

    if (msg.Pitch !== undefined) {
      resolved.Pitch = msg.Pitch;
    }
    else {
      resolved.Pitch = 0.0
    }

    if (msg.Yaw_N !== undefined) {
      resolved.Yaw_N = msg.Yaw_N;
    }
    else {
      resolved.Yaw_N = 0.0
    }

    if (msg.TrackingAngle !== undefined) {
      resolved.TrackingAngle = msg.TrackingAngle;
    }
    else {
      resolved.TrackingAngle = 0.0
    }

    if (msg.RollRate !== undefined) {
      resolved.RollRate = msg.RollRate;
    }
    else {
      resolved.RollRate = 0.0
    }

    if (msg.PitchRate !== undefined) {
      resolved.PitchRate = msg.PitchRate;
    }
    else {
      resolved.PitchRate = 0.0
    }

    if (msg.YawRate_N !== undefined) {
      resolved.YawRate_N = msg.YawRate_N;
    }
    else {
      resolved.YawRate_N = 0.0
    }

    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    return resolved;
    }
};

module.exports = GNSS_Output;
