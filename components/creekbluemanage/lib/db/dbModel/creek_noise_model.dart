
import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekNoiseModel{
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
  ///最小噪音值
  int? min;
  ///最大噪音值
  int? max;
  ///平均噪音值
  int? average;
  ///噪音值
  List<CreekNoiseValueModel>?  values;
  ///最后一个时间点的噪音值
  int? lastNoise;

  ///最后一个小时的噪音最小值
  int? lastHourMin;
  ///最后一个小时的噪音最大值
  int? lastHourMax;


  ///最后一个小时达到90的占比
  double? greaterProportion;
  ///最后一个小时小于90的占比
  double? lessProportion;

  CreekNoiseModel();

  ///返回单个对象
  factory CreekNoiseModel.fromJson(Map<String, dynamic> json) {
    final CreekNoiseModel creekNoiseModel = CreekNoiseModel();
    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekNoiseModel.id = id;
    }
    final int? userId = jsonConvert.convert<int>(json['userID']);
    if (userId != null) {
      creekNoiseModel.userID = userId;
    }
    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekNoiseModel.deviceId = deviceId;
    }
    final String? createTime = jsonConvert.convert<String>(json['creat_time']);
    if (createTime != null) {
      creekNoiseModel.createTime = createTime;
    }
    final int? offsetLast = jsonConvert.convert<int>(json['offset_last']);
    if (offsetLast != null) {
      creekNoiseModel.offsetLast = offsetLast;
    }

    final int? min = jsonConvert.convert<int>(json['min']);
    if (min != null) {
      creekNoiseModel.min = min;
    }
    final int? max = jsonConvert.convert<int>(json['max']);
    if (max != null) {
      creekNoiseModel.max = max;
    }
    final int? average = jsonConvert.convert<int>(json['average']);
    if (average != null) {
      creekNoiseModel.average = average;
    }

    if(json['datas'] is String){
      String datas = json['datas'];
      dynamic listJson = jsonDecode(datas);
      final List<CreekNoiseValueModel>? values  = jsonConvert.convertListNotNull<CreekNoiseValueModel>(listJson);
      if (values != null) {
        creekNoiseModel.values = values;
      }
    }
    if((creekNoiseModel.values ?? []).isNotEmpty){
      creekNoiseModel.lastNoise = creekNoiseModel.values?.last.value;
    }
    return creekNoiseModel;
  }


  @override
  String toString() {
    return 'CreekNoiseModel{id: $id, userID: $userID, deviceId: $deviceId, createTime: $createTime, offsetLast: $offsetLast, offsetLastTime: $offsetLastTime, min: $min, max: $max, average: $average, values: $values, lastNoise: $lastNoise, lastHourMin: $lastHourMin, lastHourMax: $lastHourMax, greaterProportion: $greaterProportion, lessProportion: $lessProportion}';
  }

  static String toThis(){
    return "CreekNoiseModel";
  }

}


///血氧值
class CreekNoiseValueModel{
  ///偏移量  秒
  int? offset;
  ///心率值
  int? value;

  CreekNoiseValueModel();

  factory CreekNoiseValueModel.fromJson(Map<String, dynamic> json) {
    final CreekNoiseValueModel creekNoiseValueModel = CreekNoiseValueModel();

    final int? offset = jsonConvert.convert<int>(json['offset']);
    if (offset != null) {
      creekNoiseValueModel.offset = offset;
    }
    final int? value = jsonConvert.convert<int>(json['value']);
    if (value != null) {
      creekNoiseValueModel.value = value;
    }
    return creekNoiseValueModel;
  }


  @override
  String toString() {
    return 'CreekNoiseValueModel{offset: $offset, value: $value}';
  }

  static String toThis(){
    return "CreekNoiseValueModel";
  }
}