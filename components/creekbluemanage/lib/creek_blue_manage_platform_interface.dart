import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'creek_blue_manage_method_channel.dart';

abstract class CreekBlueManagePlatform extends PlatformInterface {
  /// Constructs a CreekBlueManagePlatform.
  CreekBlueManagePlatform() : super(token: _token);

  static final Object _token = Object();

  static CreekBlueManagePlatform _instance = MethodChannelCreekBlueManage();

  /// The default instance of [CreekBlueManagePlatform] to use.
  ///
  /// Defaults to [MethodChannelCreekBlueManage].
  static CreekBlueManagePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CreekBlueManagePlatform] when
  /// they register themselves.
  static set instance(CreekBlueManagePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
