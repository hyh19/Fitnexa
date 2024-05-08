import 'dart:async';
import 'dart:convert';

import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/http/dbcrypt.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/core/creek_net_error.dart';
import 'package:creekhttp/creek_http.dart';
import 'package:creekhttp/data/http/dao/user/user_dao.dart';
import 'package:creekhttp/data/http/error/error_code.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:logger/logger.dart';

import '../data/model/user/token.dart';
import 'creek_log.dart';

typedef HttpLoggerFilter = bool Function();

/// 日志拦截器
class HttpFormatter extends Interceptor {
  // Logger object to pretty print the HTTP Request
  final bool _includeRequest,
      _includeRequestHeaders,
      _includeRequestQueryParams,
      _includeRequestBody,
      _includeResponse,
      _includeResponseHeaders,
      _includeResponseBody;

  /// Optionally add a filter that will log if the function returns true
  final HttpLoggerFilter? _httpLoggerFilter;

  /// Optionally can add custom [LogPrinter]
  HttpFormatter(
      {bool includeRequest = true,
      bool includeRequestHeaders = true,
      bool includeRequestQueryParams = true,
      bool includeRequestBody = true,
      bool includeResponse = true,
      bool includeResponseHeaders = true,
      bool includeResponseBody = true,
      HttpLoggerFilter? httpLoggerFilter})
      : _includeRequest = includeRequest,
        _includeRequestHeaders = includeRequestHeaders,
        _includeRequestQueryParams = includeRequestQueryParams,
        _includeRequestBody = includeRequestBody,
        _includeResponse = includeResponse,
        _includeResponseHeaders = includeResponseHeaders,
        _includeResponseBody = includeResponseBody,
        _httpLoggerFilter = httpLoggerFilter;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra = <String, dynamic>{
      'start_time': DateTime.now().millisecondsSinceEpoch
    };
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (_httpLoggerFilter == null || _httpLoggerFilter!()) {
      final message = _prepareLog(response.requestOptions, response);
      if (message != '') {
        CreekHttpLog.d(message);
      }
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (_httpLoggerFilter == null || _httpLoggerFilter!()) {
      final message = _prepareLog(err.requestOptions, err.response);
      if (message != '') {
        CreekHttpLog.e(message);
      }
    }
    return super.onError(err, handler);
  }

  /// Whether to pretty print a JSON or return as regular String
  String _getBody(dynamic data, String? contentType) {
    if (contentType != null &&
        contentType.toLowerCase().contains('application/json')) {
      const encoder = JsonEncoder.withIndent('  ');
      // Since the JSON could be a Map or List
      dynamic jsonBody;
      if (data is String) {
        jsonBody = jsonDecode(data);
      } else {
        jsonBody = data;
      }
      return encoder.convert(jsonDecode(jsonEncode(jsonBody)));
    } else {
      return data.toString();
    }
  }

  String _getQueryParams(Map<String, dynamic>? queryParams) {
    var result = '';

    if (queryParams != null && queryParams.isNotEmpty) {
      result += '===== Query Parameters =====';
      // Temporarily save the query params as string concatenation to be joined
      final params = <String>[];
      for (final entry in queryParams.entries) {
        params.add('${entry.key} : ${entry.value.toString()}');
      }
      result += '\n${params.join('\n')}';
    }
    return result;
  }

  /// Extracts the headers and body (if any) from the request and response
  String _prepareLog(RequestOptions? requestOptions, Response? response) {
    var requestString = '', responseString = '';

    if (_includeRequest) {
      requestString = '⤴ REQUEST ⤴\n\n';

      requestString +=
          '${requestOptions?.method ?? ''} ${requestOptions?.path ?? ''}\n';

      if (_includeRequestHeaders) {
        for (final header in (requestOptions?.headers ?? {}).entries) {
          requestString += '${header.key}: ${header.value}\n';
        }
      }

      if (_includeRequestQueryParams &&
          requestOptions?.queryParameters != null &&
          requestOptions!.queryParameters.isNotEmpty) {
        requestString += '\n${_getQueryParams(requestOptions.queryParameters)}';
      }

      if (_includeRequestBody && requestOptions?.data != null) {
        requestString +=
            '\n${_getBody(requestOptions?.data, requestOptions?.contentType)}\n';
      }

      requestString += '\n';
    }

    if (_includeResponse && response != null) {
      responseString =
          '⤵ RESPONSE [${response.statusCode}/${response.statusMessage}] '
          '${requestOptions?.extra['start_time'] != null ? '[Time elapsed: ${DateTime.now().millisecondsSinceEpoch - requestOptions?.extra['start_time']} ms]' : ''}'
          '⤵\n\n';

      if (_includeResponseHeaders) {
        for (final header in response.headers.map.entries) {
          responseString += '${header.key}: ${header.value}\n';
        }
      }

      if (_includeResponseBody && response.data != null) {
        if (response.data is List<int>) {
          List<int> bufData = response.data as List<int>;
          if (bufData.length > 1) {
            int bufCode = bufData.sublist(1, 2).first;
            if (bufCode != 200) {
              responseString +=
                  '\n${_getBody("错误码code:$bufCode,错误内容:${utf8.decode(bufData.sublist(2, bufData.length))}", response.headers.value('content-type'))}';
            } else {
              responseString +=
                  '\n${_getBody("code=$bufCode", response.headers.value('content-type'))}';
            }
          }
        } else {
          responseString +=
              '\n${_getBody(response.data, response.headers.value('content-type'))}';
        }
      }
    }

    return requestString + responseString;
  }
}

