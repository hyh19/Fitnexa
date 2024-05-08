class AppLogRequestModel {
  AppLogRequestModel({
    this.appName,
    this.tag,
    this.code,
    this.info,
    this.time,
    this.appVersion,
    this.mac_id,
    this.firmware_id,
    this.firmware_version,
  });

  final String? appName;
  final String? tag;
  final int? code;
  final String? info;
  final String? time;
  final String? appVersion;
  final String? mac_id;
  final String? firmware_id;
  final String? firmware_version;

  factory AppLogRequestModel.fromJson(Map<String, dynamic> json){
    return AppLogRequestModel(
      appName: json["app_name"],
      appVersion: json["app_version"],
      mac_id: json["mac_id"],
      firmware_id: json["firmware_id"],
      firmware_version: json["firmware_version"],
      tag:  json["tag"],
      code: json["code"],
      info: json["info"],
      time: json["time"],
    );
  }

  Map<String, dynamic> toJson() => {
    "app_name": appName,
    "tag": tag,
    "code": code,
    "info": info,
    "time": time,
    "mac_id": mac_id,
    "firmware_id": firmware_id,
    "firmware_version": firmware_version,
    "app_version": appVersion,
  };

}
