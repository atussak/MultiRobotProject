// Auto-generated. Do not edit!

// (in-package master.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class stateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.commanded_state = null;
    }
    else {
      if (initObj.hasOwnProperty('commanded_state')) {
        this.commanded_state = initObj.commanded_state
      }
      else {
        this.commanded_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stateRequest
    // Serialize message field [commanded_state]
    bufferOffset = _serializer.int32(obj.commanded_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stateRequest
    let len;
    let data = new stateRequest(null);
    // Deserialize message field [commanded_state]
    data.commanded_state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'master/stateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65e4159dc05e66122185e53535105016';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 commanded_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stateRequest(null);
    if (msg.commanded_state !== undefined) {
      resolved.commanded_state = msg.commanded_state;
    }
    else {
      resolved.commanded_state = 0
    }

    return resolved;
    }
};

class stateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot1_finished = null;
    }
    else {
      if (initObj.hasOwnProperty('robot1_finished')) {
        this.robot1_finished = initObj.robot1_finished
      }
      else {
        this.robot1_finished = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stateResponse
    // Serialize message field [robot1_finished]
    bufferOffset = _serializer.bool(obj.robot1_finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stateResponse
    let len;
    let data = new stateResponse(null);
    // Deserialize message field [robot1_finished]
    data.robot1_finished = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'master/stateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34476f89daf3bba091c2d9ef0c5b6b5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool robot1_finished
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stateResponse(null);
    if (msg.robot1_finished !== undefined) {
      resolved.robot1_finished = msg.robot1_finished;
    }
    else {
      resolved.robot1_finished = false
    }

    return resolved;
    }
};

module.exports = {
  Request: stateRequest,
  Response: stateResponse,
  md5sum() { return '9812321c45d35db4ab23b09dfb9c72de'; },
  datatype() { return 'master/state'; }
};
