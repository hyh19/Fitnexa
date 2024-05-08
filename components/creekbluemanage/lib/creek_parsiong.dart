import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_head_model.dart';
import 'package:creek_blue_manage/model/activity_model.dart';
import 'package:creek_blue_manage/model/alarm_model.dart';
import 'package:creek_blue_manage/model/disturb_model.dart';
import 'package:creek_blue_manage/model/heart_rate.dart';
import 'package:creek_blue_manage/model/hrv_model.dart';
import 'package:creek_blue_manage/model/noise_model.dart';
import 'package:creek_blue_manage/model/screen_model.dart';
import 'package:creek_blue_manage/model/sleep_model.dart';
import 'package:creek_blue_manage/model/spo_model.dart';
import 'package:creek_blue_manage/model/sport_model.dart';
import 'package:creek_blue_manage/model/stress_model.dart';
import 'package:creek_blue_manage/proto/alexa.pb.dart';
import 'package:creek_blue_manage/proto/binding.pb.dart';
import 'package:creek_blue_manage/proto/call.pb.dart';
import 'package:creek_blue_manage/proto/card.pb.dart';
import 'package:creek_blue_manage/proto/contacts.pb.dart';
import 'package:creek_blue_manage/proto/contactssos.pb.dart';
import 'package:creek_blue_manage/proto/event.pb.dart';
import 'package:creek_blue_manage/proto/findphone.pb.dart';
import 'package:creek_blue_manage/proto/focus.pb.dart';
import 'package:creek_blue_manage/proto/health.pb.dart';
import 'package:creek_blue_manage/proto/healthhead.pb.dart';
import 'package:creek_blue_manage/proto/hotKey.pb.dart';
import 'package:creek_blue_manage/proto/menstrual.pb.dart';
import 'package:creek_blue_manage/proto/message.pb.dart';
import 'package:creek_blue_manage/proto/monitor.pb.dart';
import 'package:creek_blue_manage/proto/mtu.pb.dart';
import 'package:creek_blue_manage/proto/schedule.pb.dart';
import 'package:creek_blue_manage/proto/sleepMonitor.pb.dart';
import 'package:creek_blue_manage/proto/sport.pb.dart';
import 'package:creek_blue_manage/proto/standing.pb.dart';
import 'package:creek_blue_manage/proto/table.pb.dart';
import 'package:creek_blue_manage/proto/time.pb.dart';
import 'package:creek_blue_manage/proto/tracking.pb.dart';
import 'package:creek_blue_manage/proto/update.pb.dart';
import 'package:creek_blue_manage/proto/voice.pb.dart';
import 'package:creek_blue_manage/proto/watchdial.pb.dart';
import 'package:creek_blue_manage/proto/waterMonitor.pb.dart';
import 'package:creek_blue_manage/proto/weather.pb.dart';
import 'package:creek_blue_manage/proto/wordtime.pb.dart';
import 'package:creek_blue_manage/proto/appList.pb.dart';
import 'package:creektool/creek_tool.dart';




