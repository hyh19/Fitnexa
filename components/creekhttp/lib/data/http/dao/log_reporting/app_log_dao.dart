import 'package:creekhttp/data/http/dao/base_dao.dart';
import 'package:creekhttp/data/http/request/log_reporting/app_log_request.dart';
import 'package:creekhttp/data/http/request/log_reporting/firmware_log_request.dart';
import 'package:creekhttp/data/model/log_reporting/app_log_request_model.dart';
import 'package:creekhttp/data/model/log_reporting/app_log_result_model.dart';

class AppLogDao {
  AppLogDao._();

  /// 上传文件
  static Future<AppLogResultModel> appLogUpload(AppLogRequestModel requestModel) async {
    final request = AppLogRequest();
    request.params = requestModel.toJson();
    final result = await BaseDao.sendLog(request);
    final data = AppLogResultModel.fromJson(result);
    return data;
  }

  /// 固件日志上传
  static Future<AppLogResultModel> firmwareLogUpload(AppLogRequestModel requestModel) async {
    final request = FirmwareLogRequest();
    request.params = requestModel.toJson();
    final result = await BaseDao.sendLog(request);
    final data = AppLogResultModel.fromJson(result);
    return data;
  }

}