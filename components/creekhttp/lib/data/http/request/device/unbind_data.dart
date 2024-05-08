import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 上传绑定设备信息
class UpLoadUnBindDataRequest extends BaseRequest {
  @override
  String get path => UrlPath.upLoadUnBindData;

  @override
  HttpMethod get httpMethod => HttpMethod.put;
}
