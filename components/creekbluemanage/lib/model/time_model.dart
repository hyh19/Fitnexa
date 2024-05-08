part of creek_blue;




class TimeModel {

  OperationType type = OperationType.invalid;
  TimeInfoModel timeInfoModel = TimeInfoModel();
  TimeModel();
  TimeModel fromBuffer(List<int> buffer) {
    TimeModel timeModel = TimeModel();
    protocol_device_time_operate amodel = protocol_device_time_operate
        .fromBuffer(buffer);
    timeModel.type =
    amodel.operate == operate_type.INQUIRE ? OperationType.inquire : amodel
        .operate == operate_type.SET ? OperationType.set : OperationType.invalid;
    TimeInfoModel timeInfoModel = TimeInfoModel();
    timeInfoModel.year = amodel.time.year;
    timeInfoModel.month = amodel.time.month;
    timeInfoModel.day = amodel.time.day;
    timeInfoModel.hour = amodel.time.hour;
    timeInfoModel.minute = amodel.time.minute;
    timeInfoModel.second = amodel.time.second;
    timeInfoModel.week = amodel.time.week;
    timeInfoModel.utcTime = amodel.time.utcTime;
    timeInfoModel.timeZone = amodel.time.timeZone;

    timeModel.timeInfoModel = timeInfoModel;
    return timeModel;
  }

  protocol_device_time_operate fromModel(){
    protocol_device_time_operate amodel = protocol_device_time_operate();
    amodel.operate = type == OperationType.inquire ? operate_type.INQUIRE : type == OperationType.set ? operate_type.SET : operate_type.INVALID;
    amodel.time.year = timeInfoModel.year ?? 0;
    amodel.time.month = timeInfoModel.month ?? 0;
    amodel.time.day = timeInfoModel.day ?? 0;
    amodel.time.hour = timeInfoModel.hour ?? 0;
    amodel.time.minute = timeInfoModel.minute ?? 0;
    amodel.time.second = timeInfoModel.second ?? 0;
    amodel.time.week = timeInfoModel.week ?? 0;
    amodel.time.utcTime = timeInfoModel.utcTime ?? 0;
    amodel.time.timeZone = timeInfoModel.timeZone ?? 0;
    return amodel;
  }

}

class TimeInfoModel {
  ///年
  int? year;

  ///月
  int? month;

  ///日
  int? day;

  ///时
  int? hour;

  ///分
  int? minute;

  ///秒
  int? second;

  ///周
  int? week;

  ///utc时间
  int? utcTime;

  ///时区
  int? timeZone;

}