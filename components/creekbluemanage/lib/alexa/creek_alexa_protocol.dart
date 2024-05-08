import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/proto/health.pb.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:creek_blue_manage/proto/log.pb.dart';
import 'package:creek_blue_manage/proto/sensor.pb.dart';

import '../proto/alexa.pb.dart';

abstract class CreekAlexaProtocol{

   ///**************************
   ///打开关闭mic
   ///isOpen  true 打开  false关闭
   ///**************************
   openMic({bool isOpen = false ,Function()? callBack,Function()? errCallBack});
   ///**************************
   ///打开关闭喇叭
   ///isOpen  true 打开  false关闭
   ///**************************
   openVoice({bool isOpen = false ,Function()? callBack,Function()? errCallBack});
   ///**************************
   ///发送alexa状态
   ///**************************
   setAlexaStatus({required protocol_alexa_status_operate operate ,Function()? callBack,Function()? errCallBack});
   ///**************************
   ///发送alexa内容
   ///**************************
   setAlexaContent({required protocol_alexa_result_operate operate ,Function()? callBack,Function()? errCallBack});
   ///*****************************************
   ///alexa闹钟获取
   ///*****************************************
   @override
   void getAlexaAlarm({Function(protocol_alexa_alarm_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa闹钟设置
   ///*****************************************
   void setAlexaAlarm(
       {required protocol_alexa_alarm_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa事件提醒获取
   ///*****************************************
   void getAlexaReminder({Function(protocol_alexa_reminder_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa事件提醒设置
   ///*****************************************
   void setAlexaReminder(
       {required protocol_alexa_reminder_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa定时器获取
   ///*****************************************
   void getAlexaTime({Function(protocol_alexa_timer_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa定时器设置
   ///*****************************************
   void setAlexaTime(
       {required protocol_alexa_timer_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa天气获取
   ///*****************************************
   void getAlexaWeather({Function(protocol_alexa_weather_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});
   ///*****************************************
   ///alexa天气设置
   ///*****************************************
   void setAlexaWeather(
       {required protocol_alexa_weather_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});

   ///*****************************************
   ///alexa通知获取
   ///*****************************************
   void getAlexaNotify({Function(protocol_alexa_notify_status_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});

   ///*****************************************
   ///alexa通知设置
   ///*****************************************
   void setAlexaNotify(
       {required protocol_alexa_notify_status_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData});

}

AlexaCommand _initHeartProtocol() {
   return AlexaCommand();
}

final CreekAlexaProtocol alexaProtocol = _initHeartProtocol();