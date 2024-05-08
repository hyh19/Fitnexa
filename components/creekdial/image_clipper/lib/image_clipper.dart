import 'dart:typed_data';

import 'image_clipper_platform_interface.dart';

class ImageClipper {
  Future<String?> clipImage({
    required String path,
    required double cornerRadius,
  }) async {
    return ImageClipperPlatform.instance
        .clipImage(path: path, cornerRadius: cornerRadius);
  }

  Future<Uint8List?> scaleImage(
    Uint8List data,
    int targetWidth,
    int targetHeight,
  ) async {
    return ImageClipperPlatform.instance
        .scaleImage(data, targetWidth, targetHeight);
  }
}
