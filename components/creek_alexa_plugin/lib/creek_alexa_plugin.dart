import 'creek_alexa_plugin_platform_interface.dart';

class CreekAlexaPlugin {
  Future<String?> getPlatformVersion() {
    return CreekAlexaPluginPlatform.instance.getPlatformVersion();
  }
}
