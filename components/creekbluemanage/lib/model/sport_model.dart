import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';

class SportDataModel {
  List<SportData> data = [];
  SportDataModel fromBuffer(List<int> buffer) {
    SportDataModel dataModel = SportDataModel();
    List<SportData> listRateData = [];
    int len = 0;
    try{
      do{
        int keyValue =  buffer[len];
        SportData rateData = SportData();
        SyncSportKey key = SyncSportKey.head;
        switch(keyValue){
          case 1:
            key = SyncSportKey.head;
            break;
          case 2:
            key = SyncSportKey.hr;
            break;
          case 3:
            key = SyncSportKey.kmSpeed;
            break;
          case 4:
            key = SyncSportKey.step;
            break;
          case 5:
            key = SyncSportKey.kmPace;
            break;
          case 6:
            key = SyncSportKey.stepStride;
            break;
          case 7:
            key = SyncSportKey.trailData;
            break;
          case 8:
            key = SyncSportKey.imSpeed;
            break;
          case 9:
            key = SyncSportKey.imPace;
            break;
          case 10:
            key = SyncSportKey.elevation;
            break;
          case 11:
            key = SyncSportKey.speedPace;
            break;
        }
        rateData.key =  key;
        rateData.index = buffer[1+len];
        rateData.length = BlueTool.listTo4int(buffer.sublist(2+len,6+len));
        List<int> data = buffer.sublist(6+len,6+len+(rateData.length ?? 0));
        if(keyValue == 1){
          SportHead rateHead = SportHead();
          rateHead.type =  data[0];
          rateHead.isConnectApp = data[1] == 1 ? true : false;
          rateHead.sportStartType = data[2];
          rateHead.sportTime = SportTime();
          rateHead.sportTime?.year = BlueTool.listTo4int(data.sublist(3,5));
          rateHead.sportTime?.month = data[5];
          rateHead.sportTime?.day = data[6];
          rateHead.sportTime?.hour = data[7];
          rateHead.sportTime?.minute = data[8];
          rateHead.sportTime?.second = data[9];
          rateHead.durations = BlueTool.listTo4int(data.sublist(10,14));
          rateHead.sportGoalType =  data[14];  ///data[14];
          rateHead.goalData = BlueTool.listTo4int(data.sublist(15,19));
          rateHead.avgHrValue = data[19];
          rateHead.maxHrValue = data[20];
          rateHead.minHrValue = data[21];
          rateHead.warmUpTime = BlueTool.listTo4int(data.sublist(22,26));
          rateHead.fatBurningTime = BlueTool.listTo4int(data.sublist(26,30));
          rateHead.aerobicExerciseTime = BlueTool.listTo4int(data.sublist(30,34));
          rateHead.anaerobicExerciseTime = BlueTool.listTo4int(data.sublist(34,38));
          rateHead.extremeExerciseTime = BlueTool.listTo4int(data.sublist(38,42));
          rateHead.totalStep = BlueTool.listTo4int(data.sublist(42,46));
          rateHead.totalCalories = BlueTool.listTo4int(data.sublist(46,50));
          rateHead.totalDistance = BlueTool.listTo4int(data.sublist(50,54));
          rateHead.avgKmPace = BlueTool.listTo4int(data.sublist(54,56));
          rateHead.fastKmPace = BlueTool.listTo4int(data.sublist(56,58));
          rateHead.avgSpeed = BlueTool.listTo4int(data.sublist(58,60));
          rateHead.fastSpeed = BlueTool.listTo4int(data.sublist(60,62));
          rateHead.avgStepFrequency = data[62];
          rateHead.maxStepFrequency = data[63];
          rateHead.avgStepStride = data[64];
          rateHead.maxStepStride = data[65];
          rateHead.trainingEffect = data[66];
          rateHead.vozMax = BlueTool.listTo4int(data.sublist(67,69));
          rateHead.grade = data[69];
          rateHead.recoveryTime = BlueTool.listTo4int(data.sublist(70,72));
          rateHead.hrItemCount = BlueTool.listTo4int(data.sublist(72,76));
          rateHead.kmSpeedCount = BlueTool.listTo4int(data.sublist(76,80));
          rateHead.elevationSupport = data[80] == 1 ?true:false;
          rateHead.avgPowerSupport = data[81] == 1 ?true:false;
          rateHead.avgPower =BlueTool.listTo4int(data.sublist(82,84));
          rateHead.swimDistance = BlueTool.listTo4int(data.sublist(84,88));
          rateHead.maxElevation = BlueTool.int16Value(BlueTool.listTo4int(data.sublist(88,90))) ;
          rateHead.minElevation = BlueTool.int16Value(BlueTool.listTo4int(data.sublist(90,92)));
          rateHead.avgElevation = BlueTool.int16Value(BlueTool.listTo4int(data.sublist(92,94)));
          rateHead.climbHeight = BlueTool.listTo4int(data.sublist(94,96));
          rateHead.met = data[96];
          rateHead.metSupport = data[97] == 1 ?true:false;
          rateHead.speedPaceSupport = data[98] == 1 ?true:false;
          rateHead.restCaloriesSupport = data[99] == 1 ?true:false;
          rateHead.totalRestCalories = BlueTool.listTo4int(data.sublist(100,104));
          rateHead.buf = data.sublist(104,data.length);
          rateData.data = rateHead;
          listRateData.add(rateData);
        }else if(keyValue == 2){
          rateData.data = data;
          listRateData.add(rateData);
        } else if(keyValue == 3 ||keyValue == 4||keyValue == 5||keyValue == 6||keyValue == 8||keyValue == 9){
          List<int> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              items.add(BlueTool.listTo4int(data1.sublist(0,2)));
            }
            rateData.data = items;
            listRateData.add(rateData);
          }
        }else if(keyValue == 10){
          List<int> items = [];
          if(((rateData.length ?? 0) % 2) == 0){
            int len = (rateData.length ?? 0) ~/ 2;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*2,i*2 + 2);
              items.add(BlueTool.int16Value(BlueTool.listTo4int(data1.sublist(0,2))));
            }
            rateData.data = items;
            listRateData.add(rateData);
          }
        }else if(keyValue == 7){
          List<TrailData> items = [];
          if(((rateData.length ?? 0) % 8) == 0){
            int len = (rateData.length ?? 0) ~/ 8;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*8,i*8 + 8);
              TrailData trailData = TrailData();
              trailData.latitude= BlueTool.hexToMinus(data1.sublist(0,4));
              trailData.longitude = BlueTool.hexToMinus(data1.sublist(4,8));
              items.add(trailData);
            }
            rateData.data = items;
            listRateData.add(rateData);
          }

        }else if(keyValue == 11){
          List<SpeedPaceItem> items = [];
          if(((rateData.length ?? 0) % 4) == 0){
            int len = (rateData.length ?? 0) ~/ 4;
            for(int i = 0; i < len; i++){
              List<int> data1 = data.sublist(i*4,i*4 + 4);
              SpeedPaceItem speedPaceItem = SpeedPaceItem();
              speedPaceItem.speed= BlueTool.hexToMinus(data1.sublist(0,2));
              speedPaceItem.pace = BlueTool.hexToMinus(data1.sublist(2,4));
              items.add(speedPaceItem);
            }
            rateData.data = items;
            listRateData.add(rateData);
          }
        }else{
          rateData.data = data;
          listRateData.add(rateData);
        }
        len = len + 6 + (rateData.length ?? 0);
        print("len:长度$len");
      }while(len != buffer.length);
      dataModel.data = listRateData;
    }catch(e){
      return dataModel;
    }
    return dataModel;
  }

  @override
  String toString() {
    return 'SportDataModel{data: $data}';
  }
}

