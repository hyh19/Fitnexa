/*
 * @Date: 2024-01-09 14:05:18
 * @LastEditors: yuen
 * @LastEditTime: 2024-01-09 14:18:55
 * @FilePath: \projectc:\Users\Admin\AppData\Local\Pub\Cache\git\creekhttp-d2ee781292950a565208a127418592d7aac86904\lib\data\model\user\upgrade_app_details_request.dart
 */
class UpgradeAppDetailsRequestModel {
  // app名称 必传
  String? appName;

  // app版本号 必传
  String? appVersion;

  // 语言id 必传
  String? langId;

  // 手机系统类型 必传
  String? phoneSystem;

  // 设备型号
  int? deviceModelCode;

  // 固件ID
  int? firmwareId;

  // 固件版本
  String? firmwareVersion;

  UpgradeAppDetailsRequestModel(
      { this.appName,
        this.appVersion,
        this.langId,
        this.phoneSystem,
        this.deviceModelCode,
        this.firmwareId,
        this.firmwareVersion});

  factory UpgradeAppDetailsRequestModel.fromJson(Map<String,dynamic>json){
    return UpgradeAppDetailsRequestModel(appName: json['appName'], appVersion: json['appVersion'], langId:json['langId'], phoneSystem: json['phoneSystem']);
  }

  Map<String, dynamic> toJson() => {
    "appName": appName,
    "appVersion": appVersion,
    "langId": langId,
    "phoneSystem": phoneSystem,
    "deviceModelCode": deviceModelCode,
    "firmwareId": firmwareId,
    "firmwareVersion": firmwareVersion
  };

  @override
  String toString() {
    return 'UpgradeAppDetailsRequestModel{appName: $appName, appVersion: $appVersion, langId: $langId, phoneSystem: $phoneSystem, deviceModelCode: $deviceModelCode, firmwareId: $firmwareId, firmwareVersion: $firmwareVersion}';
  }
}
