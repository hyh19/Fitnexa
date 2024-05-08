import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 上报奖章记录接口
class PostRecordMedalRequest extends BaseRequest {
  @override
  String get path => UrlPath.recordMedal;
}
