import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 注销用户接口
class LogoffRequest extends BaseRequest {
  @override
  bool get needLogin => true;

  @override
  String get path => UrlPath.logoff;

}