///解析数据 (传过来的包一定是完整的)
void  parsingData(List<int> list,{Function(HeadModel,dynamic)? callBack}){
  dynamic dataValue;
  ///开始解包
  ///头数据
  List<int> head = list.sublist(0,11);
  HeadModel? headModel =  HeadModel().uint8ListToModel(head);
  ///buf数据
  List<int> buf = list.sublist(11,list.length-2);
  if(buf.isNotEmpty){
    switch(headModel?.cmdId){
      case CmdId.device:
        dataValue =  DeviceModel().fromBuffer(buf);
        break;
      case CmdId.time:
        dataValue = TimeModel().fromBuffer(buf);
        break;
      case CmdId.user:
        dataValue = UserModel().fromBuffer(buf);
        break;
      case CmdId.language:
        dataValue = LanguageModel().fromBuffer(buf);
        break;
      case CmdId.binding:
        dataValue = protocol_bind_reply.fromBuffer(buf);
        break;
      case CmdId.healthSync:
        int bufLent =  BlueTool.listTo4int(list.sublist(11,13));
        List<int> buf = list.sublist(13,13+bufLent);
        if(buf.isNotEmpty){
          protocol_health_sync_head_reply reply = protocol_health_sync_head_reply.fromBuffer(buf);
          List<int> listRateData = list.sublist(13+bufLent,list.length);
          print("listRateData${listRateData.length}");
          ///下面的数据最少都是在10个字节以上，所以设置一个判断值
          if(listRateData.length > 10){
            if(reply.syncType == sync_type.SYNC_HEART_RATE){
              HeartRateDataModel healthData =  HeartRateDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_STRESS){
              StressDataModel healthData =  StressDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_SPO2){
              SpoDataModel healthData =  SpoDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_SLEEP){
              SleepDataModel healthData =  SleepDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_ACTIVITY){
              ActivityDataModel healthData =  ActivityDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_NOISE){
              NoiseDataModel healthData =  NoiseDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_WORKOUT){
              SportDataModel healthData =  SportDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }else if(reply.syncType == sync_type.SYNC_HRV){
              HrvDataModel healthData =  HrvDataModel().fromBuffer(listRateData);
              dataValue = healthData;
            }
          }
        }
        break;
      case CmdId.health:
        protocol_health_get_data_size_set_reply data = protocol_health_get_data_size_set_reply.fromBuffer(buf);
        if(data.operate == operate_type.INQUIRE){
          dataValue = protocol_health_get_data_size_inquire_reply.fromBuffer(buf);
        }
        if(data.operate == operate_type.SET){
          dataValue = protocol_health_get_data_size_set_reply.fromBuffer(buf);
        }
        break;
      case CmdId.alarm:
        dataValue = AlarmReplyModel().fromBuffer(buf);
        break;
      case CmdId.disturb:
        dataValue = DisturbReplyModel().fromBuffer(buf);
        break;
      case CmdId.screen:
        dataValue = ScreenReplyModel().fromBuffer(buf);
        break;
      case CmdId.monitor:
        dataValue =   protocol_health_monitor_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.sleepMonitor:
        dataValue =   protocol_sleep_monitor_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.waterMonitor:
        dataValue =   protocol_drink_water_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.standing:
        dataValue =   protocol_standing_remind_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.menstrual:
        dataValue =   protocol_menstruation_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.update:
        dataValue =   protocol_notice_update_operate.fromBuffer(buf);
        break;
      case CmdId.music:
        ///没有buf回复
        break;
      case CmdId.weather:
        dataValue =   protocol_weather_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.findPhone:
        dataValue =   protocol_find_phone_watch_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.worldTime:
        dataValue =   protocol_world_time_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.voice:
        dataValue =   protocol_voice_assistant_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.messageType:
        dataValue =   protocol_message_notify_func_support_reply.fromBuffer(buf);
        break;
      case CmdId.messageApp:
        dataValue =   protocol_message_notify_data_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.messageOnOff:
        dataValue =   protocol_message_notify_switch_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.call:
        dataValue =   protocol_call_switch_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.sportType:
        dataValue =   protocol_exercise_func_support_reply.fromBuffer(buf);
        break;
      case CmdId.sportSort:
        dataValue =   protocol_exercise_sport_mode_sort_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.sportSub:
        dataValue =   protocol_exercise_sporting_param_sort_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.sportIdentification:
        dataValue =   protocol_exercise_intelligent_recognition_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.sportGps:
        dataValue =   protocol_exercise_gps_info.fromBuffer(buf);
        break;
      case CmdId.schedule:
        dataValue =   protocol_schedule_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.card:
        dataValue =   protocol_quick_card_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.contacts:
        dataValue =   protocol_frequent_contacts_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.contactsSOS:
        dataValue =   protocol_emergency_contacts_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.mtu:
        dataValue =   protocol_connect_status_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.watchDial:
        dataValue =   protocol_watch_dial_plate_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.event:
        dataValue =   protocol_event_report.fromBuffer(buf);
        break;
      case CmdId.table:
        dataValue =   protocol_function_table.fromBuffer(buf);
        break;
      case CmdId.hotKey:
        dataValue =   protocol_button_crown_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.focus:
        dataValue =   protocol_focus_mode_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.alexa1:
        dataValue =   protocol_alexa_tran_operate.fromBuffer(buf);
        break;
      case CmdId.alexa2:
        dataValue =   protocol_alexa_status_operate.fromBuffer(buf);
        break;
      case CmdId.alexa3:
        dataValue =   protocol_alexa_result_operate.fromBuffer(buf);
        break;
      case CmdId.alexa_alarm:
        dataValue =   protocol_alexa_alarm_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.alexa_reminder:
        dataValue =   protocol_alexa_reminder_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.alexa_timer:
        dataValue =   protocol_alexa_timer_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.alexa_weather:
        dataValue =   protocol_alexa_weather_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.alexa_notify:
        dataValue =   protocol_alexa_notify_status_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.app:
        dataValue =   protocol_app_list_inquire_reply.fromBuffer(buf);
        break;
      case CmdId.track:
        dataValue =   protocol_event_tracking_inquire_reply.fromBuffer(buf);
        break;
    }
    // if(dataValue == null){
    //   headModel?.codeType = CodeType.code100;
    // }
  }
  if(headModel?.cmdId != CmdId.healthSync){
    CreekLog.info(dataValue.toString());
  }

  if(callBack != null){
    callBack(headModel!,dataValue);
  }

}