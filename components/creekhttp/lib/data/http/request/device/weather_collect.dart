import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取当前天气接口
class WeatherCollectRequest extends BaseRequest {

  @override
  String get path => UrlPath.weatherCollect;

}