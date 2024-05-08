import 'package:isar/isar.dart';

part 'record_medal.g.dart';

/// 奖章记录
@collection
class RecordMedalModel {
  RecordMedalModel({
    this.userId,
    this.historyValue,
    this.todayValue,
    this.medalId,
    this.lastUpdateTime,
    this.medalNum,
    this.syncTime,
    this.isNew,
  });

  Id? id;

  /// 用户ID
  @Index()
  String? userId;

  /// 奖章ID
  @Index(composite: [CompositeIndex('userId')], unique: true, replace: true)
  final String? medalId;

  /// 历史值（今天以前）
  int? historyValue;

  /// 今日值
  int? todayValue;

  /// 最后一次更新时间
  int? lastUpdateTime;

  /// 奖章个数
  int? medalNum;

  /// 同步时间（今天达标记录今天，未达标记录昨天）
  int? syncTime;

  /// 新获得奖章
  bool? isNew;

  factory RecordMedalModel.fromJson(Map<String, dynamic> json) {
    return RecordMedalModel(
      medalId: json["medalId"].toString(),
      historyValue: json["historyValue"],
      lastUpdateTime: json["lastUpdateTime"],
      medalNum: json["medalNum"],
      syncTime: json["syncTime"],
    );
  }

  Map<String, dynamic> toJson() => {
        "medalId": medalId,
        "historyValue": historyValue,
        "lastUpdateTime": lastUpdateTime,
        "medalNum": medalNum,
        "syncTime": syncTime,
      };

  @override
  String toString() {
    return 'RecordMedalModel{id: $id, userId: $userId, medalId: $medalId, historyValue: $historyValue, todayValue: $todayValue, lastUpdateTime: $lastUpdateTime, medalNum: $medalNum, syncTime: $syncTime, isNew: $isNew}';
  }
}
