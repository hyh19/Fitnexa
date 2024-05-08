import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// @Desc   上报运动记录
/// @Time   2023/10/19 15:27:58 星期四
/// @Author hl

class SportRecordRequest extends BaseRequest {

  @override
  HttpMethod get httpMethod => HttpMethod.post;

  @override
  String get path => UrlPath.sportRecordReport;
}
