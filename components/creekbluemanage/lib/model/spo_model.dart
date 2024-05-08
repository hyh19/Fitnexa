import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';




class SpoDataModel {
  List<SpoData> data = [];
  SpoDataModel fromBuffer(List<int> buffer) {
    SpoDataModel dataModel = SpoDataModel();
    List<SpoData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        SpoData rateData = SpoData();
        rateData.key =  keyValue == 1 ? SyncSpoKey.head : SyncSpoKey.data;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          SpoHead rateHead = SpoHead();
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
          List<SpoItem> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              SpoItem rateItem = SpoItem();
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
    return 'SpoDataModel{data: $data}';
  }
}


class SpoData{
  SyncSpoKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'SpoData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class SpoHead{
  int? year;
  int? month;
  int? day;
  int? startTime;
  int? temDataSize;
  int? average;
  List<int>? data;

  @override
  String toString() {
    return 'SpoHead{year: $year, month: $month, day: $day, startTime: $startTime, temDataSize: $temDataSize}';
  }
}

class SpoItem{
  ///偏移 单位分钟
  int? offset;
  ///血氧值
  int? hrValue;

  @override
  String toString() {
    return 'SpoItem{offset: $offset, hrValue: $hrValue}';
  }
}