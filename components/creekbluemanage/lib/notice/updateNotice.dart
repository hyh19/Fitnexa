


part of creek_blue;
class UpdateNotice{

  factory UpdateNotice() => _getInstance();
  static UpdateNotice get instance => _getInstance();
  static UpdateNotice? _instance;
  UpdateNotice._internal();

  Function(protocol_notice_update_operate operate)? updateNotice;
  ///    eventId = 1; //事件id
  ///    subId   = 2; //事件子id
  ///    time    = 3; //事件产生时间
  ///    message = 4; //消息体
  Function(String eventId,String subId,String time, String message)? eventReport;

  Future<GPSModel?>  Function(protocol_exercise_gps_info)? sportGps;

  Function(CmdId cmdId,dynamic model)? alexaNotice;

  static UpdateNotice _getInstance(){
    _instance ??= UpdateNotice._internal();
    return _instance!;
  }
   getNotice(List<int> listData){
    parsingData(listData, callBack: (head, e) {
      if (head.codeType == CodeType.code0) {
        if(head.cmdId == CmdId.update){
          protocol_notice_update_operate operate = e as protocol_notice_update_operate;
          if(updateNotice != null){
            updateNotice!(operate);
          }
          if(alexaNotice != null){
            alexaNotice!(head.cmdId,operate);
          }

        }else if(head.cmdId == CmdId.event){
          protocol_event_report operate = e as protocol_event_report;
          if(eventReport != null){
            eventReport!(operate.eventId,operate.eventSubId,operate.eventTime,operate.eventMessage);
          }
        }else if(head.cmdId == CmdId.sportGps){
          if(e != null){
            try{
              protocol_exercise_gps_info info =  e as protocol_exercise_gps_info;
              if(sportGps != null){
                sportGps!(info).then((value) {
                  if(value != null){
                    RecoverBlue.sportGPS(head, value!);

                    // RecoverBlue.ceshiSportGPS(head);
                  }

                });
              }
            }catch(e){
              CreekLog.info(e.toString());
            }
          }
        }else if(head.cmdId == CmdId.alexa1){
          if(e != null){
            try{
              protocol_alexa_tran_operate info =  e as protocol_alexa_tran_operate;
              if(info.operate == alexa_operate_type.ALEXA_MIC_OPEN){
                CreekLog.info("固件通知打开mic");
              }else if(info.operate == alexa_operate_type.ALEXA_MIC_CLOSE){
                CreekLog.info("固件通知关闭mic");
              }else if(info.operate == alexa_operate_type.ALEXA_VOICE_OPEN){
                CreekLog.info("固件通知打开喇叭");
              }else if(info.operate == alexa_operate_type.ALEXA_VOICE_CLOSE){
                CreekLog.info("固件通知关闭喇叭");
              }
              if(alexaNotice != null){
                alexaNotice!(head.cmdId,info);
              }
            }catch(e){
              CreekLog.info(e.toString());
            }
          }

        }else if(head.cmdId == CmdId.alexa2){
          if(e != null){
            try{
              protocol_alexa_status_operate info =  e as protocol_alexa_status_operate;
              CreekLog.info("固件询问Alexa状态${info.toString()}");
              if(alexaNotice != null){
                alexaNotice!(head.cmdId,info);
              }
            }catch(e){
              CreekLog.info(e.toString());
            }
          }
        }
      } else {

      }
    });

  }
}