class SportHead{
  ///运动枚举
  int? type;
  /// 手环是否连接app，用app评产生何种报告， 1是连接，0是未连接
  bool? isConnectApp;
  ///  0:无效， 1 : app发起的运动， 2：手表发起的运动
  int? sportStartType;
  SportTime? sportTime;
  ///  运动时长； 单位： s
  int? durations;
  ///运动目标
  int? sportGoalType;

  int? goalData;
  /// 平均心率值
  int? avgHrValue;
  /// 最大心率值
  int? maxHrValue;
  /// 最小心率值
  int? minHrValue;
  /// 热身运动的累计时长 秒钟数据
  int? warmUpTime;
  /// 脂肪燃烧的累计时长   秒钟
  int? fatBurningTime;
  /// 有氧运动的累计时长  秒钟
  int? aerobicExerciseTime;
  /// 无氧运动的累计时长   秒钟
  int? anaerobicExerciseTime;

  /// 极限锻炼的累计时长   秒钟
  int? extremeExerciseTime;
  /// 步数
  int? totalStep;
  ///卡路里     单位：千卡
  int? totalCalories;

  /// 距离；     单位： m
  int? totalDistance;
  /// 平均公里配速 传过来的是s钟， 比如361  361/60=6分 余数是1s  6''1'  , 公里和英里是按照 英里= 公里*1609/1000f
  int? avgKmPace;
  ///最快公里配速
  int? fastKmPace;

