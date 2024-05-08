import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 忘记密码接口
class PasswordForgetRequest extends BaseRequest {
  @override
  bool get needLogin => true;

  @override
  String get path => UrlPath.passwordForget;

}