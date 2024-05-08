

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';




class NoiseDataModel {
  List<NoiseData> data = [];

  NoiseDataModel fromBuffer(List<int> buffer) {
    NoiseDataModel dataModel = NoiseDataModel();
    List<NoiseData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        NoiseData rateData = NoiseData();
        rateData.key =  keyValue == 1 ? SyncNoiseKey.head : SyncNoiseKey.data;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          NoiseHead rateHead = NoiseHead();
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
          List<NoiseItem> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              NoiseItem rateItem = NoiseItem();
              rateItem.offset = data1[0];
              rateItem.noiseValue = data1[1];
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
    return 'NoiseDataModel{data: $data}';
  }
}


class NoiseData{
  SyncNoiseKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'NoiseData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class NoiseHead{
  int? year;
  int? month;
  int? day;
  int? startTime;
  int? temDataSize;
  int? average;
  List<int>? data;

  @override
  String toString() {
    return 'NoiseHead{year: $year, month: $month, day: $day, startTime: $startTime, temDataSize: $temDataSize, average: $average, data: $data}';
  }
}

class NoiseItem{
  ///偏移 单位分钟
  int? offset;
  ///噪音值
  int? noiseValue;

  @override
  String toString() {
    return 'NoiseItem{offset: $offset, noiseValue: $noiseValue}';
  }
}