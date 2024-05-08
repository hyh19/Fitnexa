import 'package:dio/dio.dart';

enum HttpMethod { get, post, delete, put, upload, download }

///基础请求
abstract class CreekBaseRequest {
  /// 是否Https
  bool get useHttps {
    return true;
  }

  String get authority;

  /// 请求方法
  HttpMethod get httpMethod;

  /// 是否protobuf
  bool get isProtobuf {
    return false;
  }

  /// path
  String get path;

  /// url
  String get url {
    Uri uri;
    //http和https切换
    if (authority.startsWith("http")) {
      return '$authority$path';
    }
    if (useHttps) {
      uri = Uri.https(authority, path);
    } else {
      uri = Uri.http(authority, path);
    }
    return uri.toString();
  }

  /// 连接超时时间
  int get connectTimeout => 15;

  /// 响应超时时间
  int get receiveTimeout => 10;

  /// 需要登录
  bool get needLogin;

  /// 需要显示Loading
  bool get needLoading {
    return false;
  }

  /// 请求参数
  dynamic params;

  /// 保存路径
  String? savePath;

  /// 上传回调
  ProgressCallback? onSendProgress;

  /// 下载回调
  ProgressCallback? onReceiveProgress;

  ///添加参数
  CreekBaseRequest add(String k, Object v) {
    params[k] = v.toString();
    return this;
  }

  /// 请求头
  Map<String, dynamic> get header;

  @override
  String toString() {
    return 'CreekBaseRequest{params: $params, savePath: $savePath, onSendProgress: $onSendProgress, onReceiveProgress: $onReceiveProgress}';
  }
}
