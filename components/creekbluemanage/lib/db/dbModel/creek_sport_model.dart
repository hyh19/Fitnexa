import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';
import 'package:creektool/creek_tool.dart';

class CreekSportModel{

  int? id;
  /// 用户id
  int? userID;
  ///设备的uuid
  String? deviceId;
  ///创建时间
  String? creatTime;
  ///开始时间
  String? startTime;
  ///结束时间
  String? endTime;
  ///运动枚举
  int? sportType;
  ///手环是否连接app，用app评产生何种报告， 1是连接，0是未连接
  int? isConnectApp;
  ///无效， 1 : app发起的运动， 2：手表发起的运动
  int? sportStartType;
  ///运动时长； 单位： s
  int? durations;
  ///运动目标
  int? goalType;
  ///目标值
  int? goalData;
  ///平均心率值
  int? avgHrValue;
  ///最大心率值
  int? maxHrValue;
  ///最小心率值
  int? minHrValue;
  ///热身运动的累计时长 秒钟数据
  int? warmUpTime;
  ///脂肪燃烧的累计时长   秒钟
  int? fatBurningTime;
  ///有氧运动的累计时长  秒钟
  int? aerobicExerciseTime;
  ///无氧运动的累计时长   秒钟
  int? anaerobicExerciseTime;
  ///极限锻炼的累计时长   秒钟
  int? extremeExerciseTime;
  ///步数
  int? totalStep;
  ///卡路里     单位：千卡
  int? totalCalories;
  ///距离；     单位： m
  int? totalDistance;
  ///平均公里配速 传过来的是s钟， 比如361  361/60=6分 余数是1s  6''1'
  int? avgKmPace;
  ///最快公里配速
  int? fastKmPace;
  ///平均速度  km/h  固件是 扩大100倍
  int? avgSpeed;
  ///最快速度  km/h  固件是 扩大100倍
  int? fastSpeed;
  ///平均步频 步/分钟
  int? avgStepFrequency;
  ///最大步频 步/分钟
  int? maxStepFrequency;
  ///平均步幅
  int? avgStepStride;
  ///最大步幅
  int? maxStepStride;
  ///训练效果；    单位：无：           范围： 1.0 - 5.0 （扩大10倍传输）
  int? trainingEffect;
  ///最大摄氧量；  单位：毫升/公斤/分钟； 范围  0-80
  int? vozmax;
  ///摄氧量等级  0x00：无等级  0x01:低等   0x02:业余   0x03:一般  0x04：平均
  int? grade;
  ///恢复时间 单位分钟
  int? recoveryTime;
  ///心率的个数
  int? hrItemCount;
  ///公里配速的个数 最大100
  int? kmSpeedCount;
  ///实时配速个数
  int? paceCount;
  ///步频个数
  int? stepFrequencyCount;
  ///步幅个数
  int? stepStrideCount;

  ///跑步功率
  int? avgPower;

  ///游泳距离 单位：米
  int? swimDistance;

  ///最大海拔高度
  int? maxElevation;

  ///最小海拔高度
  int? minElevation;

  ///平均海拔高度
  int? avgElevation;

  ///爬升高度
  int? climbHeight;

  ///梅脱
  int? met;

  ///是否支持梅脱
  bool? metSupport;

  ///是否支持海拔数据
  bool? elevationSupport;

  ///是否支持跑步功率
  bool? avgPowerSupport;

  ///是否支持速度
  bool? speedPaceSupport;

  ///是否支持总静息卡路里
  bool? restCaloriesSupport;
  ///总静息卡路里
  int? totalRestCalories;

  ///实时运动心率 每秒钟保存一组,最大保存20小时   数据格式: [0,1]
  List<int>? hrValueItem;
  ///实时公里速度详情 每5秒存一次 s钟数据传输 一公里用了多少s   数据格式:[0,1,2]
  List<int>? kmSpeedItem;
  ///实时步频详情 每5秒存一次 步/分钟 一分钟多少步     数据格式:[0,1,2]
  List<int>? stepFrequencyItem;
  ///实时配速详情 每5秒存一次 传过来的是 s 钟  每5S算一次.  数据格式:[0,1,2]
  List<int>? kmPaceItem;
  ///实时英里公里速度详情 每5秒存一次 s钟数据传输 一公里用了多少s   数据格式:[0,1,2]
  List<int>? imSpeedItem;
  ///实时英里配速详情 每5秒存一次 传过来的是 s 钟  每5S算一次.  数据格式:[0,1,2]
  List<int>? imPaceItem;
  ///实时步幅  每5S存一次.  数据格式:[0,1,2]
  List<int>? stepStrideItem;

