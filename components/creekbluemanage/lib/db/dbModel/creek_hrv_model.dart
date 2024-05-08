
import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekHrvModel{
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

  ///最小hrv值
  int? min;
  ///最大hrv值
  int? max;
  ///平均hrv值
  int? average;
  ///最小hrv值
  int? sleepMin;
  ///最大hrv值
  int? sleepMax;


  ///最后一个时间点的hrv值
  int? lastHeartRate;

  ///hrv值
  List<CreekHrvValueModel>?  values;








  CreekHrvModel();

  ///返回单个对象
  factory CreekHrvModel.fromJson(Map<String, dynamic> json) {
    final CreekHrvModel creekHeartRateModel = CreekHrvModel();
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

    final int? min = jsonConvert.convert<int>(json['min']);
    if (min != null) {
      creekHeartRateModel.min = min;
    }
    final int? max = jsonConvert.convert<int>(json['max']);
    if (max != null) {
      creekHeartRateModel.max = max;
    }
    final int? sleepMax = jsonConvert.convert<int>(json['sleepMax']);
    if (sleepMax != null) {
      creekHeartRateModel.sleepMax = sleepMax;
    }
    final int? sleepMin = jsonConvert.convert<int>(json['sleepMin']);
    if (sleepMin != null) {
      creekHeartRateModel.sleepMin = sleepMin;
    }
    final int? average = jsonConvert.convert<int>(json['average']);
    if (average != null) {
      creekHeartRateModel.average = average;
    }

    if(json['datas'] is String){
      String datas = json['datas'];
      dynamic listJson = jsonDecode(datas);
      final List<CreekHrvValueModel>? values  = jsonConvert.convertListNotNull<CreekHrvValueModel>(listJson);
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
    return 'CreekHrvModel{id: $id, userID: $userID, deviceId: $deviceId, createTime: $createTime, offsetLast: $offsetLast, offsetLastTime: $offsetLastTime, min: $min, max: $max, average: $average, sleepMin: $sleepMin, sleepMax: $sleepMax, lastHeartRate: $lastHeartRate, values: $values}';
  }

  static String toThis(){
    return "CreekHrvModel";
  }

}



///hrv值
class CreekHrvValueModel{
  ///偏移量  秒
  int? offset;
  ///hrv值
  int? value;

  CreekHrvValueModel();

  factory CreekHrvValueModel.fromJson(Map<String, dynamic> json) {
    final CreekHrvValueModel creekHeartRateValueModel = CreekHrvValueModel();

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
    return 'CreekHrvValueModel{offset: $offset, value: $value}';
  }

  static String toThis(){
    return "CreekHrvValueModel";
  }
}