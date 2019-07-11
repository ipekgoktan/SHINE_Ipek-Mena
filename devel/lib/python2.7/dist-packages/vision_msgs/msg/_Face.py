# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from vision_msgs/Face.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import genpy
import std_msgs.msg

class Face(genpy.Message):
  _md5sum = "327c1a1090cfdba09d7b997f98e7548a"
  _type = "vision_msgs/Face"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Header for timestamp info
Header header

# Unique identifier
string id

# Time that the image was captured
time capture_time

# Amount of time that the face has been tracked
duration timetrack

# Bounding box of the face in pixels [x_origin, y_origin, width, height]
float32[4] bb

# Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])
geometry_msgs/Point center

# Percentage of the face compared to the image size in pixels 
# (in the range [0.0, 1.0])
float32 size

# Rotation of the face in degrees (difference in the angle of eyes compared 
# to a horizontal line)
float32 rotation 							

#  Keypoints for eyes, nose, mouth
geometry_msgs/Point[5] keypoints

# Confidence value in the range [0.0, 1.0]
float32 confidence

#  Currently unused, for future compatibility
string name

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['header','id','capture_time','timetrack','bb','center','size','rotation','keypoints','confidence','name']
  _slot_types = ['std_msgs/Header','string','time','duration','float32[4]','geometry_msgs/Point','float32','float32','geometry_msgs/Point[5]','float32','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,id,capture_time,timetrack,bb,center,size,rotation,keypoints,confidence,name

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Face, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.id is None:
        self.id = ''
      if self.capture_time is None:
        self.capture_time = genpy.Time()
      if self.timetrack is None:
        self.timetrack = genpy.Duration()
      if self.bb is None:
        self.bb = [0.,0.,0.,0.]
      if self.center is None:
        self.center = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = 0.
      if self.rotation is None:
        self.rotation = 0.
      if self.keypoints is None:
        self.keypoints = [geometry_msgs.msg.Point(),geometry_msgs.msg.Point(),geometry_msgs.msg.Point(),geometry_msgs.msg.Point(),geometry_msgs.msg.Point()]
      if self.confidence is None:
        self.confidence = 0.
      if self.name is None:
        self.name = ''
    else:
      self.header = std_msgs.msg.Header()
      self.id = ''
      self.capture_time = genpy.Time()
      self.timetrack = genpy.Duration()
      self.bb = [0.,0.,0.,0.]
      self.center = geometry_msgs.msg.Point()
      self.size = 0.
      self.rotation = 0.
      self.keypoints = [geometry_msgs.msg.Point(),geometry_msgs.msg.Point(),geometry_msgs.msg.Point(),geometry_msgs.msg.Point(),geometry_msgs.msg.Point()]
      self.confidence = 0.
      self.name = ''

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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I2i.pack(_x.capture_time.secs, _x.capture_time.nsecs, _x.timetrack.secs, _x.timetrack.nsecs))
      buff.write(_struct_4f.pack(*self.bb))
      _x = self
      buff.write(_struct_3d2f.pack(_x.center.x, _x.center.y, _x.center.z, _x.size, _x.rotation))
      for val1 in self.keypoints:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      buff.write(_struct_f.pack(self.confidence))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.capture_time is None:
        self.capture_time = genpy.Time()
      if self.timetrack is None:
        self.timetrack = genpy.Duration()
      if self.center is None:
        self.center = geometry_msgs.msg.Point()
      if self.keypoints is None:
        self.keypoints = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.capture_time.secs, _x.capture_time.nsecs, _x.timetrack.secs, _x.timetrack.nsecs,) = _struct_2I2i.unpack(str[start:end])
      start = end
      end += 16
      self.bb = _struct_4f.unpack(str[start:end])
      _x = self
      start = end
      end += 32
      (_x.center.x, _x.center.y, _x.center.z, _x.size, _x.rotation,) = _struct_3d2f.unpack(str[start:end])
      self.keypoints = []
      for i in range(0, 5):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.keypoints.append(val1)
      start = end
      end += 4
      (self.confidence,) = _struct_f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8')
      else:
        self.name = str[start:end]
      self.capture_time.canon()
      self.timetrack.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I2i.pack(_x.capture_time.secs, _x.capture_time.nsecs, _x.timetrack.secs, _x.timetrack.nsecs))
      buff.write(self.bb.tostring())
      _x = self
      buff.write(_struct_3d2f.pack(_x.center.x, _x.center.y, _x.center.z, _x.size, _x.rotation))
      for val1 in self.keypoints:
        _x = val1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      buff.write(_struct_f.pack(self.confidence))
      _x = self.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.capture_time is None:
        self.capture_time = genpy.Time()
      if self.timetrack is None:
        self.timetrack = genpy.Duration()
      if self.center is None:
        self.center = geometry_msgs.msg.Point()
      if self.keypoints is None:
        self.keypoints = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.capture_time.secs, _x.capture_time.nsecs, _x.timetrack.secs, _x.timetrack.nsecs,) = _struct_2I2i.unpack(str[start:end])
      start = end
      end += 16
      self.bb = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=4)
      _x = self
      start = end
      end += 32
      (_x.center.x, _x.center.y, _x.center.z, _x.size, _x.rotation,) = _struct_3d2f.unpack(str[start:end])
      self.keypoints = []
      for i in range(0, 5):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.keypoints.append(val1)
      start = end
      end += 4
      (self.confidence,) = _struct_f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name = str[start:end].decode('utf-8')
      else:
        self.name = str[start:end]
      self.capture_time.canon()
      self.timetrack.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2I2i = struct.Struct("<2I2i")
_struct_f = struct.Struct("<f")
_struct_3d2f = struct.Struct("<3d2f")
_struct_3I = struct.Struct("<3I")
_struct_4f = struct.Struct("<4f")
_struct_3d = struct.Struct("<3d")
