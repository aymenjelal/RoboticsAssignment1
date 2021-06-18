// Auto-generated. Do not edit!

// (in-package arm_gazebo.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ikRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_positions = null;
      this.actuator_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_positions')) {
        this.joint_positions = initObj.joint_positions
      }
      else {
        this.joint_positions = [];
      }
      if (initObj.hasOwnProperty('actuator_pose')) {
        this.actuator_pose = initObj.actuator_pose
      }
      else {
        this.actuator_pose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikRequest
    // Serialize message field [joint_positions]
    bufferOffset = _arraySerializer.float64(obj.joint_positions, buffer, bufferOffset, null);
    // Serialize message field [actuator_pose]
    bufferOffset = _arraySerializer.float64(obj.actuator_pose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikRequest
    let len;
    let data = new ikRequest(null);
    // Deserialize message field [joint_positions]
    data.joint_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [actuator_pose]
    data.actuator_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.joint_positions.length;
    length += 8 * object.actuator_pose.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db792127185cdcf354b6e7c7086f5a4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] joint_positions
    float64[] actuator_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikRequest(null);
    if (msg.joint_positions !== undefined) {
      resolved.joint_positions = msg.joint_positions;
    }
    else {
      resolved.joint_positions = []
    }

    if (msg.actuator_pose !== undefined) {
      resolved.actuator_pose = msg.actuator_pose;
    }
    else {
      resolved.actuator_pose = []
    }

    return resolved;
    }
};

class ikResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_positions = null;
    }
    else {
      if (initObj.hasOwnProperty('target_positions')) {
        this.target_positions = initObj.target_positions
      }
      else {
        this.target_positions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ikResponse
    // Serialize message field [target_positions]
    bufferOffset = _arraySerializer.float64(obj.target_positions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ikResponse
    let len;
    let data = new ikResponse(null);
    // Deserialize message field [target_positions]
    data.target_positions = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.target_positions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'arm_gazebo/ikResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0fd84c0985418c9e7020e2efc8f95f49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] target_positions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ikResponse(null);
    if (msg.target_positions !== undefined) {
      resolved.target_positions = msg.target_positions;
    }
    else {
      resolved.target_positions = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ikRequest,
  Response: ikResponse,
  md5sum() { return 'dbd2ec6e346a15ab820fca22b064b6fe'; },
  datatype() { return 'arm_gazebo/ik'; }
};
