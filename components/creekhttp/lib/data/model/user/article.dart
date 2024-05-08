/// appName : ""
/// countryCode : ""
/// deviceModelCode : ""
/// firmwareId : 0
/// firmwareVersion : ""
/// langId : 0
/// phoneSystem : ""
/// phoneSystemVersion : ""

class ArticleRequestModel {
  ArticleRequestModel.fromJson(dynamic json) {
    appName = json['appName'];
    countryCode = json['countryCode'];
    // deviceModelCode = json['deviceModelCode'];
    firmwareId = json['firmwareId'];
    firmwareVersion = json['firmwareVersion'];
    langId = json['langId'];
    phoneSystem = json['phoneSystem'];
    appVersion = json['appVersion'];
  }
  String? appName;
  String? countryCode;
  // String? deviceModelCode;
  int? firmwareId;
  String? firmwareVersion;
  int? langId;
  String? phoneSystem;
  String? appVersion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['appName'] = appName;
    map['countryCode'] = countryCode;
    //   map['deviceModelCode'] = deviceModelCode;
    if (firmwareId != null) {
      map['firmwareId'] = firmwareId;
    }

    if (firmwareVersion != null) {
      map['firmwareVersion'] = firmwareVersion;
    }
    map['langId'] = langId;
    map['phoneSystem'] = phoneSystem;
    map['appVersion'] = appVersion;
    return map;
  }

  // ArticleRequestModel(
  //     this.appName, this.countryCode, this.deviceModelCode, this.firmwareId, this.firmwareVersion, this.langId, this.phoneSystem, this.phoneSystemVersion);

  ArticleRequestModel();
}
