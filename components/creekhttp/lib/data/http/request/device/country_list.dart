import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取国家分页接口
class CountryListRequest extends BaseRequest {

  @override
  String get path => UrlPath.getCountryList;

}