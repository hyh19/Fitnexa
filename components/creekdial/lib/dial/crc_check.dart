import 'dart:convert';

class CrcCheck {
  static int calculateString(String str) {
    final data = utf8.encode(str);
    return calculateUint8List(data);
  }

  static int calculateUint8List(List<int> data) {
    int crc = 0xFFFFFFFF;

    for (var byte in data) {
      crc = (crc >> 4) ^ _table[(crc ^ byte) & 0x0F];
      crc = (crc >> 4) ^ _table[(crc ^ (byte >> 4)) & 0x0F];
    }

    return crc ^ 0xFFFFFFFF;
  }

  static const _table = [
    0x00000000,
    0x1db71064,
    0x3b6e20c8,
    0x26d930ac,
    0x76dc4190,
    0x6b6b51f4,
    0x4db26158,
    0x5005713c,
    0xedb88320,
    0xf00f9344,
    0xd6d6a3e8,
    0xcb61b38c,
    0x9b64c2b0,
    0x86d3d2d4,
    0xa00ae278,
    0xbdbdf21c,
  ];
}
