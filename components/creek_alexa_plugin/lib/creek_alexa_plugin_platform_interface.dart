import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'creek_alexa_plugin_method_channel.dart';

abstract class CreekAlexaPluginPlatform extends PlatformInterface {
  /// Constructs a CreekAlexaPluginPlatform.
  CreekAlexaPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static CreekAlexaPluginPlatform _instance = MethodChannelCreekAlexaPlugin();

  /// The default instance of [CreekAlexaPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelCreekAlexaPlugin].
  static CreekAlexaPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CreekAlexaPluginPlatform] when
  /// they register themselves.
  static set instance(CreekAlexaPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
