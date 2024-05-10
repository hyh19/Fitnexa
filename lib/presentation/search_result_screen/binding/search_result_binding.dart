import 'package:fitnexa/presentation/search_device_screen/controller/search_device_controller.dart';

import '../../../core/app_export.dart';
import '../controller/search_result_controller.dart';

/// A binding class for the SearchResultScreen.
///
/// This class ensures that the SearchResultController is created when the
/// SearchResultScreen is first loaded.
class SearchResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchDeviceController());
    Get.lazyPut(() => SearchResultController());
  }
}
