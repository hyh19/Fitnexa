import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 签收通知接口
class ConfirmNoticeRequest extends BaseRequest {

  @override
  HttpMethod get httpMethod => HttpMethod.put;

  @override
  String get path => UrlPath.confirmNotice;

}