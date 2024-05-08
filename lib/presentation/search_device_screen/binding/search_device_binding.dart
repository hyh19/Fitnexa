import 'package:fitnexa/presentation/search_device_screen/controller/device_manager_logic.dart';

import '../../../core/app_export.dart';
import '../controller/search_device_controller.dart';

/// A binding class for the SearchDeviceScreen.
///
/// This class ensures that the SearchDeviceController is created when the
/// SearchDeviceScreen is first loaded.
class SearchDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchDeviceController());
    Get.lazyPut(() => DeviceManagerLogic());
  }
}
