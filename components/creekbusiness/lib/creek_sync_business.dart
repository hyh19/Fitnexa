import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_listen.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/db/dbModel/creek_activity_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_goals_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_heart_rate_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_hrv_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_noise_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sleep_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_spo_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sport_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_stress_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_syncState_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_syncTime_model.dart';
import 'package:creek_blue_manage/sync/creek_sync_data.dart';
import 'package:creekbusiness/proto/Param.pb.dart';
import 'package:creekbusiness/proto/ProtobufResult.pb.dart';
import 'package:creekbusiness/proto/SyncActivity.pb.dart';
import 'package:creekbusiness/proto/SyncGoal.pb.dart';
import 'package:creekbusiness/proto/SyncHeartRate.pb.dart';
import 'package:creekbusiness/proto/SyncHeartRateVariability.pb.dart';
import 'package:creekbusiness/proto/SyncNoise.pb.dart';
import 'package:creekbusiness/proto/SyncPressure.pb.dart';
import 'package:creekbusiness/proto/SyncSleep.pb.dart';
import 'package:creekbusiness/proto/SyncSpo.pb.dart';
import 'package:creekbusiness/proto/SyncSport.pb.dart';
import 'package:creektool/creek_tool.dart';
import 'package:fixnum/src/int64.dart';

import 'business_enum.dart';
import 'db_procedure.dart';



///******************
///同步云端数据
///******************
///

class CreekSyncBusiness{
  factory CreekSyncBusiness() => _getInstance();
  static CreekSyncBusiness get instance => _getInstance();
  static CreekSyncBusiness? _instance;

  CreekSyncBusiness._internal(){
    listenHealthData();
  }

  CreekBusinessSyncServerListen? _creekSyncServerListen;


  static CreekSyncBusiness _getInstance(){
    _instance ??= CreekSyncBusiness._internal();
    return _instance!;
  }

  ///设置监听对象
  setSyncNotify(CreekBusinessSyncServerListen listen) {
    _creekSyncServerListen = listen;
  }

  ///传null 或者 1值代表游客模式
 Future<void> setUserID(int? id) async{
    return CreekSyncData.instance.setUserID(id);
  }

  ///上传成功uploadStatus改为true
  updateDBUploadStatus(SyncType type) async{
    DBProcedure.updateDBUploadStatus(type);
  }

  ///监听健康数据
  listenHealthData(){
    CreekSyncData.instance.listenHealthData((type){
      ///上传云端数据
      if( type == SyncServerType.activity){
        upActivity(CreekSyncData.instance.userID);
        upGoal(CreekSyncData.instance.userID);
      }else if(type == SyncServerType.goal){
        upGoal(CreekSyncData.instance.userID);
      }else if( type == SyncServerType.hearRate){
        upHearRate(CreekSyncData.instance.userID);

      }else if(type == SyncServerType.noise){
        upNoise(CreekSyncData.instance.userID);

      }else if(type == SyncServerType.pressure){
        upPressure(CreekSyncData.instance.userID);

      }else if(type == SyncServerType.sleep){
        upSleep(CreekSyncData.instance.userID);

      }else if(type == SyncServerType.spo){
        upSpo(CreekSyncData.instance.userID);

      }else if(type == SyncServerType.sport){
        upSport(CreekSyncData.instance.userID);

      }else if(type == SyncServerType.hrv){
        upHrv(CreekSyncData.instance.userID);
      }
    });
  }

  ///检测是否要拉取
  detectionTime() async{
    if(CreekSyncData.instance.userID != 1){
      CreekLog.info("检测是否要拉取云端数据");
      CreekSyncStateModel stateModel = await DBProcedure.getSyncState();
      if(!(stateModel.activity ?? false)){
        CreekLog.info("开始拉取活动数据");
        syncActivity();
      }
      if(!(stateModel.goal ?? false)){
        CreekLog.info("开始拉取目标数据");
        syncGoal();
      }
      if(!(stateModel.hearRate ?? false)){
        CreekLog.info("开始拉取心率数据");
        syncHearRate();
      }
      if(!(stateModel.noise ?? false)){
        CreekLog.info("开始拉取噪音数据");
        syncNoise();
      }
      if(!(stateModel.pressure ?? false)){
        CreekLog.info("开始拉取压力数据");
        syncPressure();
      }
      if(!(stateModel.sleep ?? false)){
        syncSleep();
      }
      if(!(stateModel.spo ?? false)){
        CreekLog.info("开始拉取血氧数据");
        syncSpo();
      }
      if(!(stateModel.sport ?? false)){
        syncSport();
      }
      if(!(stateModel.hrv ?? false)){
        syncHrv();
      }
    }
  }

