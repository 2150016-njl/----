// Auto-generated. Do not edit!

// (in-package ros_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Stories {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.note = null;
    }
    else {
      if (initObj.hasOwnProperty('note')) {
        this.note = initObj.note
      }
      else {
        this.note = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stories
    // Serialize message field [note]
    bufferOffset = _serializer.string(obj.note, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stories
    let len;
    let data = new Stories(null);
    // Deserialize message field [note]
    data.note = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.note.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_interface/Stories';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3a6fee6cdf47f026b66e11c2e77fb39';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string   note     #  
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stories(null);
    if (msg.note !== undefined) {
      resolved.note = msg.note;
    }
    else {
      resolved.note = ''
    }

    return resolved;
    }
};

module.exports = Stories;
