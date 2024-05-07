import '../../../core/app_export.dart';
import '../controller/pairing_watch_controller.dart';

/// A binding class for the PairingWatchScreen.
///
/// This class ensures that the PairingWatchController is created when the
/// PairingWatchScreen is first loaded.
class PairingWatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PairingWatchController());
  }
}
