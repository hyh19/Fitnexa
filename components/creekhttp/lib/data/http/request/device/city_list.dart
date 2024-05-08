import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取城市分页接口
class CityListRequest extends BaseRequest {

  @override
  String get path => UrlPath.getCityList;

}