import 'package:creekhttp/data/http/request/base_request.dart';
import 'package:creekhttp/request/creek_base_request.dart';

/// 通过URL下载接口
class DownloadRequest extends BaseRequest {
  DownloadRequest({required this.urlPath});

  final String urlPath;

  @override
  HttpMethod get httpMethod => HttpMethod.download;

  @override
  bool get needLogin => false;

  @override
  // TODO: implement receiveTimeout
  int get receiveTimeout => 1200; //10分钟测试
  @override
  String get path => '';

  @override
  String get url => urlPath;
}
