import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 获取反馈未读数量接口
class GetFeedbackCountRequest extends BaseRequest {
  @override
  HttpMethod get httpMethod => HttpMethod.get;

  @override
  String get path => UrlPath.getFeedbackCount;
}
