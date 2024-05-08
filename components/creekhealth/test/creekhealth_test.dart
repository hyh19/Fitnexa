import 'package:flutter_test/flutter_test.dart';
import 'package:creekhealth/creekhealth.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCreekhealthPlatform
    with MockPlatformInterfaceMixin {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {



}
