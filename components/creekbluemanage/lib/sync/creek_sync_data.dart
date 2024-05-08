import 'dart:convert';
import 'dart:typed_data';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/db/dbModel/creek_heart_rate_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_hrv_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_noise_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sleep_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_spo_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sport_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_stress_model.dart';
import 'package:creektool/creek_tool.dart';
import 'package:fixnum/src/int64.dart';
import '../creek_listen.dart';
import '../db/dbModel/creek_activity_model.dart';
import '../db/dbModel/creek_goals_model.dart';
import '../db/dbModel/creek_syncState_model.dart';
import '../db/dbModel/creek_syncTime_model.dart';


///******************
///同步云端数据
///******************
///

class CreekSyncData{
  factory CreekSyncData() => _getInstance();
  static CreekSyncData get instance => _getInstance();
  static CreekSyncData? _instance;

  Function(SyncServerType type)? _updateHealthData;

  CreekSyncData._internal();
  int userID = 1;

  static CreekSyncData _getInstance(){
    _instance ??= CreekSyncData._internal();
    return _instance!;
  }

  listenHealthData(Function(SyncServerType type)? listen){
    _updateHealthData = listen;
  }

  upData(SyncServerType type) async{
    if(_updateHealthData != null){
      _updateHealthData!(type);
    }
  }

  ///传null值代表游客模式
 Future<void> setUserID(int? id) async{
    userID = id ?? 1;
    if(userID != 1){
      await CreekProcedure.updateDBUser();
    }else{
      await CreekProcedure.updateDayDBUser();
    }
    return;
  }



}