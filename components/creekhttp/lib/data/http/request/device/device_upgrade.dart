import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/data/http/url/url_path.dart';

/// 获取设备升级包接口
class DeviceUpgradeRequest extends BaseRequest {

  @override
  String get path => UrlPath.checkDeviceUpgrade;

}