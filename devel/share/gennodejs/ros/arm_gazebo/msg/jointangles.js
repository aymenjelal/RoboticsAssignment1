// Auto-generated. Do not edit!

// (in-package arm_gazebo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class jointangles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
      this.arm_palm = null;
      this.palm_finger = null;
      this.finger_finger_tip = null;
    }
    else {
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = 0.0;
      }
      if (initObj.hasOwnProperty('arm_palm')) {
        this.arm_palm = initObj.arm_palm
      }
      else {
        this.arm_palm = 0.0;
      }
      if (initObj.hasOwnProperty('palm_finger')) {
        this.palm_finger = initObj.palm_finger
      }
      else {
        this.palm_finger = 0.0;
      }
      if (initObj.hasOwnProperty('finger_finger_tip')) {
        this.finger_finger_tip = initObj.finger_finger_tip
      }
      else {
        this.finger_finger_tip = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type jointangles
    // Serialize message field [joint1]
    bufferOffset = _serializer.float32(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float32(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = _serializer.float32(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = _serializer.float32(obj.joint4, buffer, bufferOffset);
    // Serialize message field [arm_palm]
    bufferOffset = _serializer.float64(obj.arm_palm, buffer, bufferOffset);
    // Serialize message field [palm_finger]
    bufferOffset = _serializer.float64(obj.palm_finger, buffer, bufferOffset);
    // Serialize message field [finger_finger_tip]
    bufferOffset = _serializer.float64(obj.finger_finger_tip, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type jointangles
    let len;
    let data = new jointangles(null);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [arm_palm]
    data.arm_palm = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [palm_finger]
    data.palm_finger = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [finger_finger_tip]
    data.finger_finger_tip = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm_gazebo/jointangles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cb4ec54877c89eaedfc2a0339a0dead';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 joint1
    float32 joint2
    float32 joint3 
    float32 joint4
    float64 arm_palm
    float64 palm_finger
    float64 finger_finger_tip
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new jointangles(null);
    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = msg.joint3;
    }
    else {
      resolved.joint3 = 0.0
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = msg.joint4;
    }
    else {
      resolved.joint4 = 0.0
    }

    if (msg.arm_palm !== undefined) {
      resolved.arm_palm = msg.arm_palm;
    }
    else {
      resolved.arm_palm = 0.0
    }

    if (msg.palm_finger !== undefined) {
      resolved.palm_finger = msg.palm_finger;
    }
    else {
      resolved.palm_finger = 0.0
    }

    if (msg.finger_finger_tip !== undefined) {
      resolved.finger_finger_tip = msg.finger_finger_tip;
    }
    else {
      resolved.finger_finger_tip = 0.0
    }

    return resolved;
    }
};

module.exports = jointangles;
