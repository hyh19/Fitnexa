import 'dart:typed_data';

import 'package:lz4/lz4.dart' as lz4;

class CompressionTool {
  CompressionTool._();

  static Uint8List encode(Uint8List bytes) {
    return lz4.defaultCompress(bytes);
  }
}
