import '../../../core/app_export.dart';
import '../controller/goals_controller.dart';

/// A binding class for the GoalsScreen.
///
/// This class ensures that the GoalsController is created when the
/// GoalsScreen is first loaded.
class GoalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GoalsController());
  }
}
