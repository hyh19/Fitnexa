import 'dart:convert';
import 'dart:io';
import 'package:creekhealth/creek_strava_data_resolver.dart';
import 'package:creekhealth/creek_strava_entity.dart';
import 'package:creekhealth/creek_strava_request.dart';
import 'package:creekhealth/creek_strava_webView.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class StravaManager with WidgetsBindingObserver {
  String clientId = '';
  String clientSecret = '';
  String stravaKey = 'CreekStravaDataKey';
  static int timeInter = 2;
  bool isUploadActivity = false;
  bool hasNewSportData = true;

  ///数据时间间隔5秒

  List<Map<String, dynamic>> dataList = [];

  CreekStravaEntity? entity;
  bool isRefreshingToken = false;

  static final StravaManager _singletonManager = StravaManager._internal();

  factory StravaManager() {
    return _singletonManager;
  }

  StravaManager._internal();

  static setupManager(
      String clientId, String clientSecret, Function(bool) callback) {
    _singletonManager.clientSecret = clientSecret;
    _singletonManager.clientId = clientId;
    _getLocalData(() {
      StravaManager().refreshToken();
      final isLogin = _singletonManager.checkLogin() != 0;
      callback(isLogin);
    });

    WidgetsBinding.instance.addObserver(StravaManager._singletonManager);

  }

  static authorizeDevice(BuildContext context, Function(bool) callBack) async {
    final clientId = StravaManager().clientId;

    final param = '?client_id=$clientId&redirect_uri=$redirectUrl'
        '&response_type=code&approval_prompt=auto&scope=activity:write,read';
    final urlString = deviceAuthUrl + param;
    CreekLog.info('authorizeDevice url $urlString');
    Route route = MaterialPageRoute(
        builder: (context) => CreekStravaWebViewPage(
            urlString: urlString,
            callback: (code) {
              if (code.isNotEmpty) {
                _requestDeviceToken(context, code, callBack);
              } else {
                callBack(false);
              }
            },
            errorCallback: (error) {
              CreekLog.info('授权失败, $error');
              SmartDialog.showToast('Authorize Device Fail');
              callBack(false);
              Navigator.of(context).pop();
            }));
    if (!context.mounted) return;
    Navigator.push(context, route);
  }

  static _requestDeviceToken(
      BuildContext context, String code, Function(bool) callBack) async {
    final res = await CreekStravaRequest.requestDeviceTokens(code);
    final error = res.$2;
    final response = res.$1;
    if (error == null) {
      CreekStravaEntity? entity = CreekStravaEntity.fromJson(response);
      if (entity != null) {
        StravaManager().entity = entity;
        _setLocalData(entity);
      } else {
        callBack(false);
      }
      if (!context.mounted) {
        CreekLog.info('CreekStrava 退出网页授权页面失败 context错误');
        callBack(false);
        return;
      }
      CreekLog.info('CreekStrava 退出网页授权页面');
      Navigator.of(context).pop();
      callBack(true);
    } else {
      callBack(false);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      CreekLog.info('Strava 应用进入后台');
      print('应用进入后台');
    } else if (state == AppLifecycleState.resumed) {
      CreekLog.info('Strava 应用进入前台 重新获取运动数据');
      StravaManager().refreshToken();
      StravaManager().hasNewSportData = true;
      // uploadSportIfNeed();
      print('应用进入前台');
    } else if (state == AppLifecycleState.inactive) {
      CreekLog.info('Strava 应用不活跃');
      print('应用不活跃');
    } else if (state == AppLifecycleState.detached) {
      CreekLog.info('Strava 应用被杀');
      print('应用被杀');
    }
  }

  // static uploadSportIfNeed(){
  //   if (StravaManager().hasNewSportData) {
  //     ///读取最新的运动数据
  //     ///读取完成后 hasNewSportData 为false;
  //     StravaManager().hasNewSportData = false;
  //     // uploadSportModelList(dataList);
  //   }
  // }
  //
  // static uploadSportModelList(List<Map<String, dynamic>> dataList, Function(int) callback) async {
  //   CreekLog.info('读取最新运动数据完成  开始上传Strava');
  //   StravaManager().isUploadActivity = true;
  //   for (int i = 0; i < dataList.length;) {
  //     Map<String, dynamic> model = dataList[i];
  //     final res = await configData(model);
  //     if (res == 201) {
  //       ///成功则下发给SDK 标记已经成功上传
  //       print('上传了一个 $i');
  //       i += 1;
  //     }
  //   }
  //
  //   CreekLog.info('当前数据上传Strava完成 可以重新拉取最新运动数据');
  //   StravaManager().isUploadActivity = false;
  //   uploadSportIfNeed();
  // }

  static Future<int> configData(Map<String, dynamic> map) async {

    try {
      StravaActivityEntity entity =
          StravaActivityEntity.fromJson(map) ?? StravaActivityEntity();
      List<Map<String, dynamic>> trailData = entity?.trailData ?? [];

      if (trailData.isNotEmpty) {
        String startTime = entity.startDateLocal ?? '';
        List<int> elevationItems = entity.elevationItems ?? [];

        // int sportType = map['sportType'];

        final gpxBuilder = StringBuffer();

        // GPX header
        gpxBuilder.write('<?xml version="1.0" encoding="UTF-8"?>\n');
        gpxBuilder.write(
            '<gpx version="1.1" xmlns="http://www.topografix.com/GPX/1/1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd">\n');

        DateTime startDate = DateTime.parse(startTime);
        String startTimeString = startDate.toIso8601String();

        // Track metadata
        gpxBuilder.write(' <metadata>\n');
        gpxBuilder.write('  <time>$startTimeString</time>\n');
        gpxBuilder.write(' </metadata>\n');

        // Track data
        gpxBuilder.write(' <trk>\n');
        gpxBuilder.write('<name>Generated Track</name>\n');
        gpxBuilder.write('  <trkseg>\n');

        // Generate track points
        final timeInterval = entity.elapsedTime ?? 0;
        print('diff === $timeInterval');
        for (int i = 0; i < timeInterval; i += timeInter) {
          final currentTime = startDate.add(Duration(seconds: i));
          final index = i ~/ timeInter;

          if(index >= trailData.length){
            break;
          }

          int elevation = 0;
          if (elevationItems.length > index) {
            elevation = elevationItems[index];
          }
          Map<String, dynamic> locationMap = trailData[index];
          double latitude =
              ((locationMap['latitude'] ?? 0) / 100000).toDouble();
          double longitude =
              ((locationMap['longitude'] ?? 0) / 100000).toDouble();
          gpxBuilder.write('   <trkpt lat="$latitude" lon="$longitude">\n');
          gpxBuilder.write('    <ele>$elevation</ele>\n');
          gpxBuilder
              .write('    <time>${currentTime.toIso8601String()}</time>\n');
          gpxBuilder.write('   </trkpt>\n');
        }

        // Track closing tags
        gpxBuilder.write('  </trkseg>\n');
        gpxBuilder.write(' </trk>\n');
        gpxBuilder.write('</gpx>');

        String fileName = 'generated_track.gpx';
        Directory tempDir = await getApplicationDocumentsDirectory();
        String gpxPath = '${tempDir.path}/$fileName';
        // Save GPX content to a file
        final gpxContent = gpxBuilder.toString();
        final file = File(gpxPath);
        file.writeAsStringSync(gpxContent);


        entity.fileName = fileName;
        entity.filePath = gpxPath;
        entity.dataType = '';

        print('GPX file generated successfully: ${file.path}');
        final res = await uploadActivity(entity);
        return res;
      } else {
        final res = await createActivity(entity);
        return res;
      }
    } catch (error) {
      print('$error');
      return 0;
    }
  }

  static Future<int> createActivity(StravaActivityEntity entity) async {
    final res = await CreekStravaRequest.createActivity(entity);
    if (res.$2 == 201) {
      return res.$2;
    } else {
      CreekLog.info('strava 上传失败');
      return 0;
    }
  }

  static void updateActivity(StravaActivityEntity entity) async {
    final res = await CreekStravaRequest.updateActivity(entity);
    print(res);
  }

  static Future<int> uploadActivity(StravaActivityEntity entity) async {
    final res = await CreekStravaRequest.uploadActivity(entity);
    if (res == 201) {
      return res;
    } else {
      CreekLog.info('strava 上传失败');
      return 0;
    }
  }

  bool isTokenExpired() {
    final current = DateTime.now().millisecondsSinceEpoch / 1000;
    final getTokenTime = entity?.expiresAt ?? 0;
    final expire = entity?.expiresIn ?? 0;
    if (getTokenTime + expire > current) {
      CreekLog.info('CreekStrava isTokenExpired accessToken有效');
      return false;
    } else {
      CreekLog.info('CreekStrava isTokenExpired accessToken失效');
      return true;
    }
  }

  Future<void> refreshToken() async {
    CreekLog.info('CreekStrava expendTokenIfNeed 开始刷新token');
    final refreshToken = entity?.refreshToken ?? '';
    if(refreshToken.isEmpty){
      return;
    }
    final res = await CreekStravaRequest.refreshDeviceTokens(refreshToken);
    final error = res.$2;
    //暂无对刷新token 失败做处理
    if (error != null) {
      CreekLog.info('CreekStrava expendTokenIfNeed 刷新token错误 error: $error');
      // 这里或许可以开个线程轮询去刷新token 后面优化
    } else {
      CreekLog.info('CreekStrava expendTokenIfNeed 刷新token成功');
      final response = res.$1;
      CreekStravaEntity? entity = CreekStravaEntity.fromJson(response);
      if (entity != null) {
        StravaManager().entity = entity;
        _setLocalData(entity);
      }
    }
  }

  //当离过期时间差比较小的时候 重新去刷新token
  void expendTokenIfNeed() async {
    CreekLog.info('CreekStrava expendTokenIfNeed');
    final current = DateTime.now().millisecondsSinceEpoch / 1000;
    final getTokenTime = entity?.expiresAt ?? 0;
    final expire = entity?.expiresIn ?? 0;
    //重新请求容错时间 60秒
    const offset = 60;
    final dif = getTokenTime + expire - current;

    //假如操作频繁 避免重复请求 只有上个请求返回后 再重新发起刷新
    if (dif < offset && isRefreshingToken == false) {
      isRefreshingToken = true;
      await refreshToken();
      isRefreshingToken = false;
    }
  }

  static void _deleteLocalData() async {
    String stravaKey = _singletonManager.stravaKey;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(stravaKey);
  }

  static void _setLocalData(CreekStravaEntity data) async {
    String stravaKey = _singletonManager.stravaKey;
    try {
      final jsonMap = data.toJson();
      final jsonString = json.encode(jsonMap);
      if (jsonString != null) {
        SharedPreferences preferences = await SharedPreferences.getInstance();

        preferences.setString(stravaKey, jsonString);
        CreekLog.info('CreekStravaData data == $jsonString');
      } else {
        CreekLog.info('preferences数据不能存入空数据');
      }
    } catch (error, stackTrace) {
      CreekLog.info(
          'CreekStravaData 存入本地错误$stravaKey error: $error, stackTrace : $stackTrace');
    }
  }

  static void _getLocalData(Function() callback) async {
    String stravaKey = _singletonManager.stravaKey;
    try {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String jsonString = preferences.getString(stravaKey) ?? '';
      if (jsonString.isNotEmpty) {
        Map<String, dynamic> jsonMap = json.decode(jsonString);
        CreekStravaEntity? entity = CreekStravaEntity.fromJson(jsonMap);
        if (entity != null) {
          StravaManager().entity = entity;
        }
        CreekLog.info('CreekStravaData data == $jsonString');
      }
      callback();
    } catch (error, stackTrace) {
      CreekLog.info(
          'CreekStravaData 存入本地错误$stravaKey error: $error, stackTrace : $stackTrace');
      callback();
    }
  }

  int checkLogin() {
    if (StravaManager().entity == null) {
      CreekLog.info('Authorization checkLogin accessToken为空');
      return 0;
    }
    if (!isTokenExpired()) {
      expendTokenIfNeed();
      return 1;
    }
    CreekLog.info('Authorization checkLogin accessToken已经过期 重刷');
    return 2;
  }

  void logout() {
    CreekLog.info('CreekStravaData 清空内存数据');
    StravaManager().entity = null;
    isRefreshingToken = false;
    _deleteLocalData();
  }
}
