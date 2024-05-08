import 'dart:convert';

import 'package:creekhealth/creek_strava.dart';
import 'package:creekhealth/creek_strava_entity.dart';
import 'package:creektool/creek_tool.dart';
import 'package:dio/dio.dart';

// ignore: depend_on_referenced_packages
import 'package:http_parser/http_parser.dart';

const deviceAuthUrl = 'https://www.strava.com/oauth/mobile/authorize';
const tokenUrl = 'https://www.strava.com/oauth/token';
const redirectUrl = 'https://www.creekcould.com';
const settingUrl = 'https://www.strava.com/settings/api';
const stravaApiUrl = 'https://www.strava.com/api/v3/';

enum RequestMethod {
  get,
  post,
  put,
  delete,
}

class CreekStravaRequest {
  static Future<(dynamic, dynamic)> httpRequest(
      String url,
      RequestMethod method,
      Map<String, dynamic> params,
      Options? options) async {
    dynamic data = {};
    CreekLog.info('httpRequest $url params  ${params.toString()}');
    try {
      final dio = Dio();
      if (method == RequestMethod.post) {
        final response = await dio.post(url, data: params, options: options);
        print('httpRequest $url response  ${response.toString()}');
        CreekLog.info('httpRequest $url response  ${response.toString()}');
        int statusCode = response.statusCode ?? 0;
        if (statusCode >= 200 && statusCode <= 299) {
          data = jsonDecode(response.toString());
        } else {
          CreekLog.info(
              'httpRequest $url code:${response.statusCode} params: ${params.toString()} data: ${response.data}');
          return (data, response.statusCode);
        }
      } else if (method == RequestMethod.get) {
        final response = await dio.get(url, data: null, options: options);
        CreekLog.info('httpRequest $url response  ${response.toString()}');
        int statusCode = response.statusCode ?? 0;
        if (statusCode >= 200 && statusCode <= 299) {
          data = jsonDecode(response.toString());
        } else {
          CreekLog.info(
              'httpRequest $url code:${response.statusCode} params: ${params.toString()} error: ${response.data}');
          return (data, response.statusCode);
        }
      } else if (method == RequestMethod.put) {
        final response = await dio.put(url, data: params, options: options);
        CreekLog.info('httpRequest $url response  ${response.toString()}');
        int statusCode = response.statusCode ?? 0;
        if (statusCode >= 200 && statusCode <= 299) {
          data = response;
        } else {
          CreekLog.info(
              'httpRequest $url code:${response.statusCode} params: ${params.toString()} error: ${response.data}');
          return (data, response.statusCode);
        }
      } else if (method == RequestMethod.delete) {
        final response = await dio.delete(url, options: options);
        CreekLog.info('httpRequest $url response  ${response.toString()}');
        int statusCode = response.statusCode ?? 0;
        if (statusCode >= 200 && statusCode <= 299) {
          data = response;
        } else {
          CreekLog.info(
              'httpRequest $url code:${response.statusCode} params: ${params.toString()} error: ${response.data}');
          return (data, response.statusCode);
        }
      }

      return (data, null);
    } catch (error, stackTrace) {
      return (data, error);
    }
  }

  static Future<(dynamic, dynamic)> requestDeviceTokens(String code) async {
    Map<String, dynamic> params = {};
    final clientId = StravaManager().clientId;
    final clientSecret = StravaManager().clientSecret;
    params['client_id'] = clientId;
    params['client_secret'] = clientSecret;
    params['code'] = code;
    params['grant_type'] = 'authorization_code';
    Options options = Options(contentType: 'application/json');
    final res =
        await httpRequest(tokenUrl, RequestMethod.post, params, options);
    return res;
  }

  static Future<(dynamic, dynamic)> refreshDeviceTokens(
      String refreshToken) async {
    Map<String, dynamic> params = {};
    final clientId = StravaManager().clientId;
    final clientSecret = StravaManager().clientSecret;
    params['client_id'] = clientId;
    params['client_secret'] = clientSecret;
    params['grant_type'] = 'refresh_token';
    params['refresh_token'] = refreshToken;
    Options options = Options(contentType: 'application/json');
    final res =
        await httpRequest(tokenUrl, RequestMethod.post, params, options);
    return res;
  }

  static Future<(dynamic, dynamic)> getAuthenticatedAthlete() async {
    String accessToken = StravaManager().entity?.accessToken ?? '';
    print('accessToken $accessToken');

    Options options =
        Options(headers: {'Authorization': 'Bearer $accessToken'});
    String url = '${stravaApiUrl}athlete';
    final res = await httpRequest(url, RequestMethod.get, {}, options);
    return res;
  }

  static Future<(dynamic, dynamic)> createActivity(
      StravaActivityEntity entity) async {
    String accessToken = StravaManager().entity?.accessToken ?? '';
    Map<String, dynamic> params = {};
    params['name'] = entity.name;
    params['type'] = entity.type;
    params['sport_type'] = entity.sportType;
    params['start_date_local'] = entity.startDateLocal;
    params['elapsed_time'] = entity.elapsedTime;
    params['description'] = entity.description;
    params['distance'] = entity.distance;
    params['trainer'] = entity.trainer;
    params['commute'] = entity.commute;

    print('accessToken $accessToken');

    Options options =
        Options(headers: {'Authorization': 'Bearer $accessToken'});
    String url = '${stravaApiUrl}activities';
    final res = await httpRequest(url, RequestMethod.post, params, options);
    return res;
  }

  static Future<(dynamic, dynamic)> updateActivity(
      StravaActivityEntity entity) async {
    String accessToken = StravaManager().entity?.accessToken ?? '';
    Map<String, dynamic> params = {};
    params['id'] = entity.id;
    params['name'] = entity.name;
    params['type'] = entity.type;
    params['sport_type'] = entity.sportType;
    // params['start_date_local'] = entity.startDateLocal;
    // params['elapsed_time'] = entity.elapsedTime;
    params['description'] = entity.description;
    // params['distance'] = entity.distance;
    params['trainer'] = entity.trainer;
    params['commute'] = entity.commute;
    params['gear_id'] = "";
    params['hide_from_home'] = false;

    print('accessToken $accessToken');

    Options options =
        Options(headers: {'Authorization': 'Bearer $accessToken'});
    String url = '${stravaApiUrl}activities/${entity.id}';
    final res = await httpRequest(url, RequestMethod.put, params, options);
    return res;
  }

  static Future<int> uploadActivity(StravaActivityEntity entity) async {
    print('filePath ${entity.filePath}');
    print('fileName ${entity.fileName}');

    FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        entity.filePath ?? '',
        filename: entity.fileName,
        contentType: MediaType('application', 'gpx+xml'),
      ),
      'name': entity.name,
      'description': entity.description,
      'trainer': entity.trainer,
      'commute': entity.commute,
      'data_type': 'gpx',
      'external_id': entity.externalId,
    });

    final dio = Dio();
    String uploadUrl = '$stravaApiUrl/uploads';
    String accessToken = StravaManager().entity?.accessToken ?? '';
    try {
      // Send POST request with FormData
      Response responseUpload = await dio.post(
        uploadUrl,
        data: formData,
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );

      // Check the response status
      if (responseUpload.statusCode == 201) {
        print('SUCCESS');
        CreekLog.info('uploadActivity Succeed');
      } else {
        print('FAILED');
        CreekLog.info('uploadActivity Failed');
      }

      return responseUpload.statusCode ?? 0;
    } catch (error) {

      print('Error: $error');
      CreekLog.info('uploadActivity error $error');
      return 0;
    }
  }
}
