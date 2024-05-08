/// @Desc   sport_record
/// @Time   2023/10/19 15:59:39 星期四
/// @Author hl

class SportRecordModel {
  SportRecordModel({
    required this.macId,
    required this.sportType,
    required this.sportDuration,
    required this.startTime,
    required this.endTime,
  });

  /// mac地址
  String? macId;

  /// 运动类型
  String? sportType;

  /// 运动时长
  int? sportDuration;

  /// 运动开始时间
  String? startTime;

  /// 运动结束时间
  String? endTime;

  Map<String, dynamic> toJson() => {
        "macId": macId,
        "sportType": sportType,
        "sportDuration": sportDuration,
        "startTime": startTime,
        "endTime": endTime,
      };
}
