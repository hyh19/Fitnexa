
library CreekHttp;
import 'dart:convert';
import 'dart:io';
import 'package:creekhttp/core/creek_dio_adapter.dart';
import 'package:creekhttp/creek_http.dart';
import 'package:creekhttp/data/http/dao/base_dao.dart';
import 'package:creekhttp/data/http/request/user/get_token.dart';
import 'package:creekhttp/data/model/user/token.dart';
import 'package:creekhttp/request/creek_base_request.dart';
import 'package:creektool/creek_tool.dart' as tool;
import 'package:dio/dio.dart';

import '../../../core/creek_net_error.dart';
import '../request/base_request.dart';


class OtherDao {
  OtherDao._();
  /// 获取版本信息
  static Future<dynamic> getFirVersion(dynamic params) async {
    BaseOptions options = BaseOptions(
      //请求基地址,可以包含子路径
      baseUrl: "http://api.bq04.com/apps/latest",
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout:  const Duration(seconds: 20),
      //Http请求头.
      headers: {

      },
      //请求的Content-Type，默认值是"application/json; charset=utf-8",Headers.formUrlEncodedContentType会自动编码请求体.
      contentType: "application/json",
      //表示期望以那种格式(方式)接受响应数据。接受四种类型 `json`, `stream`, `plain`, `bytes`. 默认值是 `json`,
      responseType: ResponseType.plain,
    );

    Dio dio = Dio(options);
    Map<String, dynamic> parameters = {};
    String id = "";
    if(Platform.isAndroid){
      id = "638f0d7ab2eb4668affd5851";
      parameters = {
        "api_token": "714bbf15253b4bda2662a6395b58c39b",
        "type": "android",
      };
    }else if(Platform.isIOS){
      id = "638f0dc9b2eb4668affd585a";
      parameters = {
        "api_token": "714bbf15253b4bda2662a6395b58c39b",
        "type": "ios",
      };
    }
    Response? e = await dio.get("/$id",queryParameters: parameters);
    return jsonDecode(e?.data ?? "");
  }
}


