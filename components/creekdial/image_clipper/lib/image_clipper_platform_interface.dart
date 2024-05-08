import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'image_clipper_method_channel.dart';

abstract class ImageClipperPlatform extends PlatformInterface {
  /// Constructs a ImageClipperPlatform.
  ImageClipperPlatform() : super(token: _token);

  static final Object _token = Object();

  static ImageClipperPlatform _instance = MethodChannelImageClipper();

  /// The default instance of [ImageClipperPlatform] to use.
  ///
  /// Defaults to [MethodChannelImageClipper].
  static ImageClipperPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ImageClipperPlatform] when
  /// they register themselves.
  static set instance(ImageClipperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> clipImage({
    required String path,
    required double cornerRadius,
  }) async {
    throw UnimplementedError('clipImage() has not been implemented.');
  }

  Future<Uint8List?> scaleImage(
    Uint8List data,
    int targetWidth,
    int targetHeight,
  ) async {
    throw UnimplementedError('scaleImage() has not been implemented.');
  }
}
