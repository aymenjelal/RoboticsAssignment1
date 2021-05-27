// Auto-generated. Do not edit!

// (in-package question1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posvectors = null;
      this.posangles = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('posvectors')) {
        this.posvectors = initObj.posvectors
      }
      else {
        this.posvectors = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('posangles')) {
        this.posangles = initObj.posangles
      }
      else {
        this.posangles = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type input
    // Check that the constant length array field [posvectors] has the right length
    if (obj.posvectors.length !== 3) {
      throw new Error('Unable to serialize array field posvectors - length must be 3')
    }
    // Serialize message field [posvectors]
    bufferOffset = _arraySerializer.float32(obj.posvectors, buffer, bufferOffset, 3);
    // Check that the constant length array field [posangles] has the right length
    if (obj.posangles.length !== 3) {
      throw new Error('Unable to serialize array field posangles - length must be 3')
    }
    // Serialize message field [posangles]
    bufferOffset = _arraySerializer.float32(obj.posangles, buffer, bufferOffset, 3);
    // Serialize message field [d]
    bufferOffset = _serializer.float32(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type input
    let len;
    let data = new input(null);
    // Deserialize message field [posvectors]
    data.posvectors = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [posangles]
    data.posangles = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [d]
    data.d = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'question1/input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78254569331848474f925dd56629aa0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] posvectors 
    float32[3] posangles 
    float32 d
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new input(null);
    if (msg.posvectors !== undefined) {
      resolved.posvectors = msg.posvectors;
    }
    else {
      resolved.posvectors = new Array(3).fill(0)
    }

    if (msg.posangles !== undefined) {
      resolved.posangles = msg.posangles;
    }
    else {
      resolved.posangles = new Array(3).fill(0)
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0.0
    }

    return resolved;
    }
};

module.exports = input;
