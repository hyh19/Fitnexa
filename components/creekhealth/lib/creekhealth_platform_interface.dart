import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'creekhealth_method_channel.dart';

abstract class CreekhealthPlatform extends PlatformInterface {
  /// Constructs a CreekhealthPlatform.
  CreekhealthPlatform() : super(token: _token);

  static final Object _token = Object();

  static CreekhealthPlatform _instance = MethodChannelCreekhealth();

  /// The default instance of [CreekhealthPlatform] to use.
  ///
  /// Defaults to [MethodChannelCreekhealth].
  static CreekhealthPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CreekhealthPlatform] when
  /// they register themselves.
  static set instance(CreekhealthPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
