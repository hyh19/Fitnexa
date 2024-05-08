import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取48小时天气接口
class WeatherForeCastHourlyRequest extends BaseRequest {

  @override
  String get path => UrlPath.forecastHourlyWeather;

}
