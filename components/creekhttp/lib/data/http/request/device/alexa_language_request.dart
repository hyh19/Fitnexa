
import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

class AlexaLanguageRequest extends BaseRequest {
  @override
  HttpMethod get httpMethod => HttpMethod.post;

  
  @override
  String get path => UrlPath.alexaLanguageSelect;

}