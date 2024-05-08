import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
/// 获取7天天气接口
class WeatherForecastDailyRequest extends BaseRequest {

  @override
  String get path => UrlPath.forecastDailyWeather;

}