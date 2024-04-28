import '../../../core/app_export.dart';
import '../controller/phone_verification_controller.dart';

/// A binding class for the PhoneVerificationScreen.
///
/// This class ensures that the PhoneVerificationController is created when the
/// PhoneVerificationScreen is first loaded.
class PhoneVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneVerificationController());
  }
}
