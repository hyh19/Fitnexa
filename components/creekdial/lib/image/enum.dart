/// 图片压缩方式
enum ImageCompressionType {
  /// lz4压缩算法
  lz4(value: 4),

  /// 不压缩
  none(value: 0);

  final int value;

  const ImageCompressionType({required this.value});

  static ImageCompressionType getType(int value) =>
      ImageCompressionType.values.firstWhere((position) => position.value == value);
}

/// 图片格式
enum ImageFormatAppType {
  /// RGB565
  rgb565(value: 4),

  /// ARGB8888
  argb8888(value: 24);

  final int value;

  const ImageFormatAppType({required this.value});
}


