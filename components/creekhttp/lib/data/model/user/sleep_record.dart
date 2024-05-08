/// @Desc   sleep_record
/// @Time   2023/10/19 15:56:54 星期四
/// @Author hl

class SleepRecordModel {
  SleepRecordModel({
    required this.macId,
    required this.duration,
    required this.getUpTime,
    required this.fallAsleepTime,
  });

  /// mac地址
  String? macId;

  /// 睡眠时长
  int? duration;

  /// 起床时间
  String? getUpTime;

  /// 入睡时间
  String? fallAsleepTime;

  Map<String, dynamic> toJson() => {
        "macId": macId,
        "duration": duration,
        "getUpTime": getUpTime,
        "fallAsleepTime": fallAsleepTime,
      };
}
