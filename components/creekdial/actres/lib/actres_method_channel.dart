import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'actres_platform_interface.dart';

/// An implementation of [ActsResPlatform] that uses method channels.
class MethodChannelActsRes extends ActsResPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('acts_res');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> encodeImage(String imagePath, int imageType) async {
    final res = await methodChannel.invokeMethod<String>(
        'encodeImage', {"imagePath": imagePath, "imageType": imageType});
    return res;
  }
}
