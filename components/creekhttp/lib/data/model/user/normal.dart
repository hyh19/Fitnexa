class NormalRequestModel {
  NormalRequestModel({
    required this.appName,
    this.firmwareId,
    this.firmwareVersion,
    this.updateTime,
    required this.langId,
    required this.phoneSystem,
    required this.appVersion,
  });

  final String? appName;
  final int? firmwareId;
  final String? firmwareVersion;
  final int? langId;
  final String? phoneSystem;
  final String? appVersion;
   String? updateTime;


  factory NormalRequestModel.fromJson(Map<String, dynamic> json){
    return NormalRequestModel(
      appName: json["appName"],
      firmwareId: json["firmwareId"],
      firmwareVersion: json["firmwareVersion"],
      langId: json["langId"],
      phoneSystem: json["phoneSystem"],
      appVersion: json["appVersion"],
      updateTime: json["updateTime"],

    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "appName": appName,
      "firmwareId": firmwareId,
      "firmwareVersion": firmwareVersion,
      "langId": langId,
      "phoneSystem": phoneSystem,
      "appVersion": appVersion,
    };
    if (updateTime != null) {
      map['updateTime'] = updateTime;
    }
    return map;
  }
}
