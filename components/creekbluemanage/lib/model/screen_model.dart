import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/screen.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';

class ScreenOperateModel{
  OperationType operationType = OperationType.inquire;
  int? level;
  int? showInterval;
  ScreenAutoModel? autoModel;
  bool? switchFlag;
  bool? wristSwitchFlag;

  protocol_screen_brightness_operate fromModel(){
    protocol_screen_brightness_operate model = protocol_screen_brightness_operate();
    model.operate = operationType == OperationType.inquire ? operate_type.INQUIRE : operationType == OperationType.set ? operate_type.SET : operate_type.INVALID;
    model.level = level ?? 0;
    model.showInterval = showInterval ?? 0;
    model.nightAutoAdjust = protocol_screen_night_auto_adjust();
    model.nightAutoAdjust.switchFlag = autoModel?.switchFlag ?? false;
    model.nightAutoAdjust.startHour = autoModel?.startHour ?? 0;
    model.nightAutoAdjust.startMinute = autoModel?.startMinute ?? 0;
    model.nightAutoAdjust.endHour = autoModel?.endHour ?? 0;
    model.nightAutoAdjust.endMinute = autoModel?.endMinute ?? 0;
    model.nightAutoAdjust.nightLevel = autoModel?.nightLevel ?? 0;
    model.aodSwitchFlag = switchFlag ?? false;
    model.raiseWristSwitchFlag = wristSwitchFlag ?? false;
    return model;
  }

}


class ScreenReplyModel{
  int? funcTable;
  OperationType operationType = OperationType.inquire;
  int? level;
  int? showInterval;
  ScreenAutoModel? autoModel;
  bool? switchFlag;
  bool? wristSwitchFlag;

  ScreenReplyModel fromBuffer(List<int> buffer) {
    ScreenReplyModel screenReplyModel = ScreenReplyModel();
    protocol_screen_brightness_inquire_reply model = protocol_screen_brightness_inquire_reply
        .fromBuffer(buffer);
    screenReplyModel.funcTable = model.funcTable;
    screenReplyModel.operationType = model.operate == operate_type.INQUIRE ? OperationType.inquire :  model.operate == operate_type.SET ? OperationType.set : OperationType.invalid;
    screenReplyModel.level = model.level;
    screenReplyModel.showInterval = model.showInterval;
    screenReplyModel.switchFlag = model.aodSwitchFlag;
    screenReplyModel.wristSwitchFlag = model.raiseWristSwitchFlag;
    ScreenAutoModel screenAutoModel = ScreenAutoModel();
    screenAutoModel.switchFlag = model.nightAutoAdjust.switchFlag;
    screenAutoModel.startHour = model.nightAutoAdjust.startHour;
    screenAutoModel.startMinute = model.nightAutoAdjust.startMinute;
    screenAutoModel.endHour = model.nightAutoAdjust.endHour;
    screenAutoModel.endMinute = model.nightAutoAdjust.endMinute;
    screenAutoModel.nightLevel = model.nightAutoAdjust.nightLevel;
    screenReplyModel.autoModel = screenAutoModel;
    return screenReplyModel;
  }

  @override
  String toString() {
    return 'ScreenReplyModel{funcTable: $funcTable, operationType: $operationType, level: $level, showInterval: $showInterval, autoModel: $autoModel, switchFlag: $switchFlag, wristSwitchFlag: $wristSwitchFlag}';
  }
}


class ScreenAutoModel{
  ///1bytes 夜间自动亮度调整 true 开启,false 关闭
  bool? switchFlag;
  ///开始时间
  int? startHour;
  int? startMinute;
  ///结束时间
  int? endHour;
  int? endMinute;
  ///夜间亮度等级(0-100)
  int? nightLevel;

  @override
  String toString() {
    return 'ScreenAutoModel{switchFlag: $switchFlag, startHour: $startHour, startMinute: $startMinute, endHour: $endHour, endMinute: $endMinute, nightLevel: $nightLevel}';
  }
}