import 'package:creekhttp/data/http/request/download/download.dart';
import 'package:creekhttp/data/http/request/download/ofline_real_time.dart';
import 'package:dio/dio.dart';

import '../../request/download/real_time.dart';
import '../base_dao.dart';

class DownloadDao {
  DownloadDao._();

  /// 获取实时星历
  static Future realTime(
      String savePath, ProgressCallback? onReceiveProgress) async {
    final request = RealTimeRequest();
    request.savePath = savePath;
    request.onReceiveProgress = onReceiveProgress;
    final result = await BaseDao.send(request);
    return result;
  }


  /// 获取离线星历
  static Future offlineRealTime(
      String savePath, ProgressCallback? onReceiveProgress) async {
    final request = OffLineRealTimeRequest();
    request.savePath = savePath;
    request.onReceiveProgress = onReceiveProgress;
    final result = await BaseDao.send(request);
    return result;
  }

  /// 下载文件
  static Future download(
      String urlPath, String savePath, ProgressCallback? onReceiveProgress) async {
    final request = DownloadRequest(urlPath: urlPath);
    request.savePath = savePath;
    request.onReceiveProgress = onReceiveProgress;
    final result = await BaseDao.send(request);
    return result;
  }
}
