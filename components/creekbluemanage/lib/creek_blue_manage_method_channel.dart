import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


import 'creek_blue_manage_platform_interface.dart';

/// An implementation of [CreekBlueManagePlatform] that uses method channels.
class MethodChannelCreekBlueManage extends CreekBlueManagePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('creek_blue_manage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
