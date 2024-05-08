import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'creekhealth_platform_interface.dart';

/// An implementation of [CreekhealthPlatform] that uses method channels.
class MethodChannelCreekhealth extends CreekhealthPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('creekhealth');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
