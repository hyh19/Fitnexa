import '../../../../request/creek_base_request.dart';
import '../../url/url_path.dart';
import '../base_request.dart';

/// 上传健康心率数据
class HeartRateRequest extends BaseRequest {

  @override
  String get path => UrlPath.heartRate;

  @override
  // TODO: implement isProtobuf
  bool get isProtobuf => true;

  @override
  // TODO: implement receiveTimeout
  int get receiveTimeout => 60;

}
/// 获取健康心率数据
class HeartRateGetRequest extends BaseRequest {

  @override
  String get path => UrlPath.heartRate;

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