  ///实时的绝对海拔高度详情 单位米 每10秒存一个值  数据格式:[0,1,2]
  List<int>? elevationItem;
  ///位置数据
  List<CreekSportLocationModel>? trailData;

  ///实时配速和速度
  List<CreekSpeedPaceItem>? speedPaceItem;


  CreekSportModel();
  factory CreekSportModel.fromJson(Map<String, dynamic> json) {
    final CreekSportModel creekSportLocationLongModel = CreekSportModel();

    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekSportLocationLongModel.id = id;
    }

    final int? userID = jsonConvert.convert<int>(json['userID']);
    if (userID != null) {
      creekSportLocationLongModel.userID = userID;
    }
    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekSportLocationLongModel.deviceId = deviceId;
    }
    final String? creatTime = jsonConvert.convert<String>(json['creatTime']);
    if (creatTime != null) {
      creekSportLocationLongModel.creatTime = creatTime;
    }
    final String? startTime = jsonConvert.convert<String>(json['startTime']);
    if (startTime != null) {
      creekSportLocationLongModel.startTime = startTime;
    }
    final String? endTime = jsonConvert.convert<String>(json['endTime']);
    if (endTime != null) {
      creekSportLocationLongModel.endTime = endTime;
    }

    final int? sportType = jsonConvert.convert<int>(json['sportType']);
    if (sportType != null) {
      creekSportLocationLongModel.sportType = sportType;
    }
    final int? isConnectApp = jsonConvert.convert<int>(json['isConnectApp']);
    if (isConnectApp != null) {
      creekSportLocationLongModel.isConnectApp = isConnectApp;
    }
    final int? sportStartType = jsonConvert.convert<int>(json['sportStartType']);
    if (sportStartType != null) {
      creekSportLocationLongModel.sportStartType = sportStartType;
    }
    final int? durations = jsonConvert.convert<int>(json['durations']);
    if (durations != null) {
      creekSportLocationLongModel.durations = durations;
    }
    final int? goalType = jsonConvert.convert<int>(json['goalType']);
    if (goalType != null) {
      creekSportLocationLongModel.goalType = goalType;
    }
    final int? goalData = jsonConvert.convert<int>(json['goalData']);
    if (goalData != null) {
      creekSportLocationLongModel.goalData = goalData;
    }
    final int? avgHrValue = jsonConvert.convert<int>(json['avgHrValue']);
    if (avgHrValue != null) {
      creekSportLocationLongModel.avgHrValue = avgHrValue;
    }
    final int? maxHrValue = jsonConvert.convert<int>(json['maxHrValue']);
    if (maxHrValue != null) {
      creekSportLocationLongModel.maxHrValue = maxHrValue;
    }

    final int? minHrValue = jsonConvert.convert<int>(json['minHrValue']);
    if (minHrValue != null) {
      creekSportLocationLongModel.minHrValue = minHrValue;
    }
    final int? warmUpTime = jsonConvert.convert<int>(json['warmUpTime']);
    if (warmUpTime != null) {
      creekSportLocationLongModel.warmUpTime = warmUpTime;
    }
    final int? fatBurningTime = jsonConvert.convert<int>(json['fatBurningTime']);
    if (fatBurningTime != null) {
      creekSportLocationLongModel.fatBurningTime = fatBurningTime;
    }
    final int? aerobicExerciseTime = jsonConvert.convert<int>(json['aerobicExerciseTime']);
    if (aerobicExerciseTime != null) {
      creekSportLocationLongModel.aerobicExerciseTime = aerobicExerciseTime;
    }
    final int? anaerobicExerciseTime = jsonConvert.convert<int>(json['anaerobicExerciseTime']);
    if (anaerobicExerciseTime != null) {
      creekSportLocationLongModel.anaerobicExerciseTime = anaerobicExerciseTime;
    }
    final int? extremeExerciseTime = jsonConvert.convert<int>(json['extremeExerciseTime']);
    if (extremeExerciseTime != null) {
      creekSportLocationLongModel.extremeExerciseTime = extremeExerciseTime;
    }
    final int? totalStep = jsonConvert.convert<int>(json['totalStep']);
    if (totalStep != null) {
      creekSportLocationLongModel.totalStep = totalStep;
    }
    final int? totalCalories = jsonConvert.convert<int>(json['totalCalories']);
    if (totalCalories != null) {
      creekSportLocationLongModel.totalCalories = totalCalories;
    }

    final int? totalDistance = jsonConvert.convert<int>(json['totalDistance']);
    if (totalDistance != null) {
      creekSportLocationLongModel.totalDistance = totalDistance;
    }

    final int? avgKmPace = jsonConvert.convert<int>(json['avgKmPace']);
    if (avgKmPace != null) {
      creekSportLocationLongModel.avgKmPace = avgKmPace;
    }
    final int? fastKmPace = jsonConvert.convert<int>(json['fastKmPace']);
    if (fastKmPace != null) {
      creekSportLocationLongModel.fastKmPace = fastKmPace;
    }
    final int? avgSpeed = jsonConvert.convert<int>(json['avgSpeed']);
    if (avgSpeed != null) {
      creekSportLocationLongModel.avgSpeed = avgSpeed;
    }
    final int? fastSpeed = jsonConvert.convert<int>(json['fastSpeed']);
    if (fastSpeed != null) {
      creekSportLocationLongModel.fastSpeed = fastSpeed;
    }
    final int? avgStepFrequency = jsonConvert.convert<int>(json['avgStepFrequency']);
    if (avgStepFrequency != null) {
      creekSportLocationLongModel.avgStepFrequency = avgStepFrequency;
    }
    final int? maxStepFrequency = jsonConvert.convert<int>(json['maxStepFrequency']);
    if (maxStepFrequency != null) {
      creekSportLocationLongModel.maxStepFrequency = maxStepFrequency;
    }
    final int? avgStepStride = jsonConvert.convert<int>(json['avgStepStride']);
    if (avgStepStride != null) {
      creekSportLocationLongModel.avgStepStride = avgStepStride;
    }
    final int? maxStepStride = jsonConvert.convert<int>(json['maxStepStride']);
    if (maxStepStride != null) {
      creekSportLocationLongModel.maxStepStride = maxStepStride;
    }

    final int? trainingEffect = jsonConvert.convert<int>(json['trainingEffect']);
    if (trainingEffect != null) {
      creekSportLocationLongModel.trainingEffect = trainingEffect;
    }

    final int? vozmax = jsonConvert.convert<int>(json['vozmax']);
    if (vozmax != null) {
      creekSportLocationLongModel.vozmax = vozmax;
    }

    final int? grade = jsonConvert.convert<int>(json['grade']);
    if (grade != null) {
      creekSportLocationLongModel.grade = grade;
    }

    final int? recoveryTime = jsonConvert.convert<int>(json['recoveryTime']);
    if (recoveryTime != null) {
      creekSportLocationLongModel.recoveryTime = recoveryTime;
    }
    final int? hrItemCount = jsonConvert.convert<int>(json['hrItemCount']);
    if (recoveryTime != null) {
      creekSportLocationLongModel.recoveryTime = hrItemCount;
    }
    final int? kmSpeedCount = jsonConvert.convert<int>(json['kmSpeedCount']);
    if (kmSpeedCount != null) {
      creekSportLocationLongModel.kmSpeedCount = kmSpeedCount;
    }
    final int? paceCount = jsonConvert.convert<int>(json['paceCount']);
    if (paceCount != null) {
      creekSportLocationLongModel.paceCount = paceCount;
    }
    final int? stepFrequencyCount = jsonConvert.convert<int>(json['stepFrequencyCount']);
    if (stepFrequencyCount != null) {
      creekSportLocationLongModel.stepFrequencyCount = stepFrequencyCount;
    }
    final int? stepStrideCount = jsonConvert.convert<int>(json['stepStrideCount']);
    if (stepStrideCount != null) {
      creekSportLocationLongModel.stepStrideCount = stepStrideCount;
    }

    final int? avgPower = jsonConvert.convert<int>(json['avgPower']);
    if (avgPower != null) {
      creekSportLocationLongModel.avgPower = avgPower;
    }

    final int? swimDistance = jsonConvert.convert<int>(json['swimDistance']);
    if (swimDistance != null) {
      creekSportLocationLongModel.swimDistance = swimDistance;
    }

    final int? maxElevation = jsonConvert.convert<int>(json['maxElevation']);
    if (maxElevation != null) {
      creekSportLocationLongModel.maxElevation = maxElevation;
    }

    final int? minElevation = jsonConvert.convert<int>(json['minElevation']);
    if (minElevation != null) {
      creekSportLocationLongModel.minElevation = minElevation;
    }

    final int? avgElevation = jsonConvert.convert<int>(json['avgElevation']);
    if (avgElevation != null) {
      creekSportLocationLongModel.avgElevation = avgElevation;
    }

    final int? climbHeight = jsonConvert.convert<int>(json['climbHeight']);
    if (climbHeight != null) {
      creekSportLocationLongModel.climbHeight = climbHeight;
    }

    final int? met = jsonConvert.convert<int>(json['met']);
    if (met != null) {
      creekSportLocationLongModel.met = met;
    }

    final int? metSupport = jsonConvert.convert<int>(json['metSupport']);
    if (metSupport != null) {
      creekSportLocationLongModel.metSupport = metSupport == 1 ? true : false;
    }

    final int? elevationSupport = jsonConvert.convert<int>(json['elevationSupport']);
    if (elevationSupport != null) {
      creekSportLocationLongModel.elevationSupport = elevationSupport == 1 ? true : false;
    }

    final int? avgPowerSupport = jsonConvert.convert<int>(json['avgPowerSupport']);
    if (avgPowerSupport != null) {
      creekSportLocationLongModel.avgPowerSupport = avgPowerSupport == 1 ? true : false;
    }

    final int? speedPaceSupport = jsonConvert.convert<int>(json['speedPaceSupport']);
    if (speedPaceSupport != null) {
      creekSportLocationLongModel.speedPaceSupport = speedPaceSupport == 1 ? true : false;
    }
    final int? restCaloriesSupport = jsonConvert.convert<int>(json['restCaloriesSupport']);
    if (restCaloriesSupport != null) {
      creekSportLocationLongModel.restCaloriesSupport = restCaloriesSupport == 1 ? true : false;
    }
    final int? totalRestCalories = jsonConvert.convert<int>(json['totalRestCalories']);
    if (totalRestCalories != null) {
      creekSportLocationLongModel.totalRestCalories = totalRestCalories;
    }

    if(json['hrValueItem'] is String){
      try{
        String datas = json['hrValueItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.hrValueItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }
    }
    if(json['kmSpeedItem'] is String){
      try{
        String datas = json['kmSpeedItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.kmSpeedItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }
    }
    if(json['stepFrequencyItem'] is String){
      try{
        String datas = json['stepFrequencyItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.stepFrequencyItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }

    }
    if(json['kmPaceItem'] is String){
      try{
        String datas = json['kmPaceItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.kmPaceItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }

    }
    if(json['stepStrideItem'] is String){
      try{
        String datas = json['stepStrideItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.stepStrideItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }
    }
    if(json['miSpeedItem'] is String){
      try{
        String datas = json['miSpeedItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.imSpeedItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }

    }
    if(json['miPaceItem'] is String){
      try{
        String datas = json['miPaceItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.imPaceItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }

    }
    if(json['elevationItem'] is String){
      try{
        String datas = json['elevationItem'];
        dynamic items = jsonDecode(datas);
        final List<int>? values  = jsonConvert.convertListNotNull<int>(items);
        creekSportLocationLongModel.elevationItem = values;
      }catch(e){
        CreekLog.info(e.toString());
      }

    }
    if(json['trailData'] is String){
      try{
        String datas = json['trailData'];
        dynamic listJson = jsonDecode(datas);
        final List<CreekSportLocationModel>? values  = jsonConvert.convertListNotNull<CreekSportLocationModel>(listJson);
        if (values != null) {
          creekSportLocationLongModel.trailData = values;
        }
      }catch(e){
        CreekLog.info(e.toString());
      }

    }

    if(json['speedPaceItem'] is String){
      String datas = json['speedPaceItem'];
      dynamic listJson = jsonDecode(datas);
      final List<CreekSpeedPaceItem>? values  = jsonConvert.convertListNotNull<CreekSpeedPaceItem>(listJson);
      if (values != null) {
        creekSportLocationLongModel.speedPaceItem = values;
      }
    }
    return creekSportLocationLongModel;
  }


  @override
  String toString() {
    return 'CreekSportModel{id: $id, userID: $userID, deviceId: $deviceId, creatTime: $creatTime, startTime: $startTime, endTime: $endTime, sportType: $sportType, isConnectApp: $isConnectApp, sportStartType: $sportStartType, durations: $durations, goalType: $goalType, goalData: $goalData, avgHrValue: $avgHrValue, maxHrValue: $maxHrValue, minHrValue: $minHrValue, warmUpTime: $warmUpTime, fatBurningTime: $fatBurningTime, aerobicExerciseTime: $aerobicExerciseTime, anaerobicExerciseTime: $anaerobicExerciseTime, extremeExerciseTime: $extremeExerciseTime, totalStep: $totalStep, totalCalories: $totalCalories, totalDistance: $totalDistance, avgKmPace: $avgKmPace, fastKmPace: $fastKmPace, avgSpeed: $avgSpeed, fastSpeed: $fastSpeed, avgStepFrequency: $avgStepFrequency, maxStepFrequency: $maxStepFrequency, avgStepStride: $avgStepStride, maxStepStride: $maxStepStride, trainingEffect: $trainingEffect, vozmax: $vozmax, grade: $grade, recoveryTime: $recoveryTime, hrItemCount: $hrItemCount, kmSpeedCount: $kmSpeedCount, paceCount: $paceCount, stepFrequencyCount: $stepFrequencyCount, stepStrideCount: $stepStrideCount, avgPower: $avgPower, swimDistance: $swimDistance, maxElevation: $maxElevation, minElevation: $minElevation, avgElevation: $avgElevation, climbHeight: $climbHeight, met: $met, metSupport: $metSupport, elevationSupport: $elevationSupport, avgPowerSupport: $avgPowerSupport, hrValueItem: $hrValueItem, kmSpeedItem: $kmSpeedItem, stepFrequencyItem: $stepFrequencyItem, kmPaceItem: $kmPaceItem, imSpeedItem: $imSpeedItem, imPaceItem: $imPaceItem, stepStrideItem: $stepStrideItem, elevationItem: $elevationItem, trailData: $trailData}';
  }

  static String toThis(){
    return "CreekSportModel";
  }


}

class CreekSpeedPaceItem{
  int? speed;
  int? pace;

  CreekSpeedPaceItem();

  factory CreekSpeedPaceItem.fromJson(Map<String, dynamic> json) {
    final CreekSpeedPaceItem speedPaceItem = CreekSpeedPaceItem();

    final int? speed = jsonConvert.convert<int>(json['speed']);
    if (speed != null) {
      speedPaceItem.speed = speed;
    }
    final int? pace = jsonConvert.convert<int>(json['pace']);
    if (pace != null) {
      speedPaceItem.pace = pace;
    }
    return speedPaceItem;
  }

  @override
  String toString() {
    return 'CreekSpeedPaceItem{speed: $speed, pace: $pace}';
  }

  static String toThis(){
    return "CreekSpeedPaceItem";
  }
}

class CreekSportLocationModel{
  int? latitude;
  int? longitude;
  CreekSportLocationModel();
  factory CreekSportLocationModel.fromJson(Map<String, dynamic> json) {
    final CreekSportLocationModel creekSportLocationModel = CreekSportLocationModel();

    final int? latitude = jsonConvert.convert<int>(json['latitude']);
    if (latitude != null) {
      creekSportLocationModel.latitude = latitude;
    }
    final int? longitude = jsonConvert.convert<int>(json['longitude']);
    if (longitude != null) {
      creekSportLocationModel.longitude = longitude;
    }
    return creekSportLocationModel;
  }


  @override
  String toString() {
    return 'CreekSportLocationModel{latitude: $latitude, longitude: $longitude}';
  }

  static String toThis(){
    return "CreekSportLocationModel";
  }

}

///一周总数据
class CreekSportWorkDayModel{
  ///这周的开始时间
  String? startTime;
  ///这周的结束时间
  String? endTime;
  ///这周一共运动多少天
  int? workDay;
  ///这周的目标天数
  int? sportDay;
  ///这周一共运动多少时长 分
  int? totalDurations;
  ///当前年份的第几周
  int? week;
  ///天的数据
  List<CreekSportModel>? sports;
}

class GPSModel{
  int? latitude;
  int? longitude;
  int? accuracy;

}