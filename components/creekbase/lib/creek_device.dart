part of creek_base;

class CreekDeviceModel {
  ///手机品牌加型号
  String? brand;
  ///当前系统版本
  String? systemVersion;

  ///系统名称
  String? platform;

  ///是不是物理设备
  bool? isPhysicalDevice;

  ///用户唯一识别码
  String? uuid;

  ///手机具体的固件型号/Ui版本
  String? incremental;
  String? model;

  ///获取设备信息
  static get deviceInfo async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    AndroidDeviceInfo? androidInfo;
    IosDeviceInfo? iosInfo;
    if (Platform.isIOS) {
      iosInfo = await deviceInfoPlugin.iosInfo;
    } else {
      androidInfo = await deviceInfoPlugin.androidInfo;
    }
    return _readDeviceInfo(androidInfo, iosInfo);
  }

  static CreekDeviceModel _readDeviceInfo(AndroidDeviceInfo? androidInfo, IosDeviceInfo? iosInfo) {
    CreekDeviceModel model = CreekDeviceModel();
    model.model = Platform.isIOS ?  iosInfo?.model : androidInfo?.model;
    model.brand = Platform.isIOS ? "iPhone" : "${androidInfo?.brand}";
    model.systemVersion = Platform.isIOS ? iosInfo?.systemVersion : androidInfo?.version.release;
    model.platform = Platform.isIOS ? iosInfo?.systemName : "Android";
    model.isPhysicalDevice = Platform.isIOS ? iosInfo?.isPhysicalDevice : androidInfo?.isPhysicalDevice;
    model.uuid = Platform.isIOS ? iosInfo?.identifierForVendor : androidInfo?.id;
    model.incremental = Platform.isIOS ? iosInfo?.systemVersion : androidInfo?.version.incremental;
    return model;
  }

  static getPhoneSystem() {
    return Platform.isAndroid ? 'Android' : 'iOS';
  }


}
