

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';
import 'package:sqflite/sqflite.dart';




class HeartRateDataModel{

  List<HeartRateData> data = [];


  HeartRateDataModel fromBuffer(List<int> buffer) {
    HeartRateDataModel dataModel = HeartRateDataModel();
    List<HeartRateData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        HeartRateData rateData = HeartRateData();
        rateData.key =  keyValue == 1 ? HeartRateKey.head : keyValue == 2 ? HeartRateKey.data : HeartRateKey.lowData;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          HeartRateHead rateHead = HeartRateHead();
          rateHead.year = BlueTool.listTo4int(data.sublist(0,2));
          rateHead.month = data[2];
          rateHead.day = data[3];
          rateHead.startTime = BlueTool.listTo4int(data.sublist(4,8));
          rateHead.silentHr = data[8];
          List<int> intervalData = data.sublist(9,24);
          List<RateHeadInterval> listInterval = [];
          for(int i = 0; i < 5; i++){
            List<int> data1 = intervalData.sublist(i*3,(i+1)*3);
            RateHeadInterval headInterval = RateHeadInterval();
            headInterval.threshold = data1[0];
            headInterval.minute = BlueTool.listTo4int(data1.sublist(1,3));
            listInterval.add(headInterval);
          }
          rateHead.hrInterval = listInterval;
          rateHead.dataSize = BlueTool.listTo4int(data.sublist(24,28));
          rateHead.average = data[28];
          rateHead.raisedHr = data[29];
          rateHead.data = data.sublist(30,40);
          rateData.data = rateHead;
          listRateData.add(rateData);
        }else if(keyValue == 2){
          List<HeartRateItem> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              HeartRateItem rateItem = HeartRateItem();
              rateItem.offset = data1[0];
              rateItem.hrValue = data1[1];
              items.add(rateItem);
            }
            rateData.data = items;
            listRateData.add(rateData);
          }
        }
        else if(keyValue == 3){
          List<LowHeartRateItem> items = [];
          if(((rateData.length ?? 0) % 4) == 0){
            int len = (rateData.length ?? 0) ~/ 4;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*4,i*4 + 4);
              LowHeartRateItem rateItem = LowHeartRateItem();
              rateItem.hour = data[0];
              rateItem.minute = data[1];
              rateItem.type = data[2];
              rateItem.heartRate = data[3];
              items.add(rateItem);
            }
            rateData.data = items;
            listRateData.add(rateData);
          }
        }else{
          CreekLog.info("解析失败");
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
    return 'HeartRateDataModel{data: $data}';
  }


}

class HeartRateHead{
  int? year;
  int? month;
  int? day;
  ///开始时间,单位秒,距离0点的偏移
  int? startTime;
  ///静息心率
  int? silentHr;
  List<RateHeadInterval>? hrInterval;
  int? dataSize;
  ///平均心率
  int? average;
  ///上升心率占比
  int? raisedHr;
  ///过高过低时的心率数据个数
  int? dataCount;
  List<int>? data;

  @override
  String toString() {
    return 'HeartRateHead{year: $year, month: $month, day: $day, startTime: $startTime, silentHr: $silentHr, hrInterval: $hrInterval, dataSize: $dataSize, average: $average, raisedHr: $raisedHr, dataCount: $dataCount, data: $data}';
  }
}

class HeartRateData{
  HeartRateKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'HeartRateData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class HeartRateItem{
  int? offset;
  int? hrValue;

  @override
  String toString() {
    return 'HeartRateItem{offset: $offset, hrValue: $hrValue}';
  }
}

class LowHeartRateItem{
  int? hour;
  int? minute;
  ///心率值类型 0x00：心率过低时的心率值 0x01：心率过高时的心率值
  int? type;
  ///心率值 单位：次/分
  int? heartRate;

  @override
  String toString() {
    return 'LowHeartRateItem{hour: $hour, minute: $minute, type: $type, heartRate: $heartRate}';
  }
}

class RateHeadInterval{
  int? threshold;
  int? minute;

  @override
  String toString() {
    return 'RateHeadInterval{threshold: $threshold, minute: $minute}';
  }
}


