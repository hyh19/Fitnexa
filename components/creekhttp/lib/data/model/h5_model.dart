class H5RequestModel {

  H5RequestModel();

  /// APP名称
  String? appName;

  /// APP版本
  String? appVersion;

  /// 蓝牙名称
  String? bluetoothName;

  /// 品牌
  String? brandName;

  /// 设备型号
  // final String? deviceModelCode;

  /// 固件Id
  int? firmwareId;
  ///地址
  String? address;
  /// 固件版本
  String? firmwareVersion;

  /// Mac地址
  String? macId;

  /// 手机型号
  String? phoneModel;

  /// 手机系统 可用值:ANDROID,IOS
  String? phoneSystem;

  /// 手机系统版本
  String? phoneSystemVersion;

  /// 国家
  String? countryCode;

  /// 语言ID
  String? langId;
  ///客户编码标识
  String? customerCode;
  ///SN码
  String? snCode;

  Map<String, dynamic> toJson() => {
        "appName": appName,
        "appVersion": appVersion,
        "bluetoothName": bluetoothName,
        "brandName": brandName,
        //   "deviceModelCode": deviceModelCode,
        "firmwareId": firmwareId,
        "firmwareVersion": firmwareVersion,
        "macId": macId,
        "phoneModel": phoneModel,
        "phoneSystem": phoneSystem,
        "phoneSystemVersion": phoneSystemVersion,
        "countryCode": countryCode,
        "langId": langId,
        "address": address,
        "customerCode": customerCode,
        "snCode": snCode,
      };

  @override
  String toString() {
    return 'H5RequestModel{appName: $appName, appVersion: $appVersion, bluetoothName: $bluetoothName, brandName: $brandName, firmwareId: $firmwareId, address: $address, firmwareVersion: $firmwareVersion, macId: $macId, phoneModel: $phoneModel, phoneSystem: $phoneSystem, phoneSystemVersion: $phoneSystemVersion, countryCode: $countryCode, langId: $langId, customerCode: $customerCode, snCode: $snCode}';
  }
}
