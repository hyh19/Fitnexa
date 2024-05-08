import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取Token接口
class GetTokenRequest extends BaseRequest {
  @override
  bool get needLogin => false;

  @override
  String get path => UrlPath.getToken;

  @override
  bool get useHttps => CreekStorageUtils.getBool(SPUtilKey.releaseService)??false;


  @override
  String get authority =>UrlPath.baseURL;
}