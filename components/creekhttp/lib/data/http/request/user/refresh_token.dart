import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 刷新Token接口
class RefreshTokenRequest extends BaseRequest {
  @override
  bool get needLogin => false;

  @override
  String get path => UrlPath.refreshToken;

}