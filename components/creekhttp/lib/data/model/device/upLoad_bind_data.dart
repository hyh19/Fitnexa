/// appName : ""
/// countryCode : ""
/// firmwareId : 0
/// firmwareVersion : ""
/// macId : ""

class UpLoadBindRequestMode {
  UpLoadBindRequestMode({
    this.appName,
    this.countryCode,
    this.firmwareId,
    this.firmwareVersion,
    this.macId,
    this.snCode,
    required this.customerCode,
  });

  UpLoadBindRequestMode.fromJson(dynamic json) {
    appName = json['appName'];
    countryCode = json['countryCode'];
    firmwareId = json['firmwareId'];
    firmwareVersion = json['firmwareVersion'];
    macId = json['macId'];
    customerCode = json['customerCode'];
    snCode = json['snCode'];
  }

  String? appName;
  String? countryCode;
  num? firmwareId;
  String? firmwareVersion;
  String? macId;

  String? snCode;
  String? customerCode;

  UpLoadBindRequestMode copyWith({
    String? appName,
    String? countryCode,
    num? firmwareId,
    String? firmwareVersion,
    String? macId,
    String? snCode,
    String? customerCode,
  }) =>
      UpLoadBindRequestMode(
        appName: appName ?? this.appName,
        countryCode: countryCode ?? this.countryCode,
        firmwareId: firmwareId ?? this.firmwareId,
        firmwareVersion: firmwareVersion ?? this.firmwareVersion,
        macId: macId ?? this.macId,
        customerCode: customerCode ?? this.customerCode,
        snCode: snCode ?? this.snCode,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['appName'] = appName;
    map['countryCode'] = countryCode;
    map['firmwareId'] = firmwareId;
    map['firmwareVersion'] = firmwareVersion;
    map['macId'] = macId;
    map['snCode'] = snCode;
    map['customerCode'] = customerCode;
    return map;
  }
}
