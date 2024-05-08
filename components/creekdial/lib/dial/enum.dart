/// 位置
enum PositionType {
  /// 默认
  none(value: 0),

  /// 上居左
  topLeft(value: 1),

  /// 上居中
  topCenter(value: 2),

  /// 上居右
  topRight(value: 3),

  /// 中居左
  centerLeft(value: 4),

  /// 居中
  center(value: 5),

  /// 中居右
  centerRight(value: 6),

  /// 下居左
  bottomLeft(value: 7),

  /// 下居中
  bottomCenter(value: 8),

  /// 下居右
  bottomRight(value: 9);

  final int value;

  const PositionType({required this.value});

  static PositionType getType(int value) =>
      PositionType.values.firstWhere((position) => position.value == value);
}
