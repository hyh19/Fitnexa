import 'dart:convert';
import 'dart:math';
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/db/dbModel/creek_activity_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_goals_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_heart_rate_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_home_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_noise_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sleep_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_sport_model.dart';
import 'package:creek_blue_manage/db/dbModel/creek_stress_model.dart';
import 'package:creek_blue_manage/model/activity_model.dart';
import 'package:creek_blue_manage/model/heart_rate.dart';
import 'package:creek_blue_manage/model/noise_model.dart';
import 'package:creek_blue_manage/model/sleep_model.dart';
import 'package:creek_blue_manage/model/spo_model.dart';
import 'package:creek_blue_manage/model/sport_model.dart';
import 'package:creek_blue_manage/model/stress_model.dart';
import 'package:creek_blue_manage/sync/creek_sync_data.dart';
import 'package:creektool/creek_tool.dart';
import 'package:sqflite/sqflite.dart';
import '../model/hrv_model.dart';
import 'dbModel/creek_hrv_model.dart';
import 'dbModel/creek_spo_model.dart';
import 'dbModel/creek_syncState_model.dart';
import 'dbModel/creek_syncTime_model.dart';

///存储过程
class CreekProcedure {

  ///****************************
  ///心率 heartrate
  ///****************************
  /// 插入数据
  static Future insertHeartRateData(List<HeartRateData> data) async {
    Database database = await DBManager().db;


    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    int start = 0;
    int minHr = 0;
    int maxHr = 0;
    for (var e in data) {
      if (e.key == HeartRateKey.head) {
        start = 0;
        minHr = 0;
        maxHr = 0;
        HeartRateHead head = e.data as HeartRateHead;
        start = head.startTime ?? 0;
        String year = (head.year ?? 0) > 9 ? "${head.year}" : "0${head.year}";
        String month = (head.month ?? 0) > 9 ? "${head.month}" : "0${head.month}";
        String day = (head.day ?? 0) > 9 ? "${head.day}" : "0${head.day}";
        maps["creat_time"] = "$year-$month-$day";
        if(!BlueTool.isDateValid("$year-$month-$day")) continue;
        maps["silent_hr"] = head.silentHr;
        maps["raisedHr"] = head.raisedHr;
        maps["average"] = head.average;
        List<Map<String, dynamic>> list = [];
        for (var element in head.hrInterval!) {
          Map<String, dynamic> map = {
            "threshold": element.threshold,
            "minute": element.minute,
          };
          list.add(map);
        }
        maps["hr_interval"] = jsonEncode(list);
        maps["uploadStatus"] = false;
      } else if (e.key == HeartRateKey.data) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<HeartRateItem> items = e.data as List<HeartRateItem>;
          int totalOffset = 0;
          int index = 0;
          int totalValue = 0;
          for (var element in items) {
            totalOffset = totalOffset + (element.offset ?? 0);
            if (element.offset != 255 && element.offset != 0) {
              if(element.hrValue != 0){
                if(minHr == 0 && maxHr ==0){
                  minHr = element.hrValue ?? 0;
                  maxHr = element.hrValue ?? 0;
                }else{
                  maxHr = max(element.hrValue!, maxHr);
                  minHr = min(element.hrValue!, minHr);
                }
              }
              totalValue = totalValue + (element.hrValue ?? 0);
              Map<String, dynamic> map = {
                "offset": ((element.offset ?? 0) + index),
                "value": element.hrValue,
              };
              index = 0;
              list.add(map);
            } else {
              index = index + 255;
            }
          }
          maps["offset_last"] = totalOffset;
        }
        maps["datas"] = jsonEncode(list);
        maps["min"] = minHr;
        maps["max"] = maxHr;

      }
      if (maps.length == 12) {
        try {
          List<Map<String, dynamic>> list = await database.query("HEART_RATE_DATA_HEAD", where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            if(start != 0){
              Map<String, dynamic> dic = list[0];
              int totalOffset2 =  dic["offset_last"];
              int minHr2 =  dic["min"];
              int maxHr2 =  dic["max"];
              int totalOffset  =  maps["offset_last"];
              String data =  dic["datas"];
              dynamic list2 = jsonDecode(data);
              if(list2 is List){
                String data2 =  maps["datas"];
                dynamic list3 = jsonDecode(data2);
                if(list3 is List){
                  list2.addAll(list3);
                }
              }
              maps["datas"] = jsonEncode(list2);
              maps["offset_last"] = totalOffset2 + totalOffset;
              if(minHr == 0 && minHr2 != 0){
                maps["min"] = minHr2;
              }else if(minHr2 == 0 && minHr != 0){
                maps["min"] = minHr;
              }else if(minHr == 0 && minHr2 == 0){
                maps["min"] = 0;
              }else{
                maps["min"] = minHr < minHr2 ? minHr : minHr2;
              }
              maps["max"] = maxHr > maxHr2 ? maxHr : maxHr2;
            }
            await database.update("HEART_RATE_DATA_HEAD", maps, where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
            CreekLog.info("更新成功");
          } else {
            if(maps["creat_time"] == "00-00-00"){
              CreekLog.info("过滤掉00-00-00的数据");
            }else{
              await database.insert("HEART_RATE_DATA_HEAD", maps);
              CreekLog.info("插入成功");
            }

          }
        } catch (e) {
          CreekLog.info(e.toString());
        }
        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }
    }
  }


  ///根据时间范围查询
  ///格式2022-1-2
  static Future<dynamic> getHeartRateTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("HEART_RATE_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' userID = ${CreekSyncData.instance.userID}");
    return toJson(maps);
  }

  ///查询心率未上传数据
  static Future<List<Map<String, dynamic>>> getHeartRateUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("HEART_RATE_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }

  ///根据时间范围查询
  ///格式2022-1-2
  static Future<List<CreekHeartRateModel>> getHeartRateNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<CreekHeartRateModel> heartRateModels = [];
    List<Map<String, dynamic>> maps = await database.query("HEART_RATE_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "creat_time desc");
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekHeartRateModel creekHeartRateModel = CreekHeartRateModel.fromJson(element);
        List<int> heartRates = [];
        int offset = 0;
        for(int i = (creekHeartRateModel.values?.length ?? 0)-1; i>=0;i--){
          CreekHeartRateValueModel creekHeartRateValueModel = creekHeartRateModel.values![i];
          offset = offset + (creekHeartRateValueModel.offset ?? 0);
          if(offset >= 0 && offset <= 3600){
            heartRates.add(creekHeartRateValueModel.value ?? 0);
          }else{
            if(heartRates.isEmpty){
              heartRates.add(creekHeartRateValueModel.value ?? 0);
            }
            break;
          }
        }
        if(heartRates.isNotEmpty){
          creekHeartRateModel.lastHourMin = heartRates.reduce(min);
          creekHeartRateModel.lastHourMax = heartRates.reduce(max);
        }
        heartRateModels.add(creekHeartRateModel);
      }
    }
    return heartRateModels;
  }





  static Map<String, dynamic> toJson(List<Map<String, dynamic>> maps) {
    List<Map<String, dynamic>> jsonList = [];
    maps.forEach((aidc) {
      var interval = aidc["hr_interval"];
      List intervalList = jsonDecode(interval);
      var datas = aidc["datas"];
      List dataList = jsonDecode(datas);
      Map<String, dynamic> dic = {
        "userID": aidc["userID"],
        "deviceId": aidc["deviceId"],
        "creat_time": aidc["creat_time"],
        "offset_last": aidc["offset_last"],
        "silent_hr": aidc["silent_hr"],
        "hr_interval": intervalList,
        "min": aidc["min"],
        "max": aidc["max"],
        "average": aidc["average"],
        "datas": dataList,
      };
      jsonList.add(dic);
    });
    Map<String, dynamic> json = {
      "data": jsonList,
    };
    return json;
  }

  ///****************************
  ///压力 stress
  ///****************************

  /// 插入数据
  static Future insertStressData(List<StressData> data) async {
    Database database = await DBManager().db;
    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    int start = 0;
    int minStress = 0;
    int maxStress = 0;
    int low = 0;
    int usual = 0;
    int higher = 0;
    int veryHigh = 0;
    for (var e in data) {
      if (e.key == SyncStressKey.head) {
        minStress = 0;
        maxStress = 0;
        low = 0;
        usual = 0;
        higher = 0;
        veryHigh = 0;
        StressHead head = e.data as StressHead;
        start = head.startTime ?? 0;
        String year = (head.year ?? 0) > 9 ? "${head.year}" : "0${head.year}";
        String month = (head.month ?? 0) > 9 ? "${head.month}" : "0${head.month}";
        String day = (head.day ?? 0) > 9 ? "${head.day}" : "0${head.day}";
        maps["creat_time"] = "$year-$month-$day";
        if(!BlueTool.isDateValid("$year-$month-$day")) continue;
        maps["average"] = head.average;
        maps["uploadStatus"] = false;
      } else if (e.key == SyncStressKey.data) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<StressItem> items = e.data as List<StressItem>;
          int totalOffset = 0;
          int index = 0;
          for (var element in items) {
            totalOffset = totalOffset + (element.offset ?? 0);
            if (element.offset != 255 && element.offset != 0) {
              if(element.hrValue != 0){
                if(minStress == 0 && maxStress ==0){
                  minStress = element.hrValue ?? 0;
                  maxStress = element.hrValue ?? 0;
                }else{
                  maxStress = max(element.hrValue!, maxStress);
                  minStress = min(element.hrValue!, minStress);
                }
              }
              Map<String, dynamic> map = {
                "offset": ((element.offset ?? 0) + index),
                "value": element.hrValue,
              };
              index = 0;
              list.add(map);
            } else {
              index = index + 255;
            }
          }
          maps["offset_last"] = totalOffset;
        }
        maps["min"] = minStress;
        maps["max"] = maxStress;
        maps["datas"] = jsonEncode(list);
      }
      if (maps.length == 9) {
        try {
          List<Map<String, dynamic>> list = await database.query("STRESS_DATA_HEAD", where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            if(start != 0){
              Map<String, dynamic> dic = list[0];
              int totalOffset2 =  dic["offset_last"];
              int totalOffset  =  maps["offset_last"];
              int minStress2 =  dic["min"];
              int maxStress2 =  dic["max"];
              String data =  dic["datas"];
              dynamic list2 = jsonDecode(data);
              if(list2 is List){
                String data2 =  maps["datas"];
                dynamic list3 = jsonDecode(data2);
                if(list3 is List){
                  list2.addAll(list3);
                }
              }
              maps["datas"] = jsonEncode(list2);
              maps["offset_last"] = totalOffset2 + totalOffset;
              if(minStress == 0 && minStress2 != 0){
                maps["min"] = minStress2;
              }else if(minStress2 == 0 && minStress != 0){
                maps["min"] = minStress;
              }else if(minStress == 0 && minStress2 == 0){
                maps["min"] = 0;
              }else{
                maps["min"] = min(minStress, minStress2);
              }
              maps["max"] = max(maxStress, maxStress2);
              if(list2 is List){
                for (var e in list2) {
                  if(e is Map){
                    int value = e["value"];
                    if(value >= 1 && value <= 29){
                      low = low + 1;
                    }
                    if(value >= 30 && value <= 59){
                      usual = usual + 1;
                    }
                    if(value >= 60 && value <= 79){
                      higher = higher + 1;
                    }
                    if(value >= 79&& value <= 99){
                      veryHigh = veryHigh + 1;
                    }
                  }
                }
              }
              int all = low + usual + higher + veryHigh;
              low =  ((low / all) * 100).toInt();
              usual =  ((usual / all) * 100).toInt();
              higher =  ((higher / all) * 100).toInt();
              veryHigh =  ((veryHigh / all) * 100).toInt();
              if(low+usual+higher+veryHigh < 100 && low+usual+higher+veryHigh > 0){
                int maxValue = [low,usual,higher,veryHigh].reduce(max);
                if(maxValue == low){
                  low = low + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == usual){
                  usual = usual + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == higher){
                  higher = higher + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == veryHigh){
                  veryHigh = veryHigh + (100 - (low+usual+higher+veryHigh));
                }
              }
              maps["low"] = low;
              maps["usual"] = usual;
              maps["higher"] = higher;
              maps["veryHigh"] = veryHigh;
            }else{
              String data =  maps["datas"];
              dynamic list = jsonDecode(data);
              if(list is List){
                for (var e in list) {
                  if(e is Map){
                    int value = e["value"];
                    if(value >= 1 && value <= 29){
                      low = low + 1;
                    }
                    if(value >= 30 && value <= 59){
                      usual = usual + 1;
                    }
                    if(value >= 60 && value <= 79){
                      higher = higher + 1;
                    }
                    if(value >= 79&& value <= 99){
                      veryHigh = veryHigh + 1;
                    }
                  }
                }
              }
              int all = low + usual + higher + veryHigh;
              low =  ((low / all) * 100).toInt();
              usual =  ((usual / all) * 100).toInt();
              higher =  ((higher / all) * 100).toInt();
              veryHigh =  ((veryHigh / all) * 100).toInt();
              if(low+usual+higher+veryHigh < 100 && low+usual+higher+veryHigh > 0){
                int maxValue = [low,usual,higher,veryHigh].reduce(max);
                if(maxValue == low){
                  low = low + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == usual){
                  usual = usual + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == higher){
                  higher = higher + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == veryHigh){
                  veryHigh = veryHigh + (100 - (low+usual+higher+veryHigh));
                }
              }
              maps["low"] = low;
              maps["usual"] = usual;
              maps["higher"] = higher;
              maps["veryHigh"] = veryHigh;
            }
            await database.update("STRESS_DATA_HEAD", maps, where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
            CreekLog.info("更新成功");
          } else {
            if(maps["creat_time"] == "00-00-00"){
              CreekLog.info("过滤掉00-00-00的数据");
            }else{
              String data =  maps["datas"];
              dynamic list = jsonDecode(data);

              if(list is List){
                for (var e in list) {
                  if(e is Map){
                    int value = e["value"];

                    if(value >= 1 && value <= 29){
                      low = low + 1;
                    }
                    if(value >= 30 && value <= 59){
                      usual = usual + 1;
                    }
                    if(value >= 60 && value <= 79){
                      higher = higher + 1;
                    }
                    if(value >= 79&& value <= 99){
                      veryHigh = veryHigh + 1;
                    }
                  }
                }
              }
              int all = low + usual + higher + veryHigh;
              low =  ((low / all) * 100).toInt();
              usual =  ((usual / all) * 100).toInt();
              higher =  ((higher / all) * 100).toInt();
              veryHigh =  ((veryHigh / all) * 100).toInt();
              if(low+usual+higher+veryHigh < 100 && low+usual+higher+veryHigh > 0){
                int maxValue = [low,usual,higher,veryHigh].reduce(max);
                if(maxValue == low){
                  low = low + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == usual){
                  usual = usual + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == higher){
                  higher = higher + (100 - (low+usual+higher+veryHigh));
                }else if(maxValue == veryHigh){
                  veryHigh = veryHigh + (100 - (low+usual+higher+veryHigh));
                }
              }
              maps["low"] = low;
              maps["usual"] = usual;
              maps["higher"] = higher;
              maps["veryHigh"] = veryHigh;
              await database.insert("STRESS_DATA_HEAD", maps);
              CreekLog.info("插入成功");
            }

          }
        } catch (e) {
          CreekLog.info(e.toString());
        }

        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }
    }
  }

  ///查询压力未上传数据
  static Future<List<Map<String, dynamic>>> getStressUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("STRESS_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }

  static Future<List<CreekStressModel>> getStressNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<CreekStressModel> stressModels = [];
    List<Map<String, dynamic>> maps = await database.query("STRESS_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "creat_time desc");
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekStressModel creekStressModel = CreekStressModel.fromJson(element);
        stressModels.add(creekStressModel);
      }

    }
    return stressModels;
  }

  ///****************************
  ///噪音 noise
  ///****************************

  /// 噪音插入数据
  static Future insertNoiseData(List<NoiseData> data) async {
    Database database = await DBManager().db;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    Map<String, dynamic> maps = {};
    maps["userID"] = 1;
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    int start = 0;
    int minSpo = 0;
    int maxSpo = 0;
    for (var e in data) {
      if (e.key == SyncNoiseKey.head) {
        minSpo = 0;
        maxSpo = 0;
        NoiseHead head = e.data as NoiseHead;
        start = head.startTime ?? 0;
        String year = (head.year ?? 0) > 9 ? "${head.year}" : "0${head.year}";
        String month = (head.month ?? 0) > 9 ? "${head.month}" : "0${head.month}";
        String day = (head.day ?? 0) > 9 ? "${head.day}" : "0${head.day}";
        maps["creat_time"] = "$year-$month-$day";
        if(!BlueTool.isDateValid("$year-$month-$day")) continue;
        maps["average"] = head.average;
        maps["uploadStatus"] = false;
      } else if (e.key == SyncNoiseKey.data) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<NoiseItem> items = e.data as List<NoiseItem>;
          int totalOffset = 0;
          int index = 0;
          int totalValue = 0;
          for (var element in items) {

            totalOffset = totalOffset + (element.offset ?? 0);
            if (element.offset != 255 && element.offset != 0) {
              if(element.noiseValue != 0){
                if(minSpo == 0 && maxSpo ==0){
                  minSpo = element.noiseValue ?? 0;
                  maxSpo = element.noiseValue ?? 0;
                }else{
                  maxSpo = max(element.noiseValue!, maxSpo);
                  minSpo = min(element.noiseValue!, minSpo);
                }
              }

              totalValue = totalValue + (element.noiseValue ?? 0);
              Map<String, dynamic> map = {
                "offset": ((element.offset ?? 0) + index),
                "value": element.noiseValue,
              };
              index = 0;
              list.add(map);
            } else {
              index = index + 255;
            }
          }
          maps["offset_last"] = totalOffset;
        }
        maps["datas"] = jsonEncode(list);
        maps["min"] = minSpo;
        maps["max"] = maxSpo;
      }
      if (maps.length == 9) {
        try {
          List<Map<String, dynamic>> list = await database.query("NOISE_DATA_HEAD", where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            if(start != 0){
              Map<String, dynamic> dic = list[0];
              int totalOffset2 =  dic["offset_last"];
              int totalOffset  =  maps["offset_last"];
              int minSpo2 =  dic["min"];
              int maxSpo2 =  dic["max"];
              String data =  dic["datas"];
              dynamic list2 = jsonDecode(data);
              if(list2 is List){
                String data2 =  maps["datas"];
                dynamic list3 = jsonDecode(data2);
                if(list3 is List){
                  list2.addAll(list3);
                }
              }
              maps["datas"] = jsonEncode(list2);
              maps["offset_last"] = totalOffset2 + totalOffset;
              if(minSpo == 0 && minSpo2 != 0){
                maps["min"] = minSpo2;
              }else if(minSpo2 == 0 && minSpo != 0){
                maps["min"] = minSpo;
              }else if(minSpo == 0 && minSpo2 == 0){
                maps["min"] = 0;
              }else{
                maps["min"] = minSpo < minSpo2 ? minSpo : minSpo2;
              }
              maps["max"] = maxSpo > maxSpo2 ? maxSpo : maxSpo2;
            }
            await database.update("NOISE_DATA_HEAD", maps, where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
            CreekLog.info("更新成功");
          } else {
            if(maps["creat_time"] == "00-00-00"){
              CreekLog.info("过滤掉00-00-00的数据");
            }else{
              await database.insert("NOISE_DATA_HEAD", maps);
              CreekLog.info("插入成功");
            }

          }
        } catch (e) {
          CreekLog.info(e.toString());
        }
        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }
    }
  }


  ///查询噪音未上传数据
  static Future<List<Map<String, dynamic>>> getNoiseUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("NOISE_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }


  ///根据时间范围查询
  ///格式2022-1-2
  static Future<List<CreekNoiseModel>> getNoiseNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<CreekNoiseModel> noiseModels = [];
    List<Map<String, dynamic>> maps = await database.query("NOISE_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "creat_time desc");
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekNoiseModel creekNoiseModel = CreekNoiseModel.fromJson(element);
        noiseModels.add(creekNoiseModel);
      }
    }
    return noiseModels;
  }



  ///****************************
  ///hrv
  ///****************************

  /// hrv插入数据
  static Future insertHrvData(List<HrvData> data) async {
    Database database = await DBManager().db;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    int start = 0;
    int minSpo = 0;
    int maxSpo = 0;
    for (var e in data) {
      if (e.key == SyncHrvKey.head) {
        minSpo = 0;
        maxSpo = 0;
        HrvHead head = e.data as HrvHead;
        start = head.startTime ?? 0;
        String year = (head.year ?? 0) > 9 ? "${head.year}" : "0${head.year}";
        String month = (head.month ?? 0) > 9 ? "${head.month}" : "0${head.month}";
        String day = (head.day ?? 0) > 9 ? "${head.day}" : "0${head.day}";
        maps["creat_time"] = "$year-$month-$day";
        if(!BlueTool.isDateValid("$year-$month-$day")) continue;
        maps["average"] = head.average;
        maps["sleepMin"] = head.sleepHrvMin;
        maps["sleepMax"] = head.sleepHrvMax;
        maps["uploadStatus"] = false;
      } else if (e.key == SyncHrvKey.data) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<HrvItem> items = e.data as List<HrvItem>;
          int totalOffset = 0;
          int index = 0;
          int totalValue = 0;
          for (var element in items) {

            totalOffset = totalOffset + (element.offset ?? 0);
            if (element.offset != 255 && element.offset != 0) {
              if(element.hrValue != 0){
                if(minSpo == 0 && maxSpo ==0){
                  minSpo = element.hrValue ?? 0;
                  maxSpo = element.hrValue ?? 0;
                }else{
                  maxSpo = max(element.hrValue!, maxSpo);
                  minSpo = min(element.hrValue!, minSpo);
                }
              }

              totalValue = totalValue + (element.hrValue ?? 0);
              Map<String, dynamic> map = {
                "offset": ((element.offset ?? 0) + index),
                "value": element.hrValue,
              };
              index = 0;
              list.add(map);
            } else {
              index = index + 255;
            }
          }
          maps["offset_last"] = totalOffset;
        }
        maps["datas"] = jsonEncode(list);
        maps["min"] = minSpo;
        maps["max"] = maxSpo;
      }
      if (maps.length == 11) {
        try {
          List<Map<String, dynamic>> list = await database.query("HRV_DATA_HEAD", where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            if(start != 0){
              Map<String, dynamic> dic = list[0];
              int totalOffset2 =  dic["offset_last"];
              int totalOffset  =  maps["offset_last"];
              int minSpo2 =  dic["min"];
              int maxSpo2 =  dic["max"];
              String data =  dic["datas"];
              dynamic list2 = jsonDecode(data);
              if(list2 is List){
                String data2 =  maps["datas"];
                dynamic list3 = jsonDecode(data2);
                if(list3 is List){
                  list2.addAll(list3);
                }
              }
              maps["datas"] = jsonEncode(list2);
              maps["offset_last"] = totalOffset2 + totalOffset;
              if(minSpo == 0 && minSpo2 != 0){
                maps["min"] = minSpo2;
              }else if(minSpo2 == 0 && minSpo != 0){
                maps["min"] = minSpo;
              }else if(minSpo == 0 && minSpo2 == 0){
                maps["min"] = 0;
              }else{
                maps["min"] = minSpo < minSpo2 ? minSpo : minSpo2;
              }
              maps["max"] = maxSpo > maxSpo2 ? maxSpo : maxSpo2;
            }
            await database.update("HRV_DATA_HEAD", maps, where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
            CreekLog.info("更新成功");
          } else {
            if(maps["creat_time"] == "00-00-00"){
              CreekLog.info("过滤掉00-00-00的数据");
            }else{
              await database.insert("HRV_DATA_HEAD", maps);
              CreekLog.info("插入成功");
            }

          }
        } catch (e) {
          CreekLog.info(e.toString());
        }
        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }
    }
  }



  ///查询hrv未上传数据
  static Future<List<Map<String, dynamic>>> getHrvUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("HRV_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }

  ///根据时间范围查询
  ///格式2022-1-2
  static Future<List<CreekHrvModel>> getHrvNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<CreekHrvModel> heartHrvModels = [];
    List<Map<String, dynamic>> maps = await database.query("HRV_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "creat_time desc");
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekHrvModel creekHrvModel = CreekHrvModel.fromJson(element);
        heartHrvModels.add(creekHrvModel);
      }
    }
    return heartHrvModels;
  }


  ///****************************
  ///血氧 spo2
  ///****************************
  /// 插入数据
  static Future insertSpoData(List<SpoData> data) async {
    Database database = await DBManager().db;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    int start = 0;
    int minSpo = 0;
    int maxSpo = 0;
    for (var e in data) {
      if (e.key == SyncSpoKey.head) {
        minSpo = 0;
        maxSpo = 0;
        SpoHead head = e.data as SpoHead;
        start = head.startTime ?? 0;
        String year = (head.year ?? 0) > 9 ? "${head.year}" : "0${head.year}";
        String month = (head.month ?? 0) > 9 ? "${head.month}" : "0${head.month}";
        String day = (head.day ?? 0) > 9 ? "${head.day}" : "0${head.day}";
        maps["creat_time"] = "$year-$month-$day";
        if(!BlueTool.isDateValid("$year-$month-$day")) continue;
        maps["average"] = head.average;
        maps["uploadStatus"] = false;
      } else if (e.key == SyncSpoKey.data) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<SpoItem> items = e.data as List<SpoItem>;
          int totalOffset = 0;
          int index = 0;
          int totalValue = 0;
          for (var element in items) {
            totalOffset = totalOffset + (element.offset ?? 0);
            if (element.offset != 255 && element.offset != 0) {
              if(element.hrValue != 0){
                if(minSpo == 0 && maxSpo ==0){
                  minSpo = element.hrValue ?? 0;
                  maxSpo = element.hrValue ?? 0;
                }else{
                  maxSpo = max(element.hrValue!, maxSpo);
                  minSpo = min(element.hrValue!, minSpo);
                }
              }
              totalValue = totalValue + (element.hrValue ?? 0);
              Map<String, dynamic> map = {
                "offset": ((element.offset ?? 0) + index),
                "value": element.hrValue,
              };
              index = 0;
              list.add(map);
            } else {
              index = index + 255;
            }
          }
          maps["offset_last"] = totalOffset;
        }
        maps["datas"] = jsonEncode(list);
        maps["min"] = minSpo;
        maps["max"] = maxSpo;

      }
      if (maps.length == 9) {
        try {
          List<Map<String, dynamic>> list = await database.query("SPO_DATA_HEAD", where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            if(start != 0){
              Map<String, dynamic> dic = list[0];
              int totalOffset2 =  dic["offset_last"];
              int totalOffset  =  maps["offset_last"];
              int minSpo2 =  dic["min"];
              int maxSpo2 =  dic["max"];
              String data =  dic["datas"];
              dynamic list2 = jsonDecode(data);
              if(list2 is List){
                String data2 =  maps["datas"];
                dynamic list3 = jsonDecode(data2);
                if(list3 is List){
                  list2.addAll(list3);
                }
              }
              maps["datas"] = jsonEncode(list2);
              maps["offset_last"] = totalOffset2 + totalOffset;
              if(minSpo == 0 && minSpo2 != 0){
                maps["min"] = minSpo2;
              }else if(minSpo2 == 0 && minSpo != 0){
                maps["min"] = minSpo;
              }else if(minSpo == 0 && minSpo2 == 0){
                maps["min"] = 0;
              }else{
                maps["min"] = minSpo < minSpo2 ? minSpo : minSpo2;
              }
              maps["max"] = maxSpo > maxSpo2 ? maxSpo : maxSpo2;
            }
            await database.update("SPO_DATA_HEAD", maps, where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
            CreekLog.info("更新成功");
          } else {
            if(maps["creat_time"] == "00-00-00"){
              CreekLog.info("过滤掉00-00-00的数据");
            }else{
              await database.insert("SPO_DATA_HEAD", maps);
              CreekLog.info("插入成功");
            }
          }
        } catch (e) {
          CreekLog.info(e.toString());
        }
        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }
    }
  }


  ///查询血氧未上传数据
  static Future<List<Map<String, dynamic>>> getSpoUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("SPO_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }

  ///根据时间范围查询
  ///格式2022-1-2
  static Future<List<CreekOxygenModel>> getSpoNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<CreekOxygenModel> heartOxygenModels = [];
    List<Map<String, dynamic>> maps = await database.query("SPO_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "creat_time desc");
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekOxygenModel creekOxygenModel = CreekOxygenModel.fromJson(element);
        List<int> heartRates = [];
        int offset = 0;
        for(int i = (creekOxygenModel.values?.length ?? 0)-1; i>=0;i--){
          CreekOxygenValueModel creekOxygenValueModel = creekOxygenModel.values![i];
          offset = offset + (creekOxygenValueModel.offset ?? 0);
          heartRates.add(creekOxygenValueModel.value ?? 0);
          // if(offset >= 0 && offset <= 60){
          //   heartRates.add(creekOxygenValueModel.value ?? 0);
          // }else{
          //   if(heartRates.isEmpty){
          //     heartRates.add(creekOxygenValueModel.value ?? 0);
          //   }
          //   break;
          // }
        }
        int raised = 0;
        if(heartRates.isNotEmpty){
          for (var element in heartRates) {
            if(element >= 90){
              raised ++;
            }
          }
          creekOxygenModel.greaterProportion = double.parse(((raised / heartRates.length).isNaN ? 0 : (raised  / heartRates.length)).toStringAsFixed(2));
          creekOxygenModel.lessProportion =  1 -  (creekOxygenModel.greaterProportion ?? 0);
          creekOxygenModel.lastHourMin = heartRates.reduce(min);
          creekOxygenModel.lastHourMax = heartRates.reduce(max);
        }


        heartOxygenModels.add(creekOxygenModel);
      }

    }
    return heartOxygenModels;
  }


  ///****************************
  ///运动 sport
  ///****************************
  /// 插入数据
  static Future insertSportData(List<SportData> data) async {
    Database database = await DBManager().db;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    maps["deviceId"] = deviceModel?.macAddress ?? "1";

    for (var e in data) {
      if (e.key == SyncSportKey.head) {
        if (maps.length == 61) {
          try {
            List<Map<String, dynamic>> list = await database.query("SPORT_DATA_HEAD",
                where: "creatTime = '${maps["creatTime"]}' and startTime = '${maps["startTime"]}' and endTime = '${maps["endTime"]}' and userID = ${CreekSyncData.instance.userID}");
            if (list.isNotEmpty) {
              await database.update("SPORT_DATA_HEAD", maps,
                  where: "creatTime = '${maps["creatTime"]}' and startTime = '${maps["startTime"]}' and endTime = '${maps["endTime"]}' and userID = ${CreekSyncData.instance.userID}");
              CreekLog.info("更新成功");
            } else {
              int id = await database.insert("SPORT_DATA_HEAD", maps);
              if(id == 0){
                CreekLog.info("插入失败");
                int id = await database.insert("SPORT_DATA_HEAD", maps);
              }else{
                CreekLog.info("插入成功");
              }
            }
          } catch (e) {
            CreekLog.info(e.toString());
          }
          maps = {};
        }
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
        try{
          SportHead head = e.data as SportHead;
          String year = (head.sportTime?.year ?? 0) > 9 ? "${head.sportTime?.year}" : "0${head.sportTime?.year}";
          String month = (head.sportTime?.month ?? 0) > 9 ? "${head.sportTime?.month}" : "0${head.sportTime?.month}";
          String day = (head.sportTime?.day ?? 0) > 9 ? "${head.sportTime?.day}" : "0${head.sportTime?.day}";
          String hour = (head.sportTime?.hour ?? 0) > 9 ? "${head.sportTime?.hour}" : "0${head.sportTime?.hour}";
          String minute = (head.sportTime?.minute ?? 0) > 9 ? "${head.sportTime?.minute}" : "0${head.sportTime?.minute}";
          String second = (head.sportTime?.second ?? 0) > 9 ? "${head.sportTime?.second}" : "0${head.sportTime?.second}";
          maps["creatTime"] = "$year-$month-$day";
          if(!BlueTool.isDateValid("$year-$month-$day")) continue;
          maps["startTime"] = "$year-$month-$day $hour:$minute:$second";
          DateTime startTime = DateTime(head.sportTime?.year ?? 0, head.sportTime?.month ?? 0, head.sportTime?.day ?? 0, head.sportTime?.hour ?? 0,
              head.sportTime?.minute ?? 0, head.sportTime?.second ?? 0);
          DateTime endTime = startTime.add(Duration(seconds: head.durations ?? 0));
          maps["endTime"] = endTime.toString().substring(0, 19);
          maps["sportType"] = head.type ?? 0;
          maps["isConnectApp"] = head.isConnectApp == true ? 1 : 0;
          maps["sportStartType"] = head.sportStartType ?? 0;
          maps["durations"] = head.durations ?? 0;
          maps["goalType"] = head.sportGoalType ?? 0;
          maps["goalData"] = head.goalData ?? 0;
          maps["avgHrValue"] = head.avgHrValue ?? 0;
          maps["maxHrValue"] = head.maxHrValue ?? 0;
          maps["minHrValue"] = head.minHrValue ?? 0;
          maps["warmUpTime"] = head.warmUpTime ?? 0;
          maps["fatBurningTime"] = head.fatBurningTime ?? 0;
          maps["aerobicExerciseTime"] = head.anaerobicExerciseTime ?? 0;
          maps["anaerobicExerciseTime"] = head.anaerobicExerciseTime ?? 0;
          maps["extremeExerciseTime"] = head.extremeExerciseTime ?? 0;
          maps["totalStep"] = head.totalStep ?? 0;
          maps["totalCalories"] = head.totalCalories ?? 0;
          maps["totalDistance"] = head.totalDistance ?? 0;
          maps["avgKmPace"] = head.avgKmPace ?? 0;
          maps["fastKmPace"] = head.fastKmPace ?? 0;
          maps["avgSpeed"] = head.avgSpeed ?? 0;
          maps["fastSpeed"] = head.fastSpeed ?? 0;
          maps["avgStepFrequency"] = head.avgStepFrequency ?? 0;
          maps["maxStepFrequency"] = head.maxStepFrequency ?? 0;
          maps["avgStepStride"] = head.avgStepStride ?? 0;
          maps["maxStepStride"] = head.maxStepStride ?? 0;
          maps["trainingEffect"] = head.trainingEffect ?? 0;
          maps["vozmax"] = head.vozMax ?? 0;
          maps["grade"] = head.grade ?? 0;
          maps["recoveryTime"] = head.recoveryTime ?? 0;
          maps["hrItemCount"] = head.hrItemCount ?? 0;
          maps["kmSpeedCount"] = head.kmSpeedCount ?? 0;
          maps["avgPower"] = head.avgPower ?? 0;
          maps["swimDistance"] = head.swimDistance ?? 0;
          maps["maxElevation"] = head.maxElevation ?? 0;
          maps["minElevation"] = head.minElevation ?? 0;
          maps["avgElevation"] = head.avgElevation ?? 0;
          maps["climbHeight"] = head.climbHeight ?? 0;
          maps["met"] = head.met ?? 0;
          maps["metSupport"] = head.metSupport == true  ? 1 : 0;
          maps["elevationSupport"] = head.elevationSupport == true  ? 1 : 0;
          maps["avgPowerSupport"] = head.avgPowerSupport == true  ? 1 : 0;
          maps["speedPaceSupport"] = head.speedPaceSupport == true  ? 1 : 0;
          maps["restCaloriesSupport"] = head.restCaloriesSupport == true  ? 1 : 0;
          maps["totalRestCalories"] = head.totalRestCalories ?? 0;
          maps["strava"] = 0;
          List<int> list = [];
          maps["uploadStatus"] = false;
          maps["hrValueItem"] = jsonEncode(list);
          maps["kmSpeedItem"] = jsonEncode(list);
          maps["stepFrequencyItem"] = jsonEncode(list);
          maps["kmPaceItem"] = jsonEncode(list);
          maps["stepStrideItem"] = jsonEncode(list);
          maps["trailData"] = jsonEncode(list);
          maps["miSpeedItem"] = jsonEncode(list);
          maps["miPaceItem"] = jsonEncode(list);
          maps["elevationItem"] = jsonEncode(list);
          maps["speedPaceItem"] = jsonEncode(list);
        }catch(e){
          CreekLog.info(e.toString());
        }

      } else if (e.key == SyncSportKey.hr) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["hrValueItem"] = jsonEncode(list);
      } else if (e.key == SyncSportKey.kmSpeed) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["kmSpeedItem"] = jsonEncode(list);
      }else if (e.key == SyncSportKey.imSpeed) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["miSpeedItem"] = jsonEncode(list);
      }else if (e.key == SyncSportKey.imPace) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["miPaceItem"] = jsonEncode(list);
      } else if (e.key == SyncSportKey.step) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["stepFrequencyItem"] = jsonEncode(list);
      } else if (e.key == SyncSportKey.kmPace) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["kmPaceItem"] = jsonEncode(list);
      } else if (e.key == SyncSportKey.stepStride) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["stepStrideItem"] = jsonEncode(list);
      } else if (e.key == SyncSportKey.elevation) {
        List<int> list = [];
        if (e.data != null) {
          if (e.data is List<int>) {
            list = e.data as List<int>;
          }
        }
        maps["elevationItem"] = jsonEncode(list);
      }else if (e.key == SyncSportKey.trailData) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<TrailData> items = e.data as List<TrailData>;
          for (var element in items) {
            Map<String, dynamic> map = {
              "latitude": element.latitude,
              "longitude": element.longitude,
            };
            list.add(map);
          }
        }
        maps["trailData"] = jsonEncode(list);
      }else if (e.key == SyncSportKey.speedPace) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<SpeedPaceItem> items = e.data as List<SpeedPaceItem>;
          for (var element in items) {
            Map<String, dynamic> map = {
              "speed": element.speed,
              "pace": element.pace,
            };
            list.add(map);
          }
        }
        maps["speedPaceItem"] = jsonEncode(list);
      }
    }
    if (maps.length == 61) {
      try {
        List<Map<String, dynamic>> list = await database.query("SPORT_DATA_HEAD",
            where: "creatTime = '${maps["creatTime"]}' and startTime = '${maps["startTime"]}' and endTime = '${maps["endTime"]}' and userID = ${CreekSyncData.instance.userID}");
        if (list.isNotEmpty) {
          await database.update("SPORT_DATA_HEAD", maps,
              where: "creatTime = '${maps["creatTime"]}' and startTime = '${maps["startTime"]}' and endTime = '${maps["endTime"]}' and userID = ${CreekSyncData.instance.userID}");
          CreekLog.info("更新成功");
        } else {
          int id = await database.insert("SPORT_DATA_HEAD", maps);
          if(id == 0){
            CreekLog.info("插入失败");
            int id = await database.insert("SPORT_DATA_HEAD", maps);
          }else{
            CreekLog.info("插入成功");
          }
        }
      } catch (e) {
        CreekLog.info(e.toString());
      }
      maps = {};
      maps["userID"] = CreekSyncData.instance.userID;
      maps["deviceId"] = deviceModel?.macAddress ?? "1";
    }
  }


  ///根据时间范围查询
  ///格式2022-1-2
  static Future<dynamic> getSportTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SPORT_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}");
    return toSportJson(maps);
  }

  ///根据时间范围查询
  ///格式2022-1-2
  static Future<dynamic> getSportDetails(int id) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SPORT_DATA_HEAD", where: "id = '$id'");
    return toSportJson(maps);
  }

  ///根据id查询运动详情

  static Future<CreekSportModel?> getNewSportDetails(int id) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SPORT_DATA_HEAD", where: "id = '$id'");
    if(maps.isNotEmpty){
      Map<String, dynamic> data =  maps.first;
      CreekSportModel creekSportModel = CreekSportModel.fromJson(data);
      return creekSportModel;
    }
    return null;
  }

  static Future<List<Map<String, dynamic>>> getSportUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("SPORT_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }
 /// 查询strava未上传的数据
  static Future<List<Map<String, dynamic>>> getSportStravaUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("SPORT_DATA_HEAD", where: "strava = 0");
  }


  static Map<String, dynamic> toSportJson(List<Map<String, dynamic>> maps) {
    List<Map<String, dynamic>> jsonList = [];
    maps.forEach((aidc) {
      jsonList.add(aidc);
    });
    Map<String, dynamic> json = {
      "data": jsonList,
    };
    return json;
  }

  ///****************************
  ///睡眠 sleep
  ///****************************
  /// 插入数据
  static Future insertSleepData(List<SleepData> data) async {
    Database database = await DBManager().db;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    for(int i = data.length - 1; i>=0; i--){
      SleepData e = data[i];
      if (e.key == SyncSleepKey.head) {
        SleepHead head = e.data as SleepHead;
        String upYear = (head.getUpTime?.year ?? 0) > 9 ? "${head.getUpTime?.year}" : "0${head.getUpTime?.year}";
        String upMonth = (head.getUpTime?.month ?? 0) > 9 ? "${head.getUpTime?.month}" : "0${head.getUpTime?.month}";
        String upDay = (head.getUpTime?.day ?? 0) > 9 ? "${head.getUpTime?.day}" : "0${head.getUpTime?.day}";
        String upHour = (head.getUpTime?.hour ?? 0) > 9 ? "${head.getUpTime?.hour}" : "0${head.getUpTime?.hour}";
        String upMinute = (head.getUpTime?.minute ?? 0) > 9 ? "${head.getUpTime?.minute}" : "0${head.getUpTime?.minute}";
        String upSecond = (head.getUpTime?.second ?? 0) > 9 ? "${head.getUpTime?.second}" : "0${head.getUpTime?.second}";
        String sleepYear = (head.fallAsleepTime?.year ?? 0) > 9 ? "${head.fallAsleepTime?.year}" : "0${head.fallAsleepTime?.year}";
        String sleepMonth = (head.fallAsleepTime?.month ?? 0) > 9 ? "${head.fallAsleepTime?.month}" : "0${head.fallAsleepTime?.month}";
        String sleepDay = (head.fallAsleepTime?.day ?? 0) > 9 ? "${head.fallAsleepTime?.day}" : "0${head.fallAsleepTime?.day}";
        String sleepHour = (head.fallAsleepTime?.hour ?? 0) > 9 ? "${head.fallAsleepTime?.hour}" : "0${head.fallAsleepTime?.hour}";
        String sleepMinute = (head.fallAsleepTime?.minute ?? 0) > 9 ? "${head.fallAsleepTime?.minute}" : "0${head.fallAsleepTime?.minute}";
        String sleepSecond = (head.fallAsleepTime?.second ?? 0) > 9 ? "${head.fallAsleepTime?.second}" : "0${head.fallAsleepTime?.second}";
        maps["get_up_date"] = "$upYear-$upMonth-$upDay";
        if(!BlueTool.isDateValid("$upYear-$upMonth-$upDay")) continue;
        maps["get_up_time"] = "$upYear-$upMonth-$upDay $upHour:$upMinute:$upSecond";
        maps["fall_asleep_time"] = "$sleepYear-$sleepMonth-$sleepDay $sleepHour:$sleepMinute:$sleepSecond";
        maps["total_sleep_time_mins"] = head.totalSleepTimeMin ?? 0;
        maps["wake_mins"] = head.wakeMin ?? 0;
        maps["light_sleep_mins"] = head.lightSleepMin ?? 0;
        maps["deep_sleep_mins"] = head.deepSleepMin ?? 0;
        maps["rem_mins"] = head.remMin ?? 0;
        maps["wake_count"] = head.wakeCount ?? 0;
        maps["light_sleep_count"] = head.lightSleepCount ?? 0;
        maps["deep_sleep_count"] = head.deepSleepMin ?? 0;
        maps["rem_count"] = head.remCount ?? 0;
        maps["sleep_score"] = head.sleepScore ?? 0;
        maps["uploadStatus"] = false;
      } else if (e.key == SyncSleepKey.data) {
        List<Map<String, dynamic>> list = [];
        maps["offset_last"] = 0;
        if (e.data != null) {
          List<SleepItem> items = e.data as List<SleepItem>;
          SleepItem item = items.last;
          maps["offset_last"] = item.duration;
          for (var element in items) {
            Map<String, dynamic> map = {
              "stage": element.stage,
              "duration": element.duration,
            };
            list.add(map);
          }
        }
        maps["datas"] = jsonEncode(list);
      }
      if (maps.length == 18) {
        try {
          String time = maps["fall_asleep_time"];
          String time2 = maps["get_up_time"];
          String addTime = DateTime.parse(time).add(const Duration(hours: 1)).toString().substring(0,19);
          String subTime = DateTime.parse(time).add(const Duration(hours: -1)).toString().substring(0,19);
          List<Map<String, dynamic>> list =
          await database.query("SLEEP_DATA_HEAD", where: "(fall_asleep_time >= '$subTime' and fall_asleep_time <= '$addTime' or (fall_asleep_time <= '$time' and get_up_time >= '$time') or (fall_asleep_time <= '$time2' and get_up_time >= '$time2') or (fall_asleep_time >= '$time' and get_up_time <= '$time2')) and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            var dic = list.first;
            await database.update("SLEEP_DATA_HEAD", maps, where: "id = '${dic["id"]}'");
            await database.update("SLEEP_DATA_HEAD", {"uploadStatus":0}, where: "get_up_date = '${maps["get_up_date"]}'");
            CreekLog.info("更新成功");
          } else {
            await database.insert("SLEEP_DATA_HEAD", maps);
            await database.update("SLEEP_DATA_HEAD", {"uploadStatus":0}, where: "get_up_date = '${maps["get_up_date"]}'");
            CreekLog.info("插入成功");
          }
        } catch (e) {
          CreekLog.info(e.toString());
        }
        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }

    }

  }
  ///根据时间范围查询
  ///格式2022-1-2
  static Future<dynamic> getSleepTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SLEEP_DATA_HEAD", where: "get_up_date >= '$startTime' and get_up_date <= '$endTime'");
    return toSleepJson(maps);
  }




  ///查询睡眠未上传数据
  static Future<List<Map<String, dynamic>>> getSleepUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("SLEEP_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }

  ///根据时间范围查询
  ///格式2022-1-2
  static Future<List<CreekSleepTotalModel>> getSleepNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SLEEP_DATA_HEAD", where: "get_up_date >= '$startTime' and get_up_date <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "get_up_date desc");
    List<CreekSleepModel> aList = [];
    List<CreekSleepTotalModel> totalModels = [];
    String time = "";
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekSleepModel creekSleepModel = CreekSleepModel.fromJson(element);
        if(creekSleepModel.getUpDate != time && time != ""){
          totalModels.add(calculationSleepTotalModel(aList,time));
          aList = [];
        }
        aList.add(creekSleepModel);
        time = creekSleepModel.getUpDate ?? "";
      }
      if(aList.isNotEmpty){
        totalModels.add(calculationSleepTotalModel(aList,time));
      }
    }
    return totalModels;
  }

  ///查询睡眠未上传数据  按天组合
  static Future<List<CreekSleepTotalModel>> getSleepUploadDays() async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SLEEP_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
    List<CreekSleepModel> aList = [];
    List<CreekSleepTotalModel> totalModels = [];
    String time = "";
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekSleepModel creekSleepModel = CreekSleepModel.fromJson(element);
        if(creekSleepModel.getUpDate != time && time != ""){
          totalModels.add(calculationSleepTotalModel(aList,time));
          aList = [];
        }
        aList.add(creekSleepModel);
        time = creekSleepModel.getUpDate ?? "";
      }
      if(aList.isNotEmpty){
        totalModels.add(calculationSleepTotalModel(aList,time));
      }
    }
    return totalModels;
  }

  ///查询睡眠未上传数据  按天组合   json数据格式
  static Future<List<Map<String, dynamic>>> getNewSleepUploadDays() async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("SLEEP_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
    return maps;
  }

  static CreekSleepTotalModel calculationSleepTotalModel(List<CreekSleepModel> aList,String time){
    int? totalSleepTime;
    int? deep;
    int? light;
    int? rem;
    int? awake;
    CreekSleepTotalModel creekSleepTotalModel = CreekSleepTotalModel();
    creekSleepTotalModel.createTime = time;
    CreekSleepModel sleepScore = CreekSleepModel();
    for(var e in aList){
      totalSleepTime = (totalSleepTime ?? 0) + (e.totalSleepTimeMin ?? 0);
      deep = (deep ?? 0) + (e.deepSleepMin ?? 0);
      light = (light ?? 0) + (e.lightSleepMin ?? 0);
      rem = (rem ?? 0) + (e.remMin ?? 0);
      awake = (awake ?? 0) + (e.wakeMin ?? 0);
      if((e.totalSleepTimeMin ?? 0) > (sleepScore.totalSleepTimeMin ?? 0)){
        sleepScore = e;
      }
    }
    creekSleepTotalModel.sleepScore = sleepScore.sleepScore;
    ///计算当天睡眠的总占比

    creekSleepTotalModel.deepProportion =  double.parse((((deep ?? 0) / (totalSleepTime ?? 0)).isNaN ? 0 : ((deep ?? 0) / (totalSleepTime ?? 0))).toStringAsFixed(2));
    creekSleepTotalModel.lightProportion =  double.parse((((light ?? 0) / (totalSleepTime ?? 0)).isNaN ? 0 : ((light ?? 0) / (totalSleepTime ?? 0))).toStringAsFixed(2));
    creekSleepTotalModel.remProportion =  double.parse((((rem ?? 0) / (totalSleepTime ?? 0)).isNaN ? 0 : ((rem ?? 0) / (totalSleepTime ?? 0))).toStringAsFixed(2));
    creekSleepTotalModel.awakeProportion =  double.parse((((awake ?? 0) / (totalSleepTime ?? 0)).isNaN ? 0 : ((awake ?? 0) / (totalSleepTime ?? 0))).toStringAsFixed(2));
    double a = (creekSleepTotalModel.deepProportion ?? 0) + (creekSleepTotalModel.lightProportion ?? 0) + (creekSleepTotalModel.remProportion ?? 0) + (creekSleepTotalModel.awakeProportion ?? 0);
    if(a < 1){
      if((creekSleepTotalModel.deepProportion ?? 0) > 0){
        creekSleepTotalModel.deepProportion = (creekSleepTotalModel.deepProportion ?? 0) + (1 -a);
      }else if((creekSleepTotalModel.lightProportion ?? 0) > 0){
        creekSleepTotalModel.lightProportion = (creekSleepTotalModel.lightProportion ?? 0) + (1 -a);
      }else if((creekSleepTotalModel.remProportion ?? 0) > 0){
        creekSleepTotalModel.remProportion = (creekSleepTotalModel.remProportion ?? 0) + (1 -a);
      }else if((creekSleepTotalModel.awakeProportion ?? 0) > 0){
        creekSleepTotalModel.awakeProportion = (creekSleepTotalModel.awakeProportion ?? 0) + (1 -a);
      }
    }
    if(a > 1){
      if((creekSleepTotalModel.deepProportion ?? 0) - (a - 1) > 0){
        creekSleepTotalModel.deepProportion = (creekSleepTotalModel.deepProportion ?? 0) - (a - 1);
      }else if((creekSleepTotalModel.lightProportion ?? 0) - (a - 1) > 0){
        creekSleepTotalModel.lightProportion = (creekSleepTotalModel.lightProportion ?? 0) - (a - 1);
      }else if((creekSleepTotalModel.remProportion ?? 0) - (a - 1) > 0){
        creekSleepTotalModel.remProportion = (creekSleepTotalModel.remProportion ?? 0) - (a - 1);
      }else if((creekSleepTotalModel.awakeProportion ?? 0) - (a - 1) > 0){
        creekSleepTotalModel.awakeProportion = (creekSleepTotalModel.awakeProportion ?? 0) - (a - 1);
      }
    }
    ///各阶段时长
    creekSleepTotalModel.totalDeep = deep;
    creekSleepTotalModel.totalLight = light;
    creekSleepTotalModel.totalRem = rem;
    creekSleepTotalModel.totalAwake = awake;
    creekSleepTotalModel.totalSleep = totalSleepTime;
    creekSleepTotalModel.models = aList;
    return creekSleepTotalModel;
  }



  static Map<String, dynamic> toSleepJson(List<Map<String, dynamic>> maps) {
    List<Map<String, dynamic>> jsonList = [];
    maps.forEach((aidc) {
      var datas = aidc["datas"];
      List dataList = jsonDecode(datas);
      Map<String, dynamic> dic = {
        "userID": aidc["userID"],
        "deviceId": aidc["deviceId"],
        "get_up_date": aidc["get_up_date"],
        "offset_last": aidc["offset_last"],
        "fall_asleep_time": aidc["fall_asleep_time"],
        "get_up_time": aidc["get_up_time"],
        "wake_mins": aidc["wake_mins"],
        "light_sleep_mins": aidc["light_sleep_mins"],
        "deep_sleep_mins": aidc["deep_sleep_mins"],
        "rem_mins": aidc["rem_mins"],
        "wake_count": aidc["wake_count"],
        "light_sleep_count": aidc["light_sleep_count"],
        "deep_sleep_count": aidc["deep_sleep_count"],
        "rem_count": aidc["rem_count"],
        "sleep_score": aidc["sleep_score"],
        "datas": dataList,
      };
      jsonList.add(dic);
    });
    Map<String, dynamic> json = {
      "data": jsonList,
    };
    return json;
  }
  ///****************************
  ///日常活动 activity
  ///****************************
  /// 插入数据
  static Future insertActivityData(List<ActivityData> data) async {
    Database database = await DBManager().db;
    DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo();
    Map<String, dynamic> maps = {};
    maps["userID"] = CreekSyncData.instance.userID;
    maps["deviceId"] = deviceModel?.macAddress ?? "1";
    for (var e in data) {
      if (e.key == SyncActivityKey.head) {
        ActivityHead head = e.data as ActivityHead;
        String year = (head.year ?? 0) > 9 ? "${head.year}" : "0${head.year}";
        String month = (head.month ?? 0) > 9 ? "${head.month}" : "0${head.month}";
        String day = (head.day ?? 0) > 9 ? "${head.day}" : "0${head.day}";
        maps["creat_time"] = "$year-$month-$day";
        if(!BlueTool.isDateValid("$year-$month-$day")) continue;
        maps["total_exercise_min"] = head.totalExerciseMin;
        maps["total_activity_calories"] = head.totalActivityCalories;
        maps["total_rest_calories"] = head.totalRestCalories;
        maps["total_distances"] = head.totalDistances;
        int standHour = 0;
        for (var e in (head.totalStandTime ?? [])) {
          if(e == 1){
            standHour++;
          }
        }
        maps["total_stand_hour"] = standHour;
        maps["activity_item_count"] = head.activityItemCount;
        maps["floors_climbed_support"] = head.floorsClimbedSupport;
        maps["total_floors_climbed"] = head.totalFloorsClimbed;
        maps["total_step"] = head.totalStep;
        maps["uploadStatus"] = false;
      } else if (e.key == SyncActivityKey.data) {
        List<Map<String, dynamic>> list = [];
        if (e.data != null) {
          List<ActivityItem> items = e.data as List<ActivityItem>;
          int totalOffset = 0;
          int index = 0;
          for (var element in items) {
            totalOffset = totalOffset + (element.exerciseMin ?? 0);
            if (element.exerciseMin != 255) {
              Map<String, dynamic> map = {
                "step_count": element.stepCount,
                "exercise_min": element.exerciseMin,
                "activity_calories": element.activityCalories,
                "rest_calories": element.restCalories,
                "distance": element.distance,
                "stand_time": element.standTime,
                "wear_time": element.wearTime,
              };
              index = 0;
              list.add(map);
            } else {
              index = index + 255;
            }
          }
        }
        maps["datas"] = jsonEncode(list);
      }
      if (maps.length == 14) {
        try {
          List<Map<String, dynamic>> list = await database.query("ACTIVITY_DATA_HEAD", where: "creat_time = '${maps["creat_time"]}' and userID = ${CreekSyncData.instance.userID}");
          if (list.isNotEmpty) {
            await database.update("ACTIVITY_DATA_HEAD", maps, where: "creat_time = '${maps["creat_time"]}'");
            CreekLog.info("更新成功");
          } else {
            await database.insert("ACTIVITY_DATA_HEAD", maps);
            CreekLog.info("插入成功");
          }
        } catch (e) {
          CreekLog.info(e.toString());
        }
        maps = {};
        maps["userID"] = CreekSyncData.instance.userID;
        maps["deviceId"] = deviceModel?.macAddress ?? "1";
      }
    }
  }


  ///根据时间范围查询活动数据
  ///格式2022-1-2
  static Future<List<CreekActivityModel>> getActivityNewTimeData(String startTime, String endTime) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps = await database.query("ACTIVITY_DATA_HEAD", where: "creat_time >= '$startTime' and creat_time <= '$endTime' and userID = ${CreekSyncData.instance.userID}",orderBy: "creat_time desc");
    List<CreekGoalsModel?> goals =  await getGoalsList();
    List<CreekActivityModel> alist = [];
    if(maps.isNotEmpty){
      for (var element in maps) {
        CreekActivityModel creekActivityModel = CreekActivityModel.fromJson(element);
        CreekGoalsModel creekGoalsModel = CreekGoalsModel();
        for (var element2 in goals) {
          if(DateTime.parse(creekActivityModel.createTime ?? "").difference(DateTime.parse(element2!.creatTime!)).inDays >= 0){
            creekGoalsModel = element2;
            break;
          }
        }
        creekActivityModel.creekGoalsModel = creekGoalsModel;
        if((creekActivityModel.totalCalories ?? 0) >= (creekGoalsModel.calories ?? 0)){
          creekActivityModel.kcalProportion = 1;
        }else{
          if((creekActivityModel.totalCalories ?? 0) == 0){
            creekActivityModel.kcalProportion = 0;
          }else{
            creekActivityModel.kcalProportion = double.parse(((creekActivityModel.totalCalories ?? 0) / creekGoalsModel.calories!).toStringAsFixed(1));
          }
        }
        if((creekActivityModel.totalStep ?? 0) >= (creekGoalsModel.steps ?? 0)){
          creekActivityModel.stepProportion = 1;
        }else{
          if((creekActivityModel.totalStep ?? 0) == 0){
            creekActivityModel.stepProportion = 0;
          }else{
            creekActivityModel.stepProportion = double.parse(((creekActivityModel.totalStep ?? 0) / creekGoalsModel.steps!).toStringAsFixed(2));
          }
        }
        alist.add(creekActivityModel);
      }}
    return alist;
  }


  ///查询活动的上传状态
  static Future<List<Map<String, dynamic>>> getActivityUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("ACTIVITY_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }



  static Map<String, dynamic> toActivityJson(List<Map<String, dynamic>> maps) {
    List<Map<String, dynamic>> jsonList = [];
    maps.forEach((aidc) {
      var datas = aidc["datas"];
      List dataList = jsonDecode(datas);
      Map<String, dynamic> dic = {
        "userID": aidc["userID"],
        "deviceId": aidc["deviceId"],
        "creat_time": aidc["creat_time"],
        "offset_last": aidc["offset_last"],
        "total_step": aidc["total_step"],
        "total_exercise_min": aidc["total_exercise_min"],
        "total_activity_calories": aidc["total_activity_calories"],
        "total_rest_calories": aidc["total_rest_calories"],
        "total_distances": aidc["total_distances"],
        "total_stand_hour": aidc["total_stand_hour"],
        "activity_item_count": aidc["activity_item_count"],
        "datas": dataList,
      };
      jsonList.add(dic);
    });
    Map<String, dynamic> json = {
      "data": jsonList,
    };
    return json;
  }

  ///****************************
  ///绑定过的设备 bind
  ///****************************
  static Future insertBindDevice({required String name, required String address, String? code}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list = await database.query("BIND_DEVICE", where: "address = '$address'");
    if (list.isNotEmpty) {
      await database.update("BIND_DEVICE", {"lastBind": false});
      await database.update("BIND_DEVICE", {"lastBind": true}, where: "address = '$address'");
    } else {
      List<Map<String, dynamic>> list2 = await database.query("BIND_DEVICE");
      if (list2.isNotEmpty) {
        database.update("BIND_DEVICE", {"lastBind": false});
      }
      Map<String, dynamic> maps = {"userID": "1", "name": name, "address": address, "code": code ?? "", "lastBind": true};
      await database.insert("BIND_DEVICE", maps);
    }
    CreekLog.info("保存绑定设备:$address");
    print("成功");
  }

  ///删除绑定设备
  static Future<bool> delBindDevice({String? address}) async {
    Database database = await DBManager().db;
    int isBool = await database.delete("BIND_DEVICE", where: "address = '$address'");
    await database.delete('USER_INFO_DATA', where: "deviceId = '$address'");
    List<Map<String, dynamic>> maps = await database.query("BIND_DEVICE");
    if(maps.isNotEmpty){
      Map<String, dynamic> dic = maps[0];
      await insertBindDevice(name: dic["name"], address: dic["address"]) ;
    }
    return isBool == 1 ? true : false;
  }

  ///获取
  static Future<dynamic> getBindDevice({String? address}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps;
    if (address == null) {
      maps = await database.query("BIND_DEVICE");
    } else {
      maps = await database.query("BIND_DEVICE", where: "address = '$address'");
    }
    return toBindDeviceJson(maps);
  }

  ///自定义蓝牙名称
  static Future<bool> modifyDeviceInfo({required String address,required String name}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps;
    maps = await database.query("BIND_DEVICE", where: "address = '$address'");
    if(maps.isNotEmpty){
      try{
        await database.update("BIND_DEVICE", {'blueName':name},where: "address = '$address'");
        return true;
      }catch(e){
        return false;
      }
    }
    return false;
  }

  static Map<String, dynamic> toBindDeviceJson(List<Map<String, dynamic>> maps) {
    List<Map<String, dynamic>> jsonList = [];
    maps.forEach((aidc) {
      Map<String, dynamic> dic = {
        "userID": aidc["userID"],
        "name": aidc["name"],
        "address": aidc["address"],
        "code": aidc["code"],
        "blueName": aidc["blueName"],
        "lastBind": aidc["lastBind"],
      };
      jsonList.add(dic);
    });
    Map<String, dynamic> json = {
      "data": jsonList,
    };
    return json;
  }

  ///****************************
  ///设备info   deviceInfo
  ///****************************
  ///
  static Future insertDeviceInfo({required DeviceModel deviceModel}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list = await database.query("DEVICE_INFO", where: "address = '${CreekDeviceManger.instance!.bluetoothDevice!.id.id}'");

    Map<String, dynamic> maps = {
      "name": CreekDeviceManger.instance?.bluetoothDevice?.name ?? "",
      "address": CreekDeviceManger.instance?.bluetoothDevice?.id.id ?? "",
      "device_id": deviceModel.deviceId,
      "major_version": deviceModel.majorVersion,
      "minor_version": deviceModel.minorVersion,
      "micro_version": deviceModel.microVersion,
      "pair_flag": deviceModel.pairFlag,
      "platform": deviceModel.platform?.index ?? 0,
      "shape": deviceModel.creekShape?.index ?? 0,
      "dev_type": deviceModel.creekDevType?.index ?? 0,
      "batteryLevel": deviceModel.deviceBatteryModel?.batteryLevel ?? 0,
      "mac_addr": deviceModel.macAddress,
      "bt_addr": deviceModel.btAddress,
      "bt_name": deviceModel.btNameModel?.name ?? "",
      "font_major_version": deviceModel.fontMajorVersion,
      "font_minor_version": deviceModel.fontMinorVersion,
      "font_micro_version": deviceModel.fontMicroVersion,
      "width": deviceModel.deviceSizeModel?.width ?? 0,
      "height": deviceModel.deviceSizeModel?.height ?? 0,
      "angle": deviceModel.deviceSizeModel?.angle ?? 0,
      "deviceColor": deviceModel.deviceColor ?? 65,
      "photoNum": deviceModel.photoNum ?? 0,
      "recoveryMode": deviceModel.isRecoveryMode ?? false,
      "product_id": deviceModel.deviceSnModel?.productId ?? 0,
      "factory_id": deviceModel.deviceSnModel?.factoryId ?? 0,
      "customer_id": deviceModel.deviceSnModel?.customerId ?? 0,
      "production_date": deviceModel.deviceSnModel?.productionDate ?? 0,
      "batch_num": deviceModel.deviceSnModel?.batchNum ?? 0,
      "serial_num": deviceModel.deviceSnModel?.serialNum ?? 0,
      "color_code": deviceModel.deviceSnModel?.colorCode ?? 0,

      "fw_major_version": deviceModel.voiceAssistantModel?.fwMajorVersion ?? 0,
      "fw_minor_version": deviceModel.voiceAssistantModel?.fwMinorVersion ?? 0,
      "fw_type": deviceModel.voiceAssistantModel?.fwType ?? 0,
      "nw_major_version": deviceModel.voiceAssistantModel?.nwMajorVersion ?? 0,
      "nw_minorr_version": deviceModel.voiceAssistantModel?.nwMinorVersion ?? 0,
      "nw_type": deviceModel.voiceAssistantModel?.nwType ?? 0,
      "current_language": deviceModel.voiceAssistantModel?.currentLanguage ?? 0,
      "switch_language": deviceModel.voiceAssistantModel?.switchLanguage ?? 0,
    };
    if (list.isNotEmpty) {
      await database.update("DEVICE_INFO", maps,where: "address = '${CreekDeviceManger.instance!.bluetoothDevice!.id.id}'");
    } else {
      await database.insert("DEVICE_INFO", maps);
    }
  }
  ///获取单个设备信息
  static Future<DeviceModel?> getDeviceInfo({String? address}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps;
    if(address == null){
      maps = await database.rawQuery(
          "select  *from BIND_DEVICE,DEVICE_INFO where BIND_DEVICE.address = DEVICE_INFO.address and BIND_DEVICE.lastBind = 1");
    }else {

      List b = await database.query("BIND_DEVICE",where: "address = '${address ?? ""}'");
      if(b.isEmpty){
        maps = await database.query("DEVICE_INFO",where: "address = '${address ?? ""}'");
      }else{
        maps = await database.rawQuery(
            "select * from BIND_DEVICE,DEVICE_INFO where BIND_DEVICE.address = DEVICE_INFO.address and DEVICE_INFO.address = '${address ??
                ""}'");
      }
    }
    if(maps.isNotEmpty){
      return DeviceModel().fromToJson(maps.first);
    }
    return null;

  }

  ///获取所有设备信息
  static Future<List<DeviceModel>> getDeviceInfoList() async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps;
    maps = await database.rawQuery("select * from BIND_DEVICE,DEVICE_INFO where BIND_DEVICE.address = DEVICE_INFO.address");
    if(maps.isNotEmpty){
      List<DeviceModel> devices = [];
      for (var e in maps) {
        devices.add(DeviceModel().fromToJson(e));
      }
      return devices;
    }
    return [];
  }

  ///****************************
  ///设定目标
  ///****************************
  ///
  static Future<int> insertGoals({required dynamic userGoalModel}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list = await database.query("GOALS_DATA",where: "creatTime = '${DateTime.now().toString().substring(0, 10)}' and userID = ${CreekSyncData.instance.userID}");
    Map<String, dynamic> maps = {};
    if(userGoalModel is UserGoalModel){
      maps = {
        "userID": CreekSyncData.instance.userID,
        "deviceId": "1",
        "creatTime": DateTime.now().toString().substring(0, 10),
        "calories": userGoalModel.kcal ?? 0,
        "exercise": userGoalModel.exerciseMin ?? 0,
        "stand": userGoalModel.standingHour ?? 0,
        "steps": userGoalModel.steps ?? 0,
        "distance":userGoalModel.distance ?? 0,
        "sleepTotal": 0,
        "sportDay":userGoalModel.sportDay ?? 7,
        "notifySwitchFlag": userGoalModel.switchFlag ?? 0,
        "notifyFlag": userGoalModel.notifyFlag ?? 0,
        "uploadStatus":false
      };
    }else if(userGoalModel is CreekGoalsModel){
      maps = {
        "userID": CreekSyncData.instance.userID,
        "deviceId": "1",
        "creatTime": DateTime.now().toString().substring(0, 10),
        "calories": userGoalModel.calories ?? 0,
        "exercise": userGoalModel.exercise ?? 0,
        "stand": userGoalModel.stand ?? 0,
        "steps": userGoalModel.steps ?? 0,
        "distance":userGoalModel.distance ?? 0,
        "sleepTotal": 0,
        "sportDay":userGoalModel.sportDay ?? 7,
        "notifySwitchFlag": userGoalModel.notifySwitchFlag ?? 0,
        "notifyFlag": userGoalModel.notifyFlag ?? 0,
        "uploadStatus":false
      };
    }
    if (list.isNotEmpty) {
      Map<String, dynamic> dic = list[0];
      return await database.update("GOALS_DATA", maps, where: "creatTime = '${DateTime.now().toString().substring(0, 10)}' and userID = ${CreekSyncData.instance.userID}");
    } else {
      return await database.insert("GOALS_DATA", maps);
    }
  }


  ///获取最近的一个目标值
  static Future<CreekGoalsModel> getGoals({DateTime? dateTime}) async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps;
    if(dateTime == null){
      maps =  await database.query("GOALS_DATA",where: "creatTime <= '${DateTime.now().toString().substring(0, 10)}' and userID = ${CreekSyncData.instance.userID}",orderBy: "creatTime desc limit 1");
    }else{
      maps =  await database.query("GOALS_DATA",where: "creatTime <= '${dateTime.toString().substring(0, 10)}' and userID = ${CreekSyncData.instance.userID}",orderBy: "creatTime desc limit 1");
    }
    if(maps.isNotEmpty){
      return CreekGoalsModel.fromJson(maps.first);
    }else{
      return CreekGoalsModel.fromJson({});
    }
  }

  ///查询目标的未上传数据
  static Future<List<Map<String, dynamic>>> getGoalsUploadStatus() async {
    Database database = await DBManager().db;
    return await database.query("GOALS_DATA", where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
  }

  ///获取所有的目标值
  static Future<List<CreekGoalsModel?>> getGoalsList() async {
    Database database = await DBManager().db;
    List<Map<String, dynamic>> maps;
    maps =  await database.query("GOALS_DATA",where: "userID = ${CreekSyncData.instance.userID}",orderBy: "creatTime desc");
    if(maps.isNotEmpty){
      return CreekGoalsModel().fromListJson(maps);
    }else{
      return [];
    }
  }

  ///****************************
  ///查询首页数据
  ///****************************
  ///
  static Future<dynamic> getHomeValue({int timeFormat = 1}) async {
    Database database = await DBManager().db;

    ///目标值
    int goalsCalories = 500;
    int goalsSteps = 5000;
    int goalsExercise = 30;
    int goalsStand = 12;
    int goalsSleep = 8;
    List<Map<String, dynamic>> goals = await database.query("GOALS_DATA");
    if (goals.isNotEmpty) {
      dynamic json = goals[0];
      if (json is Map) {
        goalsCalories = json["calories"];
        goalsSteps = json["steps"];
        goalsExercise = json["exercise"];
        goalsStand = json["stand"];
        goalsSleep = json["sleepTotal"];
      }
    }

    Map<String, dynamic> map = {};

    ///心率
    List<Map<String, dynamic>> list = await database.query("HEART_RATE_DATA_HEAD",where: "creat_time <= '${DateTime.now().toString().substring(0,10)}'", orderBy: "creat_time desc limit 1");
    Map<String, dynamic> map1 = {"time": null, "value": null, "lastTime": null};
    if (list.length == 1) {
      int offset = 0;
      int value = 0;
      dynamic json = list[0];
      if (json is Map) {
        offset = json["offset_last"];
        dynamic datas = json["datas"];
        map["restingHeartRate"] = {"value": json["silent_hr"], "lastTime": json["creat_time"]};
        List dataList = jsonDecode(datas);
        if(dataList.isNotEmpty){
          dynamic json2 = dataList.last;
          value = json2["value"];
        }

      }
      int min = (offset ~/ 60) % 60;
      int hour = (offset ~/ 3600);
      if(!(min == 0 && hour == 0)){
        if(timeFormat == 1){
          map1["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"}";
        }else{
          String time = "AM";
          if(hour >= 12 && min > 0){
            hour = hour - 12;
            time = "PM";
          }
          map1["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"} $time";
        }
      }



      map1["value"] = value;
      map1["lastTime"] = json["creat_time"];
    }
    map["heartRate"] = map1;

    ///血氧
    List<Map<String, dynamic>> list2 = await database.query("SPO_DATA_HEAD",where: "creat_time <= '${DateTime.now().toString().substring(0,10)}'", orderBy: "creat_time desc limit 1");
    Map<String, dynamic> map2 = {"time": null, "value": null, "lastTime": null};
    if (list2.length == 1) {
      int offset = 0;
      int value = 0;
      dynamic json = list2[0];
      if (json is Map) {
        offset = json["offset_last"];
        dynamic datas = json["datas"];
        List dataList = jsonDecode(datas);
        if(dataList.isNotEmpty){
          dynamic json2 = dataList.last;
          value = json2["value"];
        }
      }
      int s = offset * 60;
      int min = (s ~/ 60) % 60;
      int hour = (s ~/ 3600);

      if(!(min == 0 && hour == 0)){
        if(timeFormat == 1){
          map2["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"}";
        }else{
          String time = "AM";
          if(hour >= 12 && min > 0){
            hour = hour - 12;
            time = "PM";
          }
          map2["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"} $time";
        }
      }

      map2["value"] = value;
      map2["lastTime"] = json["creat_time"];
    }
    map["bloodOxygen"] = map2;

    ///压力
    List<Map<String, dynamic>> list3 = await database.query("STRESS_DATA_HEAD",where: "creat_time <= '${DateTime.now().toString().substring(0,10)}'", orderBy: "creat_time desc limit 1");
    Map<String, dynamic> map3 = {"time": null, "value": null, "lastTime": null};
    if (list3.length == 1) {
      int offset = 0;
      int value = 0;
      dynamic json = list3[0];
      if (json is Map) {
        offset = json["offset_last"];
        dynamic datas = json["datas"];
        if (jsonDecode(datas) is List) {
          List dataList = jsonDecode(datas);
          if (dataList.isNotEmpty) {
            dynamic json2 = dataList.last;
            value = json2["value"];
          }
        }
      }
      int min = offset % 60;
      int hour = (offset ~/ 60);
      if(!(min == 0 && hour == 0)){
        if(timeFormat == 1){
          map3["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"}";
        }else{
          String time = "AM";
          if(hour >= 12 && min > 0){
            hour = hour - 12;
            time = "PM";
          }
          map3["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"} $time";
        }
      }
      map3["value"] = value;
      map3["lastTime"] = json["creat_time"];
    }
    map["stress"] = map3;

    ///活动
    List<Map<String, dynamic>> list4 = await database.query("ACTIVITY_DATA_HEAD", where: "creat_time = '${DateTime.now().toString().substring(0,10)}'",columns: ["total_activity_calories","total_distances","total_stand_hour","total_exercise_min","total_step"]);
    Map<String, dynamic> map4 = {};
    map4["goalsCalories"] = goalsCalories;
    map4["goalsSteps"] = goalsSteps;
    map4["goalsExercise"] = goalsExercise;
    map4["goalsStand"] = goalsStand;
    map4["goalsSleep"] = goalsSleep;
    if (list4.length == 1) {
      dynamic json = list4[0];
      if (json is Map) {
        map4["calories"] = json["total_activity_calories"];
        map4["distance"] = json["total_distances"];
        map4["stand"] = json["total_stand_hour"];
        map4["exercise"] = json["total_exercise_min"];
        map4["steps"] = json["total_step"];
      }
    }
    map["activity"] = map4;

    ///噪音
    List<Map<String, dynamic>> list5 = await database.query("NOISE_DATA_HEAD",where: "creat_time <= '${DateTime.now().toString().substring(0,10)}'", orderBy: "creat_time desc limit 1");
    Map<String, dynamic> map5 = {"time": null, "value": null, "lastTime": null};
    if (list5.length == 1) {
      int offset = 0;
      int value = 0;
      dynamic json = list5[0];
      if (json is Map) {
        offset = json["offset_last"];
        dynamic datas = json["datas"];
        List dataList = jsonDecode(datas);
        if(dataList.isNotEmpty){
          dynamic json2 = dataList.last;
          value = json2["value"];
        }

      }
      int min = offset % 60;
      int hour = (offset ~/ 60);
      if(!(min == 0 && hour == 0)){
        if(timeFormat == 1){
          map5["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"}";
        }else{
          String time = "AM";
          if(hour >= 12 && min > 0){
            hour = hour - 12;
            time = "PM";
          }
          map5["time"] = "${hour > 9 ? hour : "0$hour"}:${min > 9 ? min : "0$min"} $time";
        }
      }
      map5["value"] = value;
      map5["lastTime"] = json["creat_time"];
    }
    map["noise"] = map5;
    ///睡眠
    List<Map<String, dynamic>> list6 = await database.query("SLEEP_DATA_HEAD",where: "get_up_date <= '${DateTime.now().toString().substring(0,10)}'", orderBy: "get_up_date desc limit 1",columns: ["get_up_time","fall_asleep_time","get_up_date"]);
    Map<String, dynamic> map6 = {"getUpDate": null, "getUpTime": null, "fallAsleepTime": null, "sleepDuration": null};
    if (list6.length == 1) {
      dynamic json = list6[0];
      if (json is Map) {
        int sleepDuration = 0;
        if (json["get_up_time"] is String && json["fall_asleep_time"] is String) {
          DateTime upTime = DateTime.parse(json["get_up_time"]);
          DateTime sleepTime = DateTime.parse(json["fall_asleep_time"]);
          sleepDuration = upTime.difference(sleepTime).inSeconds;
          BlueTool.secondToString(sleepDuration, callBack: (h, m, s) {
            map6["sleepDuration"] = "$h:$m";
          });
        }
        map6["getUpDate"] = json["get_up_date"];
        map6["getUpTime"] = json["get_up_time"];
        map6["fallAsleepTime"] = json["fall_asleep_time"];
      }
    }
    map["sleep"] = map6;

    ///运动
    List<Map<String, dynamic>> list7 = await database.query("SPORT_DATA_HEAD",where: "creatTime <= '${DateTime.now().toString().substring(0,10)}'", orderBy: "startTime desc limit 1",columns: ["durations","sportType","totalCalories","startTime"]);
    Map<String, dynamic> map7 = {"sportType": 0, "durations": "0", "totalCalories": 0, "startTime": null};
    if (list7.length == 1) {
      dynamic json = list7[0];
      if (json is Map) {
        if (json["durations"] is int) {
          BlueTool.secondToString(json["durations"], callBack: (h, m, s) {
            String hs = h > 9 ? "$h" : "0$h";
            String ms = m > 9 ? "$m" : "0$m";
            String ss = s > 9 ? "$s" : "0$s";
            map7["durations"] = "$hs:$ms:$ss";
          });
        }
        map7["startTime"] = json["startTime"];
        map7["sportType"] = json["sportType"];
        map7["totalCalories"] = json["totalCalories"];
      }
    }
    map["sport"] = map7;
    return map;
  }

  ///****************************
  ///查询新首页数据
  ///****************************
  ///
  static Future<CreekHomeModel> getNewHomeValue({int timeFormat = 1}) async {
    Database database = await DBManager().db;
    ///目标值
    CreekGoalsModel goalsModel = await getGoals();
    Map<String, dynamic> map = {};
    ///心率
    List<Map<String, dynamic>> list = await database.query("HEART_RATE_DATA_HEAD",where: "creat_time = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}", orderBy: "creat_time desc limit 1");
    CreekHeartRateModel heartRateModel = CreekHeartRateModel();
    if(list.isNotEmpty){
      heartRateModel = CreekHeartRateModel.fromJson(list.first);
    }
    heartRateModel.createTime ??= DateTime.now().toString().substring(0,10);
    heartRateModel.offsetLastTime = BlueTool.secondsToTime(seconds: heartRateModel.offsetLast ?? 0,timeFormat: timeFormat);
    ///压力
    List<Map<String, dynamic>> list1 = await database.query("STRESS_DATA_HEAD",where: "creat_time = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}", orderBy: "creat_time desc limit 1");
    CreekStressModel creekStressModel = CreekStressModel();
    if(list1.isNotEmpty){
      creekStressModel = CreekStressModel.fromJson(list1.first);
    }
    creekStressModel.createTime ??= DateTime.now().toString().substring(0,10);
    creekStressModel.offsetLastTime = BlueTool.secondsToTime(seconds: (creekStressModel.offsetLast ?? 0) * 60,timeFormat: timeFormat);
    ///血氧
    List<Map<String, dynamic>> list2 = await database.query("SPO_DATA_HEAD",where: "creat_time = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}", orderBy: "creat_time desc limit 1");
    CreekOxygenModel creekOxygenModel = CreekOxygenModel();
    if(list2.isNotEmpty){
      creekOxygenModel = CreekOxygenModel.fromJson(list2.first);
    }
    creekOxygenModel.createTime ??= DateTime.now().toString().substring(0,10);
    creekOxygenModel.offsetLastTime = BlueTool.secondsToTime(seconds: (creekOxygenModel.offsetLast ?? 0) * 60,timeFormat: timeFormat);

    ///噪音
    List<Map<String, dynamic>> list3 = await database.query("NOISE_DATA_HEAD",where: "creat_time = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}", orderBy: "creat_time desc limit 1");
    CreekNoiseModel creekNoiseModel = CreekNoiseModel();
    if(list3.isNotEmpty){
      creekNoiseModel = CreekNoiseModel.fromJson(list3.first);
    }
    creekNoiseModel.createTime ??= DateTime.now().toString().substring(0,10);
    creekNoiseModel.offsetLastTime = BlueTool.secondsToTime(seconds: (creekNoiseModel.offsetLast ?? 0) * 60,timeFormat: timeFormat);



    ///活动
    List<Map<String, dynamic>> list4 = await database.query("ACTIVITY_DATA_HEAD",where: "creat_time = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}", orderBy: "creat_time desc limit 1");
    CreekActivityModel creekActivityModel = CreekActivityModel();
    if(list4.isNotEmpty){
      creekActivityModel = CreekActivityModel.fromJson(list4.first);
    }
    creekActivityModel.createTime ??= DateTime.now().toString().substring(0,10);
    creekActivityModel.offsetLastTime = BlueTool.secondsToTime(seconds: (creekActivityModel.offsetLast ?? 0) * 60,timeFormat: timeFormat);

    ///睡眠
    List<Map<String, dynamic>> list6 = await database.query("SLEEP_DATA_HEAD",where: "get_up_date = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}");
    CreekSleepTotalModel creekSleepTotalModel = CreekSleepTotalModel();
    int? totalSleepTime;
    String? time;
    CreekSleepModel a = CreekSleepModel();
    if(list6.isNotEmpty){
      for (var element in list6) {
        CreekSleepModel creekSleepModel = CreekSleepModel.fromJson(element);
        totalSleepTime = (totalSleepTime ?? 0) + (creekSleepModel.totalSleepTimeMin ?? 0);
        DateTime dateTime = DateTime.parse(creekSleepModel.getUpTime ?? "");
        time = "${dateTime.hour}:${dateTime.minute}";
        if((creekSleepModel.totalSleepTimeMin ?? 0) > (a.totalSleepTimeMin ?? 0)){
          a = creekSleepModel;
        }
      }
    }
    if((totalSleepTime ?? 0) == 0){
      creekSleepTotalModel.totalSleepTime = "--h--m";
    }else{
      int h = totalSleepTime! ~/ 60;
      int m = totalSleepTime! % 60;
      String hs = h > 9 ? "$h" : "0$h";
      String ms = m > 9 ? "$m" : "0$m";
      creekSleepTotalModel.totalSleepTime = "${hs}h${ms}m";
    }
    creekSleepTotalModel.createTime = DateTime.now().toString().substring(0,10);
    creekSleepTotalModel.totalSleep = totalSleepTime;
    creekSleepTotalModel.upTime = time;
    creekSleepTotalModel.sleepScore = a.sleepScore;

    ///运动
    CreekSportWorkDayModel creekSportWorkDayModel = CreekSportWorkDayModel();
    await CompleterExt.awaitFor<bool>((run){
      BlueTool.getDataTimeToWeek(dateTime: DateTime.now(),time: (s,e,w) async{
        List<Map<String, dynamic>> list5 = await database.query("SPORT_DATA_HEAD",where: "creatTime <= '$e' and creatTime >= '$s' and userID = ${CreekSyncData.instance.userID}",columns: ["creatTime"]);
        int day = 0;
        String time = "";
        if(list5.isNotEmpty){
          for (var element in list5) {
            if(element["creatTime"] is String){
              if(time != element["creatTime"]){
                day++;
              }
              time = element["creatTime"];
            }
          }}
        creekSportWorkDayModel.workDay = day;
        run(true);
      });
    });

    ///Hrv
    List<Map<String, dynamic>> list7 = await database.query("HRV_DATA_HEAD",where: "creat_time = '${DateTime.now().toString().substring(0,10)}' and userID = ${CreekSyncData.instance.userID}", orderBy: "creat_time desc limit 1");
    CreekHrvModel creekHrvModel = CreekHrvModel();
    if(list7.isNotEmpty){
      creekHrvModel = CreekHrvModel.fromJson(list7.first);
    }
    creekHrvModel.createTime ??= DateTime.now().toString().substring(0,10);
    creekHrvModel.offsetLastTime = BlueTool.secondsToTime(seconds: (creekHrvModel.offsetLast ?? 0) * 60,timeFormat: timeFormat);

    CreekHomeModel model = CreekHomeModel();
    model.goalsModel = goalsModel;
    model.creekHeartRateModel = heartRateModel;
    model.creekOxygenModel = creekOxygenModel;
    model.creekNoiseModel = creekNoiseModel;
    model.creekStressModel = creekStressModel;
    model.creekSportWorkDayModel = creekSportWorkDayModel;
    model.creekActivityModel = creekActivityModel;
    model.creekSleepTotalModel = creekSleepTotalModel;
    model.creekHrvModel = creekHrvModel;
    return model;
  }

  ///*********************************
  ///查询当天的运动记录
  ///time 格式2022-01-03
  ///***********************************
  static Future<SportDayTypeModel> getSportDayTypeData({required String time}) async {
    SportDayTypeModel model = SportDayTypeModel();
    Database database = await DBManager().db;
    if(time.length != 10){
      CreekLog.info("时间格式不正确");
      return model;


    }
    List<Map<String, dynamic>> list7 = await database.query("SPORT_DATA_HEAD",where: "creatTime = '$time' and userID = ${CreekSyncData.instance.userID}",columns: ["durations","sportType"]);
    int durations = 0;
    List<int> types = [];
    if(list7.isNotEmpty){
      for (var element in list7) {
        if (element["durations"] is int){
          durations = durations + (element["durations"] as int);
        }
        if (element["sportType"] is int){
          types.add(element["sportType"]);
        }
      }
      BlueTool.secondToString(durations, callBack: (h, m, s) {
        String hs = h > 9 ? "$h" : "0$h";
        String ms = m > 9 ? "$m" : "0$m";
        String ss = s > 9 ? "$s" : "0$s";
        model.durations = "$hs:$ms:$ss";
      });
      model.totalDurations=durations;
      model.sportTypes = types.toSet().toList();
    }
    return model;
  }

  ///*********************************
  ///运动记录列表
  ///***********************************
  static Future<List<CreekSportWorkDayModel>> getSportRecord({int sportType = 1000,String time = ""}) async {
    Database database = await DBManager().db;

    List<CreekGoalsModel?> goals =  await getGoalsList();
    List<Map<String, dynamic>> list = [];
    if(sportType == 1000){
      list = await database.query("SPORT_DATA_HEAD",where: "userID = ${CreekSyncData.instance.userID} and creatTime >= '$time'",orderBy: "startTime desc",columns: ["id","creatTime","startTime","endTime","sportType","durations","totalDistance","totalCalories","totalStep","swimDistance"]);
    }else{
      list = await database.query("SPORT_DATA_HEAD", where: "sportType = '$sportType' and userID = ${CreekSyncData.instance.userID} and creatTime >= '$time'",orderBy: "startTime desc",columns: ["id","creatTime","startTime","endTime","sportType","durations","totalDistance","totalCalories","totalStep","swimDistance"]);
    }

    int week = 0;
    List<CreekSportWorkDayModel> dataList = [];
    List<CreekSportModel> weekList = [];
    String startTime = "";
    String endTime = "";
    ///记录一周运动天数
    int sportDay = 0;
    String creatTime = "";
    ///一周内总锻炼时长
    int totalDurations = 0;
    for (var data in list) {
      try{
        CreekSportModel creekSportModel = CreekSportModel.fromJson(data);
        DateTime dateTime = DateTime.parse(creekSportModel.creatTime ?? "");
        BlueTool.getDataTimeToWeek(
            dateTime: dateTime,
            time: (s, e, w) {
              if(w == week){
                weekList.add(creekSportModel);
              }else{
                if(weekList.isNotEmpty){
                  CreekSportWorkDayModel creekSportWorkDayModel = CreekSportWorkDayModel();
                  for (var element in goals) {
                    if(DateTime.parse(endTime).difference(DateTime.parse(element!.creatTime!)).inDays >= 0){
                      creekSportWorkDayModel.sportDay = element.sportDay;
                      break;
                    }
                  }
                  creekSportWorkDayModel.sportDay ??= 7;
                  creekSportWorkDayModel.startTime = startTime;
                  creekSportWorkDayModel.endTime = endTime;
                  creekSportWorkDayModel.workDay = sportDay;
                  creekSportWorkDayModel.totalDurations = totalDurations;
                  creekSportWorkDayModel.week = week;
                  creekSportWorkDayModel.sports = weekList;
                  dataList.add(creekSportWorkDayModel);
                  sportDay = 0;
                  totalDurations = 0;
                  weekList = [];
                  weekList.add(creekSportModel);
                }else{
                  weekList.add(creekSportModel);
                }
              }
              if(creekSportModel.creatTime != creatTime){
                sportDay ++;
              }
              totalDurations = totalDurations + (creekSportModel.durations ?? 0);
              week = w;
              startTime = s;
              endTime = e;
              creatTime = creekSportModel.creatTime ?? "";
            });
      }catch(e){
        CreekLog.info(e.toString());
      }

    }
    if(weekList.isNotEmpty){
      CreekSportWorkDayModel creekSportWorkDayModel = CreekSportWorkDayModel();
      for (var element in goals) {
        if(DateTime.parse(endTime).difference(DateTime.parse(element!.creatTime!)).inDays >= 0){
          creekSportWorkDayModel.sportDay = element.sportDay;
          break;
        }
      }
      creekSportWorkDayModel.sportDay ??= 7;
      creekSportWorkDayModel.startTime = startTime;
      creekSportWorkDayModel.endTime = endTime;
      creekSportWorkDayModel.workDay = sportDay;
      creekSportWorkDayModel.totalDurations = totalDurations;
      creekSportWorkDayModel.week = week;
      creekSportWorkDayModel.sports = weekList;
      dataList.add(creekSportWorkDayModel);
      weekList = [];
    }
    return dataList;
  }

  ///*********************************
  ///删除运动列表
  ///***********************************
  static Future<bool> delSportRecord(int id) async {
    Database database = await DBManager().db;
    try{
      await database.delete("SPORT_DATA_HEAD", where: "id = $id");
      return true;
    }catch(e){
      return false;
    }
  }

  ///*********************************
  ///查询运动类型
  ///***********************************
  static Future<dynamic> getSportType() async {
    Database database = await DBManager().db;
    try{
      return await database.query("SPORT_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID}",distinct: true,columns: ["sportType"]);
    }catch(e){
      return [];
    }
  }

  ///*********************************
  ///查询运动类型
  ///***********************************
  static Future<List<int>> getNewSportType() async {
    Database database = await DBManager().db;
    List<int> value = [];
    try{
      List<Map<String, dynamic>> list =  await database.query("SPORT_DATA_HEAD", where: "userID = ${CreekSyncData.instance.userID}",distinct: true,columns: ["sportType"]);
      for (var element in list) {
        CreekSportModel creekSportModel = CreekSportModel.fromJson(element);
        value.add(creekSportModel.sportType ?? 0);
      }
      return value;
    }catch(e){
      return value;
    }
  }

  ///查询最后的同步时间
  static Future<CreekSyncTimeModel> getSyncTime() async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list =  await database.query("SYNC_TIME");
    if(list.isNotEmpty){
     return  CreekSyncTimeModel.fromJson(list.first);
    }
    return CreekSyncTimeModel();
  }

  ///设置同步时间
  static Future setSyncTime(SyncServerType type) async{
    Database database = await DBManager().db;
    String time = DateTime.now().toString().substring(0,10);
    List<Map<String, dynamic>> list =  await database.query("SYNC_TIME");
    if(list.isNotEmpty){
      switch(type){
        case SyncServerType.activity:
          await database.update("SYNC_TIME", {"activity":time});
          break;
        case SyncServerType.goal:
          await database.update("SYNC_TIME", {"goal":time});
          break;
        case SyncServerType.hearRate:
          await database.update("SYNC_TIME", {"hearRate":time});
          break;
        case SyncServerType.noise:
          await database.update("SYNC_TIME", {"noise":time});
          break;
        case SyncServerType.pressure:
          await database.update("SYNC_TIME", {"pressure":time});
          break;
        case SyncServerType.sleep:
          await database.update("SYNC_TIME", {"sleep":time});
          break;
        case SyncServerType.spo:
          await database.update("SYNC_TIME", {"spo":time});
          break;
        case SyncServerType.sport:
          await database.update("SYNC_TIME", {"sport":time});
          break;
        case SyncServerType.hrv:
          await database.update("SYNC_TIME", {"sport":time});
          break;
      }
    }else{
      switch(type){
        case SyncServerType.activity:
          await database.insert("SYNC_TIME", {"activity":time});
          break;
        case SyncServerType.goal:
          await database.insert("SYNC_TIME", {"goal":time});
          break;
        case SyncServerType.hearRate:
          await database.insert("SYNC_TIME", {"hearRate":time});
          break;
        case SyncServerType.noise:
          await database.insert("SYNC_TIME", {"noise":time});
          break;
        case SyncServerType.pressure:
          await database.insert("SYNC_TIME", {"pressure":time});
          break;
        case SyncServerType.sleep:
          await database.insert("SYNC_TIME", {"sleep":time});
          break;
        case SyncServerType.spo:
          await database.insert("SYNC_TIME", {"spo":time});
          break;
        case SyncServerType.sport:
          await database.insert("SYNC_TIME", {"sport":time});
          break;
        case SyncServerType.hrv:
          await database.insert("SYNC_TIME", {"hrv":time});
          break;
      }
    }
    return;
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

  ///更新同步状态false
  static Future<void> updateSyncState() async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list =  await database.query("SYNC_STATE",where: "userID = ${CreekSyncData.instance.userID}");
    if(list.isNotEmpty){
     await database.update("SYNC_STATE", {"activity": false,"goal":false,"hearRate":false,"noise": false,"pressure":false,"sleep":false,"spo":false,"sport":false},where: "userID = ${CreekSyncData.instance.userID}");
    }else{
     await database.insert("SYNC_STATE", {"userID":CreekSyncData.instance.userID,"activity": false,"goal":false,"hearRate":false,"noise": false,"pressure":false,"sleep":false,"spo":false,"sport":false});
    }
    return;
  }

  ///更新同步状态 单个 true
  static Future<void> updateOnceSyncState(SyncServerType type) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>> list =  await database.query("SYNC_STATE",where: "userID = ${CreekSyncData.instance.userID}");
    if(list.isNotEmpty){
      switch(type){
        case SyncServerType.activity:
          await database.update("SYNC_STATE", {"activity": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.goal:
          await database.update("SYNC_STATE", {"goal": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.hearRate:
          await database.update("SYNC_STATE", {"hearRate": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.noise:
          await database.update("SYNC_STATE", {"noise": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.pressure:
          await database.update("SYNC_STATE", {"pressure": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.sleep:
          await database.update("SYNC_STATE", {"sleep": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.spo:
          await database.update("SYNC_STATE", {"spo": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.sport:
          await database.update("SYNC_STATE", {"sport": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
        case SyncServerType.hrv:
          await database.update("SYNC_STATE", {"hrv": true},where: "userID = ${CreekSyncData.instance.userID}");
          break;
      }
    }
    return;
  }


  ///更新游客数据到用户
  static Future<void>updateDBUser() async{
    if(CreekSyncData.instance.userID != 1){
      Database database = await DBManager().db;
      await database.update("ACTIVITY_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("HEART_RATE_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("HRV_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("NOISE_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("SLEEP_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("SPO_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("SPORT_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("STRESS_DATA_HEAD",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      await database.update("GOALS_DATA",{"userID":CreekSyncData.instance.userID,"uploadStatus":0},where: "userID = 1");
      List<Map<String, dynamic>> list =  await database.query("SYNC_STATE",where: "userID = ${CreekSyncData.instance.userID}");
      if(list.isEmpty){
        await database.insert("SYNC_STATE", {"userID":"${CreekSyncData.instance.userID}"});
      }

    }
    return;
  }
  ///退出登陆当天的数据改为游客
  static Future<void>updateDayDBUser() async{
    DateTime dateTime = DateTime.now();
    String time = dateTime.toString().substring(0,10);
    Database database = await DBManager().db;
    await database.update("ACTIVITY_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creat_time = '$time' and userID != 1");
    await database.update("HEART_RATE_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creat_time = '$time' and userID != 1");
    await database.update("HRV_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creat_time = '$time' and userID != 1");
    await database.update("NOISE_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creat_time = '$time' and userID != 1");
    await database.update("SLEEP_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "get_up_date = '$time' and userID != 1");
    await database.update("SPO_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creat_time = '$time' and userID != 1");
    await database.update("SPORT_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creatTime = '$time' and userID != 1");
    await database.update("STRESS_DATA_HEAD",{"userID":1,"uploadStatus":0},where: "creat_time = '$time' and userID != 1");
    await database.update("GOALS_DATA",{"userID":1,"uploadStatus":0},where: "creatTime = '$time'");
    return;
  }

  ///上传成功uploadStatus改为true
  static Future<void>updateDBUploadStatus(SyncServerType type) async{
    if(CreekSyncData.instance.userID != 1){
      Database database = await DBManager().db;
      switch(type){
        case SyncServerType.activity:
          await database.update("ACTIVITY_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.goal:
          await database.update("GOALS_DATA",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.hearRate:
          await database.update("HEART_RATE_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.noise:
          await database.update("NOISE_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.pressure:
          await database.update("STRESS_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.sleep:
          await database.update("SLEEP_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.spo:
          await database.update("SPO_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.sport:
          await database.update("SPORT_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
        case SyncServerType.hrv:
          await database.update("HRV_DATA_HEAD",{"uploadStatus":1},where: "userID = ${CreekSyncData.instance.userID} and uploadStatus = 0");
          break;
      }
    }

    return;
  }

  ///上传成功strava  改为true
  static Future<void>updateDBStravaUploadStatus(int sportId) async{
    Database database = await DBManager().db;
    await database.update("SPORT_DATA_HEAD",{"strava":1},where: "id = $sportId");
    return;
  }

 static Future<List<Map<String, dynamic>>> rawQueryDB(String sql) async{
    Database database = await DBManager().db;
    List<Map<String, dynamic>>  list = [];
    try{
       list = await database.rawQuery(sql);
    }catch(e){
      CreekLog.info(e.toString());
    }
    return list;
  }


}
