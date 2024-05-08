
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';

class MonitorOperateModel{
  ///1bytes 功能表
  int? funcTable;
  ///1bytes 操作类型 0：无效操作 1：查询 2：设置
  OperationType operationType = OperationType.inquire;
  ///健康监测类型
  HealthType? healthType;
  ///1bytes  默认监测模式类型
  HealthMonitorMode? healthMonitorMode;
  ///2bytes 测量间隔,单位s
  int? measurementInterval;
  ///监测模式自动调整子项数据
  MonitorAutoAdjust monitorAutoAdjust = MonitorAutoAdjust();
  ///提醒通知配置
  HeartMonitorNotify heartMonitorNotify = HeartMonitorNotify();

  MonitorOperateModel fromBuffer(List<int> buffer) {
    MonitorOperateModel monitorOperateModel = MonitorOperateModel();
    protocol_health_monitor_inquire_reply amodel = protocol_health_monitor_inquire_reply.fromBuffer(buffer);
    monitorOperateModel.funcTable = amodel.funcTable;
    monitorOperateModel.operationType = amodel.operate == operate_type.INQUIRE ? OperationType.inquire :  amodel.operate == operate_type.SET ? OperationType.set : OperationType.invalid;
    HealthType? hType;
    switch (amodel.healthType){
      case health_type.SKIN_TEMPERATURE:
        hType = HealthType.skinTemperature;
        break;
      case health_type.BODY_ENERGY:
        hType = HealthType.bodyEnergy;
        break;
      case health_type.HEART_RATE:
        hType = HealthType.heartRate;
        break;
      case health_type.NOISE:
        hType = HealthType.noise;
        break;
      case health_type.RESPIRATORY_RATE:
        hType = HealthType.respiratoryRate;
        break;
      case health_type.SPO2:
        hType = HealthType.spo2;
        break;
      case health_type.STRESS:
        hType = HealthType.stress;
        break;
    }
    monitorOperateModel.healthType = hType;
    HealthMonitorMode? mode;
    switch(amodel.defaultMode){
      case health_monitor_mode.AUTO:
        mode = HealthMonitorMode.auto;
        break;
      case health_monitor_mode.CONTINUOUS:
        mode = HealthMonitorMode.continuous;
        break;
      case health_monitor_mode.INTELLIHENT:
        mode = HealthMonitorMode.intelligence;
        break;
      case health_monitor_mode.MANUAL:
        mode = HealthMonitorMode.manual;
        break;
    }
    monitorOperateModel.healthMonitorMode = mode;
    monitorOperateModel.measurementInterval = amodel.measurementInterval;
    monitorOperateModel.monitorAutoAdjust.switchFlag  =  amodel.modeAutoAdjust.switchFlag;
    HealthMonitorMode? mode2;
    switch(amodel.modeAutoAdjust.adjustMode){
      case health_monitor_mode.AUTO:
        mode2 = HealthMonitorMode.auto;
        break;
      case health_monitor_mode.CONTINUOUS:
        mode2 = HealthMonitorMode.continuous;
        break;
      case health_monitor_mode.INTELLIHENT:
        mode2 = HealthMonitorMode.intelligence;
        break;
      case health_monitor_mode.MANUAL:
        mode2 = HealthMonitorMode.manual;
        break;
    }
    monitorOperateModel.monitorAutoAdjust.healthMonitorMode = mode2;
    monitorOperateModel.monitorAutoAdjust.startHour = amodel.modeAutoAdjust.startHour;
    monitorOperateModel.monitorAutoAdjust.startMinute = amodel.modeAutoAdjust.startMinute;
    monitorOperateModel.monitorAutoAdjust.endHour = amodel.modeAutoAdjust.endHour;
    monitorOperateModel.monitorAutoAdjust.endMinute = amodel.modeAutoAdjust.endMinute;
    NotifyType? notifyType;
    switch(amodel.notifySetting.notifyFlag){
      case notify_type.ALLOW:
        notifyType = NotifyType.allow;
        break;
      case notify_type.CLOSE:
        notifyType = NotifyType.close;
        break;
      case notify_type.SILENT:
        notifyType = NotifyType.silent;
        break;
    }
    monitorOperateModel.heartMonitorNotify.notifyType = notifyType;
    monitorOperateModel.heartMonitorNotify.highRemindSwitch = amodel.notifySetting.highRemindSwitch;
    monitorOperateModel.heartMonitorNotify.lowRemindSwitch = amodel.notifySetting.lowRemindSwitch;
    monitorOperateModel.heartMonitorNotify.highThresholdValue = amodel.notifySetting.highThresholdValue;
    monitorOperateModel.heartMonitorNotify.lowThresholdValue = amodel.notifySetting.lowThresholdValue;
    monitorOperateModel.heartMonitorNotify.interval = amodel.notifySetting.interval;
    monitorOperateModel.heartMonitorNotify.repeat = amodel.notifySetting.repeat;
    monitorOperateModel.heartMonitorNotify.startHour = amodel.notifySetting.startHour;
    monitorOperateModel.heartMonitorNotify.startMinute = amodel.notifySetting.startMinute;
    monitorOperateModel.heartMonitorNotify.endHour = amodel.notifySetting.endHour;
    monitorOperateModel.heartMonitorNotify.endMinute = amodel.notifySetting.endMinute;
    return monitorOperateModel;
  }