  ///主动取拉去全部
  getServerData() async{
    ///主动拉去之前状态全部改成false
    await CreekProcedure.updateSyncState();
    syncActivity();
    syncGoal();
    syncHearRate();
    syncNoise();
    syncPressure();
    syncSleep();
    syncSpo();
    syncHrv();
    syncSport();
  }

  ///主动上传未上传数据
  upAllData() async{
    if(CreekSyncData.instance.userID != 1){
      upGoal(CreekSyncData.instance.userID);
    }
    upSport(CreekSyncData.instance.userID);
    upSpo(CreekSyncData.instance.userID);
    upHrv(CreekSyncData.instance.userID);
    upSleep(CreekSyncData.instance.userID);
    upHearRate(CreekSyncData.instance.userID);
    upPressure(CreekSyncData.instance.userID);
    upActivity(CreekSyncData.instance.userID);
    upNoise(CreekSyncData.instance.userID);
  }

  Future<void> uploadSportData() async{
    if(CreekSyncData.instance.userID != 1){
      upSpo(CreekSyncData.instance.userID);
      upGoal(CreekSyncData.instance.userID);
      upActivity(CreekSyncData.instance.userID);
      upNoise(CreekSyncData.instance.userID);
    }
  }

  Future<void> uploadHealthData() async{
    if(CreekSyncData.instance.userID != 1){
      upSport(CreekSyncData.instance.userID);
      upHrv(CreekSyncData.instance.userID);
      upSleep(CreekSyncData.instance.userID);
      upHearRate(CreekSyncData.instance.userID);
      upPressure(CreekSyncData.instance.userID);
    }

  }
  Future<int> requestHealthCount() async{
    int count = 0;
    ///血氧
    List<Map<String, dynamic>>  maps2 =  await CreekProcedure.getSpoUploadStatus();
    List<Map<String, dynamic>>  maps3 =  await CreekProcedure.getHrvUploadStatus();
    List<CreekSleepTotalModel>  maps5 =  await CreekProcedure.getSleepUploadDays();
    List<Map<String, dynamic>>  maps6 =  await CreekProcedure.getHeartRateUploadStatus();
    List<Map<String, dynamic>>  maps7 =  await CreekProcedure.getStressUploadStatus();
    if (maps2.isNotEmpty){
      count+=1;
    }
    if (maps3.isNotEmpty){
      count+=1;
    }
    if (maps5.isNotEmpty){
      count+=1;
    }
    if (maps6.isNotEmpty){
      count+=1;
    }
    if (maps7.isNotEmpty){
      count+=1;
    }
    return count;
  }
  Future<int> requestSportCount() async{
    int count = 0;

    List<Map<String, dynamic>>  maps =  await CreekProcedure.getSportUploadStatus();
    List<Map<String, dynamic>>  maps4 =  await CreekProcedure.getGoalsUploadStatus();
    List<Map<String, dynamic>>  maps8 =  await CreekProcedure.getActivityUploadStatus();
    List<Map<String, dynamic>>  maps9 =  await CreekProcedure.getNoiseUploadStatus();
    if (maps.isNotEmpty){
      count+=1;
    }
    if (maps4.isNotEmpty){
      count+=1;
    }
    if (maps8.isNotEmpty){
      count+=1;
    }
    if (maps9.isNotEmpty){
      count+=1;
    }
    return count;
  }

