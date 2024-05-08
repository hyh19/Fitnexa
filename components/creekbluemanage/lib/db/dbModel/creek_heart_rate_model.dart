
import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekHeartRateModel{
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
   ///静心心率
   int? silentHr;
   ///最小心率值
   int? min;
   ///最大心率值
   int? max;
   ///平均心率值
   int? average;
   ///心率区间
   List<CreekHeartRateIntervalModel>? intervals;
   ///心率值
   List<CreekHeartRateValueModel>?  values;
   ///最后一个时间点的心率值
   int? lastHeartRate;

   ///最近一个小时达到上升心率标准的占比
   int? raisedHr;

   ///最后一个小时的心率最小值
   int? lastHourMin;
   ///最后一个小时的心率最大值
   int? lastHourMax;

   ///最近一个小时达到上升心率标准的占比
   double? raisedProportion;
   ///最近一个小时未达到上升心率标准的占比
   double? normalProportion;



   CreekHeartRateModel();

   ///返回单个对象
   factory CreekHeartRateModel.fromJson(Map<String, dynamic> json) {
     final CreekHeartRateModel creekHeartRateModel = CreekHeartRateModel();
     final int? id = jsonConvert.convert<int>(json['id']);
     if (id != null) {
       creekHeartRateModel.id = id;
     }
     final int? userId = jsonConvert.convert<int>(json['userID']);
     if (userId != null) {
       creekHeartRateModel.userID = userId;
     }
     final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
     if (deviceId != null) {
       creekHeartRateModel.deviceId = deviceId;
     }
     final String? createTime = jsonConvert.convert<String>(json['creat_time']);
     if (createTime != null) {
       creekHeartRateModel.createTime = createTime;
     }
     final int? offsetLast = jsonConvert.convert<int>(json['offset_last']);
     if (offsetLast != null) {
       creekHeartRateModel.offsetLast = offsetLast;
     }
     final int? silentHr = jsonConvert.convert<int>(json['silent_hr']);
     if (silentHr != null) {
       creekHeartRateModel.silentHr = silentHr;
     }
     final int? min = jsonConvert.convert<int>(json['min']);
     if (min != null) {
       creekHeartRateModel.min = min;
     }
     final int? max = jsonConvert.convert<int>(json['max']);
     if (max != null) {
       creekHeartRateModel.max = max;
     }
     final int? average = jsonConvert.convert<int>(json['average']);
     if (average != null) {
       creekHeartRateModel.average = average;
     }

     final int? raisedHr = jsonConvert.convert<int>(json['raisedHr']);
     if (raisedHr != null) {
       creekHeartRateModel.raisedHr = raisedHr;
     }
     creekHeartRateModel.raisedProportion = ((raisedHr ?? 0) / 100);
     creekHeartRateModel.normalProportion = 1 - (creekHeartRateModel.raisedProportion ?? 0);
     if(json['hr_interval'] is String){
       String hrInterval = json['hr_interval'];
       dynamic listJson = jsonDecode(hrInterval);
       final List<CreekHeartRateIntervalModel>? intervals  = jsonConvert.convertListNotNull<CreekHeartRateIntervalModel>(listJson);
       if (intervals != null) {
         creekHeartRateModel.intervals = intervals;
       }
     }
     if(json['datas'] is String){
       String datas = json['datas'];
       dynamic listJson = jsonDecode(datas);
       final List<CreekHeartRateValueModel>? values  = jsonConvert.convertListNotNull<CreekHeartRateValueModel>(listJson);
       if (values != null) {
         creekHeartRateModel.values = values;
       }
     }
     if((creekHeartRateModel.values ?? []).isNotEmpty){
       creekHeartRateModel.lastHeartRate = creekHeartRateModel.values?.last.value;
     }

     return creekHeartRateModel;
   }


   @override
  String toString() {
    return 'CreekHeartRateModel{id: $id, userID: $userID, deviceId: $deviceId, createTime: $createTime, offsetLast: $offsetLast, offsetLastTime: $offsetLastTime, silentHr: $silentHr, min: $min, max: $max, average: $average, intervals: $intervals, values: $values, lastHeartRate: $lastHeartRate, raisedHr: $raisedHr, lastHourMin: $lastHourMin, lastHourMax: $lastHourMax, raisedProportion: $raisedProportion, normalProportion: $normalProportion}';
  }

   static String toThis(){
     return "CreekHeartRateModel";
   }

}

///心率区间
class CreekHeartRateIntervalModel{
  ///值
  int? threshold;
  ///分钟
  int? minute;

  CreekHeartRateIntervalModel();

  factory CreekHeartRateIntervalModel.fromJson(Map<String, dynamic> json) {
    final CreekHeartRateIntervalModel creekHeartRateIntervalModel = CreekHeartRateIntervalModel();

    final int? threshold = jsonConvert.convert<int>(json['threshold']);
    if (threshold != null) {
      creekHeartRateIntervalModel.threshold = threshold;
    }
    final int? minute = jsonConvert.convert<int>(json['minute']);
    if (minute != null) {
      creekHeartRateIntervalModel.minute = minute;
    }
    return creekHeartRateIntervalModel;
  }


  @override
  String toString() {
    return 'CreekHeartRateIntervalModel{threshold: $threshold, minute: $minute}';
  }

  static String toThis(){
    return "CreekHeartRateModel";
  }
}

///心率值
class CreekHeartRateValueModel{
  ///偏移量  秒
  int? offset;
  ///心率值
  int? value;

  CreekHeartRateValueModel();

  factory CreekHeartRateValueModel.fromJson(Map<String, dynamic> json) {
    final CreekHeartRateValueModel creekHeartRateValueModel = CreekHeartRateValueModel();

    final int? offset = jsonConvert.convert<int>(json['offset']);
    if (offset != null) {
      creekHeartRateValueModel.offset = offset;
    }
    final int? value = jsonConvert.convert<int>(json['value']);
    if (value != null) {
      creekHeartRateValueModel.value = value;
    }
    return creekHeartRateValueModel;
  }


  @override
  String toString() {
    return 'CreekHeartRateValueModel{offset: $offset, value: $value}';
  }

  static String toThis(){
    return "CreekHeartRateValueModel";
  }
}