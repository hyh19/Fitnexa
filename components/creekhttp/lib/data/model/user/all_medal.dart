import 'dart:convert';

import 'package:creekhttp/data/model/user/medal_enum.dart';
import 'package:isar/isar.dart';

part 'all_medal.g.dart';

/// 所有奖章
@collection
class AllMedalModel {
  AllMedalModel({
    required this.targetType,
    required this.motionType,
    required this.targetUnit,
    required this.repetition,
    required this.icon,
    required this.noAchievementIcon,
    required this.medalId,
    required this.defaultRequire,
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
  });

  Id? id;

  /// 奖章ID
  @Index(unique: true, replace: true)
  final String? medalId;

  /// 奖章名称
  final String? title;

  /// 奖章描述
  final String? description;

  /// 运动类型 1.步数 2.站立小时 3.运动距离 4.热量消耗 5.锻炼时长 6.运动
  @Enumerated(EnumType.name)
  final MedalMotionType? motionType;

  /// 达标类型 1.单日 2.累计 3.一周全勤
  @Enumerated(EnumType.name)
  final MedalTargetType? targetType;

  /// 达标单位 1.值 2.天
  @Enumerated(EnumType.name)
  final MedalTargetUnit? targetUnit;

  /// 重复获得
  final int? repetition;

  /// 完成图标
  final String? icon;

  /// 未完成图标
  final String? noAchievementIcon;

  /// 获得奖章默认要求
  final int? defaultRequire;

  /// 奖章开始时间
  final int? startTime;

  /// 奖章结束时间
  final int? endTime;

  factory AllMedalModel.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> title = json["title"];
    Map<String, dynamic> description = json["description"];
    return AllMedalModel(
      targetType: json['targetType'] != null
          ? MedalTargetType.values
              .firstWhere((element) => element.value == json['targetType'])
          : null,
      motionType: json['motionType'] != null
          ? MedalMotionType.values
              .firstWhere((element) => element.value == json['motionType'])
          : null,
      targetUnit: json['targetUnit'] != null
          ? MedalTargetUnit.values
              .firstWhere((element) => element.value == json['targetUnit'])
          : null,
      repetition: json["repetition"],
      icon: json["icon"],
      noAchievementIcon: json["noAchievementIcon"],
      medalId: json["id"].toString(),
      defaultRequire: json["defaultRequire"],
      title: jsonEncode(title),
      description: jsonEncode(description),
      startTime: json["startTime"],
      endTime: json["endTime"],
    );
  }
}
