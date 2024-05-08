import 'dart:convert';

import 'package:creekhttp/data/model/user/all_medal.dart';
import 'package:creekhttp/data/model/user/medal_enum.dart';
import 'package:creekhttp/data/model/user/record_medal.dart';

/// 我的奖章
class MedalModel {
  MedalModel({
    this.medalId,
    this.title,
    this.description,
    this.targetType,
    this.motionType,
    this.targetUnit,
    this.icon,
    this.noAchievementIcon,
    this.currentValue,
    this.defaultRequire,
    this.progress,
    this.lastUpdateTime,
    this.medalNum,
    this.isNew,
  });

  final String? medalId;

  /// 奖章名称
  final Map<String, dynamic>? title;

  /// 奖章描述
  final Map<String, dynamic>? description;

  /// 运动类型 1.步数 2.站立小时 3.运动距离 4.热量消耗 5.锻炼时长 6.运动
  final MedalMotionType? motionType;

  /// 达标类型 1.单日 2.累计 3.一周全勤
  final MedalTargetType? targetType;

  /// 达标单位 1.值 2.天
  final MedalTargetUnit? targetUnit;

  /// 完成图标
  final String? icon;

  /// 未完成图标
  final String? noAchievementIcon;

  /// 当前值
  final int? currentValue;

  /// 获得奖章默认要求
  final int? defaultRequire;

  /// 进度
  final double? progress;

  /// 最后一次更新时间
  final int? lastUpdateTime;

  /// 奖章个数
  final int? medalNum;

  /// 归类列表
  List<MedalModel>? classifyList;
  /// 新获得奖章
  bool? isNew;
  static MedalModel? fromModel(
      AllMedalModel? allMedalModel, RecordMedalModel? recordMedalModel) {
    if (allMedalModel == null) return null;
    final historyValue = recordMedalModel?.historyValue ?? 0;
    final todayValue = recordMedalModel?.todayValue ?? 0;
    final currentValue = historyValue + todayValue;
    final defaultRequire = allMedalModel.defaultRequire ?? 0;
    double progress = 0;
    if (currentValue != 0 && defaultRequire != 0) {
      progress = currentValue / defaultRequire;
    }
    var medalNum = recordMedalModel?.medalNum ?? 0;
    var lastUpdateTime = recordMedalModel?.lastUpdateTime;
    if (progress >= 1) {
      if (allMedalModel.repetition == 1) {
        medalNum += 1;
      } else {
        medalNum = 1;
      }
      progress = 0;
      if (historyValue < defaultRequire) {
        lastUpdateTime = DateTime.now().millisecondsSinceEpoch;
      }
    }

    return MedalModel(
        medalId: allMedalModel.medalId,
        title: allMedalModel.title == null
            ? null
            : jsonDecode(allMedalModel.title!),
        description: allMedalModel.description == null
            ? null
            : jsonDecode(allMedalModel.description!),
        targetType: allMedalModel.targetType,
        motionType: allMedalModel.motionType,
        targetUnit: allMedalModel.targetUnit,
        icon: allMedalModel.icon,
        noAchievementIcon: allMedalModel.noAchievementIcon,
        currentValue: currentValue,
        defaultRequire: defaultRequire,
        progress: progress,
        lastUpdateTime: lastUpdateTime,
        isNew: recordMedalModel?.isNew,
        medalNum: medalNum);
  }

  @override
  String toString() {
    return 'MedalModel{medalId: $medalId, '
        '\ntitle: $title, '
        '\ndefaultRequire: $defaultRequire, '
        '\nprogress: $progress, '
        '\nlastUpdateTime: $lastUpdateTime, '
        '\nmedalNum: $medalNum, '
        '\nmotionType: $motionType, '
        '\ntargetType: $targetType, '
        '\ntargetUnit: $targetUnit, '
        '\nicon: $icon, '
        '\ndescription: $description, '
        '\nnoAchievementIcon: $noAchievementIcon, '
        '\ncurrentValue: $currentValue, '
        '\isNew: $isNew, '
        '\nclassifyList: $classifyList}';
  }
}
