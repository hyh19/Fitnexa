import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'image_clipper_platform_interface.dart';

/// An implementation of [ImageClipperPlatform] that uses method channels.
class MethodChannelImageClipper extends ImageClipperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('image_clipper');

  @override
  Future<String?> clipImage({
    required String path,
    required double cornerRadius,
  }) async {
    try {
      final Map<String, dynamic> params = {
        'path': path,
        'cornerRadius': cornerRadius,
      };
      final String? outputPath =
          await methodChannel.invokeMethod('clipImage', params);
      return outputPath;
    } catch (e) {
      print('Failed to clip image: $e');
      return null;
    }
  }

  @override
  Future<Uint8List?> scaleImage(
    Uint8List data,
    int targetWidth,
    int targetHeight,
  ) async {
    try {
      final Map<String, dynamic> args = {
        'data': data,
        'targetWidth': targetWidth,
        'targetHeight': targetHeight,
      };

      final Uint8List? outputData =
          await methodChannel.invokeMethod<Uint8List>('scaleImage', args);
      return outputData;
    } catch (e) {
      print('Failed to scale image: $e');
      return null;
    }
  }
}
