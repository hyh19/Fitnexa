import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取通知接口
class GetNoticeRequest extends BaseRequest {

  @override
  String get path => UrlPath.getNotice;

}