import '../../../core/app_export.dart';
import '../controller/region_controller.dart';

/// A binding class for the RegionScreen.
///
/// This class ensures that the RegionController is created when the
/// RegionScreen is first loaded.
class RegionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegionController());
  }
}
