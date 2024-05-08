 import 'package:creekhttp/data/model/upload/upload.dart';
import 'package:dio/dio.dart';

import '../../request/upload/upload.dart';
import '../base_dao.dart';

class UploadDao {
  UploadDao._();

  /// 上传文件
  static Future<UploadResultModel> upload(
      {required String filePath, ProgressCallback? onSendProgress}) async {
    final request = UploadRequest();
    final file = await MultipartFile.fromFile(filePath);
    request.params = FormData.fromMap({"file": file});
    request.onSendProgress = onSendProgress;
    final result = await BaseDao.send(request);
    final data = UploadResultModel.fromJson(result);
    return data;
  }
}