/// Token拦截器
class TokenInterceptor extends QueuedInterceptor {
  Timer? timer;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path.endsWith(UrlPath.login) ||
        options.path.endsWith(UrlPath.register) ||
        options.path.contains('https://16.162.234.234:9200')) {
      CreekHttpLog.d('请求登陆、注册,日志上报跳过token判断');
      super.onRequest(options, handler);
    } else {
      if (options.path.endsWith(UrlPath.getToken) ||
          options.path.endsWith(UrlPath.refreshToken)) {
        if (options.path.endsWith(UrlPath.getToken)) {
          CreekHttpLog.d('正在获取Token');
          CreekHttpLog.printlocal('正在获取Token');
        } else {
          CreekHttpLog.d('正在刷新Token');
          CreekHttpLog.printlocal('正在刷新Token');
        }
        super.onRequest(options, handler);
      } else {
        CreekHttpLog.d("request_url_options.path__${options.path}");
        await checkRequestToken();
        if (options.headers.keys.contains('Authorization')) {
          final token = CreekStorageUtils.getString(SPUtilKey.accessToken);
          options.headers['Authorization'] = token;
          handler.next(options);
        } else {
          super.onRequest(options, handler);
        }
      }
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      final code = response.data['code'];
      final message = response.data['message'];
      final isLogin = CreekStorageUtils.getBool(SPUtilKey.isLogin) ?? false;
      if (isLogin) {
        if (code == ErrorCode.tokenInvalid || code == ErrorCode.accountKicked) {
          await CreekStorageUtils.remove(SPUtilKey.isLogin);
          await CreekStorageUtils.remove(SPUtilKey.accessToken);
          await CreekStorageUtils.remove(SPUtilKey.domainUrl);
          await CreekStorageUtils.remove(SPUtilKey.tokenExp);
          await CreekStorageUtils.remove(SPUtilKey.refreshToken);
          CreekHttpLog.w('退出登陆:state:$isLogin,errorInterceptor');
          CreekHttp().errorInterceptor?.call(ErrorType.logout);
          handler.reject(DioException(
              requestOptions: response.requestOptions,
              response: response,
              error: message));
        } else if (code == ErrorCode.tokenExpired) {
          final refreshToken =
              CreekStorageUtils.getString(SPUtilKey.refreshToken);
          if (refreshToken != null) {
            await UserDao.refreshToken(refreshToken);
            if (response.requestOptions.headers.keys
                .contains('Authorization')) {
              final token = CreekStorageUtils.getString(SPUtilKey.accessToken);
              response.requestOptions.headers['Authorization'] = token;
              final result = await Dio().fetch(response.requestOptions);
              handler.resolve(result);
            } else {
              super.onResponse(response, handler);
            }
          } else {
            CreekHttpLog.w('token过期,refreshToken为空,退出登录');
            await CreekStorageUtils.remove(SPUtilKey.isLogin);
            await CreekStorageUtils.remove(SPUtilKey.accessToken);
            await CreekStorageUtils.remove(SPUtilKey.domainUrl);
            await CreekStorageUtils.remove(SPUtilKey.tokenExp);
            await CreekStorageUtils.remove(SPUtilKey.refreshToken);
            CreekHttp().errorInterceptor?.call(ErrorType.logout);
            handler.reject(DioException(
                requestOptions: response.requestOptions,
                response: response,
                error: message));
          }
        } else {
          super.onResponse(response, handler);
        }
      } else {
        if (code == ErrorCode.tokenInvalid ||
            code == ErrorCode.tokenExpired ||
            (code == ErrorCode.accountKicked)) {
          CreekHttpLog.w('请求接口Token失效——code:$code——获取token');
          await _getToken();
          if (response.requestOptions.headers.keys.contains('Authorization')) {
            final token = CreekStorageUtils.getString(SPUtilKey.accessToken);
            if (token != null && token != '') {
              response.requestOptions.headers['Authorization'] = token;
              final result = await Dio().fetch(response.requestOptions);
              handler.resolve(result);
            }
          } else {
            super.onResponse(response, handler);
          }
        } else {
          super.onResponse(response, handler);
        }
      }
    } catch (e) {
      CreekHttpLog.e(e.toString());
      super.onResponse(response, handler);
    }
  }
}

