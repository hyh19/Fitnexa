import 'dart:io';

import 'package:creekhttp/creek_http.dart';
import 'package:creekhttp/data/http/error/error_code.dart';
import 'package:creekhttp/request/creek_base_request.dart';
import 'package:creektool/creek_tool.dart' as tool;

import '../../../core/creek_net_error.dart';
import '../request/base_request.dart';

class BaseDao {
  BaseDao._();

  static send(BaseRequest request) async {
    dynamic result;
    if (request.needLoading) {
      result = await CreekHttp().fire(request);
    } else {
      result = await CreekHttp().fire(request);
    }
    if (request.httpMethod == HttpMethod.download) {
      return result;
    } else {
      final code = result['code'];
      if (code == HttpStatus.ok) {
        return result['data'];
      } else {
        final message = result['message'];
        tool.CreekLog.info('请求服务异常：$result----${request.path}');
        if (code == ErrorCode.tokenInvalid || code == ErrorCode.accountKicked) {
          CreekHttp().errorInterceptor?.call(ErrorType.logout);
        } else {
          throw CreekNetError(code, message, request);
        }
      }
    }
  }

  static sendLog(BaseRequest request) async {
    dynamic result;
    if (request.needLoading) {
      result = await CreekHttp().logFire(request);
    } else {
      result = await CreekHttp().logFire(request);
    }

    try {
      print('result====${result}');
      // final code = result['status'];
      // if (code == HttpStatus.ok) {
      //   return result['data'];
      // } else {
      //   final message = result['message'];
      //   tool.CreekLog.info('请求服务异常：${result}');
      //   throw CreekNetError(code, message, request);
      // }
    } catch (e) {
      tool.CreekLog.info('请求服务异常 catch：$e');
    }
    return result;
  }

  static sendBuf(BaseRequest request) async {
    dynamic result;
    if (request.needLoading) {
      result = await CreekHttp().fire(request);
    } else {
      result = await CreekHttp().fire(request);
    }

    try {
      return result;
    } catch (e) {
      tool.CreekLog.info('请求服务异常 catch：$e');
    }
    return result;
  }
}
