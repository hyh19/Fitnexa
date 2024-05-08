
import 'dart:convert';

import 'package:creek_blue_manage/db/creek_procedure.dart';
import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

import 'creek_goals_model.dart';

class CreekActivityModel{
  ///id
  int? id;
  ///userId
  int? userID;
  String? deviceId;
  ///创建时间
  String? createTime;
  ///偏移时间   /秒
  int? offsetLast;
  ///偏移时间 转换成 时/分
  String? offsetLastTime;
  ///总步数
  int? totalStep;
  ///锻炼时长 单位分钟
  int? totalExercise;
  ///总卡路里
  int? totalCalories;
  ///总静息卡路里
  int? totalRestCalories;
  ///总距离  m
  int? totalDistances;
  ///每天站立小时数
  int? totalStand;
  ///活动值
  List<CreekActivityValueModel>?  values;
  ///目标
  CreekGoalsModel? creekGoalsModel;
  ///kcal完成占比
  double? kcalProportion;
  ///步数完成占比
  double? stepProportion;

  ///是否支持爬楼层数
  bool? floorsClimbedSupport;
  ///总爬楼层数
  int? totalFloorsClimbed;

  ///不占主要model，单独为奖章查询
  ///当天有多少运动
  List<int>? sportTypes;


  CreekActivityModel();

  ///返回单个对象
  factory CreekActivityModel.fromJson(Map<String, dynamic> json) {
    final CreekActivityModel creekActivityModel = CreekActivityModel();
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
    final String? createTime = jsonConvert.convert<String>(json['creat_time']);
    if (createTime != null) {
      creekActivityModel.createTime = createTime;
    }
    final int? totalStep = jsonConvert.convert<int>(json['total_step']);
    if (totalStep != null) {
      creekActivityModel.totalStep = totalStep;
    }
    final int? totalExercise = jsonConvert.convert<int>(json['total_exercise_min']);
    if (totalExercise != null) {
      creekActivityModel.totalExercise = totalExercise;
    }
    final int? totalCalories = jsonConvert.convert<int>(json['total_activity_calories']);
    if (totalCalories != null) {
      creekActivityModel.totalCalories = totalCalories;
    }
    final int? totalRestCalories = jsonConvert.convert<int>(json['total_rest_calories']);
    if (totalRestCalories != null) {
      creekActivityModel.totalRestCalories = totalRestCalories;
    }
    final int? totalDistances = jsonConvert.convert<int>(json['total_distances']);
    if (totalDistances != null) {
      creekActivityModel.totalDistances = totalDistances;
    }
    final int? totalStand = jsonConvert.convert<int>(json['total_stand_hour']);
    if (totalStand != null) {
      creekActivityModel.totalStand = totalStand;
    }

    final int? floorsClimbedSupport = jsonConvert.convert<int>(json['floors_climbed_support']);
    if (floorsClimbedSupport != null) {
      creekActivityModel.floorsClimbedSupport = floorsClimbedSupport == 1 ? true : false;
    }

    final int? totalFloorsClimbed = jsonConvert.convert<int>(json['total_floors_climbed']);
    if (totalFloorsClimbed != null) {
      creekActivityModel.totalFloorsClimbed = totalFloorsClimbed;
    }

    if(json['datas'] is String){
      String datas = json['datas'];
      dynamic listJson = jsonDecode(datas);
      final List<CreekActivityValueModel>? values  = jsonConvert.convertListNotNull<CreekActivityValueModel>(listJson);
      if (values != null) {
        creekActivityModel.values = values;
      }
    }
    if((creekActivityModel.values ?? []).isNotEmpty){
      creekActivityModel.offsetLast = creekActivityModel.values!.length * 15;
    }
    final int? offsetLast = jsonConvert.convert<int>(json['offset_last']);
    if (offsetLast != null) {
      creekActivityModel.offsetLast = offsetLast;
    }

    return creekActivityModel;
  }
   Future<CreekGoalsModel> goalsNull(String time) async{
    List<CreekGoalsModel?> goals =  await CreekProcedure.getGoalsList();
    CreekGoalsModel creekGoalsModel = CreekGoalsModel();
    for (var element2 in goals) {
      if(DateTime.parse(time).difference(DateTime.parse(element2!.creatTime!)).inDays >= 0){
        creekGoalsModel = element2;
        break;
      }
    }
    return creekGoalsModel;
  }


  @override
  String toString() {
    return 'CreekActivityModel{id: $id, userID: $userID, deviceId: $deviceId, createTime: $createTime, offsetLast: $offsetLast, offsetLastTime: $offsetLastTime, totalStep: $totalStep, totalExercise: $totalExercise, totalCalories: $totalCalories, totalRestCalories: $totalRestCalories, totalDistances: $totalDistances, totalStand: $totalStand, values: $values, creekGoalsModel: $creekGoalsModel, kcalProportion: $kcalProportion, stepProportion: $stepProportion, floorsClimbedSupport: $floorsClimbedSupport, totalFloorsClimbed: $totalFloorsClimbed, sportTypes: $sportTypes}';
  }

  static String toThis(){
    return "CreekActivityModel";
  }

}

///血氧值
class CreekActivityValueModel{

  /**********************
   * 每15分钟产生一个值
    *******************/

  ///步数
  int? stepCount;
  ///锻炼时长 单位分钟
  int? exerciseMin;
  ///活动卡路里
  int? activityCalories;
  ///bmr卡路里
  int? restCalories;
  ///距离，单位米
  int? distance;
  ///站立
  int? standTime;
  ///佩戴时长
  int? wearTime;

  CreekActivityValueModel();

  factory CreekActivityValueModel.fromJson(Map<String, dynamic> json) {
    final CreekActivityValueModel creekActivityValueModel = CreekActivityValueModel();
    final int? stepCount = jsonConvert.convert<int>(json['step_count']);
    if (stepCount != null) {
      creekActivityValueModel.stepCount = stepCount;
    }
    final int? exerciseMin = jsonConvert.convert<int>(json['exercise_min']);
    if (exerciseMin != null) {
      creekActivityValueModel.exerciseMin = exerciseMin;
    }
    final int? activityCalories = jsonConvert.convert<int>(json['activity_calories']);
    if (activityCalories != null) {
      creekActivityValueModel.activityCalories = activityCalories;
    }
    final int? restCalories = jsonConvert.convert<int>(json['rest_calories']);
    if (restCalories != null) {
      creekActivityValueModel.restCalories = restCalories;
    }
    final int? distance = jsonConvert.convert<int>(json['distance']);
    if (distance != null) {
      creekActivityValueModel.distance = distance;
    }
    final int? standTime = jsonConvert.convert<int>(json['stand_time']);
    if (standTime != null) {
      creekActivityValueModel.standTime = exerciseMin;
    }
    final int? wearTime = jsonConvert.convert<int>(json['wear_time']);
    if (wearTime != null) {
      creekActivityValueModel.wearTime = wearTime;
    }
    return creekActivityValueModel;
  }


  @override
  String toString() {
    return 'CreekActivityValueModel{stepCount: $stepCount, exerciseMin: $exerciseMin, activityCalories: $activityCalories, restCalories: $restCalories, distance: $distance, standTime: $standTime, wearTime: $wearTime}';
  }

  static String toThis(){
    return "CreekActivityValueModel";
  }
}