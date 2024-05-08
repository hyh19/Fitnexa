/// 翻译文本
class TranslateTextRequestModel {
  TranslateTextRequestModel({
    required this.sourceLang,
    required this.sourceText,
    this.targetLang = 'en',
  });

  /// 源语言代码
  final String? sourceLang;

  /// 文本
  final String? sourceText;

  /// 目标语言代码
  final String? targetLang;

  Map<String, dynamic> toJson() => {
        "sourceLang": sourceLang,
        "sourceText": sourceText,
        "targetLang": targetLang,
      };
}
