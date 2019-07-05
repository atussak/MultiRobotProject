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
      this.execute_state = null;
    }
    else {
      if (initObj.hasOwnProperty('execute_state')) {
        this.execute_state = initObj.execute_state
      }
      else {
        this.execute_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stateRequest
    // Serialize message field [execute_state]
    bufferOffset = _serializer.bool(obj.execute_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stateRequest
    let len;
    let data = new stateRequest(null);
    // Deserialize message field [execute_state]
    data.execute_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'master/stateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27587b439c805f63a7377ee4a1dcf7d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool execute_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stateRequest(null);
    if (msg.execute_state !== undefined) {
      resolved.execute_state = msg.execute_state;
    }
    else {
      resolved.execute_state = false
    }

    return resolved;
    }
};

class stateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.finished = null;
    }
    else {
      if (initObj.hasOwnProperty('finished')) {
        this.finished = initObj.finished
      }
      else {
        this.finished = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stateResponse
    // Serialize message field [finished]
    bufferOffset = _serializer.bool(obj.finished, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stateResponse
    let len;
    let data = new stateResponse(null);
    // Deserialize message field [finished]
    data.finished = _deserializer.bool(buffer, bufferOffset);
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
    return 'e2797c797e620a950ba704492d72873b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool finished
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stateResponse(null);
    if (msg.finished !== undefined) {
      resolved.finished = msg.finished;
    }
    else {
      resolved.finished = false
    }

    return resolved;
    }
};

module.exports = {
  Request: stateRequest,
  Response: stateResponse,
  md5sum() { return 'fc356054cc550c7695fed3a501922336'; },
  datatype() { return 'master/state'; }
};
