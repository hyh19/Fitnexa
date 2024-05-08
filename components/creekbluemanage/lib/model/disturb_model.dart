import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/disturb.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';

class DisturbOperateModel {
  OperationType operationType = OperationType.inquire;
  int? num;
  bool? disturbOnOff;
  List<DisturbItem>? items;

  protocol_disturb_operate fromModel() {
    protocol_disturb_operate model = protocol_disturb_operate();
    model.operate = operationType == OperationType.inquire
        ? operate_type.INQUIRE
        : operationType == OperationType.set
            ? operate_type.SET
            : operate_type.INVALID;
    model.num = num ?? 0;
    model.disturbOnOff = disturbOnOff ?? false;
    List<protocol_set_disturb_item> alist = [];
    items?.forEach((element) {
      protocol_set_disturb_item disturbItem = protocol_set_disturb_item();
      disturbItem.disturbId = element.disturbId ?? 0;
      disturbItem.startHour = element.startHour ?? 0;
      disturbItem.startMinute = element.startMinute ?? 0;
      disturbItem.repeat.addAll(element.repeat ?? []);
      disturbItem.endHour = element.endHour ?? 0;
      disturbItem.endMinute = element.endMinute ?? 0;
      disturbItem.switchFlag = element.switchFlag ?? false;
      alist.add(disturbItem);
    });
    model.disturbItem.addAll(alist);
    return model;
  }
}

class DisturbReplyModel {
  int? funcTable;
  int? disturbMax;
  OperationType operationType = OperationType.inquire;
  int? num;
  bool? disturbOnOff;
  List<DisturbItem>? items;
  DisturbReplyModel fromBuffer(List<int> buffer) {
    DisturbReplyModel userModel = DisturbReplyModel();
    protocol_disturb_inquire_reply amodel =
        protocol_disturb_inquire_reply.fromBuffer(buffer);
    userModel.funcTable = amodel.funcTable;
    userModel.operationType = amodel.operate == operate_type.INQUIRE
        ? OperationType.inquire
        : amodel.operate == operate_type.SET
            ? OperationType.set
            : OperationType.invalid;
    userModel.disturbMax = amodel.disturbMax;
    userModel.disturbOnOff = amodel.disturbOnOff;
    userModel.num = amodel.num;
    userModel.items = [];
    for (var element in amodel.disturbItem) {
      DisturbItem alarmItemModel = DisturbItem();
      alarmItemModel.disturbId = element.disturbId;
      alarmItemModel.startHour = element.startHour;
      alarmItemModel.startMinute = element.startMinute;
      alarmItemModel.endHour = element.endHour;
      alarmItemModel.endMinute = element.endMinute;
      List<bool>? aList = [];
      aList.addAll(element.repeat);
      alarmItemModel.repeat = aList;
      alarmItemModel.switchFlag = element.switchFlag;
      userModel.items?.add(alarmItemModel);
    }
    return userModel;
  }

  @override
  String toString() {
    return 'DisturbReplyModel{funcTable: $funcTable, disturbMax: $disturbMax, operationType: $operationType, num: $num, disturbOnOff: $disturbOnOff, items: $items}';
  }
}

class DisturbItem {
  ///1bytes 勿扰定时id 从0开始
  int? disturbId;

  ///1bytes 开始时间
  int? startHour;
  int? startMinute;

  ///bytes 结束时间
  int? endHour;

  ///bytes 结束时间
  int? endMinute;

  ///7bytes 重复 周一~周日
  List<bool>? repeat;

  ///1bytes 开关
  bool? switchFlag;

  @override
  String toString() {
    return 'DisturbItem{disturbId: $disturbId, startHour: $startHour, startMinute: $startMinute, endHour: $endHour, endMinute: $endMinute, repeat: $repeat, switchFlag: $switchFlag}';
  }

  DisturbItem.fromJson(dynamic json) {
    disturbId = json['disturbId'];
    startHour = json['startHour'];
    startMinute = json['startMinute'];
    endHour = json['endHour'];
    endMinute = json['endMinute'];
    if (json['repeat'] != null) {
      repeat = [];
      List list = json['repeat'];
      for (var element in list) {
        repeat!.add(element);
      }
    }
    // repeat = json['repeat'];
    switchFlag = json['switchFlag'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['disturbId'] = disturbId;
    map['startHour'] = startHour;
    map['startMinute'] = startMinute;
    map['endHour'] = endHour;
    map['endMinute'] = endMinute;
    map['repeat'] = repeat;
    map['switchFlag'] = switchFlag;
    return map;
  }

  DisturbItem();
}
