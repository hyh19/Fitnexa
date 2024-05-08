import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creektool/creek_tool.dart';

import '../../../request/creek_base_request.dart';
import '../url/url_path.dart';

/// 请求抽象类
abstract class BaseRequest extends CreekBaseRequest {
  @override
  String get authority {
    var domain = CreekStorageUtils.getString(SPUtilKey.domainUrl);
    if (domain == null || domain.isEmpty) {
      domain = UrlPath.baseURL;
    }
    return domain;
  }

  @override
  HttpMethod get httpMethod => HttpMethod.post;

  @override
  bool get useHttps => false;

  @override
  String get url => super.url;

  @override
  bool get needLogin => true;

  @override
  Map<String, dynamic> get header {
    Map<String, dynamic> dic = {};
    Map<String, dynamic> userAgent = {};
    dic["userAgent"] = userAgent;
    if (needLogin) {
      dic["Authorization"] = CreekStorageUtils.getString(SPUtilKey.accessToken);
    }
    return dic;
  }
}
