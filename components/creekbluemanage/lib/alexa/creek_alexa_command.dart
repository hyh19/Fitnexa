part of creek_blue;





class AlexaCommand extends CreekAlexaProtocol{


  ///**************************
  ///打开关闭mic
  ///isOpen  true 打开  false关闭
  ///**************************
  @override
  openMic({bool isOpen = false ,Function()? callBack,Function()? errCallBack}){

    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa1;
    CreekTransport request = CreekTransport();
    CreekRetry creekRetry = CreekRetry();
    protocol_alexa_tran_operate operate = protocol_alexa_tran_operate();
    operate.tranType = tran_direction_type.APP_TRAN;
    if(isOpen){
      operate.operate = alexa_operate_type.ALEXA_MIC_OPEN;
      CreekLog.info("打开mic");
    }else{
      operate.operate = alexa_operate_type.ALEXA_MIC_CLOSE;
      CreekLog.info("关闭mic");
    }

    List<List<int>> listData = request.seedData(model, operate);
    ///需要监听返回值
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      parsingData(e,callBack: (head,e){
        if(head.codeType == CodeType.code0){
          if(callBack != null){
            callBack();
          }

        }else{
          if(errCallBack != null){
            errCallBack();
          }
        }
      });
    },errorCallBack: (){
      if(errCallBack != null){
        errCallBack();
      }
    } );
    creekRetry.requestDevice(listData);
  }

  ///**************************
  ///打开关闭喇叭
  ///isOpen  true 打开  false关闭
  ///**************************
  @override
  openVoice({bool isOpen = false ,Function()? callBack,Function()? errCallBack}){

    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa1;
    CreekRetry creekRetry = CreekRetry();
    CreekTransport request = CreekTransport();
    protocol_alexa_tran_operate operate = protocol_alexa_tran_operate();
    operate.tranType = tran_direction_type.APP_TRAN;
    if(isOpen){
      operate.operate = alexa_operate_type.ALEXA_VOICE_OPEN;
      CreekLog.info("打开喇叭");
    }else{
      operate.operate = alexa_operate_type.ALEXA_VOICE_CLOSE;
      CreekLog.info("关闭喇叭");
    }

    List<List<int>> listData = request.seedData(model, operate);
    ///需要监听返回值
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      parsingData(e,callBack: (head,e){
        if(head.codeType == CodeType.code0){
          if(callBack != null){
            callBack();
          }

        }else{
          if(errCallBack != null){
            errCallBack();
          }
        }
      });
    },errorCallBack: (){
      if(errCallBack != null){
        errCallBack();
      }
    } );
    creekRetry.requestDevice(listData);
  }

  ///**************************
  ///发送alexa状态
  ///**************************
  @override
  setAlexaStatus({required protocol_alexa_status_operate operate ,Function()? callBack,Function()? errCallBack}){
    CreekLog.info("发送alexa状态");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa2;
    CreekRetry creekRetry = CreekRetry();
    CreekTransport request = CreekTransport();
    operate.tranType = tran_direction_type.APP_TRAN;
    List<List<int>> listData = request.seedData(model, operate);
    ///需要监听返回值
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      parsingData(e,callBack: (head,e){
        if(head.codeType == CodeType.code0){
          if(callBack != null){
            callBack();
          }

        }else{
          if(errCallBack != null){
            errCallBack();
          }
        }
      });
    },errorCallBack: (){
      if(errCallBack != null){
        errCallBack();
      }
    } );
    creekRetry.requestDevice(listData);
  }

  ///**************************
  ///发送alexa内容
  ///**************************
  @override
  setAlexaContent({required protocol_alexa_result_operate operate ,Function()? callBack,Function()? errCallBack}){
    CreekLog.info("发送alexa内容");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa3;
    CreekRetry creekRetry = CreekRetry();
    CreekTransport request = CreekTransport();
    operate.operate = operate_type.SET;
    List<List<int>> listData = request.seedData(model, operate);
    ///需要监听返回值
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      parsingData(e,callBack: (head,e){
        if(head.codeType == CodeType.code0){
          if(callBack != null){
            callBack();
          }

        }else{
          if(errCallBack != null){
            errCallBack();
          }
        }
      });
    },errorCallBack: (){
      if(errCallBack != null){
        errCallBack();
      }
    },outTime: 3);
    creekRetry.requestDevice(listData);
  }


  ///*****************************************
  ///alexa闹钟获取
  ///*****************************************
  @override
  void getAlexaAlarm({Function(protocol_alexa_alarm_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("alexa闹钟获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_alarm;
    CreekTransport request = CreekTransport();
    protocol_alexa_alarm_operate operate = protocol_alexa_alarm_operate();
    operate.operate = operate_type.INQUIRE;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          protocol_alexa_alarm_inquire_reply reply = e as protocol_alexa_alarm_inquire_reply;
          if (callBack != null) {
            callBack(reply);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }


      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa闹钟设置
  ///*****************************************
  @override
  void setAlexaAlarm(
      {required protocol_alexa_alarm_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("alexa闹钟设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_alarm;
    CreekTransport request = CreekTransport();
    operate.operate = operate_type.SET;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack();
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa事件提醒获取
  ///*****************************************
  @override
  void getAlexaReminder({Function(protocol_alexa_reminder_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("alexa事件提醒获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_reminder;
    CreekTransport request = CreekTransport();
    protocol_alexa_reminder_operate operate = protocol_alexa_reminder_operate();
    operate.operate = operate_type.INQUIRE;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          protocol_alexa_reminder_inquire_reply reply = e as protocol_alexa_reminder_inquire_reply;
          if (callBack != null) {
            callBack(reply);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }


      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa事件提醒设置
  ///*****************************************
  @override
  void setAlexaReminder(
      {required protocol_alexa_reminder_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("alexa事件提醒设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_reminder;
    CreekTransport request = CreekTransport();
    operate.operate = operate_type.SET;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack();
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa定时器获取
  ///*****************************************
  @override
  void getAlexaTime({Function(protocol_alexa_timer_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("alexa定时器获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_timer;
    CreekTransport request = CreekTransport();
    protocol_alexa_timer_operate operate = protocol_alexa_timer_operate();
    operate.operate = operate_type.INQUIRE;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          protocol_alexa_timer_inquire_reply reply = e as protocol_alexa_timer_inquire_reply;
          if (callBack != null) {
            callBack(reply);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }


      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa定时器设置
  ///*****************************************
  @override
  void setAlexaTime(
      {required protocol_alexa_timer_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("alexa定时器设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_timer;
    CreekTransport request = CreekTransport();
    operate.operate = operate_type.SET;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack();
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }


  ///*****************************************
  ///alexa天气获取
  ///*****************************************
  @override
  void getAlexaWeather({Function(protocol_alexa_weather_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("alexa天气获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_weather;
    CreekTransport request = CreekTransport();
    protocol_alexa_weather_operate operate = protocol_alexa_weather_operate();
    operate.operate = operate_type.INQUIRE;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          protocol_alexa_weather_inquire_reply reply = e as protocol_alexa_weather_inquire_reply;
          if (callBack != null) {
            callBack(reply);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }


      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa天气设置
  ///*****************************************
  @override
  void setAlexaWeather(
      {required protocol_alexa_weather_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("alexa天气设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_weather;
    CreekTransport request = CreekTransport();
    operate.operate = operate_type.SET;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack();
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }


  ///*****************************************
  ///alexa通知获取
  ///*****************************************
  @override
  void getAlexaNotify({Function(protocol_alexa_notify_status_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("alexa通知获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_notify;
    CreekTransport request = CreekTransport();
    protocol_alexa_notify_status_operate operate = protocol_alexa_notify_status_operate();
    operate.operate = operate_type.INQUIRE;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          protocol_alexa_notify_status_inquire_reply reply = e as protocol_alexa_notify_status_inquire_reply;
          if (callBack != null) {
            callBack(reply);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }


      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///alexa通知设置
  ///*****************************************
  @override
  void setAlexaNotify(
      {required protocol_alexa_notify_status_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("alexa通知设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alexa_notify;
    CreekTransport request = CreekTransport();
    operate.operate = operate_type.SET;
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack();
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(head.codeType));
          }
        }
      });
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

}





