import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 上传绑定设备信息
class UpLoadBindDataRequest extends BaseRequest {
  @override
  String get path => UrlPath.upLoadBindData;
}
