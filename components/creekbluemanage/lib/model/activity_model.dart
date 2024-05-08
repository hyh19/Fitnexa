
import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';




class ActivityDataModel {
  List<ActivityData> data = [];

  ActivityDataModel fromBuffer(List<int> buffer) {
    ActivityDataModel dataModel = ActivityDataModel();
    List<ActivityData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        ActivityData rateData = ActivityData();
        rateData.key =  keyValue == 1 ? SyncActivityKey.head : SyncActivityKey.data;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          ActivityHead rateHead = ActivityHead();
          rateHead.year = BlueTool.listTo4int(data.sublist(0,2));
          rateHead.month = data[2];
          rateHead.day = data[3];
          rateHead.startTime = BlueTool.listTo4int(data.sublist(4,6));
          rateHead.totalStep = BlueTool.listTo4int(data.sublist(6,10));
          rateHead.totalExerciseMin = BlueTool.listTo4int(data.sublist(10,14));
          rateHead.totalActivityCalories = BlueTool.listTo4int(data.sublist(14,18));
          rateHead.totalRestCalories = BlueTool.listTo4int(data.sublist(18,22));
          rateHead.totalDistances = BlueTool.listTo4int(data.sublist(22,26));
          rateHead.totalStandTime = data.sublist(26,50);
          rateHead.activityItemCount = BlueTool.listTo4int(data.sublist(50,52));
          rateHead.floorsClimbedSupport = data[52] == 1 ?true:false;
          rateHead.totalFloorsClimbed = BlueTool.listTo4int(data.sublist(53,55));
          rateHead.list =  data.sublist(55,data.length);
          rateData.data = rateHead;
          listRateData.add(rateData);
        }else if(keyValue == 2){
          List<ActivityItem> items = [];
          if(((rateData.length ?? 0) % 9) == 0){
            int len = (rateData.length ?? 0) ~/ 9;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*9,i*9 + 9);
              ActivityItem rateItem = ActivityItem();
              rateItem.stepCount = BlueTool.listTo4int(data1.sublist(0,2));
              rateItem.exerciseMin = data1[2];
              rateItem.activityCalories = data1[3];
              rateItem.restCalories = data1[4];
              rateItem.distance = BlueTool.listTo4int(data1.sublist(5,7));
              rateItem.standTime = data1[7];
              rateItem.wearTime = data1[8];
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
      dataModel.data = listRateData;
    }

    return dataModel;
  }

  @override
  String toString() {
    return 'ActivityDataModel{data: $data}';
  }
}


class ActivityData{
  SyncActivityKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'ActivityData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class ActivityHead{
  int? year;
  int? month;
  int? day;
  int? startTime;
  int? totalStep;
  ///锻炼时长 单位分钟
  int? totalExerciseMin;
  ///总活动卡路里
  int? totalActivityCalories;
  ///总静息卡路里/BMR
  int? totalRestCalories;
  ///总距离  km
  int? totalDistances;
  ///每天站立小时数
  List<int>? totalStandTime;
  ///protocol_sync_activity_item的个数
  int? activityItemCount;

  ///是否支持爬楼层数
  bool? floorsClimbedSupport;
  ///总爬楼层数
  int? totalFloorsClimbed;
  ///预留 10位
  List<int>? list;

  @override
  String toString() {
    return 'ActivityHead{year: $year, month: $month, day: $day, startTime: $startTime, totalStep: $totalStep, totalExerciseMin: $totalExerciseMin, totalActivityCalories: $totalActivityCalories, totalRestCalories: $totalRestCalories, totalDistances: $totalDistances, totalStandTime: $totalStandTime, activityItemCount: $activityItemCount, list: $list}';
  }
}

class ActivityItem{
  ///步数
  int? stepCount;
  ///活跃时长 单位分钟，
  int? exerciseMin;
  ///活动卡路里
  int? activityCalories;
  ///静息卡路里
  int? restCalories;
  ///距离，单位米
  int? distance;
  ///站立
  int? standTime;
  ///佩戴时长
  int? wearTime;

  @override
  String toString() {
    return 'ActivityItem{stepCount: $stepCount, exerciseMin: $exerciseMin, activityCalories: $activityCalories, restCalories: $restCalories, distance: $distance, standTime: $standTime, wearTime: $wearTime}';
  }
}