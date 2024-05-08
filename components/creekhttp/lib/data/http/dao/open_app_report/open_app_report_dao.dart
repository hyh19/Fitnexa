import 'package:creekhttp/data/http/dao/base_dao.dart';
import 'package:creekhttp/data/http/request/app_report/open_app_reporting.dart';

class OpenAppReportDao {
  OpenAppReportDao._();

  /// 上传文件
  static Future<void> openAppReport( ) async {
    final request = OpenAppRequest();
    final result = await BaseDao.send(request);
    return result;
  }
}