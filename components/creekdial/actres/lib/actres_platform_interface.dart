import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'actres_method_channel.dart';

abstract class ActsResPlatform extends PlatformInterface {
  /// Constructs a ActsResPlatform.
  ActsResPlatform() : super(token: _token);

  static final Object _token = Object();

  static ActsResPlatform _instance = MethodChannelActsRes();

  /// The default instance of [ActsResPlatform] to use.
  ///
  /// Defaults to [MethodChannelActsRes].
  static ActsResPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ActsResPlatform] when
  /// they register themselves.
  static set instance(ActsResPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> encodeImage(String imagePath,int imageType) async {
    throw UnimplementedError('encodeImage(String imagePath,int imageType) has not been implemented.');
  }

}