  /// 平均速度  km/h  固件是 扩大100倍
  int? avgSpeed;
  /// 最快速度  km/h  固件是 扩大100倍
  int? fastSpeed;
  ///平均步频 步/分钟
  int? avgStepFrequency;

  ///最大步频 步/分钟
  int? maxStepFrequency;
  /// 平均步幅
  int? avgStepStride;
  ///最大步幅
  int? maxStepStride;

  ///训练效果；    单位：无：           范围： 1.0 - 5.0 （扩大10倍传输）
  int? trainingEffect;
  /// 最大摄氧量；  单位：毫升/公斤/分钟； 范围  0-80
  int? vozMax;
  ///摄氧量等级  0x00：无等级  0x01:低等   0x02:业余   0x03:一般  0x04：平均    0x05：良好  0x06：优秀   0x07：专业
  int? grade;

  ///恢复时间 单位分钟
  int? recoveryTime;
  /// 心率的个数
  int? hrItemCount;
  ///公里配速的个数 最大100
  int? kmSpeedCount;

  ///预留2个字节
  List<int> recvBuf = [];

  ///跑步功率
  int? avgPower;

  ///游泳距离 单位：米
  int? swimDistance;

  ///最大海拔高度
  int? maxElevation;

  ///最小海拔高度
  int? minElevation;

  ///平均海拔高度
  int? avgElevation;

  ///爬升高度
  int? climbHeight;

  ///梅脱
  int? met;

  ///是否支持梅脱
  bool? metSupport;

  ///是否支持海拔数据
  bool? elevationSupport;

  ///是否支持跑步功率
  bool? avgPowerSupport;

  ///是否支持速度
  bool? speedPaceSupport;

  ///是否支持总静息卡路里
  bool? restCaloriesSupport;
  ///总静息卡路里
  int? totalRestCalories;







  // /// 步频个数
  // int? stepFrequencyCount;
  // ///步幅个数
  // int? stepStrideCount;
  //
  // ///运动轨迹
  // int? moitonStailCount;

  ///预留9位
  List<int> buf = [];

  @override
  String toString() {
    return 'SportHead{type: $type, isConnectApp: $isConnectApp, sportStartType: $sportStartType, sportTime: $sportTime, durations: $durations, sportGoalType: $sportGoalType, goalData: $goalData, avgHrValue: $avgHrValue, maxHrValue: $maxHrValue, minHrValue: $minHrValue, warmUpTime: $warmUpTime, fatBurningTime: $fatBurningTime, aerobicExerciseTime: $aerobicExerciseTime, anaerobicExerciseTime: $anaerobicExerciseTime, extremeExerciseTime: $extremeExerciseTime, totalStep: $totalStep, totalCalories: $totalCalories, totalDistance: $totalDistance, avgKmPace: $avgKmPace, fastKmPace: $fastKmPace, avgSpeed: $avgSpeed, fastSpeed: $fastSpeed, avgStepFrequency: $avgStepFrequency, maxStepFrequency: $maxStepFrequency, avgStepStride: $avgStepStride, maxStepStride: $maxStepStride, trainingEffect: $trainingEffect, vozMax: $vozMax, grade: $grade, recoveryTime: $recoveryTime, hrItemCount: $hrItemCount, kmSpeedCount: $kmSpeedCount, recvBuf: $recvBuf, avgPower: $avgPower, swimDistance: $swimDistance, maxElevation: $maxElevation, minElevation: $minElevation, avgElevation: $avgElevation, climbHeight: $climbHeight, met: $met, buf: $buf}';
  }
}


class SportData{
  SyncSportKey? key;
  int? index;
  int? length;
  dynamic data;

  @override
  String toString() {
    return 'SportData{key: $key, index: $index, length: $length, data: $data}';
  }
}

class SportTime{
  int? year;
  int? month;
  int? day;
  int? hour;
  int? minute;
  int? second;

  @override
  String toString() {
    return 'SportTime{year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}';
  }
}

class TrailData{
  int? latitude;
  int? longitude;

  @override
  String toString() {
    return 'TrailData{latitude: $latitude, longitude: $longitude}';
  }
}

class SpeedPaceItem{
  int? speed;
  int? pace;

  @override
  String toString() {
    return 'SpeedPaceItem{speed: $speed, pace: $pace}';
  }
}



