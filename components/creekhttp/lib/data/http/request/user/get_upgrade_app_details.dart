import '../../../../request/creek_base_request.dart';
import '../../url/url_path.dart';
import '../base_request.dart';
/// 获取app升级内容详情

class GetUpgradeAppDetails extends BaseRequest {
  @override
  HttpMethod get httpMethod => HttpMethod.post;

  @override
  String get path => UrlPath.appUpgradeDetails;
}
