import 'actres_platform_interface.dart';

class Actres {
  Future<String?> getPlatformVersion() {
    return ActsResPlatform.instance.getPlatformVersion();
  }

  Future<String?> encodeImage(String imagePath, int imageType) {
    return ActsResPlatform.instance.encodeImage(imagePath, imageType);
  }
}
