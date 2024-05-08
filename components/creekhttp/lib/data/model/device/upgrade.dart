/// 查询固件升级请求参数
class DeviceUpgradeRequestModel {
  DeviceUpgradeRequestModel({
    required this.appName,
    required this.appVersion,
    required this.firmwareId,
    required this.firmwareVersion,
    required this.langId,
    required this.libraryVersion,
    required this.macId,
    required this.phoneModel,
    required this.phoneSystem,
    required this.recoverFlag,
  });

  final String? appName;
  final String? appVersion;
  final int? firmwareId;
  final String? firmwareVersion;
  final String? langId;
  final int? libraryVersion;
  final String? macId;
  final String? phoneModel;
  final String? phoneSystem;
  final int? recoverFlag;

  factory DeviceUpgradeRequestModel.fromJson(Map<String, dynamic> json) {
    return DeviceUpgradeRequestModel(
      appName: json["appName"],
      appVersion: json["appVersion"],
      firmwareId: json["firmwareId"],
      firmwareVersion: json["firmwareVersion"],
      langId: json["langId"],
      libraryVersion: json["libraryVersion"],
      macId: json["macId"],
      phoneModel: json["phoneModel"],
      phoneSystem: json["phoneSystem"],
      recoverFlag: json["recoverFlag"],
    );
  }

  Map<String, dynamic> toJson() => {
        "appName": appName,
        "appVersion": appVersion,
        "firmwareId": firmwareId,
        "firmwareVersion": firmwareVersion,
        "langId": langId,
        "libraryVersion": libraryVersion,
        "macId": macId,
        "phoneModel": phoneModel,
        "phoneSystem": phoneSystem,
        "recoverFlag": recoverFlag,
      };
}

/// 查询固件升级返回结果
class DeviceUpgradeResultModel {
  DeviceUpgradeResultModel({
    required this.firmwareUrl,
    required this.firmwareVersion,
    required this.frequency,
    required this.libraryUrl,
    required this.libraryVersion,
    required this.pattern,
    required this.upgradeIntroduce,
    required this.strategyId,
    required this.deviceUpgradeId,
  });

  final String? firmwareUrl;
  final String? firmwareVersion;
   int? frequency;
  final String? libraryUrl;
  final String? libraryVersion;
   int? pattern;
  final String? upgradeIntroduce;
  final int? strategyId;
  final int? deviceUpgradeId;

  factory DeviceUpgradeResultModel.fromJson(Map<String, dynamic> json) {
    return DeviceUpgradeResultModel(
      firmwareUrl: json["firmwareUrl"],
      firmwareVersion: json["firmwareVersion"],
      frequency: json["frequency"],
      libraryUrl: json["libraryUrl"],
      libraryVersion: json["libraryVersion"],
      pattern: json["pattern"],
      upgradeIntroduce: json["upgradeIntroduce"],
      strategyId: json["strategyId"],
      deviceUpgradeId: json["deviceUpgradeId"],
    );
  }

  Map<String, dynamic> toJson() => {
        "firmwareUrl": firmwareUrl,
        "firmwareVersion": firmwareVersion,
        "frequency": frequency,
        "libraryUrl": libraryUrl,
        "libraryVersion": libraryVersion,
        "pattern": pattern,
        "upgradeIntroduce": upgradeIntroduce,
        "strategyId": strategyId,
        "deviceUpgradeId": deviceUpgradeId,
      };


  @override
  String toString() {
    return 'DeviceUpgradeResultModel{firmwareUrl: $firmwareUrl, firmwareVersion: $firmwareVersion, frequency: $frequency, libraryUrl: $libraryUrl, libraryVersion: $libraryVersion, pattern: $pattern, upgradeIntroduce: $upgradeIntroduce, strategyId: $strategyId}';
  }

  Map<String, dynamic> toTimeJson() => {
        "frequency": frequency,
        "pattern": pattern,
        "time": '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
      };
}