/// 校验请求前的Token
Future<TokenResultModel?> checkRequestToken() async {
  try {
    final token = CreekStorageUtils.getString(SPUtilKey.accessToken);
    final refreshToken = CreekStorageUtils.getString(SPUtilKey.refreshToken);
    TokenResultModel? model;
    final isLogin = CreekStorageUtils.getBool(SPUtilKey.isLogin) ?? false;
    if (isLogin) return null;
    if (token == null || token.isEmpty) {
      CreekHttpLog.w('校验请求前的Token——token不存在');
      CreekHttpLog.printlocal('校验请求前的Token——token不存在');
      model = await _getToken();
    } else {
      if (_tokenExpired()) {
        if (refreshToken == null || refreshToken.isEmpty) {
          CreekHttpLog.w('校验请求前的Token——token过期,refreshToken不存在——获取token');
          CreekHttpLog.printlocal(
              '校验请求前的Token——token过期,refreshToken不存在——获取token');
          model = await _getToken();
        } else {
          if (_refreshTokenExpired()) {
            CreekHttpLog.w('校验请求前的Token——token过期,__refreshToken过期——获取token');
            CreekHttpLog.printlocal(
                '校验请求前的Token——token过期,__refreshToken过期——获取token');
            model = await _getToken();
          } else {
            try {
              CreekHttpLog.w('校验请求前的Token——token过期,refreshToken未过期——刷新token');
              CreekHttpLog.printlocal(
                  '校验请求前的Token——token过期,refreshToken未过期——刷新token');
              model = await UserDao.refreshToken(refreshToken);
            } catch (e) {
              CreekHttpLog.e('刷新token异常——$e');
              if (e is CreekNetError) {
                if (e.code != ErrorCode.tokenCustomFilterCode) {
                  CreekHttpLog.w(
                      '校验请求前的Token——token过期,refreshToken未过期,刷新token异常——获取token');
                  CreekHttpLog.printlocal(
                      '校验请求前的Token——token过期,refreshToken未过期,刷新token异常——获取token');
                  model = await _getToken();
                } else {
                  CreekHttpLog.w(
                      '校验请求前的Token—s—token过期,refreshToken未过期,刷新token异常——过滤掉');
                  CreekHttpLog.printlocal(
                      '校验请求前的Token—s—token过期,refreshToken未过期,刷新token异常——过滤掉');
                }
              } else {
                CreekHttpLog.w(
                    '校验请求前的Token—_s__—token过期,refreshToken未过期,刷新token异常——获取token');
                CreekHttpLog.printlocal(
                    '校验请求前的Token—_s__—token过期,refreshToken未过期,刷新token异常——获取token');
                model = await _getToken();
              }
            }
          }
        }
      }
    }
    return model;
  } catch (e) {
    CreekHttpLog.e("_catch_${e.toString()}");
    return null;
  }
}

/// 校验请求后的Token
Future<TokenResultModel?> checkResponseToken() async {
  final token = CreekStorageUtils.getString(SPUtilKey.accessToken);
  final refreshToken = CreekStorageUtils.getString(SPUtilKey.refreshToken);
  TokenResultModel? model;
  if (token == null || token.isEmpty) {
    model = await _getToken();
  } else {
    if (refreshToken == null || refreshToken.isEmpty) {
      model = await _getToken();
    } else {
      try {
        model = await UserDao.refreshToken(refreshToken);
      } catch (e) {
        CreekHttpLog.d("过滤refreshToken：${e}");
        if (e is CreekNetError) {
          CreekHttpLog.d("过滤refreshToken CreekNetError_：${e.code}");
          if (e.code != ErrorCode.tokenCustomFilterCode) {
            model = await _getToken();
          } else {
            CreekHttpLog.d("过滤refreshToken：${e.code}");
          }
        } else {
          model = await _getToken();
        }
      }
    }
  }
  return model;
}

