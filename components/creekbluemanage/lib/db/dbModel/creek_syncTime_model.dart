
import 'dart:convert';

import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

import 'creek_goals_model.dart';

class CreekSyncTimeModel{
  ///id
  int? id;
  ///userId
  int? userID;
  String? deviceId;
  ///活动
  String? activity;
  ///目标
  String? goal;
  ///心率
  String? hearRate;
  ///噪音
  String? noise;
  ///创建时间
  String? pressure;
  ///睡眠
  String? sleep;
  ///血氧
  String? spo;
  ///运动
  String? sport;

  ///hrv
  String? hrv;


  CreekSyncTimeModel();

  ///返回单个对象
  factory CreekSyncTimeModel.fromJson(Map<String, dynamic> json) {
    final CreekSyncTimeModel creekActivityModel = CreekSyncTimeModel();
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
    final String? activity = jsonConvert.convert<String>(json['activity']);
    if (activity != null) {
      creekActivityModel.activity = activity;
    }
    final String? goal = jsonConvert.convert<String>(json['goal']);
    if (goal != null) {
      creekActivityModel.goal = goal;
    }
    final String? hearRate = jsonConvert.convert<String>(json['hearRate']);
    if (hearRate != null) {
      creekActivityModel.hearRate = hearRate;
    }
    final String? noise = jsonConvert.convert<String>(json['noise']);
    if (noise != null) {
      creekActivityModel.noise = noise;
    }
    final String? pressure = jsonConvert.convert<String>(json['pressure']);
    if (pressure != null) {
      creekActivityModel.pressure = pressure;
    }
    final String? sleep = jsonConvert.convert<String>(json['sleep']);
    if (sleep != null) {
      creekActivityModel.sleep = sleep;
    }
    final String? spo = jsonConvert.convert<String>(json['spo']);
    if (spo != null) {
      creekActivityModel.spo = spo;
    }
    final String? sport = jsonConvert.convert<String>(json['sport']);
    if (sport != null) {
      creekActivityModel.sport = sport;
    }

    final String? hrv = jsonConvert.convert<String>(json['hrv']);
    if (hrv != null) {
      creekActivityModel.hrv = hrv;
    }

    return creekActivityModel;
  }


  @override
  String toString() {
    return 'CreekSyncTimeModel{id: $id, userID: $userID, deviceId: $deviceId, activity: $activity, goal: $goal, hearRate: $hearRate, noise: $noise, pressure: $pressure, sleep: $sleep, spo: $spo, sport: $sport, hrv: $hrv}';
  }

  static String toThis(){
    return "CreekSyncTimeModel";
  }

}

