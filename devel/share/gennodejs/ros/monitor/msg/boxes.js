// Auto-generated. Do not edit!

// (in-package monitor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let box = require('./box.js');

//-----------------------------------------------------------

class boxes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.box_num = null;
      this.boxes = null;
    }
    else {
      if (initObj.hasOwnProperty('box_num')) {
        this.box_num = initObj.box_num
      }
      else {
        this.box_num = 0;
      }
      if (initObj.hasOwnProperty('boxes')) {
        this.boxes = initObj.boxes
      }
      else {
        this.boxes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type boxes
    // Serialize message field [box_num]
    bufferOffset = _serializer.uint64(obj.box_num, buffer, bufferOffset);
    // Serialize message field [boxes]
    // Serialize the length for message field [boxes]
    bufferOffset = _serializer.uint32(obj.boxes.length, buffer, bufferOffset);
    obj.boxes.forEach((val) => {
      bufferOffset = box.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type boxes
    let len;
    let data = new boxes(null);
    // Deserialize message field [box_num]
    data.box_num = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [boxes]
    // Deserialize array length for message field [boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boxes[i] = box.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.boxes.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'monitor/boxes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd62211855a58c4e6dee52f924da82b09';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 box_num
    box[] boxes
    
    ================================================================================
    MSG: monitor/box
    float64 x
    float64 y
    float64 confidence
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new boxes(null);
    if (msg.box_num !== undefined) {
      resolved.box_num = msg.box_num;
    }
    else {
      resolved.box_num = 0
    }

    if (msg.boxes !== undefined) {
      resolved.boxes = new Array(msg.boxes.length);
      for (let i = 0; i < resolved.boxes.length; ++i) {
        resolved.boxes[i] = box.Resolve(msg.boxes[i]);
      }
    }
    else {
      resolved.boxes = []
    }

    return resolved;
    }
};

module.exports = boxes;
