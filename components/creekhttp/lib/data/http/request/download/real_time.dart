import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 获取实时星历接口
class RealTimeRequest extends BaseRequest {
  @override
  HttpMethod get httpMethod => HttpMethod.download;
  @override
  int get connectTimeout => 30;
  @override
  int get receiveTimeout => 30;
  @override
  String get path => UrlPath.realTime;
}
