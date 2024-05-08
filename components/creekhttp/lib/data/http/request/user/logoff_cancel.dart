import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 取消注销接口
class LogoffCancelRequest extends BaseRequest {
  @override
  bool get needLogin => true;

  @override
  String get path => UrlPath.logoffCancel;

}