  protocol_health_monitor_operate fromModel(){
    protocol_health_monitor_operate amodel = protocol_health_monitor_operate();
    amodel.modeAutoAdjust = protocol_health_monitor_auto_adjust();
    amodel.notifySetting = protocol_heart_monitor_notify();
    amodel.operate = operationType == OperationType.inquire ? operate_type.INQUIRE : operationType == OperationType.set ? operate_type.SET : operate_type.INVALID;
    health_type hType = health_type.HEART_RATE;
    switch (healthType){
      case HealthType.heartRate:
        hType = health_type.HEART_RATE;
        break;
      case HealthType.stress:
        hType = health_type.SKIN_TEMPERATURE;
        break;
      case HealthType.spo2:
        hType = health_type.SPO2;
        break;
      case HealthType.noise:
        hType = health_type.NOISE;
        break;
      case HealthType.bodyEnergy:
        hType = health_type.BODY_ENERGY;
        break;
      case HealthType.respiratoryRate:
        hType = health_type.RESPIRATORY_RATE;
        break;
      case HealthType.skinTemperature:
        hType = health_type.SKIN_TEMPERATURE;
        break;
    }
    amodel.healthType = hType;

    health_monitor_mode mode = health_monitor_mode.AUTO;
    switch(healthMonitorMode){
      case HealthMonitorMode.manual:
        mode = health_monitor_mode.MANUAL;
        break;
      case HealthMonitorMode.auto:
        mode = health_monitor_mode.AUTO;
        break;
      case HealthMonitorMode.continuous:
        mode = health_monitor_mode.CONTINUOUS;
        break;
      case HealthMonitorMode.intelligence:
        mode = health_monitor_mode.INTELLIHENT;
        break;
    }

    amodel.measurementInterval = measurementInterval ?? 0;
    amodel.modeAutoAdjust.switchFlag = monitorAutoAdjust.switchFlag ?? false;
    health_monitor_mode mode2 = health_monitor_mode.AUTO;
    switch(monitorAutoAdjust.healthMonitorMode){
      case HealthMonitorMode.manual:
        mode2 = health_monitor_mode.MANUAL;
        break;
      case HealthMonitorMode.auto:
        mode2 = health_monitor_mode.AUTO;
        break;
      case HealthMonitorMode.continuous:
        mode2 = health_monitor_mode.CONTINUOUS;
        break;
      case HealthMonitorMode.intelligence:
        mode2 = health_monitor_mode.INTELLIHENT;
        break;
    }
    amodel.modeAutoAdjust.adjustMode = mode2;
    amodel.modeAutoAdjust.startHour = monitorAutoAdjust.startHour ?? 0;
    amodel.modeAutoAdjust.endHour = monitorAutoAdjust.endHour ?? 0;
    amodel.modeAutoAdjust.startMinute = monitorAutoAdjust.startMinute ?? 0;
    amodel.modeAutoAdjust.endMinute = monitorAutoAdjust.endMinute ?? 0;

    notify_type mode3 = notify_type.ALLOW;
    switch(heartMonitorNotify.notifyType){
      case NotifyType.allow:
        mode3 = notify_type.ALLOW;
        break;
      case NotifyType.silent:
        mode3 = notify_type.SILENT;
        break;
      case NotifyType.close:
        mode3 = notify_type.CLOSE;
        break;
    }
    amodel.notifySetting.notifyFlag = mode3;
    amodel.notifySetting.highRemindSwitch = heartMonitorNotify.highRemindSwitch ?? false;
    amodel.notifySetting.lowRemindSwitch = heartMonitorNotify.lowRemindSwitch ?? false;
    amodel.notifySetting.highThresholdValue = heartMonitorNotify.highThresholdValue ?? 0;
    amodel.notifySetting.lowThresholdValue = heartMonitorNotify.lowThresholdValue ?? 0;
    amodel.notifySetting.interval = heartMonitorNotify.interval ?? 0;
    amodel.notifySetting.repeat.addAll(heartMonitorNotify.repeat ?? []);
    amodel.notifySetting.startHour = heartMonitorNotify.startHour ?? 0;
    amodel.notifySetting.endHour = heartMonitorNotify.endHour ?? 0;
    amodel.notifySetting.startMinute = heartMonitorNotify.startMinute ?? 0;
    amodel.notifySetting.endMinute = heartMonitorNotify.endMinute ?? 0;
    return amodel;
  }


}



class MonitorAutoAdjust{
  ///1bytes 模式自动调整开关 true 开启,false 关闭
  bool? switchFlag;
  ///1bytes 监测模式
  HealthMonitorMode? healthMonitorMode;
  ///开始时间
  int? startHour;
  int? startMinute;
  ///结束时间
  int? endHour;
  int? endMinute;

}
class HeartMonitorNotify{
  ///1bytes 通知类型
  NotifyType? notifyType;
  ///1bytes true:开启过高提醒开关， false:关闭
  bool? highRemindSwitch;
  ///1bytes true:开启过低提醒开关， false:关闭
  bool? lowRemindSwitch;
  ///1bytes 过高提醒阈值
  int? highThresholdValue;
  ///1bytes 过低提醒阈值
  int? lowThresholdValue;
  ///1bytes 提醒间隔,单位分钟
  int? interval;
  ///1bytes 重复周期 周一~周日
  List<bool>? repeat;
  ///开始时间
  int? startHour;
  int? startMinute;
  ///结束时间
  int? endHour;
  int? endMinute;
}