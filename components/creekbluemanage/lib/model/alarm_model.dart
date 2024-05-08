import 'dart:convert';

import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/alarm.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:creektool/creek_tool.dart';



class AlarmReplyModel {
  int? funcTable;
  int? alarmMax;
  OperationType operationType = OperationType.inquire;
  int? num;
  List<AlarmItemModel>? list;
  int? hourFormat;

  /// 时间制式（0x00：无效<br>0x01：24小时制，0x02：12小时制）这个另外获取单位时间制式
  AlarmReplyModel fromBuffer(List<int> buffer) {
    AlarmReplyModel userModel = AlarmReplyModel();
    protocol_alarm_inquire_reply amodel = protocol_alarm_inquire_reply.fromBuffer(buffer);
    userModel.funcTable = amodel.funcTable;

    userModel.operationType = amodel.operate == operate_type.INQUIRE
        ? OperationType.inquire
        : amodel.operate == operate_type.SET
            ? OperationType.set
            : OperationType.invalid;
    userModel.alarmMax = amodel.alarmSupportMax;
    List<AlarmItemModel> items = [];
    for (var element in amodel.alarmItem) {
      AlarmItemModel alarmItemModel = AlarmItemModel();
      alarmItemModel.alarmId = element.alarmId;
      alarmItemModel.disStatus = element.dispStatus == disp_status.DISP_OFF ? DisStatus.disOff : DisStatus.disOn;
      alarmItemModel.alarmType = element.type == alarm_type.GET_UP ? AlarmType.getUp : AlarmType.sleep;
      alarmItemModel.hour = element.hour;
      alarmItemModel.minute = element.minute;
      alarmItemModel.switchFlag = element.switchFlag;
      alarmItemModel.laterRemindSwitchFlag = element.laterRemindSwitchFlag;
      List<bool>? aList = [];
      aList.addAll(element.repeat);
      alarmItemModel.repeat = aList;
      alarmItemModel.repeatTimes = element.laterRemindRepeatTimes;
      alarmItemModel.repeatMin = element.laterRemindMin;
      alarmItemModel.onOff = element.vibrateOnOff;
      try {
        alarmItemModel.name = utf8.decode(element.name);
      } catch (e) {
        CreekLog.info("alarm:${e.toString()}");
      }

      items.add(alarmItemModel);
    }
    userModel.list = items;
    return userModel;
  }



  @override
  String toString() {
    return 'AlarmReplyModel{funcTable: $funcTable, alarmMax: $alarmMax, operationType: $operationType, num: $num, list: $list, hourFormat: $hourFormat}';
  }
}

class AlarmItemModel {
  int? alarmId; //1bytes 闹钟id 从0开始
  DisStatus disStatus = DisStatus.disOff; //1bytes 显示状态 disp_off不显示 disp_on 显示
  AlarmType alarmType = AlarmType.getUp; //1bytes 闹钟类型
  int? hour; //1bytes
  int? minute; //1bytes
  bool? switchFlag; //1bytes
  List<bool>? repeat; //7bytes 重复 周一~周七
  bool? laterRemindSwitchFlag; //1bytes
  int? repeatTimes; //1bytes 稍后提醒重复闹铃次数
  int? repeatMin; //1bytes 稍后提醒分钟
  bool? onOff; //1bytes 闹钟震动开关 0关闭 1开启
  String? name; //max:20 闹钟名称
  int? hourFormat;
  int? firstDay;

  ///周起始日 0x00 星期1,0x01 星期天,0x02 星期6

  /// 时间制式（0x00：无效<br>0x01：24小时制，0x02：12小时制）这个另外获取单位时间制式
  bool? isAM; //早上还是下午
  List? selectList;

  @override
  String toString() {
    return 'AlarmItemModel{alarmId: $alarmId, disStatus: $disStatus, alarmType: $alarmType, hour: $hour, minute: $minute, switchFlag: $switchFlag, repeat: $repeat, laterRemindSwitchFlag: $laterRemindSwitchFlag, repeatTimes: $repeatTimes, repeatMin: $repeatMin, onOff: $onOff, name: $name, hourFormat: $hourFormat, firstDay: $firstDay, isAM: $isAM, selectList: $selectList}';
  }

  ///todo:少一个延迟开关


}

class AlarmOperateModel {
  OperationType operationType = OperationType.inquire;
  int? num;
  List<AlarmItemModel>? list;
  protocol_alarm_operate fromModel() {
    protocol_alarm_operate model = protocol_alarm_operate();
    model.operate = operationType == OperationType.inquire
        ? operate_type.INQUIRE
        : operationType == OperationType.set
            ? operate_type.SET
            : operate_type.INVALID;
    model.num = num ?? 0;
    list?.forEach((element) {
      protocol_set_alarm_item alarmItem = protocol_set_alarm_item();
      alarmItem.alarmId = element.alarmId ?? 0;
      alarmItem.dispStatus = element.disStatus == DisStatus.disOff ? disp_status.DISP_OFF : disp_status.DISP_ON;
      alarmItem.type = element.alarmType == AlarmType.getUp ? alarm_type.GET_UP : alarm_type.SLEEP;
      alarmItem.hour = element.hour ?? 0;
      alarmItem.minute = element.minute ?? 0;
      alarmItem.switchFlag = element.switchFlag ?? false;
      alarmItem.laterRemindSwitchFlag = element.laterRemindSwitchFlag ?? false;
      alarmItem.repeat.addAll(element.repeat ?? []);
      alarmItem.laterRemindRepeatTimes = element.repeatTimes ?? 0;
      alarmItem.laterRemindMin = element.repeatMin ?? 0;
      alarmItem.vibrateOnOff = element.onOff ?? true;
      alarmItem.name = utf8.encode(element.name ?? "");
      model.alarmItem.add(alarmItem);
    });

    return model;
  }
}
