# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from detect/boxes.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import detect.msg

class boxes(genpy.Message):
  _md5sum = "d62211855a58c4e6dee52f924da82b09"
  _type = "detect/boxes"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint64 box_num
box[] boxes

================================================================================
MSG: detect/box
float64 x
float64 y
float64 confidence
"""
  __slots__ = ['box_num','boxes']
  _slot_types = ['uint64','detect/box[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       box_num,boxes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(boxes, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.box_num is None:
        self.box_num = 0
      if self.boxes is None:
        self.boxes = []
    else:
      self.box_num = 0
      self.boxes = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.box_num
      buff.write(_get_struct_Q().pack(_x))
      length = len(self.boxes)
      buff.write(_struct_I.pack(length))
      for val1 in self.boxes:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.boxes is None:
        self.boxes = None
      end = 0
      start = end
      end += 8
      (self.box_num,) = _get_struct_Q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.boxes = []
      for i in range(0, length):
        val1 = detect.msg.box()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.confidence,) = _get_struct_3d().unpack(str[start:end])
        self.boxes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.box_num
      buff.write(_get_struct_Q().pack(_x))
      length = len(self.boxes)
      buff.write(_struct_I.pack(length))
      for val1 in self.boxes:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.confidence))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.boxes is None:
        self.boxes = None
      end = 0
      start = end
      end += 8
      (self.box_num,) = _get_struct_Q().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.boxes = []
      for i in range(0, length):
        val1 = detect.msg.box()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.confidence,) = _get_struct_3d().unpack(str[start:end])
        self.boxes.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_Q = None
def _get_struct_Q():
    global _struct_Q
    if _struct_Q is None:
        _struct_Q = struct.Struct("<Q")
    return _struct_Q
