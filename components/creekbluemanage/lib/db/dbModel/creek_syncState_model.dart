import 'dart:convert';
import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekSyncStateModel{
  ///id
  int? id;
  ///userId
  int? userID;
  String? deviceId;
  ///活动
  bool? activity;
  ///目标
  bool? goal;
  ///心率
  bool? hearRate;
  ///噪音
  bool? noise;
  ///创建时间
  bool? pressure;
  ///睡眠
  bool? sleep;
  ///血氧
  bool? spo;
  ///运动
  bool? sport;

  ///hrv
  bool? hrv;

  CreekSyncStateModel();
  ///返回单个对象
  factory CreekSyncStateModel.fromJson(Map<String, dynamic> json) {
    final CreekSyncStateModel creekActivityModel = CreekSyncStateModel();
    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekActivityModel.id = id;
    }
    final int? userId = jsonConvert.convert<int>(json['userID']);
    if (userId != null) {
      creekActivityModel.userID = userId;
    }
    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekActivityModel.deviceId = deviceId;
    }
    final bool? activity = jsonConvert.convert<bool>(json['activity']);
    if (activity != null) {
      creekActivityModel.activity = activity;
    }
    final bool? goal = jsonConvert.convert<bool>(json['goal']);
    if (goal != null) {
      creekActivityModel.goal = goal;
    }
    final bool? hearRate = jsonConvert.convert<bool>(json['hearRate']);
    if (hearRate != null) {
      creekActivityModel.hearRate = hearRate;
    }
    final bool? noise = jsonConvert.convert<bool>(json['noise']);
    if (noise != null) {
      creekActivityModel.noise = noise;
    }
    final bool? pressure = jsonConvert.convert<bool>(json['pressure']);
    if (pressure != null) {
      creekActivityModel.pressure = pressure;
    }
    final bool? sleep = jsonConvert.convert<bool>(json['sleep']);
    if (sleep != null) {
      creekActivityModel.sleep = sleep;
    }
    final bool? spo = jsonConvert.convert<bool>(json['spo']);
    if (spo != null) {
      creekActivityModel.spo = spo;
    }
    final bool? sport = jsonConvert.convert<bool>(json['sport']);
    if (sport != null) {
      creekActivityModel.sport = sport;
    }

    final bool? hrv = jsonConvert.convert<bool>(json['hrv']);
    if (hrv != null) {
      creekActivityModel.hrv = hrv;
    }
    return creekActivityModel;
  }


  @override
  String toString() {
    return 'CreekSyncStateModel{id: $id, userID: $userID, deviceId: $deviceId, activity: $activity, goal: $goal, hearRate: $hearRate, noise: $noise, pressure: $pressure, sleep: $sleep, spo: $spo, sport: $sport, hrv: $hrv}';
  }

  static String toThis(){
    return "CreekSyncStateModel";
  }

}

