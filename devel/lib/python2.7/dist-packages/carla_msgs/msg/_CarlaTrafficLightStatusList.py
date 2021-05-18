# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from carla_msgs/CarlaTrafficLightStatusList.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import carla_msgs.msg

class CarlaTrafficLightStatusList(genpy.Message):
  _md5sum = "99769ac9a785c6de87ed86d7bb4a653a"
  _type = "carla_msgs/CarlaTrafficLightStatusList"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
CarlaTrafficLightStatus[] traffic_lights

================================================================================
MSG: carla_msgs/CarlaTrafficLightStatus
#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
uint32 id

uint8 RED=0
uint8 YELLOW=1
uint8 GREEN=2
uint8 OFF=3
uint8 UNKNOWN=4

uint8 state
"""
  __slots__ = ['traffic_lights']
  _slot_types = ['carla_msgs/CarlaTrafficLightStatus[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       traffic_lights

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CarlaTrafficLightStatusList, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.traffic_lights is None:
        self.traffic_lights = []
    else:
      self.traffic_lights = []

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
      length = len(self.traffic_lights)
      buff.write(_struct_I.pack(length))
      for val1 in self.traffic_lights:
        _x = val1
        buff.write(_get_struct_IB().pack(_x.id, _x.state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.traffic_lights is None:
        self.traffic_lights = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traffic_lights = []
      for i in range(0, length):
        val1 = carla_msgs.msg.CarlaTrafficLightStatus()
        _x = val1
        start = end
        end += 5
        (_x.id, _x.state,) = _get_struct_IB().unpack(str[start:end])
        self.traffic_lights.append(val1)
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
      length = len(self.traffic_lights)
      buff.write(_struct_I.pack(length))
      for val1 in self.traffic_lights:
        _x = val1
        buff.write(_get_struct_IB().pack(_x.id, _x.state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.traffic_lights is None:
        self.traffic_lights = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.traffic_lights = []
      for i in range(0, length):
        val1 = carla_msgs.msg.CarlaTrafficLightStatus()
        _x = val1
        start = end
        end += 5
        (_x.id, _x.state,) = _get_struct_IB().unpack(str[start:end])
        self.traffic_lights.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_IB = None
def _get_struct_IB():
    global _struct_IB
    if _struct_IB is None:
        _struct_IB = struct.Struct("<IB")
    return _struct_IB
