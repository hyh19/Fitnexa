/// appName : ""
/// appVersion : ""
/// countryCode : ""
/// deviceUpgradeId : 0
/// failCode : 0
/// failInfo : ""
/// firmwareOldVersion : ""
/// macId : ""
/// phoneModel : ""
/// phoneSystem : ""
/// phoneSystemVersion : ""
/// state : ""
/// strategyId : 0
/// upgradeCount : 0
/// upgradeLogUrl : ""

class DeviceUpgradeReportedModel {
  DeviceUpgradeReportedModel({
    this.appName,
    this.appVersion,
    this.countryCode,
    this.deviceUpgradeId,
    this.failCode,
    this.failInfo,
    this.firmwareOldVersion,
    this.macId,
    this.phoneModel,
    this.phoneSystem,
    this.phoneSystemVersion,
    this.state,
    this.strategyId,
    this.againUpgrade,
    //this.upgradeCount,
    this.upgradeLogUrl,
  });

  DeviceUpgradeReportedModel.fromJson(dynamic json) {
    appName = json['appName'];
    appVersion = json['appVersion'];
    countryCode = json['countryCode'];
    deviceUpgradeId = json['deviceUpgradeId'];
    failCode = json['failCode'];
    failInfo = json['failInfo'];
    firmwareOldVersion = json['firmwareOldVersion'];
    macId = json['macId'];
    phoneModel = json['phoneModel'];
    phoneSystem = json['phoneSystem'];
    phoneSystemVersion = json['phoneSystemVersion'];
    state = json['state'];
    strategyId = json['strategyId'];
    //upgradeCount = json['upgradeCount'];
    upgradeLogUrl = json['upgradeLogUrl'];
    firmwareNewVersion = json['firmwareNewVersion'];
  }
  String? appName;
  String? appVersion;
  String? countryCode;
  num? deviceUpgradeId;
  num? failCode;
  String? failInfo;
  String? firmwareOldVersion;
  String? firmwareNewVersion;
  String? macId;
  String? phoneModel;
  String? phoneSystem;
  String? phoneSystemVersion;
  String? state;
  num? strategyId;
  num? againUpgrade;
 // num? upgradeCount;
  String? upgradeLogUrl;
  DeviceUpgradeReportedModel copyWith({
    String? appName,
    String? appVersion,
    String? countryCode,
    num? deviceUpgradeId,
    num? failCode,
    String? failInfo,
    String? firmwareOldVersion,
    String? macId,
    String? phoneModel,
    String? phoneSystem,
    String? phoneSystemVersion,
    String? state,
    num? strategyId,
    num? againUpgrade,
    num? upgradeCount,
    String? upgradeLogUrl,
  }) =>
      DeviceUpgradeReportedModel(
        appName: appName ?? this.appName,
        appVersion: appVersion ?? this.appVersion,
        countryCode: countryCode ?? this.countryCode,
        deviceUpgradeId: deviceUpgradeId ?? this.deviceUpgradeId,
        failCode: failCode ?? this.failCode,
        failInfo: failInfo ?? this.failInfo,
        firmwareOldVersion: firmwareOldVersion ?? this.firmwareOldVersion,
        macId: macId ?? this.macId,
        phoneModel: phoneModel ?? this.phoneModel,
        phoneSystem: phoneSystem ?? this.phoneSystem,
        phoneSystemVersion: phoneSystemVersion ?? this.phoneSystemVersion,
        state: state ?? this.state,
        againUpgrade: againUpgrade ?? this.againUpgrade,
        strategyId: strategyId ?? this.strategyId,
       // upgradeCount: upgradeCount ?? this.upgradeCount,
        upgradeLogUrl: upgradeLogUrl ?? this.upgradeLogUrl,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['appName'] = appName;
    map['appVersion'] = appVersion;
    map['countryCode'] = countryCode;
    map['againUpgrade'] = againUpgrade;

    if(failCode!=null){
      map['failCode'] = failCode;
    }
    if(failInfo!=null){
      map['failInfo'] = failInfo;
    }

    map['firmwareOldVersion'] = firmwareOldVersion;
    map['firmwareNewVersion'] = firmwareNewVersion;
    map['macId'] = macId;
    map['phoneModel'] = phoneModel;
    map['phoneSystem'] = phoneSystem;
    map['phoneSystemVersion'] = phoneSystemVersion;
    map['state'] = state;
    if(strategyId!=null){
      map['strategyId'] = strategyId;
    }
    // if(upgradeCount!=null){
    //   map['upgradeCount'] = upgradeCount;
    // }

    if(upgradeLogUrl!=null){
      map['upgradeLogUrl'] = upgradeLogUrl;
    }
    if(deviceUpgradeId!=null){
      map['deviceUpgradeId'] = deviceUpgradeId;
    }
    return map;
  }

  @override
  String toString() {
    return 'DeviceUpgradeReportedModel{appName: $appName, appVersion: $appVersion, countryCode: $countryCode, deviceUpgradeId: $deviceUpgradeId, failCode: $failCode, failInfo: $failInfo, firmwareOldVersion: $firmwareOldVersion, firmwareNewVersion: $firmwareNewVersion, macId: $macId, phoneModel: $phoneModel, phoneSystem: $phoneSystem, phoneSystemVersion: $phoneSystemVersion, state: $state, strategyId: $strategyId, againUpgrade: $againUpgrade, upgradeLogUrl: $upgradeLogUrl}';
  }
}
