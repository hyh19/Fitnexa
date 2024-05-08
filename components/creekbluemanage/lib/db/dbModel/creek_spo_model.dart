
import 'dart:convert';
import 'package:creek_blue_manage/db/dbModel/base/creek_json_convert_content.dart';

class CreekOxygenModel{
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
  ///最小血氧值
  int? min;
  ///最大血氧值
  int? max;
  ///平均血氧值
  int? average;
  ///血氧值
  List<CreekOxygenValueModel>?  values;
  ///最后一个时间点的血氧值
  int? lastSpo;

  ///大于90的占比
  double? greaterProportion;
  ///小于90的占比
  double? lessProportion;

  ///最后一个小时的血氧最小值
  int? lastHourMin;
  ///最后一个小时的血氧最大值
  int? lastHourMax;

  CreekOxygenModel();

  ///返回单个对象
  factory CreekOxygenModel.fromJson(Map<String, dynamic> json) {
    final CreekOxygenModel creekOxygenModel = CreekOxygenModel();
    final int? id = jsonConvert.convert<int>(json['id']);
    if (id != null) {
      creekOxygenModel.id = id;
    }
    final int? userId = jsonConvert.convert<int>(json['userID']);
    if (userId != null) {
      creekOxygenModel.userID = userId;
    }
    final String? deviceId = jsonConvert.convert<String>(json['deviceId']);
    if (deviceId != null) {
      creekOxygenModel.deviceId = deviceId;
    }
    final String? createTime = jsonConvert.convert<String>(json['creat_time']);
    if (createTime != null) {
      creekOxygenModel.createTime = createTime;
    }
    final int? offsetLast = jsonConvert.convert<int>(json['offset_last']);
    if (offsetLast != null) {
      creekOxygenModel.offsetLast = offsetLast;
    }

    final int? min = jsonConvert.convert<int>(json['min']);
    if (min != null) {
      creekOxygenModel.min = min;
    }
    final int? max = jsonConvert.convert<int>(json['max']);
    if (max != null) {
      creekOxygenModel.max = max;
    }
    final int? average = jsonConvert.convert<int>(json['average']);
    if (average != null) {
      creekOxygenModel.average = average;
    }
    if(json['datas'] is String){
      String datas = json['datas'];
      dynamic listJson = jsonDecode(datas);
      final List<CreekOxygenValueModel>? values  = jsonConvert.convertListNotNull<CreekOxygenValueModel>(listJson);
      if (values != null) {
        creekOxygenModel.values = values;
      }
    }
    if((creekOxygenModel.values ?? []).isNotEmpty){
      creekOxygenModel.lastSpo = creekOxygenModel.values?.last.value;
    }
    return creekOxygenModel;
  }


  @override
  String toString() {
    return 'CreekOxygenModel{id: $id, userID: $userID, deviceId: $deviceId, createTime: $createTime, offsetLast: $offsetLast, offsetLastTime: $offsetLastTime, min: $min, max: $max, average: $average, values: $values, lastSpo: $lastSpo, greaterProportion: $greaterProportion, lessProportion: $lessProportion, lastHourMin: $lastHourMin, lastHourMax: $lastHourMax}';
  }

  static String toThis(){
    return "CreekOxygenModel";
  }

}


///血氧值
class CreekOxygenValueModel{
  ///偏移量  分钟
  int? offset;
  ///心率值
  int? value;

  CreekOxygenValueModel();

  factory CreekOxygenValueModel.fromJson(Map<String, dynamic> json) {
    final CreekOxygenValueModel creekOxygenValueModel = CreekOxygenValueModel();

    final int? offset = jsonConvert.convert<int>(json['offset']);
    if (offset != null) {
      creekOxygenValueModel.offset = offset;
    }
    final int? value = jsonConvert.convert<int>(json['value']);
    if (value != null) {
      creekOxygenValueModel.value = value;
    }
    return creekOxygenValueModel;
  }


  @override
  String toString() {
    return 'CreekOxygenValueModel{offset: $offset, value: $value}';
  }

  static String toThis(){
    return "CreekOxygenValueModel";
  }
}