/// @author  Jason
/// @date  2022/7/1
library CreekHttp;

import 'dart:io';

import 'package:creekhttp/core/creek_dio_adapter.dart';
import 'package:creekhttp/core/creek_net_adapter.dart';
import 'package:creekhttp/core/creek_net_error.dart';
import 'package:creektool/creek_tool.dart' as tool;

import 'request/creek_base_request.dart';

///1.支持网络库插拔设计，且不干扰业务层
///2.基于配置请求请求，简洁易用
///3.Adapter设计，扩展性强
///4.统一异常和返回处理
class CreekHttp {
  CreekHttp._();

  CreekErrorInterceptor? errorInterceptor;

  static final CreekHttp _instance = CreekHttp._();

  factory CreekHttp() => _instance;

  CreekDioAdapter adapter = CreekDioAdapter();

  Future fire(CreekBaseRequest request) async {
    CreekNetResponse? response;
    CreekNetError? error;
    try {
      response = await send(request);
    } on CreekNetError catch (e) {
      tool.CreekLog.info('send_请求服务异常：${e.toString()}----${request.path}');
      error = e;
      throw error;
    }
    var result = response.data;
    var statusCode = response.code;
    if (statusCode == HttpStatus.ok) {
      return result;
    } else {
      if (error == null) {
        error ??= CreekNetError(statusCode, "", request);
      } else {
        error.code = statusCode;
      }
      tool.CreekLog.info('send_请求服务error?.code：${error.toString()}----${request.path}');
      throw error;
    }
  }

  /// 日志上报专用
  Future logFire(CreekBaseRequest request) async {
    CreekNetResponse? response;
    CreekNetError? error;
    try {
      response = await send(request);
    } on CreekNetError catch (e) {
      tool.CreekLog.info('send_日志上报专用_请求服务异常：${e?.toString()}');
      error = e;
      throw error;
    }
    var result = response.data;
    var statusCode = response.code;
    return result;
  }

  Future<CreekNetResponse<T>> send<T>(CreekBaseRequest request) async {
    ///使用Dio发送请求

    var response = await adapter.send<T>(request);
    return response;
  }

  void setErrorInterceptor(CreekErrorInterceptor interceptor) {
    errorInterceptor = interceptor;
  }
}

///错误处理拦截器
typedef CreekErrorInterceptor = Function(ErrorType type);

enum ErrorType { logout }
