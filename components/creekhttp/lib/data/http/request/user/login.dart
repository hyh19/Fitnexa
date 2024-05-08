import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 用户登录接口
class LoginRequest extends BaseRequest {
  @override
  bool get needLogin => false;

  @override
  String get path => UrlPath.login;

  @override
  bool get useHttps => CreekStorageUtils.getBool(SPUtilKey.releaseService)??false;


  @override
  String get authority =>UrlPath.baseURL;
  //String get authority =>CreekStorageUtils.getBool(SPUtilKey.releaseService)??false?UrlPath.releaseBaseURL:UrlPath.baseTestURLs;
}