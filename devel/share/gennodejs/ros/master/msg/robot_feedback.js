// Auto-generated. Do not edit!

// (in-package master.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robot_feedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_state = null;
      this.state_executed = null;
    }
    else {
      if (initObj.hasOwnProperty('current_state')) {
        this.current_state = initObj.current_state
      }
      else {
        this.current_state = 0;
      }
      if (initObj.hasOwnProperty('state_executed')) {
        this.state_executed = initObj.state_executed
      }
      else {
        this.state_executed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robot_feedback
    // Serialize message field [current_state]
    bufferOffset = _serializer.int32(obj.current_state, buffer, bufferOffset);
    // Serialize message field [state_executed]
    bufferOffset = _serializer.bool(obj.state_executed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robot_feedback
    let len;
    let data = new robot_feedback(null);
    // Deserialize message field [current_state]
    data.current_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state_executed]
    data.state_executed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'master/robot_feedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '43b1d8fe98a57fe4d9fd7c53b24f68c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 current_state
    bool state_executed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robot_feedback(null);
    if (msg.current_state !== undefined) {
      resolved.current_state = msg.current_state;
    }
    else {
      resolved.current_state = 0
    }

    if (msg.state_executed !== undefined) {
      resolved.state_executed = msg.state_executed;
    }
    else {
      resolved.state_executed = false
    }

    return resolved;
    }
};

module.exports = robot_feedback;
