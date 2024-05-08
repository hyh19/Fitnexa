import '../../../core/app_export.dart';
import '../controller/connect_logic.dart';
import '../controller/scan_code_controller.dart';

/// A binding class for the ScanCodeScreen.
///
/// This class ensures that the ScanCodeController is created when the
/// ScanCodeScreen is first loaded.
class ScanCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectDeviceLogic());
    Get.lazyPut(() => ScanCodeController());
  }
}
