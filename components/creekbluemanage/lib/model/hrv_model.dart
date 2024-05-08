import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';




class HrvDataModel {
  List<HrvData> data = [];
  HrvDataModel fromBuffer(List<int> buffer) {
    HrvDataModel dataModel = HrvDataModel();
    List<HrvData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        HrvData rateData = HrvData();
        rateData.key =  keyValue == 1 ? SyncHrvKey.head : SyncHrvKey.data;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          HrvHead rateHead = HrvHead();
          rateHead.year = BlueTool.listTo4int(data.sublist(0,2));
          rateHead.month = data[2];
          rateHead.day = data[3];
          rateHead.startTime = BlueTool.listTo4int(data.sublist(4,8));
          rateHead.average = data[8];
          rateHead.sleepHrvMax = data[9];
          rateHead.sleepHrvMin = data[10];
          rateHead.data = data.sublist(11,data.length);
          rateData.data = rateHead;
          listRateData.add(rateData);
        }else if(keyValue == 2){
          List<HrvItem> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              HrvItem rateItem = HrvItem();
              rateItem.offset = data1[0];
              rateItem.hrValue = data1[1];
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
    return 'HrvDataModel{data: $data}';
  }
}


class HrvData{
  SyncHrvKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'HrvData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class HrvHead{
  int? year;
  int? month;
  int? day;
  int? startTime;
  int? average;
  int? sleepHrvMax;
  int? sleepHrvMin;
  List<int>? data;

  @override
  String toString() {
    return 'HrvHead{year: $year, month: $month, day: $day, startTime: $startTime, average: $average, sleepHrvMax: $sleepHrvMax, sleepHrvMin: $sleepHrvMin, data: $data}';
  }
}

class HrvItem{
  ///偏移 单位分钟
  int? offset;
  ///hrv值
  int? hrValue;

  @override
  String toString() {
    return 'HrvItem{offset: $offset, hrValue: $hrValue}';
  }
}