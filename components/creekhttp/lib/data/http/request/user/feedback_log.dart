import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 问题反馈添加日志接口
class FeedbackLogRequest extends BaseRequest {
  @override
  HttpMethod get httpMethod => HttpMethod.post;

  @override
  String get path => UrlPath.feedbackAddLog;
}
