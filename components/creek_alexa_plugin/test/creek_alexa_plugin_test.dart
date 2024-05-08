import 'package:flutter_test/flutter_test.dart';
import 'package:creek_alexa_plugin/creek_alexa_plugin.dart';
import 'package:creek_alexa_plugin/creek_alexa_plugin_platform_interface.dart';
import 'package:creek_alexa_plugin/creek_alexa_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCreekAlexaPluginPlatform
    with MockPlatformInterfaceMixin
    implements CreekAlexaPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CreekAlexaPluginPlatform initialPlatform = CreekAlexaPluginPlatform.instance;

  test('$MethodChannelCreekAlexaPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCreekAlexaPlugin>());
  });

  test('getPlatformVersion', () async {
    CreekAlexaPlugin creekAlexaPlugin = CreekAlexaPlugin();
    MockCreekAlexaPluginPlatform fakePlatform = MockCreekAlexaPluginPlatform();
    CreekAlexaPluginPlatform.instance = fakePlatform;

    expect(await creekAlexaPlugin.getPlatformVersion(), '42');
  });
}
