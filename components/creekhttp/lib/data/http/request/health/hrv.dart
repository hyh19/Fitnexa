import '../../../../request/creek_base_request.dart';
import '../../url/url_path.dart';
import '../base_request.dart';

/// 上传健康Hrv数据
class HrvRequest extends BaseRequest {

  @override
  String get path => UrlPath.hrv;

  @override
  // TODO: implement isProtobuf
  bool get isProtobuf => true;

  @override
  // TODO: implement receiveTimeout
  int get receiveTimeout => 60;

}
/// 获取健康Hrv数据
class HrvGetRequest extends BaseRequest {

  @override
  String get path => UrlPath.hrv;

  @override
  // TODO: implement isProtobuf
  bool get isProtobuf => true;

  @override
  // TODO: implement httpMethod
  HttpMethod get httpMethod => HttpMethod.get;

  @override
  // TODO: implement receiveTimeout
  int get receiveTimeout => 60;

}
