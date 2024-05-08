
import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

///目标model
class CreekGoalsModel{

  int? id;
  ///userId
  int? userID;
  String? deviceId;
  ///creatTime
  String? creatTime;
  ///卡路里
  int? calories = 350;
  ///锻炼时长 /分
  int? exercise = 30;
  ///站立/时
  int? stand = 8;
  ///步数
  int? steps = 8000;
  ///运动天数/day
  int? sportDay = 7;
  ///距离/米
  int? distance = 5000;
  ///目标提醒开关 true 开启,false 关闭
  bool? notifySwitchFlag = true;
  /// 通知类型 0允许通知 1静默通知 2关闭通知
  int? notifyFlag = 0;
  CreekGoalsModel();


  ///返回单个对象
  factory CreekGoalsModel.fromJson(Map<String, dynamic> json) {
    final CreekGoalsModel creekGoalsModel = CreekGoalsModel();
    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekGoalsModel.id = id;
    }
    final int? userId = jsonConvert.convert<int>(json['userID']);
    if (userId != null) {
      creekGoalsModel.userID = userId;
    }
    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekGoalsModel.deviceId = deviceId;
    }
    final String? creatTime = jsonConvert.convert<String>(json['creatTime']);
    if (creatTime != null) {
      creekGoalsModel.creatTime = creatTime;
    }
    final int? calories = jsonConvert.convert<int>(json['calories']);
    if (calories != null) {
      creekGoalsModel.calories = calories;
    }
    final int? exercise = jsonConvert.convert<int>(json['exercise']);
    if (exercise != null) {
      creekGoalsModel.exercise = exercise;
    }
    final int? stand = jsonConvert.convert<int>(json['stand']);
    if (stand != null) {
      creekGoalsModel.stand = stand;
    }
    final int? steps = jsonConvert.convert<int>(json['steps']);
    if (steps != null) {
      creekGoalsModel.steps = steps;
    }
    final int? distance = jsonConvert.convert<int>(json['distance']);
    if (distance != null) {
      creekGoalsModel.distance = distance;
    }
    final int? sportDay = jsonConvert.convert<int>(json['sportDay']);
    if (sportDay != null) {
      creekGoalsModel.sportDay = sportDay;
    }
    final bool? notifySwitchFlag = jsonConvert.convert<bool>(json['notifySwitchFlag']);
    if (notifySwitchFlag != null) {
      creekGoalsModel.notifySwitchFlag = notifySwitchFlag;
    }
    final int? notifyFlag = jsonConvert.convert<int>(json['notifyFlag']);
    if (notifyFlag != null) {
      creekGoalsModel.notifyFlag = notifyFlag;
    }

    return creekGoalsModel;
  }

  ///返回多个对象
  List<CreekGoalsModel> fromListJson(List<Map<String, dynamic>> list) {
    final List<CreekGoalsModel>? models  = jsonConvert.convertListNotNull<CreekGoalsModel>(list);
    return models ?? <CreekGoalsModel>[];
  }


  @override
  String toString() {
    return 'CreekGoalsModel{id: $id, userID: $userID, deviceId: $deviceId, creatTime: $creatTime, calories: $calories, exercise: $exercise, stand: $stand, steps: $steps, sportDay: $sportDay, distance: $distance, notifySwitchFlag: $notifySwitchFlag, notifyFlag: $notifyFlag}';
  }

  static String toThis(){
    return "CreekGoalsModel";
  }


}