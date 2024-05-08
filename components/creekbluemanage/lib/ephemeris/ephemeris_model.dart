/// 星历模型
class CreekEphemerisModel {
  CreekEphemerisModel({
    required this.socName,
     this.startUtcTime,
     this.endUtcTime,
    required this.isVaild,
    required this.latitude,
    required this.latitudeDire,
    required this.longitude,
    required this.longitudeDire,
    required this.altitude,
    required this.fileSize,
    required this.filePath,
  });

  /// gps型号
  final String socName;

  /// 开始时间:(UTC 单位秒)
   int? startUtcTime;

  /// 结束时间:(UTC 单位秒)
   int? endUtcTime;

  /// 位置是否有效
  final bool isVaild;

  /// 纬度 放大100000倍
  final int latitude;

  /// 纬度方向 S南纬  N北纬
  final String latitudeDire;

  /// 经度 放大100000倍
  final int longitude;

  /// 经度方向 W西经 E东经
  final String longitudeDire;

  ///海拔，单位米
  final int altitude;

  /// 星历文件大小
  final int fileSize;

  /// 星历原文件地址
  final String filePath;

  factory CreekEphemerisModel.fromJson(Map<String, dynamic> json) {
    return CreekEphemerisModel(
      socName: json["socName"] ?? '',
      startUtcTime: json["startUtcTime"] ?? 0,
      endUtcTime: json["endUtcTime"] ?? 0,
      isVaild: json["isVaild"] ?? false,
      latitude: json["latitude"] ?? 0,
      latitudeDire: json["latitudeDire"] ?? '',
      longitude: json["longitude"] ?? 0,
      longitudeDire: json["longitudeDire"] ?? '',
      altitude: json["altitude"] ?? 0,
      fileSize: json["fileSize"] ?? 0,
      filePath: json["filePath"] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "soc_name": socName,
        "start_utc_time": startUtcTime,
        "end_utc_time": endUtcTime,
        "is_vaild": isVaild,
        "latitude": latitude,
        "latitude_dire": latitudeDire,
        "longitude": longitude,
        "longitude_dire": longitudeDire,
        "altitude": altitude,
        "file_size": fileSize,
        "filePath": filePath,
      };

  @override
  String toString() {
    return 'EphemerisModel{socName: $socName, startUtcTime: $startUtcTime, endUtcTime: $endUtcTime, isVaild: $isVaild, latitude: $latitude, latitudeDire: $latitudeDire, longitude: $longitude, longitudeDire: $longitudeDire, altitude: $altitude, fileSize: $fileSize, filePath: $filePath}';
  }
}
