import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 获取奖章记录接口
class GetRecordMedalRequest extends BaseRequest {

  @override
  HttpMethod get httpMethod => HttpMethod.get;

  @override
  String get path => UrlPath.recordMedal;

}