import 'package:creekhttp/request/creek_base_request.dart';

///网络异常统一格式类
class CreekNetError implements Exception {
  int? code;
  dynamic message;
  CreekBaseRequest? request;

  CreekNetError(this.code, this.message, this.request);

  @override
  String toString() {
    return 'CreekNetError{code: $code, message: $message, request: ${request?.path}';
  }
}
