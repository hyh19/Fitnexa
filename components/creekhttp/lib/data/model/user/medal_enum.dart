/// 运动类型 1.步数 2.站立小时 3.运动距离 4.热量消耗 5.锻炼时长 6.运动
enum MedalMotionType {
  /// 步数
  step(1),

  /// 站立小时
  stand(2),

  /// 距离
  distance(3),

  /// 卡路里
  calories(4),

  /// 锻炼时长
  exercise(5),

  /// 运动
  sport(6);

  const MedalMotionType(this.value);

  final int value;
}

/// 达标类型 1.单日 2.累计 3.一周全勤
enum MedalTargetType {
  /// 单日
  today(1),

  /// 累计
  all(2),

  /// 一周全勤
  week(3);

  const MedalTargetType(this.value);

  final int value;
}

/// 达标单位 1.数值 2.天数
enum MedalTargetUnit {
  /// 数值
  num(1),

  /// 天数
  day(2);

  const MedalTargetUnit(this.value);

  final int value;
}
