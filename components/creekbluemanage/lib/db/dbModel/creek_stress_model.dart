import 'dart:convert';

import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekStressModel{
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
  ///最小压力
  int? min;
  ///最大压力
  int? max;
  ///平均压力
  int? average;
  ///压力区间占比
  int? low;
  int? usual;
  int? higher;
  int? verHigh;
  ///压力值
  List<CreekStressValueModel>?  values;
  ///最后一个时间点的压力值
  int? lastStress;




  CreekStressModel();

  ///返回单个对象
  factory CreekStressModel.fromJson(Map<String, dynamic> json) {
    final CreekStressModel creekStressModel = CreekStressModel();
    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekStressModel.id = id;
    }
    final int? userId = jsonConvert.convert<int>(json['userID']);
    if (userId != null) {
      creekStressModel.userID = userId;
    }
    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekStressModel.deviceId = deviceId;
    }
    final String? createTime = jsonConvert.convert<String>(json['creat_time']);
    if (createTime != null) {
      creekStressModel.createTime = createTime;
    }
    final int? offsetLast = jsonConvert.convert<int>(json['offset_last']);
    if (offsetLast != null) {
      creekStressModel.offsetLast = offsetLast;
    }
    final int? silentHr = jsonConvert.convert<int>(json['silent_hr']);
    if (silentHr != null) {
      creekStressModel.silentHr = silentHr;
    }
    final int? min = jsonConvert.convert<int>(json['min']);
    if (min != null) {
      creekStressModel.min = min;
    }
    final int? max = jsonConvert.convert<int>(json['max']);
    if (max != null) {
      creekStressModel.max = max;
    }
    final int? average = jsonConvert.convert<int>(json['average']);
    if (average != null) {
      creekStressModel.average = average;
    }
    final int? low = jsonConvert.convert<int>(json['low']);
    if (low != null) {
      creekStressModel.low = low;
    }
    final int? usual = jsonConvert.convert<int>(json['usual']);
    if (usual != null) {
      creekStressModel.usual = usual;
    }
    final int? higher = jsonConvert.convert<int>(json['higher']);
    if (higher != null) {
      creekStressModel.higher = higher;
    }
    final int? verHigh = jsonConvert.convert<int>(json['verHigh']);
    if (verHigh != null) {
      creekStressModel.verHigh = verHigh;
    }

    if(json['datas'] is String){
      String datas = json['datas'];
      dynamic listJson = jsonDecode(datas);
      final List<CreekStressValueModel>? values  = jsonConvert.convertListNotNull<CreekStressValueModel>(listJson);
      if (values != null) {
        creekStressModel.values = values;
      }
    }
    if((creekStressModel.values ?? []).isNotEmpty){
      creekStressModel.lastStress = creekStressModel.values?.last.value;
    }
    return creekStressModel;
  }


  @override
  String toString() {
    return 'CreekStressModel{id: $id, userID: $userID, deviceId: $deviceId, createTime: $createTime, offsetLast: $offsetLast, offsetLastTime: $offsetLastTime, silentHr: $silentHr, min: $min, max: $max, average: $average, low: $low, usual: $usual, higher: $higher, verHigh: $verHigh, values: $values, lastStress: $lastStress}';
  }

  static String toThis(){
    return "CreekStressModel";
  }

}

///压力值
class CreekStressValueModel{
  ///偏移量  秒
  int? offset;
  ///心率值
  int? value;

  CreekStressValueModel();

  factory CreekStressValueModel.fromJson(Map<String, dynamic> json) {
    final CreekStressValueModel creekHeartRateValueModel = CreekStressValueModel();

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
    return 'CreekStressValueModel{offset: $offset, value: $value}';
  }

  static String toThis(){
    return "CreekStressValueModel";
  }

}