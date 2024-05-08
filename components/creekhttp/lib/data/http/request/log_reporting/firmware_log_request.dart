import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

class FirmwareLogRequest extends BaseRequest {

  String? fromPath = UrlPath.firmwareLogReporting;

  @override
  String get path => UrlPath.firmwareLogReporting;

  @override
  String get authority => 'https://16.162.234.234:9200';

  @override
  String getDomainUrl() {
    return 'https://16.162.234.234:9200';
  }
  @override
  int get receiveTimeout => 30;

  @override
  int get connectTimeout => 30;
  @override
  Map<String, dynamic> get header {
    Map<String, dynamic> dic = {};
    if (needLogin) {
      dic["Authorization"] ='Basic ZWxhc3RpYzpMMkFEd3hWaVp1VG83NEdsV3FRMw==';
    }
    return dic;
  }

}