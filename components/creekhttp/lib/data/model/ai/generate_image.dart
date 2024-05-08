/// 翻译文本
class GenerateImageRequestModel {
  GenerateImageRequestModel({
    required this.prompt,
    this.negative_prompt = '',
    required this.width,
    required this.height,
    required this.batch_size,
  });

  /// 正向提示词
  final String? prompt;

  /// 反向提示词
  final String? negative_prompt;

  /// 宽度
  final double? width;

  /// 高度
  final double? height;

  /// 图片数量
  final int? batch_size;

  Map<String, dynamic> toJson() => {
        "prompt": prompt,
        "negative_prompt": negative_prompt,
        "width": width,
        "height": height,
        "batch_size": batch_size,
      };
}
