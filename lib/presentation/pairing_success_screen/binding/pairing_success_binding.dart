import '../../../core/app_export.dart';
import '../controller/pairing_success_controller.dart';

/// A binding class for the PairingSuccessScreen.
///
/// This class ensures that the PairingSuccessController is created when the
/// PairingSuccessScreen is first loaded.
class PairingSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PairingSuccessController());
  }
}
