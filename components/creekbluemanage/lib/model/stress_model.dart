

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';



class StressDataModel {
  List<StressData> data = [];

  StressDataModel fromBuffer(List<int> buffer) {
    StressDataModel dataModel = StressDataModel();
    List<StressData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        StressData rateData = StressData();
        rateData.key =  keyValue == 1 ? SyncStressKey.head : SyncStressKey.data;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          StressHead rateHead = StressHead();
          rateHead.year = BlueTool.listTo4int(data.sublist(0,2));
          rateHead.month = data[2];
          rateHead.day = data[3];
          rateHead.startTime = BlueTool.listTo4int(data.sublist(4,8));
          rateHead.temDataSize = BlueTool.listTo4int(data.sublist(8,12));
          rateHead.average = data[12];
          rateHead.data = data.sublist(13,23);
          rateData.data = rateHead;
          listRateData.add(rateData);
        }else if(keyValue == 2){
          List<StressItem> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              StressItem rateItem = StressItem();
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
    return 'StressDataModel{data: $data}';
  }
}


class StressData{
  SyncStressKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'StressData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class StressHead{
  int? year;
  int? month;
  int? day;
  int? startTime;
  int? temDataSize;
  int? average;
  List<int>? data;

  @override
  String toString() {
    return 'StressHead{year: $year, month: $month, day: $day, startTime: $startTime, temDataSize: $temDataSize}';
  }
}

class StressItem{
  ///偏移 单位分钟
  int? offset;
  ///压力值
  int? hrValue;

  @override
  String toString() {
    return 'StressItem{offset: $offset, hrValue: $hrValue}';
  }
}