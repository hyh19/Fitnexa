import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

class OpenAppRequest extends BaseRequest {

  @override
  String get path => UrlPath.appOpenTimesReport;

}