  Future<int> requestCount() async{
    int count = 0;
    List<Map<String, dynamic>>  maps =  await CreekProcedure.getSportUploadStatus();
    List<Map<String, dynamic>>  maps2 =  await CreekProcedure.getSpoUploadStatus();
    List<Map<String, dynamic>>  maps3 =  await CreekProcedure.getHrvUploadStatus();
    List<Map<String, dynamic>>  maps4 =  await CreekProcedure.getGoalsUploadStatus();
    List<CreekSleepTotalModel>  maps5 =  await CreekProcedure.getSleepUploadDays();
    List<Map<String, dynamic>>  maps6 =  await CreekProcedure.getHeartRateUploadStatus();
    List<Map<String, dynamic>>  maps7 =  await CreekProcedure.getStressUploadStatus();
    List<Map<String, dynamic>>  maps8 =  await CreekProcedure.getActivityUploadStatus();
    List<Map<String, dynamic>>  maps9 =  await CreekProcedure.getNoiseUploadStatus();
    if (maps.isNotEmpty){
      count+=1;
    }
    if (maps2.isNotEmpty){
      count+=1;
    }
    if (maps3.isNotEmpty){
      count+=1;
    }
    if (maps4.isNotEmpty){
      count+=1;
    }
    if (maps5.isNotEmpty){
      count+=1;
    }
    if (maps6.isNotEmpty){
      count+=1;
    }
    if (maps7.isNotEmpty){
      count+=1;
    }
    if (maps8.isNotEmpty){
      count+=1;
    }
    if (maps9.isNotEmpty){
      count+=1;
    }
    return count;
  }

  ///拉取成功后更改对应的状态
  Future updateOnceSyncState(SyncServerType type) async{
   return await CreekProcedure.updateOnceSyncState(type);
  }

