import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取时区分页接口
class TimezoneListRequest extends BaseRequest {

  @override
  String get path => UrlPath.getTimezoneList;

}