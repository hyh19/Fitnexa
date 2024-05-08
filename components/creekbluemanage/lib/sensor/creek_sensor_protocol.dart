import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/health.pb.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:creek_blue_manage/proto/log.pb.dart';
import 'package:creek_blue_manage/proto/sensor.pb.dart';

abstract class CreekSensorProtocol{

  ///**************************
  ///查询传感器版本
  ///**************************
 void getSensor({Function(protocol_sensor_rawdata_tran_inquire_reply)? callBack});

 ///**************************
 ///采集数据
 ///**************************
 setSensor(sensor_operate_type sensorType,{required List<String> dataType,Function()? callBack,Function()? errCallBack});

 ///**************************
 ///日志传输控制
 ///**************************
 setLog({log_operate_type type = log_operate_type.LOG_START,Function()? callBack,Function()? errCallBack});

}

CreekSensorProtocol _initHeartProtocol() {
   return SensorCommand();
}

final CreekSensorProtocol sensorCommand = _initHeartProtocol();