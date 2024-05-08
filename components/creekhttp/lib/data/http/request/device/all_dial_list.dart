import '../../url/url_path.dart';
import '../base_request.dart';

/// 获取所有表盘接口
class AllDialListRequest extends BaseRequest {

  @override
  String get path => UrlPath.allDialList;

}