  ///活动数据
  syncActivity() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 1;
    if(timeModel.activity != null ){
      param.startDateTime =  DateTime.parse(timeModel.activity!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.activity,false,param.writeToBuffer());
    }
  }

  ///目标数据
  syncGoal() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 2;
    if(timeModel.goal != null ){
      param.startDateTime = DateTime.parse(timeModel.goal!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.goal,false,param.writeToBuffer());
    }
  }

  ///心率数据
  syncHearRate() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 3;
    if(timeModel.hearRate != null ){
      param.startDateTime = DateTime.parse(timeModel.hearRate!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime =   dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.hearRate,false,param.writeToBuffer());
    }
  }

  ///hrv数据
  syncHrv() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 4;
    if(timeModel.hrv != null ){
      param.startDateTime = DateTime.parse(timeModel.hrv!).add(const Duration(days: -1)).toString().substring(0,10);
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.hrv,false,param.writeToBuffer());
    }
  }


  ///噪音数据
  syncNoise() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 5;
    if(timeModel.noise != null ){
      param.startDateTime = DateTime.parse(timeModel.noise!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.noise,false,param.writeToBuffer());
    }
  }

 ///压力数据
  syncPressure() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 6;
    if(timeModel.pressure != null ){
      param.startDateTime = DateTime.parse(timeModel.pressure!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.pressure,false,param.writeToBuffer());
    }
  }

  ///睡眠数据
  syncSleep() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 7;
    if(timeModel.sleep != null ){
      param.startDateTime = DateTime.parse(timeModel.sleep!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.sleep,false,param.writeToBuffer());
    }
  }

  ///血氧数据
  syncSpo() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 8;
    if(timeModel.spo != null ){
      param.startDateTime = DateTime.parse(timeModel.spo!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.spo,false,param.writeToBuffer());
    }
  }

  ///运动数据
  syncSport() async{
    CreekSyncTimeModel timeModel =  await CreekProcedure.getSyncTime();
    DateTime dateTime = DateTime.now();
    Param param = Param();
    param.type = 9;
    if(timeModel.sport != null ){
      param.startDateTime = DateTime.parse(timeModel.sport!).add(const Duration(days: -1)).toString().substring(0,10) ;
      param.endDateTime = dateTime.add(const Duration(days: 1)).toString().substring(0,10);
    }
    if(_creekSyncServerListen != null){
      _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.download,SyncType.sport,false,param.writeToBuffer());
    }
  }

  ///上传本地数据
  upActivity(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getActivityUploadStatus(userID);
    SyncActivityList activityList = SyncActivityList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekActivityModel creekActivityModel = CreekActivityModel.fromJson(element);
        if(!BlueTool.isDateValid(creekActivityModel.createTime ?? "")) continue;
        SyncActivity syncActivity = SyncActivity();
        syncActivity.userId = Int64((creekActivityModel.userID ?? 1));
        syncActivity.macId = creekActivityModel.deviceId ?? "1";
        syncActivity.dataDate = creekActivityModel.createTime ?? "";
        syncActivity.totalStepCount = creekActivityModel.totalStep ?? 0;
        syncActivity.totalExerciseDuration = creekActivityModel.totalExercise ?? 0;
        syncActivity.totalActivityCalorie = creekActivityModel.totalCalories ?? 0;
        syncActivity.totalRestCalorie = creekActivityModel.totalRestCalories ?? 0;
        syncActivity.totalDistance = creekActivityModel.totalDistances ?? 0;
        syncActivity.totalStandDuration = creekActivityModel.totalStand ?? 0;
        syncActivity.activityItemCount = 0;
        syncActivity.isSupportAltitudeFloors = (creekActivityModel.floorsClimbedSupport ?? false) == true ? 1 : 0;
        syncActivity.altitudeFloors = creekActivityModel.totalFloorsClimbed ?? 0;
        syncActivity.datas = element['datas'];
        activityList.list.add(syncActivity);
      }
      // SyncActivityList data = SyncActivityList.fromBuffer(activityList.writeToBuffer());
      CreekLog.info("活动上传云端数据数量：${activityList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.activity,userID == 1 ? true : false,activityList.writeToBuffer());
      }
    }

  }
  ///目标
  upGoal(int userID) async{
    if(userID != 1){
      List<Map<String, dynamic>>  maps =  await DBProcedure.getGoalsUploadStatus(userID);
      SyncGoalList syncGoalList = SyncGoalList();
      if(maps.isNotEmpty){
        for (var element in maps) {
          CreekGoalsModel creekGoalsModel = CreekGoalsModel.fromJson(element);
          if(!BlueTool.isDateValid(creekGoalsModel.creatTime ?? "")) continue;
          SyncGoal syncActivity = SyncGoal();
          syncActivity.userId = Int64((creekGoalsModel.userID ?? 1));
          syncActivity.macId = creekGoalsModel.deviceId ?? "1";
          syncActivity.dataDate = creekGoalsModel.creatTime ?? "";
          syncActivity.exerciseDuration = creekGoalsModel.exercise ?? 0;
          syncActivity.standDuration = creekGoalsModel.stand ?? 0;
          syncActivity.calorie = creekGoalsModel.calories ?? 0;
          syncActivity.stepCount = creekGoalsModel.steps ?? 0;
          syncActivity.distance = creekGoalsModel.distance ?? 0;
          syncActivity.sportDay = creekGoalsModel.sportDay ?? 0;
          syncActivity.sleepDuration = 0;
          syncActivity.notifySwitch = (creekGoalsModel.notifySwitchFlag ?? false) == false ? 0 : 1;
          syncActivity.notifyType = creekGoalsModel.notifyFlag ?? 0;
          syncGoalList.list.add(syncActivity);
        }
        if(_creekSyncServerListen != null){
          _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.goal,userID == 1 ? true : false,syncGoalList.writeToBuffer());
        }
      }
    }
  }

  upHearRate(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getHeartRateUploadStatus(userID);
    SyncHeartRateList heartRateList = SyncHeartRateList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekHeartRateModel creekHeartRateModel = CreekHeartRateModel.fromJson(element);
        if(!BlueTool.isDateValid(creekHeartRateModel.createTime ?? "")) continue;
        SyncHeartRate syncHeartRate = SyncHeartRate();
        syncHeartRate.userId = Int64((creekHeartRateModel.userID ?? 1));
        syncHeartRate.macId = creekHeartRateModel.deviceId ?? "1";
        syncHeartRate.dataDate = creekHeartRateModel.createTime ?? "";
        syncHeartRate.offsetLast = creekHeartRateModel.offsetLast ?? 0;
        syncHeartRate.hrMax = creekHeartRateModel.max ?? 0;
        syncHeartRate.hrMin = creekHeartRateModel.min ?? 0;
        syncHeartRate.hrSilent = creekHeartRateModel.silentHr ?? 0;
        syncHeartRate.hrAverage = creekHeartRateModel.average ?? 0;
        syncHeartRate.hrRiseRatio = creekHeartRateModel.raisedHr ?? 0;
        syncHeartRate.hrInterval = element['hr_interval'];
        syncHeartRate.datas = element['datas'];
        heartRateList.list.add(syncHeartRate);
      }
      CreekLog.info("心率上传云端数据数量：${heartRateList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.hearRate,userID == 1 ? true : false,heartRateList.writeToBuffer());
      }
    }

  }

  upHrv(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getHrvUploadStatus(userID);
    SyncHeartRateVariabilityList syncHeartRateVariabilityList = SyncHeartRateVariabilityList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekHrvModel creekHrvModel = CreekHrvModel.fromJson(element);
        if(!BlueTool.isDateValid(creekHrvModel.createTime ?? "")) continue;
        SyncHeartRateVariability syncHeartRateVariability = SyncHeartRateVariability();
        syncHeartRateVariability.macId = creekHrvModel.deviceId ?? "1";
        syncHeartRateVariability.userId = Int64((creekHrvModel.userID ?? 1));
        syncHeartRateVariability.dataDate = creekHrvModel.createTime ?? "";
        syncHeartRateVariability.offsetLast = creekHrvModel.offsetLast ?? 0;
        syncHeartRateVariability.hrvMax = creekHrvModel.max ?? 0;
        syncHeartRateVariability.hrvMin = creekHrvModel.min ?? 0;
        syncHeartRateVariability.hrvAverage = creekHrvModel.average ?? 0;
        syncHeartRateVariability.sleepMax = creekHrvModel.sleepMax ?? 0;
        syncHeartRateVariability.sleepMin = creekHrvModel.sleepMin ?? 0;
        syncHeartRateVariability.datas = element['datas'];
        syncHeartRateVariabilityList.list.add(syncHeartRateVariability);
      }
      CreekLog.info("hrv上传云端数据数量：${syncHeartRateVariabilityList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.hrv,userID == 1 ? true : false,syncHeartRateVariabilityList.writeToBuffer());
      }
    }

  }

  upNoise(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getNoiseUploadStatus(userID);
    SyncNoiseList syncNoiseList = SyncNoiseList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekNoiseModel creekNoiseModel = CreekNoiseModel.fromJson(element);
        if(!BlueTool.isDateValid(creekNoiseModel.createTime ?? "")) continue;
        SyncNoise syncNoise = SyncNoise();
        syncNoise.userId = Int64((creekNoiseModel.userID ?? 1));
        syncNoise.macId = creekNoiseModel.deviceId ?? "1";
        syncNoise.dataDate = creekNoiseModel.createTime ?? "";
        syncNoise.offsetLast = creekNoiseModel.offsetLast ?? 0;
        syncNoise.noiseMax = creekNoiseModel.max ?? 0;
        syncNoise.noiseMin = creekNoiseModel.min ?? 0;
        syncNoise.noiseAverage = creekNoiseModel.average ?? 0;
        syncNoise.datas = element['datas'];
        syncNoiseList.list.add(syncNoise);
      }
      CreekLog.info("噪音上传云端数据数量：${syncNoiseList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.noise,userID == 1 ? true : false,syncNoiseList.writeToBuffer());
      }
    }

  }

  upPressure(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getStressUploadStatus(userID);
    SyncPressureList syncPressureList = SyncPressureList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekStressModel creekStressModel = CreekStressModel.fromJson(element);
        if(!BlueTool.isDateValid(creekStressModel.createTime ?? "")) continue;
        SyncPressure syncPressure = SyncPressure();
        syncPressure.userId = Int64((creekStressModel.userID ?? 1));
        syncPressure.macId = creekStressModel.deviceId ?? "1";
        syncPressure.dataDate = creekStressModel.createTime ?? "";
        syncPressure.offsetLast = creekStressModel.offsetLast ?? 0;
        syncPressure.pressureMax = creekStressModel.max ?? 0;
        syncPressure.pressureMin = creekStressModel.min ?? 0;
        syncPressure.pressureAverage = creekStressModel.average ?? 0;
        syncPressure.ratioLow = creekStressModel.low ?? 0;
        syncPressure.ratioUsual = creekStressModel.usual ?? 0;
        syncPressure.ratioHigh = creekStressModel.higher ?? 0;
        syncPressure.ratioVeryHigh = creekStressModel.verHigh ?? 0;
        syncPressure.datas = element['datas'];
        syncPressureList.list.add(syncPressure);
      }
      CreekLog.info("压力上传云端数据数量：${syncPressureList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.pressure,userID == 1 ? true : false,syncPressureList.writeToBuffer());
      }
    }

  }

  upSleep(int userID) async{
    List<CreekSleepTotalModel>  maps =  await DBProcedure.getSleepUploadDays(userID);
    SyncSleepGroupProto syncSleepGroupProto = SyncSleepGroupProto();
    if(maps.isNotEmpty){
      for (var element in maps) {
        SyncSleepGroup syncSleepGroup = SyncSleepGroup();
        syncSleepGroup.groupDate = element.createTime ?? "";
        if(!BlueTool.isDateValid(element.createTime ?? "")) continue;
        element.models?.forEach((creekSleepModel) {
          SyncSleep syncSleep = SyncSleep();
          syncSleep.userId = Int64((creekSleepModel.userID ?? 1));
          syncSleep.macId = creekSleepModel.deviceId ?? "1";
          syncSleep.fallAsleepTime = creekSleepModel.fallAsleepTime ?? "";
          syncSleep.getUpTime = creekSleepModel.getUpTime ?? "";
          syncSleep.totalSleepDuration = creekSleepModel.totalSleepTimeMin ?? 0;
          syncSleep.totalWakeDuration = creekSleepModel.wakeMin ?? 0;
          syncSleep.totalSleepLightDuration = creekSleepModel.lightSleepMin ?? 0;
          syncSleep.totalSleepDeepDuration = creekSleepModel.deepSleepMin ?? 0;
          syncSleep.totalRemDuration = creekSleepModel.remMin ?? 0;
          syncSleep.wakeCount = creekSleepModel.wakeCount ?? 0;
          syncSleep.sleepLightCount = creekSleepModel.lightSleepCount ?? 0;
          syncSleep.sleepDeepCount = creekSleepModel.deepSleepCount ?? 0;
          syncSleep.remCount = creekSleepModel.remCount ?? 0;
          syncSleep.sleepScore = creekSleepModel.sleepScore ?? 0;
          if(userID != 1){
            syncSleep.datas = creekSleepModel.datas ?? jsonEncode([]);
          }
          syncSleepGroup.list.add(syncSleep);
        });
        syncSleepGroupProto.sleepGroup.add(syncSleepGroup);
      }
      CreekLog.info("睡眠上传云端数据数量：${syncSleepGroupProto.sleepGroup.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.sleep,userID == 1 ? true : false,syncSleepGroupProto.writeToBuffer());
      }
    }

  }

  upSpo(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getSpoUploadStatus(userID);
    SyncSpoList syncSpoList = SyncSpoList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekOxygenModel creekOxygenModel = CreekOxygenModel.fromJson(element);
        if(!BlueTool.isDateValid(creekOxygenModel.createTime ?? "")) continue;
        SyncSpo syncSpo = SyncSpo();
        syncSpo.userId = Int64((creekOxygenModel.userID ?? 1));
        syncSpo.macId = creekOxygenModel.deviceId ?? "1";
        syncSpo.dataDate = creekOxygenModel.createTime ?? "";
        syncSpo.offsetLast = creekOxygenModel.offsetLast ?? 0;
        syncSpo.spoMax = creekOxygenModel.max ?? 0;
        syncSpo.spoMin = creekOxygenModel.min ?? 0;
        syncSpo.spoAverage = creekOxygenModel.average ?? 0;
        syncSpo.datas = element['datas'];
        syncSpoList.list.add(syncSpo);
      }
      CreekLog.info("血氧上传云端数据数量：${syncSpoList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.spo,userID == 1 ? true : false,syncSpoList.writeToBuffer());
      }
    }

  }

  upSport(int userID) async{
    List<Map<String, dynamic>>  maps =  await DBProcedure.getSportUploadStatus(userID);
    SyncSportList syncSportList = SyncSportList();
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekSportModel creekSportModel = CreekSportModel.fromJson(element);
        if(!BlueTool.isDateValid(creekSportModel.creatTime ?? "")) continue;
        SyncSport syncSport = SyncSport();
        syncSport.userId = Int64((creekSportModel.userID ?? 1));
        syncSport.macId = creekSportModel.deviceId ?? "1";
        syncSport.startTime = creekSportModel.startTime ?? "";
        syncSport.endTime = creekSportModel.endTime ?? "";
        syncSport.isConnectApp = creekSportModel.isConnectApp ?? 0;
        syncSport.sportType = creekSportModel.sportType ?? 0;
        syncSport.sportDuration = creekSportModel.durations ?? 0;
        syncSport.sportGoalType = creekSportModel.goalType ?? 0;
        syncSport.sportGoalValue = creekSportModel.goalData ?? 0;
        syncSport.hrAverage = creekSportModel.avgHrValue ?? 0;
        syncSport.hrMax = creekSportModel.maxHrValue ?? 0;
        syncSport.hrMin = creekSportModel.minHrValue ?? 0;
        syncSport.warmUpDuration = creekSportModel.warmUpTime ?? 0;
        syncSport.fatBurningDuration = creekSportModel.fatBurningTime ?? 0;
        syncSport.aerobicExerciseDuration = creekSportModel.aerobicExerciseTime ?? 0;
        syncSport.anaerobicExerciseDuration = creekSportModel.anaerobicExerciseTime ?? 0;
        syncSport.extremeExerciseDuration = creekSportModel.extremeExerciseTime ?? 0;
        syncSport.totalStep = creekSportModel.totalStep ?? 0;
        syncSport.totalCalories = creekSportModel.totalCalories ?? 0;
        syncSport.totalDistance = creekSportModel.totalDistance ?? 0;
        syncSport.kmPaceAverage = creekSportModel.avgKmPace ?? 0;
        syncSport.kmPaceFast = creekSportModel.fastKmPace ?? 0;
        syncSport.speedAverage = creekSportModel.avgSpeed ?? 0;
        syncSport.speedFast = creekSportModel.fastSpeed ?? 0;
        syncSport.stepFrequencyAverage = creekSportModel.avgStepFrequency ?? 0;
        syncSport.stepFrequencyMax = creekSportModel.maxStepFrequency ?? 0;
        syncSport.stepStrideAverage = creekSportModel.avgStepStride ?? 0;
        syncSport.stepStrideMax = creekSportModel.maxStepStride ?? 0;
        syncSport.trainScore = creekSportModel.trainingEffect ?? 0;
        syncSport.vo2Max = creekSportModel.vozmax ?? 0;
        syncSport.vo2Grade = creekSportModel.grade ?? 0;
        syncSport.recoveryDuration = creekSportModel.recoveryTime ?? 0;
        syncSport.hrCount = creekSportModel.hrItemCount ?? 0;
        syncSport.kmSpeedCount = creekSportModel.kmSpeedCount ?? 0;
        syncSport.kmPaceCount = creekSportModel.paceCount ?? 0;
        syncSport.stepFrequencyCount = creekSportModel.stepFrequencyCount ?? 0;
        syncSport.stepStrideCount = creekSportModel.stepStrideCount ?? 0;

        syncSport.altitudeMax = creekSportModel.maxElevation ?? 0;
        syncSport.altitudeMin = creekSportModel.minElevation ?? 0;
        syncSport.altitudeAverage = creekSportModel.avgElevation ?? 0;
        syncSport.altitudeRise = creekSportModel.climbHeight ?? 0;
        syncSport.mets = creekSportModel.met ?? 0;
        syncSport.swimDistance = creekSportModel.swimDistance ?? 0;
        syncSport.power = creekSportModel.avgPower ?? 0;
        syncSport.isSupportPower = (creekSportModel.avgPowerSupport ?? false) == true ? 1 : 0;
        syncSport.isSupportMets = (creekSportModel.metSupport ?? false) == true ? 1 : 0;
        syncSport.isSupportAltitude = (creekSportModel.elevationSupport ?? false) == true ? 1 : 0;

        if(userID != 1){
          syncSport.hrDatas = element["hrValueItem"];
          syncSport.kmSpeedDatas = element["kmSpeedItem"];
          syncSport.kmPaceDatas = element["kmPaceItem"];
          syncSport.stepFrequencyDatas = element["stepFrequencyItem"];
          syncSport.stepStrideDatas = element["stepStrideItem"];
          syncSport.sportTrackDatas = element["trailData"];
          syncSport.miSpeedDatas = element["miSpeedItem"];
          syncSport.miPaceDatas = element["miPaceItem"];
          try{
            syncSport.altitudeDatas = element["elevationItem"];
          }catch(e){
            syncSport.altitudeDatas = jsonEncode([]);
          }
        }
        syncSportList.list.add(syncSport);
      }
      CreekLog.info("运动上传云端数据数量：${syncSportList.list.length}");
      if(_creekSyncServerListen != null){
        _creekSyncServerListen!.creekSyncServerListen(SyncUpDownloadType.up,SyncType.sport,userID == 1 ? true : false,syncSportList.writeToBuffer());
      }
    }

  }

  ///解析云端数据
  parseProtoBuf(Uint8List buf){
    ProtobufResult result =  ProtobufResult.fromBuffer(buf);
    if(result.code == 200){
      if(result.type == 1){
        CreekProcedure.setSyncTime(SyncServerType.activity);
        updateOnceSyncState(SyncServerType.activity);
        if(result.data != null){
           CreekLog.info("云端活动数据写入本地数量：${result.data.length}");
           SyncActivityList syncActivityList = SyncActivityList.fromBuffer(result.data);

           ///数据写入本地
           DBProcedure.insertServerActivityData(syncActivityList);
        }
      }else if(result.type == 2){
        CreekProcedure.setSyncTime(SyncServerType.goal);
        updateOnceSyncState(SyncServerType.goal);
        CreekLog.info("云端目标数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncGoalList syncGoalList = SyncGoalList.fromBuffer(result.data);

          ///数据写入本地
          DBProcedure.insertServerGoalsData(syncGoalList);
        }
      }else if(result.type == 3){
        CreekProcedure.setSyncTime(SyncServerType.hearRate);
        updateOnceSyncState(SyncServerType.hearRate);
        CreekLog.info("云端心率数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncHeartRateList syncHeartRateList = SyncHeartRateList.fromBuffer(result.data);

          ///数据写入本地
          DBProcedure.insertServerHeartRateData(syncHeartRateList);
        }
      }else if(result.type == 4){
        CreekProcedure.setSyncTime(SyncServerType.hrv);
        updateOnceSyncState(SyncServerType.hrv);
        CreekLog.info("云端HRV数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncHeartRateVariabilityList syncHeartRateVariabilityList = SyncHeartRateVariabilityList.fromBuffer(result.data);

          ///数据写入本地
          DBProcedure.insertServerHrvData(syncHeartRateVariabilityList);
        }
      }else if(result.type == 5){
        CreekProcedure.setSyncTime(SyncServerType.noise);
        updateOnceSyncState(SyncServerType.noise);
        CreekLog.info("云端噪音数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncNoiseList syncNoiseList = SyncNoiseList.fromBuffer(result.data);

          ///数据写入本地
          DBProcedure.insertServerNoiseData(syncNoiseList);
        }
      }else if(result.type == 6){
        CreekProcedure.setSyncTime(SyncServerType.pressure);
        updateOnceSyncState(SyncServerType.pressure);
        CreekLog.info("云端压力数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncPressureList syncPressureList = SyncPressureList.fromBuffer(result.data);
          ///数据写入本地
          DBProcedure.insertServerStressData(syncPressureList);
        }

      }else if(result.type == 7){
        CreekProcedure.setSyncTime(SyncServerType.sleep);
        updateOnceSyncState(SyncServerType.sleep);
        CreekLog.info("云端睡眠数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncSleepList syncSleepList = SyncSleepList.fromBuffer(result.data);

          ///数据写入本地
          DBProcedure.insertServerSleepData(syncSleepList);
        }

      }else if(result.type == 8){
        CreekProcedure.setSyncTime(SyncServerType.spo);
        updateOnceSyncState(SyncServerType.spo);
        CreekLog.info("云端血氧数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncSpoList syncSpoList = SyncSpoList.fromBuffer(result.data);
          ///数据写入本地
          DBProcedure.insertServerSpoData(syncSpoList);
        }
      }else if(result.type == 9){
        CreekProcedure.setSyncTime(SyncServerType.sport);
        updateOnceSyncState(SyncServerType.sport);
        CreekLog.info("云端运动数据写入本地数量：${result.data.length}");
        if(result.data != null){
          SyncSportList syncSportList = SyncSportList.fromBuffer(result.data);

          ///数据写入本地
          DBProcedure.insertServerSportData(syncSportList);
        }
      }
    }
  }


}

///获取服务器数据
abstract class CreekBusinessSyncServerListen{
  void creekSyncServerListen(SyncUpDownloadType downloadType,SyncType type,bool isTourist,Uint8List data);
}