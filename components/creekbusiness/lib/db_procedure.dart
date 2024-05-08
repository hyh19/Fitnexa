

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/db/dbModel/creek_heart_rate_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_hrv_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_noise_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sleep_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_spo_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_stress_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_syncState_model.dart';
import 'package:creek_blue_manage/sync/creek_sync_data.dart';
import 'package:creekbusiness/business_enum.dart';
import 'package:creekbusiness/proto/SyncActivity.pb.dart';
import 'package:creekbusiness/proto/SyncGoal.pb.dart';
import 'package:creekbusiness/proto/SyncHeartRate.pb.dart';
import 'package:creekbusiness/proto/SyncHeartRateVariability.pb.dart';
import 'package:creekbusiness/proto/SyncNoise.pb.dart';
import 'package:creekbusiness/proto/SyncPressure.pb.dart';
import 'package:creekbusiness/proto/SyncSleep.pb.dart';
import 'package:creekbusiness/proto/SyncSpo.pb.dart';
import 'package:creekbusiness/proto/SyncSport.pb.dart';
import 'package:sqflite_common/sqlite_api.dart';

class DBProcedure{

  ///查询心率未上传数据
  static Future<List<Map<String, dynamic>>> getHeartRateUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("HEART_RATE_DATA_HEAD", where: "userID = $userID and uploadStatus = 0");
  }

  ///查询血氧未上传数据
  static Future<List<Map<String, dynamic>>> getSpoUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("SPO_DATA_HEAD", where: "userID = $userID and uploadStatus = 0");
  }

  ///查询压力未上传数据
  static Future<List<Map<String, dynamic>>> getStressUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("STRESS_DATA_HEAD", where: "userID = $userID and uploadStatus = 0");
  }

  ///查询噪音未上传数据
  static Future<List<Map<String, dynamic>>> getNoiseUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("NOISE_DATA_HEAD", where: "userID = $userID and uploadStatus = 0");
  }

  ///查询hrv未上传数据
  static Future<List<Map<String, dynamic>>> getHrvUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("HRV_DATA_HEAD", where: "userID = $userID and uploadStatus = 0");
  }

  ///查询运动未上传数据
  static Future<List<Map<String, dynamic>>> getSportUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("SPORT_DATA_HEAD", where: "userID = $userID  and uploadStatus = 0");
  }

  ///查询睡眠未上传数据  按天组合
  static Future<List<CreekSleepTotalModel>> getSleepUploadDays(int? userID) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SLEEP_DATA_HEAD", where: "userID = $userID and uploadStatus = 0");
    List<CreekSleepModel> aList = [];
    List<CreekSleepTotalModel> totalModels = [];
    String time = "";
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekSleepModel creekSleepModel = CreekSleepModel.fromJson(element);
        if(creekSleepModel.getUpDate != time && time != ""){
          totalModels.add(CreekProcedure.calculationSleepTotalModel(aList,time));
          aList = [];
        }
        aList.add(creekSleepModel);
        time = creekSleepModel.getUpDate ?? "";
      }
      if(aList.isNotEmpty){
        totalModels.add(CreekProcedure.calculationSleepTotalModel(aList,time));
      }
    }
    return totalModels;
  }

  ///查询活动的上传状态
  static Future<List<Map<String, dynamic>>> getActivityUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("ACTIVITY_DATA_HEAD", where: "userID = $userID  and uploadStatus = 0");
  }
  ///查询目标的未上传数据
  static Future<List<Map<String, dynamic>>> getGoalsUploadStatus(int userID) async {
    Database database = await DBManager().db;
    return await database.query("GOALS_DATA", where: "userID = $userID and uploadStatus = 0");
  }

  ///上传成功uploadStatus改为true
  static Future<void>updateDBUploadStatus(SyncType type) async{
    Database database = await DBManager().db;
    switch(type){
      case SyncType.activity:
        await database.update("ACTIVITY_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.goal:
        if(CreekSyncData.instance.userID != 1){
          await database.update("GOALS_DATA",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        }
        break;
      case SyncType.hearRate:
        await database.update("HEART_RATE_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.noise:
        await database.update("NOISE_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.pressure:
        await database.update("STRESS_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.sleep:
        await database.update("SLEEP_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.spo:
        await database.update("SPO_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.sport:
        await database.update("SPORT_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
      case SyncType.hrv:
        await database.update("HRV_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
        break;
    }
    return;
  }

  ///云端数据插入数据库
  static Future insertServerStressData(SyncPressureList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":"1",
        "creat_time":e.dataDate,
        "offset_last":e.offsetLast,
        "min":e.pressureMin,
        "max":e.pressureMax,
        "average":e.pressureAverage,
        "low":e.ratioLow,
        "usual":e.ratioUsual,
        "higher":e.ratioHigh,
        "veryHigh":e.ratioVeryHigh,
        "uploadStatus":true,
        "datas":e.datas
      };
      List<Map<String, dynamic>> list = await database.query("STRESS_DATA_HEAD", where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        CreekStressModel model =  CreekStressModel.fromJson(list.first);
        if((model.offsetLast ?? 0) < e.offsetLast){
          await database.update("STRESS_DATA_HEAD", maps, where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
        }
      }else{
        await database.insert("STRESS_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerActivityData(SyncActivityList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creat_time":e.dataDate,
        "offset_last":0,
        "total_step":e.totalStepCount,
        "total_exercise_min":e.totalExerciseDuration,
        "total_activity_calories":e.totalActivityCalorie,
        "total_rest_calories":e.totalRestCalorie,
        "total_distances":e.totalDistance,
        "total_stand_hour":e.totalStandDuration,
        "floors_climbed_support":e.isSupportAltitudeFloors,
        "total_floors_climbed":e.altitudeFloors,
        "uploadStatus":true,
        "datas":e.datas
      };
      List<Map<String, dynamic>> list = await database.query("ACTIVITY_DATA_HEAD", where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        await database.update("ACTIVITY_DATA_HEAD", maps, where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      }else{
        await database.insert("ACTIVITY_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerGoalsData(SyncGoalList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creatTime":e.dataDate,
        "calories":e.calorie,
        "exercise":e.exerciseDuration,
        "stand":e.standDuration,
        "steps":e.stepCount,
        "distance":e.distance,
        "sleepTotal":e.sleepDuration,
        "sportDay":e.sportDay,
        "notifySwitchFlag": e.notifySwitch,
        "notifyFlag": e.notifyType,
        "uploadStatus":true
      };
      List<Map<String, dynamic>> list = await database.query("GOALS_DATA", where: "creatTime = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        await database.update("GOALS_DATA", maps, where: "creatTime = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      }else{
        await database.insert("GOALS_DATA", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerHeartRateData(SyncHeartRateList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creat_time":e.dataDate,
        "offset_last":e.offsetLast,
        "silent_hr":e.hrSilent,
        "min":e.hrMin,
        "max":e.hrMax,
        "average":e.hrAverage,
        "raisedHr":e.hrRiseRatio,
        "hr_interval":e.hrInterval,
        "uploadStatus":true,
        "datas":e.datas
      };
      List<Map<String, dynamic>> list = await database.query("HEART_RATE_DATA_HEAD", where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        CreekHeartRateModel model = CreekHeartRateModel.fromJson(list.first);
        if((model.offsetLast ?? 0) < e.offsetLast){
          await database.update("HEART_RATE_DATA_HEAD", maps, where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
        }
      }else{
        await database.insert("HEART_RATE_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerHrvData(SyncHeartRateVariabilityList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creat_time":e.dataDate,
        "offset_last":e.offsetLast,
        "min":e.hrvMin,
        "max":e.hrvMax,
        "average":e.hrvAverage,
        "sleepMax":e.sleepMax,
        "sleepMin":e.sleepMin,
        "uploadStatus":true,
        "datas":e.datas
      };
      List<Map<String, dynamic>> list = await database.query("HRV_DATA_HEAD", where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        CreekHrvModel model = CreekHrvModel.fromJson(list.first);
        if((model.offsetLast ?? 0) < e.offsetLast){
          await database.update("HRV_DATA_HEAD", maps, where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
        }

      }else{
        await database.insert("HRV_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerNoiseData(SyncNoiseList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creat_time":e.dataDate,
        "offset_last":e.offsetLast,
        "min":e.noiseMin,
        "max":e.noiseMax,
        "average":e.noiseAverage,
        "uploadStatus":true,
        "datas":e.datas
      };
      List<Map<String, dynamic>> list = await database.query("NOISE_DATA_HEAD", where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        CreekNoiseModel model = CreekNoiseModel.fromJson(list.first);
        if((model.offsetLast ?? 0) < e.offsetLast){
          await database.update("NOISE_DATA_HEAD", maps, where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
        }

      }else{
        await database.insert("NOISE_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerSleepData(SyncSleepList list) async {
    Database database = await DBManager().db;

    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.getUpTime.substring(0,10))) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "get_up_date":e.getUpTime.substring(0,10),
        "offset_last":0,
        "fall_asleep_time":e.fallAsleepTime,
        "get_up_time":e.getUpTime,
        "total_sleep_time_mins":e.totalSleepDuration,
        "wake_mins":e.totalWakeDuration,
        "light_sleep_mins":e.totalSleepLightDuration,
        "deep_sleep_mins":e.totalSleepDeepDuration,
        "rem_mins":e.totalRemDuration,
        "wake_count":e.wakeCount,
        "light_sleep_count":e.sleepLightCount,
        "deep_sleep_count":e.sleepDeepCount,
        "rem_count":e.remCount,
        "sleep_score":e.sleepScore,
        "datas":e.datas,
        "uploadStatus":true
      };
      String time = maps["fall_asleep_time"];
      String time2 = maps["get_up_time"];
      String addTime = DateTime.parse(time).add(const Duration(hours: 1)).toString().substring(0,19);
      String subTime = DateTime.parse(time).add(const Duration(hours: -1)).toString().substring(0,19);
      List<Map<String, dynamic>> list =
      await database.query("SLEEP_DATA_HEAD", where: "(fall_asleep_time >= '$subTime' and fall_asleep_time <= '$addTime' or (fall_asleep_time <= '$time' and get_up_time >= '$time') or (fall_asleep_time <= '$time2' and get_up_time >= '$time2') or (fall_asleep_time >= '$time' and get_up_time <= '$time2')) and userID = ${CreekSyncData.instance.userID}");
      if (list.isEmpty) {
        await database.insert("SLEEP_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerSpoData(SyncSpoList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.dataDate)) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creat_time":e.dataDate,
        "offset_last":e.offsetLast,
        "min":e.spoMin,
        "max":e.spoMax,
        "average":e.spoAverage,
        "uploadStatus":true,
        "datas":e.datas
      };
      List<Map<String, dynamic>> list = await database.query("SPO_DATA_HEAD", where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        CreekOxygenModel model =  CreekOxygenModel.fromJson(list.first);
        if((model.offsetLast ?? 0) < e.offsetLast){
          await database.update("SPO_DATA_HEAD", maps, where: "creat_time = '${e.dataDate}' and userID = ${CreekSyncData.instance.userID}");
        }
      }else{
        await database.insert("SPO_DATA_HEAD", maps);
      }
    }
  }

  ///云端数据插入数据库
  static Future insertServerSportData(SyncSportList list) async {
    Database database = await DBManager().db;
    for (var e in list.list) {
      if(!BlueTool.isDateValid(e.startTime.substring(0,10))) continue;
      Map<String, dynamic> maps = {
        "userID":CreekSyncData.instance.userID,
        "deviceId":e.macId == "" ? "1" : e.macId,
        "creatTime":e.startTime.substring(0,10),
        "startTime":e.startTime,
        "endTime":e.endTime,
        "sportType":e.sportType,
        "isConnectApp":e.isConnectApp,
        "sportStartType":e.sportInitiator,
        "durations":e.sportDuration,
        "goalType":e.sportGoalType,
        "goalData":e.sportGoalValue,
        "avgHrValue":e.hrAverage,
        "maxHrValue":e.hrMax,
        "minHrValue":e.hrMin,
        "warmUpTime":e.warmUpDuration,
        "fatBurningTime":e.fatBurningDuration,
        "aerobicExerciseTime":e.aerobicExerciseDuration,
        "anaerobicExerciseTime":e.anaerobicExerciseDuration,
        "extremeExerciseTime":e.extremeExerciseDuration,
        "totalStep":e.totalStep,
        "totalCalories":e.totalCalories,
        "totalDistance":e.totalDistance,
        "fastKmPace":e.kmPaceFast,
        "avgSpeed":e.kmPaceAverage,
        "fastSpeed":e.kmPaceFast,
        "avgStepFrequency":e.stepFrequencyAverage,
        "maxStepFrequency":e.stepFrequencyMax,
        "avgStepStride":e.stepStrideAverage,
        "maxStepStride":e.stepStrideMax,
        "trainingEffect":e.trainScore,
        "vozmax":e.vo2Max,
        "grade":e.vo2Grade,
        "recoveryTime":e.recoveryDuration,
        "hrItemCount":e.hrCount,
        "kmSpeedCount":e.kmSpeedCount,
        "paceCount":e.kmPaceCount,
        "swimDistance":e.swimDistance,
        "maxElevation":e.altitudeMax,
        "minElevation":e.altitudeMin,
        "avgElevation":e.altitudeAverage,
        "climbHeight":e.altitudeRise,
        "met":e.mets,
        "uploadStatus":true,
        "avgPower":e.power,
        "metSupport":e.isSupportMets,
        "elevationSupport":e.isSupportAltitude,
        "avgPowerSupport":e.isSupportPower,
        "hrValueItem":e.hrDatas,
        "kmSpeedItem":e.kmSpeedDatas,
        "stepFrequencyItem":e.stepFrequencyDatas,
        "kmPaceItem":e.kmPaceDatas,
        "stepStrideItem":e.stepStrideDatas,
        "trailData":e.sportTrackDatas,
        "miSpeedItem":e.miSpeedDatas,
        "miPaceItem":e.miPaceDatas,
        "elevationItem":e.altitudeDatas,

      };
      List<Map<String, dynamic>> list = await database.query("SPORT_DATA_HEAD",
          where: "creatTime = '${e.startTime.substring(0,10)}' and startTime = '${e.startTime}' and endTime = '${e.endTime}' and userID = ${CreekSyncData.instance.userID}");
      if(list.isNotEmpty){
        await database.update("SPORT_DATA_HEAD", maps,
            where: "creatTime = '${e.startTime.substring(0,10)}' and startTime = '${e.startTime}' and endTime = '${e.endTime}' and userID = ${CreekSyncData.instance.userID}");
      }else{
        await database.insert("SPORT_DATA_HEAD", maps);
      }
    }
  }

  ///查询最后的同步状态
  static Future<CreekSyncStateModel> getSyncState() async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list =  await database.query("SYNC_STATE",where: "userID = ${CreekSyncData.instance.userID}");
    if(list.isNotEmpty){
      return  CreekSyncStateModel.fromJson(list.first);
    }
    return CreekSyncStateModel();
  }


}
