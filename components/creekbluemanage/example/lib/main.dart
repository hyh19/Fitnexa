import 'dart:convert';

import 'package:creek_alexa_plugin/authorization_manager.dart';
import 'package:creek_alexa_plugin/logger_handler.dart';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/sync/creek_sync_data.dart';
import 'package:creek_blue_manage_example/my_app.dart';
import 'package:creek_blue_manage_example/strava_upload_test.dart';
import 'package:creekhealth/creek_strava.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/material.dart';


final String stravaClientSecret = 'be1e5e53c498977a383a17bd4c4a97493c314bc9';
final String stravaClientId = '118141';

void main() {
  /// 确保初始化完成
  WidgetsFlutterBinding.ensureInitialized();
  CreekLog.info("打开app。。。。。。。");
  runApp(const MyApp());
  CreekLog.checkLogFile();
  CreekDeviceManger.instance?.setPair(false);
  CreekDeviceManger.instance?.authorization = Authorization.none;
  CreekDown.instance;
  //初始化Alexa
  AuthorizationManager.setupManager("amzn1.application-oa2-client.c1f019d104da44ad8f7f6deea2c07679", "CWWatchS1Beta", (){
    AuthorizationManager().refreshTokenAction((isSuccess){
      AuthorizationManager.uploadDataToAlexa();
    });
  });

  StravaManager.setupManager(stravaClientId, stravaClientSecret, (login) {

  });

  CreekSyncData.instance.listenHealthData((type) async{
    print(type);
    if(type == SyncServerType.sport){

      final isLogin = StravaManager().checkLogin();
      if(isLogin == 0){
        ///需要APP 进入授权流程
        print("没有授权");
        return;
      }
      StravaUploadTest.uploadSportData();
    }
  });

}




