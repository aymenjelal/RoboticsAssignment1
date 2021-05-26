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

class output {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posvectors = null;
    }
    else {
      if (initObj.hasOwnProperty('posvectors')) {
        this.posvectors = initObj.posvectors
      }
      else {
        this.posvectors = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type output
    // Check that the constant length array field [posvectors] has the right length
    if (obj.posvectors.length !== 3) {
      throw new Error('Unable to serialize array field posvectors - length must be 3')
    }
    // Serialize message field [posvectors]
    bufferOffset = _arraySerializer.float32(obj.posvectors, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type output
    let len;
    let data = new output(null);
    // Deserialize message field [posvectors]
    data.posvectors = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'question1/output';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fed4bf357af80e3105defd670115ff0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[3] posvectors
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new output(null);
    if (msg.posvectors !== undefined) {
      resolved.posvectors = msg.posvectors;
    }
    else {
      resolved.posvectors = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = output;
