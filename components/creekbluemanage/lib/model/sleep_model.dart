import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';


class SleepDataModel {
  List<SleepData> data = [];
  SleepDataModel fromBuffer(List<int> buffer) {
    SleepDataModel dataModel = SleepDataModel();
    List<SleepData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        SleepData rateData = SleepData();
        rateData.key =  keyValue == 1 ? SyncSleepKey.head : SyncSleepKey.data;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          SleepHead rateHead = SleepHead();
          rateHead.fallAsleepTime = SleepTime().fromBuffer(data.sublist(0,7));
          rateHead.getUpTime = SleepTime().fromBuffer(data.sublist(7,14));
          rateHead.totalSleepTimeMin =  BlueTool.listTo4int(data.sublist(14,16));
          rateHead.wakeMin =  BlueTool.listTo4int(data.sublist(16,18));
          rateHead.lightSleepMin =  BlueTool.listTo4int(data.sublist(18,20));
          rateHead.deepSleepMin =  BlueTool.listTo4int(data.sublist(20,22));
          rateHead.remMin =  BlueTool.listTo4int(data.sublist(22,24));
          rateHead.wakeCount =  data[24];
          rateHead.lightSleepCount =  data[25];
          rateHead.deepSleepCount =  data[26];
          rateHead.remCount =  data[27];
          rateHead.sleepScore =  data[28];
          rateHead.itemCount =  BlueTool.listTo4int(data.sublist(29,31));
          rateHead.list =  data.sublist(31,35);
          rateData.data = rateHead;
          listRateData.add(rateData);
        }else if(keyValue == 2){
          List<SleepItem> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              SleepItem rateItem = SleepItem();
              rateItem.stage = data1[0];
              rateItem.duration = data1[1];
              items.add(rateItem);
            }
            rateData.data = items;
            listRateData.add(rateData);
          }
        } else{
          CreekLog.info("转model失败");
          break;
        }
        len = len + 6 + (rateData.length ?? 0);
      }while(len != buffer.length);
      dataModel.data = listRateData;
    }catch(e){
      return dataModel;
    }
    return dataModel;
  }

  @override
  String toString() {
    return 'SleepDataModel{data: $data}';
  }
}


class SleepData{
  SyncSleepKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'SleepData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class SleepHead{
  ///入睡时间
  SleepTime? fallAsleepTime;
  ///起床时间
  SleepTime? getUpTime;
  ///睡眠总时长
  int? totalSleepTimeMin;
  ///总清醒时长, 单位:分
  int? wakeMin;
  ///总浅眠时长
  int? lightSleepMin;
  ///总深眠时长
  int? deepSleepMin;
  ///总REM时长
  int? remMin;
  ///清醒次数
  int? wakeCount;
  ///浅眠次数
  int? lightSleepCount;
  ///深眠次数
  int? deepSleepCount;
  ///眼动次数
  int? remCount;
  ///睡眠得分
  int? sleepScore;
  int? itemCount;
  List<int>? list;

  @override
  String toString() {
    return 'SleepHead{fallAsleepTime: $fallAsleepTime, getUpTime: $getUpTime, totalSleepTimeMin: $totalSleepTimeMin, wakeMin: $wakeMin, lightSleepMin: $lightSleepMin, deepSleepMin: $deepSleepMin, remMin: $remMin, wakeCount: $wakeCount, lightSleepCount: $lightSleepCount, deepSleepCount: $deepSleepCount, remCount: $remCount, sleepScore: $sleepScore, itemCount: $itemCount, list: $list}';
  }
}

class SleepTime{
  int? year;
  int? month;
  int? day;
  int? hour;
  int? minute;
  int? second;

  SleepTime fromBuffer(List<int> buffer){
    SleepTime sleepTime = SleepTime();
    sleepTime.year = BlueTool.listTo4int(buffer.sublist(0,2));
    sleepTime.month = buffer[2];
    sleepTime.day = buffer[3];
    sleepTime.hour = buffer[4];
    sleepTime.minute = buffer[5];
    sleepTime.second = buffer[6];
    return sleepTime;
  }

  @override
  String toString() {
    return 'SleepTime{year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}';
  }
}

class SleepItem{
  ///阶段
  int? stage;
  ///时长 单位秒
  int? duration;

  @override
  String toString() {
    return 'SleepItem{stage: $stage, duration: $duration}';
  }
}