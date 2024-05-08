import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 保存用户信息接口
class PutUserInfoRequest extends BaseRequest {
  @override
  bool get needLogin => true;

  @override
  HttpMethod get httpMethod => HttpMethod.put;

  @override
  String get path => UrlPath.putUserInfo;
}
