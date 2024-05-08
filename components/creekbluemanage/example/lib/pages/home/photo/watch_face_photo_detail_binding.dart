
import 'package:get/get.dart';

import 'watch_face_install_logic.dart';
import 'watch_face_parse_logic.dart';
import 'watch_face_photo_detail_logic.dart';

class WatchFacePhotoDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WatchFacePhotoDetailLogic(),);
    Get.lazyPut(() => WatchFaceInstallLogic(),);
    Get.lazyPut(() => WatchFaceParseLogic(),);
  }
}
