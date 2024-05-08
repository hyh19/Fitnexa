
import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekSleepModel{
  ///id
  int? id;
  ///userId
  int? userID;
  String? deviceId;
  ///起床日期
  String? getUpDate;
  ///睡觉时间
  String? fallAsleepTime;
  ///起床时间
  String? getUpTime;
  ///睡眠总时长
  int? totalSleepTimeMin;
  ///总清醒时长, 单位:分
  int? wakeMin;
  ///总浅眠时长
  int? lightSleepMin;
  ///总深眠时长
  int? deepSleepMin;
  ///总REM时长
  int? remMin;
  ///清醒次数
  int? wakeCount;
  ///浅眠次数
  int? lightSleepCount;
  ///深眠次数
  int? deepSleepCount;
  ///眼动次数
  int? remCount;
  ///睡眠得分
  int? sleepScore;

  ///睡眠区间值
  List<CreekSleepValueModel>?  values;

  String? datas;

  CreekSleepModel();

  factory CreekSleepModel.fromJson(Map<String, dynamic> json) {
    final CreekSleepModel creekSleepModel = CreekSleepModel();

    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekSleepModel.id = id;
    }
    final int? userID = jsonConvert.convert<int>(json['userID']);
    if (userID != null) {
      creekSleepModel.userID = userID;
    }

    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekSleepModel.deviceId = deviceId;
    }
    final String? getUpDate = jsonConvert.convert<String>(json['get_up_date']);
    if (getUpDate != null) {
      creekSleepModel.getUpDate = getUpDate;
    }

    final String? getUpTime = jsonConvert.convert<String>(json['get_up_time']);
    if (getUpTime != null) {
      creekSleepModel.getUpTime = getUpTime;
    }

    final String? fallAsleepTime = jsonConvert.convert<String>(json['fall_asleep_time']);
    if (fallAsleepTime != null) {
      creekSleepModel.fallAsleepTime = fallAsleepTime;
    }

    final int? totalSleepTimeMin = jsonConvert.convert<int>(json['total_sleep_time_mins']);
    if (totalSleepTimeMin != null) {
      creekSleepModel.totalSleepTimeMin = totalSleepTimeMin;
    }

    final int? wakeMin = jsonConvert.convert<int>(json['wake_mins']);
    if (wakeMin != null) {
      creekSleepModel.wakeMin = wakeMin;
    }

    final int? lightSleepMin = jsonConvert.convert<int>(json['light_sleep_mins']);
    if (lightSleepMin != null) {
      creekSleepModel.lightSleepMin = lightSleepMin;
    }
    final int? deepSleepMin = jsonConvert.convert<int>(json['deep_sleep_mins']);
    if (deepSleepMin != null) {
      creekSleepModel.deepSleepMin = deepSleepMin;
    }
    final int? remMin = jsonConvert.convert<int>(json['rem_mins']);
    if (remMin != null) {
      creekSleepModel.remMin = remMin;
    }
    final int? wakeCount = jsonConvert.convert<int>(json['wake_count']);
    if (wakeCount != null) {
      creekSleepModel.wakeCount = wakeCount;
    }
    final int? lightSleepCount = jsonConvert.convert<int>(json['light_sleep_count']);
    if (lightSleepCount != null) {
      creekSleepModel.lightSleepCount = lightSleepCount;
    }
    final int? deepSleepCount = jsonConvert.convert<int>(json['deep_sleep_count']);
    if (deepSleepCount != null) {
      creekSleepModel.deepSleepCount = deepSleepCount;
    }
    final int? remCount = jsonConvert.convert<int>(json['rem_count']);
    if (remCount != null) {
      creekSleepModel.remCount = remCount;
    }
    final int? sleepScore = jsonConvert.convert<int>(json['sleep_score']);
    if (sleepScore != null) {
      creekSleepModel.sleepScore = sleepScore;
    }

    if(json['datas'] is String){
      String datas = json['datas'];
      creekSleepModel.datas = datas;
      dynamic listJson = jsonDecode(datas);
      final List<CreekSleepValueModel>? values  = jsonConvert.convertListNotNull<CreekSleepValueModel>(listJson);
      if (values != null) {
        creekSleepModel.values = values;
      }
    }
    return creekSleepModel;
  }


  @override
  String toString() {
    return 'CreekSleepModel{id: $id, userID: $userID, deviceId: $deviceId, getUpDate: $getUpDate, fallAsleepTime: $fallAsleepTime, getUpTime: $getUpTime, totalSleepTimeMin: $totalSleepTimeMin, wakeMin: $wakeMin, lightSleepMin: $lightSleepMin, deepSleepMin: $deepSleepMin, remMin: $remMin, wakeCount: $wakeCount, lightSleepCount: $lightSleepCount, deepSleepCount: $deepSleepCount, remCount: $remCount, sleepScore: $sleepScore, values: $values, datas: $datas}';
  }

  static String toThis(){
    return "CreekSleepModel";
  }

}

class CreekSleepValueModel{
  ///阶段
  int? stage;
  ///时长 单位秒
  int? duration;

  CreekSleepValueModel();

  factory CreekSleepValueModel.fromJson(Map<String, dynamic> json) {
    final CreekSleepValueModel creekSleepValueModel = CreekSleepValueModel();

    final int? stage = jsonConvert.convert<int>(json['stage']);
    if (stage != null) {
      creekSleepValueModel.stage = stage;
    }
    final int? duration = jsonConvert.convert<int>(json['duration']);
    if (duration != null) {
      creekSleepValueModel.duration = duration;
    }
    return creekSleepValueModel;
  }


  @override
  String toString() {
    return 'CreekSleepValueModel{stage: $stage, duration: $duration}';
  }

  static String toThis(){
    return "CreekSleepValueModel";
  }
}

class CreekSleepTotalModel{
  String? createTime;
  ///最后的起床时间 时/分
  String? upTime;
  ///总睡眠时长 --h--m
  String? totalSleepTime;
  ///总睡眠时长 --h--m
  int? totalSleep;
  ///占比 格式 0.00
  double? deepProportion;
  double? lightProportion;
  double? remProportion;
  double? awakeProportion;
  ///时长 /分
  int? totalDeep;
  int? totalLight;
  int? totalRem;
  int? totalAwake;

  ///睡眠质量得分
  int? sleepScore;
  List<CreekSleepModel>? models;


}