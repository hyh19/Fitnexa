import 'dart:convert';

import '../request/creek_base_request.dart';


///网络请求抽象类
abstract class CreekNetAdapter {
  Future<CreekNetResponse<T>> send<T>(CreekBaseRequest request);
}

/// 统一网络层返回格式
class CreekNetResponse<T> {
  CreekNetResponse({
    this.data,
    this.request,
    this.code,
    this.message
  });

  T? data;

  CreekBaseRequest? request;

  int? code;

  String? message;

  @override
  String toString() {
    if (data is Map) {
      return json.encode(data);
    }
    return data.toString();
  }
}
