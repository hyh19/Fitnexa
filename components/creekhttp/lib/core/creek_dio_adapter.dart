import 'dart:convert';
import 'dart:io';

import 'package:creekbase/creek_base.dart';
import 'package:creekbase/http/crrek_storage_utils.dart';
import 'package:creekbase/spkey.dart';
import 'package:creekhttp/data/http/error/error_code.dart';
import 'package:creekhttp/data/http/url/url_path.dart';
import 'package:creektool/creek_tool.dart' as tool;
import 'package:dartx/dartx.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../request/creek_base_request.dart';
import 'creek_interceptor.dart';
import 'creek_net_adapter.dart';
import 'creek_net_error.dart';

///Dio适配器
class CreekDioAdapter extends CreekNetAdapter {
  final _dio = Dio();

  final _tokenDio = Dio();

  final _httpFormatter = HttpFormatter();
  final _tokenInterceptor = TokenInterceptor();

  @override
  Future<CreekNetResponse<T>> send<T>(CreekBaseRequest request) async {
    var contentType = Headers.jsonContentType;
    var responseType = ResponseType.json;
    if (request.isProtobuf) {
      contentType = 'application/x-protobuf';
      responseType = ResponseType.bytes;
    }
    CreekDeviceModel deviceModel = await CreekDeviceModel.deviceInfo;
    CreekVersionInfo versionInfo = await CreekVersionInfo.versionInfo;
    final headers = request.header;
    final userAgent = headers["userAgent"];
    userAgent["appName"] = versionInfo.appName;
    userAgent["appVersion"] = versionInfo.version;
    userAgent["brand"] = deviceModel.brand;
    userAgent["systemVersion"] = deviceModel.systemVersion;
    headers["userAgent"] = userAgent;
    var options = BaseOptions(
        connectTimeout: request.connectTimeout.seconds,
        receiveTimeout: request.receiveTimeout.seconds,
        headers: headers,
        contentType: contentType,
        responseType: responseType);
    Response? response;
    _dio.options = options;
    _tokenDio.options = options;

    ///设置代理抓包
    (_dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    ///认证打包
    // const String issuer = '/C=US/O=Amazon/CN=Amazon RSA 2048 M01';
    // _dio.httpClientAdapter = IOHttpClientAdapter(
    //   createHttpClient: () {
    //     // Don't trust any certificate just because their root cert is trusted.
    //     final HttpClient client = HttpClient(context: SecurityContext(withTrustedRoots: false));
    //     // You can test the intermediate / root cert here. We just ignore it.
    //     client.badCertificateCallback = (X509Certificate cert, String host, int port) {
    //
    //       print(" cert.pem=====${cert.pem}==\n=cert.issuer===${ cert.issuer}");
    //       return true; // Verify the certificate.
    //     };
    //     return client;
    //   },
    //   validateCertificate: (X509Certificate? cert,String host,int port) {
    //     // Check that the cert fingerprint matches the one we expect.
    //     // We definitely require _some_ certificate.
    //     if (cert == null) {
    //       print(" cert.issuer========");
    //       return false;
    //     }
    //     var domain = CreekStorageUtils.getString(SPUtilKey.domainUrl);
    //     if (domain == null || domain.isEmpty) {
    //       domain = UrlPath.baseURL;
    //     }
    //     print(" cert.domain===$domain");
    //     print(" cert.host===$host");
    //     print(" cert.port===$port");
    //     if(host.isNotEmpty && ( domain.contains(host) || domain.startsWith(host) || host ==domain )){
    //       print(" cert.issuer===${ cert.issuer}");
    //       print(" cert.sha1===${ cert.sha1}");
    //       print(" cert.subject===${ cert.subject}");
    //       print(" cert.der===${ cert.der}");
    //       return issuer==cert.issuer;
    //     }
    //     return true;
    //   },
    // );

    if (!_dio.interceptors.contains(_httpFormatter)) {
      _dio.interceptors.add(_httpFormatter);
    }

    if (!_tokenDio.interceptors.contains(_httpFormatter)) {
      _tokenDio.interceptors.add(_httpFormatter);
    }

    if (!_dio.interceptors.contains(_tokenInterceptor)) {
      _dio.interceptors.add(_tokenInterceptor);
    }

    var dio = _dio;
    if (request.path == UrlPath.getToken ||
        request.path == UrlPath.refreshToken) {
      dio = _tokenDio;
    }

    DioException? error;
    try {
      switch (request.httpMethod) {
        case HttpMethod.get:
          if (request.isProtobuf == true) {
            response = await dio.get(request.url, data: request.params);
          } else {
            response =
                await dio.get(request.url, queryParameters: request.params);
          }
          break;
        case HttpMethod.post:
          response = await dio.post(request.url, data: request.params ?? {});
          break;
        case HttpMethod.delete:
          response = await dio.delete(request.url, data: request.params);
          break;
        case HttpMethod.put:
          response = await dio.put(request.url, data: request.params);
          break;
        case HttpMethod.upload:
          response = await dio.post(request.url,
              data: request.params ?? {},
              onSendProgress: request.onSendProgress);
          break;
        case HttpMethod.download:
          if (request.savePath.isNotNullOrEmpty) {
            response = await dio.download(request.url, request.savePath,
                queryParameters: request.params,
                onReceiveProgress: request.onReceiveProgress);
          }
          break;
      }
    } on DioException catch (e) {
      tool.CreekLog.info(
          'send_DioException请求服务异常：${e?.toString()}----${request.path}');
      error = e;
    }
    if (error != null) {
      ///error
      var code = error.response?.data['code'];
      if ((code == null || code == '') &&
          error.type == DioErrorType.connectionTimeout) {
        tool.CreekLog.info('send_DioException 连接超时：connectionTimeout');
        code = ErrorCode.connectionTimeoutCode;
      } else if ((code == null || code == '') &&
          error.type == DioErrorType.receiveTimeout) {
        tool.CreekLog.info('send_DioException 接收超时：receiveTimeout');
        code = ErrorCode.receiveTimeout;
      }

      throw CreekNetError(code ?? error.response?.statusCode,
          error.error ?? error.message, request);
    } else {
      return buildRes(response, request);
    }
  }

  ///构建HiNetResponse
  CreekNetResponse<T> buildRes<T>(
      Response? response, CreekBaseRequest request) {
    return CreekNetResponse(
        data: response?.data,
        request: request,
        code: response?.statusCode,
        message: response?.statusMessage);
  }
}
