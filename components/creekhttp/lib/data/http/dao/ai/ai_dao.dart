import 'dart:convert';
import 'dart:typed_data';

import '../../../../creek_http.dart';
import '../../../model/ai/generate_image.dart';
import '../../../model/ai/translate_text.dart';
import '../../request/ai/generate_image.dart';
import '../../request/ai/translate_text.dart';
import '../base_dao.dart';

/// Ai管理
class AiDao {
  AiDao._();

  /// 翻译文本
  static Future<String> translateText(TranslateTextRequestModel params) async {
    final request = TranslateTextRequest();
    request.params = params;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 生成图片
  static Future<List<Uint8List>> generateImage(
      GenerateImageRequestModel params) async {
    final request = GenerateImageRequest();
    request.params = params;
    final result = await CreekHttp().fire(request);
    List<String> images = result['images']?.cast<String>();
    final imageBytes = images.map((e) => base64.decode(e)).toList();
    return imageBytes;
  }
}
