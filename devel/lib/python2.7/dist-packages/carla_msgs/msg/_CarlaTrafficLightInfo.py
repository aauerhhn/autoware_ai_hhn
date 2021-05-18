# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from carla_msgs/CarlaTrafficLightInfo.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import carla_msgs.msg
import geometry_msgs.msg

class CarlaTrafficLightInfo(genpy.Message):
  _md5sum = "c303b00d6ff9db591d60b1662aec9d48"
  _type = "carla_msgs/CarlaTrafficLightInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
uint32 id
geometry_msgs/Pose transform
CarlaBoundingBox trigger_volume # position is relative to transform
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: carla_msgs/CarlaBoundingBox
#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
geometry_msgs/Vector3 center

geometry_msgs/Vector3 size

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['id','transform','trigger_volume']
  _slot_types = ['uint32','geometry_msgs/Pose','carla_msgs/CarlaBoundingBox']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,transform,trigger_volume

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CarlaTrafficLightInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
      if self.trigger_volume is None:
        self.trigger_volume = carla_msgs.msg.CarlaBoundingBox()
    else:
      self.id = 0
      self.transform = geometry_msgs.msg.Pose()
      self.trigger_volume = carla_msgs.msg.CarlaBoundingBox()

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
      _x = self
      buff.write(_get_struct_I13d().pack(_x.id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w, _x.trigger_volume.center.x, _x.trigger_volume.center.y, _x.trigger_volume.center.z, _x.trigger_volume.size.x, _x.trigger_volume.size.y, _x.trigger_volume.size.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
      if self.trigger_volume is None:
        self.trigger_volume = carla_msgs.msg.CarlaBoundingBox()
      end = 0
      _x = self
      start = end
      end += 108
      (_x.id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w, _x.trigger_volume.center.x, _x.trigger_volume.center.y, _x.trigger_volume.center.z, _x.trigger_volume.size.x, _x.trigger_volume.size.y, _x.trigger_volume.size.z,) = _get_struct_I13d().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_I13d().pack(_x.id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w, _x.trigger_volume.center.x, _x.trigger_volume.center.y, _x.trigger_volume.center.z, _x.trigger_volume.size.x, _x.trigger_volume.size.y, _x.trigger_volume.size.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
      if self.trigger_volume is None:
        self.trigger_volume = carla_msgs.msg.CarlaBoundingBox()
      end = 0
      _x = self
      start = end
      end += 108
      (_x.id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w, _x.trigger_volume.center.x, _x.trigger_volume.center.y, _x.trigger_volume.center.z, _x.trigger_volume.size.x, _x.trigger_volume.size.y, _x.trigger_volume.size.z,) = _get_struct_I13d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_I13d = None
def _get_struct_I13d():
    global _struct_I13d
    if _struct_I13d is None:
        _struct_I13d = struct.Struct("<I13d")
    return _struct_I13d