/// 获取Token
Future<TokenResultModel?> _getToken() async {
  String? customerCode =
      CreekStorageUtils.getString(SPUtilKey.getTokenCustomerCode);
  if (customerCode == 'CUBT') {
    return null;
  }
  String? millisecondsSinceEpoch =
      CreekStorageUtils.getString(SPUtilKey.refreshTokenLastTime);
  DateTime nowDateTime = DateTime.now();
  if (millisecondsSinceEpoch != null && millisecondsSinceEpoch.isNotEmpty) {
    DateTime lastTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(millisecondsSinceEpoch));
    if (nowDateTime.isAfter(lastTime)) {
      var differenceTime = nowDateTime.difference(lastTime);
      CreekHttpLog.d(
          "requestTokenLastTime:${lastTime.toString()}_nowDateTime:${nowDateTime.toString()}__differenceTime:${differenceTime.inSeconds}");
      CreekHttpLog.printlocal(
          "requestTokenLastTime:${lastTime.toString()}_nowDateTime:${nowDateTime.toString()}__differenceTime:${differenceTime.inSeconds}");

      ///如果是在5s内
      if (differenceTime.inSeconds < 5) {
        CreekHttpLog.d('onRequestTask_是在5s内,然后还在请求延时5s,直接抛异常回去');
        CreekHttpLog.printlocal('onRequestTask_是在5s内,然后还在请求延时5s,直接抛异常回去');
        throw CreekNetError(ErrorCode.tokenCustomRequestFilterCode, "", null);
      }
    }
  }
  CreekHttpLog.d('请求——Token');
  CreekHttpLog.printlocal('请求——Token');

  await CreekStorageUtils.saveString(SPUtilKey.refreshTokenLastTime,
      nowDateTime.millisecondsSinceEpoch.toString());
  String bcKey = CreekStorageUtils.getBool(SPUtilKey.releaseService) ?? false
      ? 'Creek)Ew&IzihGz9@pyb)qm'
      : 'Creek)Ew&IzihGz9@pyb)qm';
  final String hashedPassword = DBCrypt().hashpw(bcKey, DBCrypt().gensalt());
  var mobileId = CreekStorageUtils.getString(SPUtilKey.mobileId);

  String? countryCode = CreekStorageUtils.getString(SPUtilKey.countryCode);
  if (mobileId == null || mobileId.isEmpty) {
    mobileId = await FlutterUdid.udid;
    await CreekStorageUtils.saveString(SPUtilKey.mobileId, mobileId);
  }
  //
  if (countryCode == null || countryCode.isEmpty) {
    CreekHttpLog.w("countryCode == null || countryCode.isEmpty");
    CreekHttpLog.printlocal("countryCode == null || countryCode.isEmpty");
    countryCode = CreekStorageUtils.getString(SPUtilKey.countryCodeLocal);
    CreekHttpLog.w("countryCodeLocal ==$countryCode");
    CreekHttpLog.printlocal("countryCodeLocal ==$countryCode");
  }
  final params = TokenRequestModel(
      countryCode: countryCode,
      key: hashedPassword,
      mobileId: mobileId,
      customerCode: customerCode);
  final result = await UserDao.getToken(params);
  return result;
}

/// 判断Token是否过期
bool _tokenExpired() {
  try {
    final tokenExp = CreekStorageUtils.getInt(SPUtilKey.tokenExp) ?? 0;
    final expTime = DateTime.fromMillisecondsSinceEpoch(tokenExp);
    final now = DateTime.now() + 10.minutes;
    return now.isAfter(expTime);
  } catch (e) {
    return true;
  }
}

bool _refreshTokenExpired() {
  try {
    final expTime = DateTime.fromMillisecondsSinceEpoch(
        CreekStorageUtils.getInt(SPUtilKey.refreshTokenExp) ?? 0);
    final now = DateTime.now() + 10.minutes;
    return now.isAfter(expTime);
  } catch (e) {
    return true;
  }
}

int iatTime(String token) {
  final jwt = JWT.decode(token);
  final iat = jwt.payload['iat'] as int;
  return iat;
}

int tokenExp(String token) {
  final jwt = JWT.decode(token);
  final iat = jwt.payload['iat'] as int;
  final exp = jwt.payload['exp'] as int;
  return (DateTime.now() + (exp - iat).seconds).millisecondsSinceEpoch;
}
