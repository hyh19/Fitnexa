import '../../url/url_path.dart';
import '../base_request.dart';

/// 获取表盘列表接口
class DialListRequest extends BaseRequest {

  @override
  String get path => UrlPath.dialList;

}
