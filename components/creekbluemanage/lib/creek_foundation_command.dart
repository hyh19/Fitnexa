part of creek_blue;

class FoundationCommand extends CreekCommandProtocol {
  ///*****************************************
  /// 基础命令
  ///*****************************************

  ///*****************************************
  ///获取设备信息
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getDeviceInfo({Function(DeviceModel p1)? callBack, Function(String p1)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("获取设备信息");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.device;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, null,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          if(e != null){
            DeviceModel deviceModel =  e as DeviceModel;
            await CreekProcedure.insertDeviceInfo(deviceModel: deviceModel);
            if (callBack != null) {
              callBack(deviceModel);
            }
          }else{
            if (callBack != null) {
              callBack(DeviceModel());
            }
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
    ///需要监听返回值
    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) async{
    //     if (head.codeType == CodeType.code0) {
    //       DeviceModel deviceModel = e as DeviceModel;
    //       await CreekProcedure.insertDeviceInfo(deviceModel: deviceModel);
    //       if (callBack != null) {
    //         callBack(deviceModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///获取设备信息
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getNewDeviceInfo({Function(protocol_device_info)? callBack, Function(String p1)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("获取设备信息");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.device;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, null,seedCmd: seedCmd);
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if(e is List<int>){
        List<int> head = e.sublist(0,11);
        HeadModel? headModel =  HeadModel().uint8ListToModel(head);
        ///buf数据
        List<int> buf = e.sublist(11,e.length-2);
        protocol_device_info amodel = protocol_device_info.fromBuffer(buf);
        if (headModel!.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack(amodel);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(headModel.codeType));
          }
        }
      }
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);

  }

  ///*****************************************
  ///获取mtu大小
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getMtuSize({Function(protocol_connect_status_inquire_reply)? callBack, Function(String p1)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("获取mtu大小");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.mtu;
    protocol_connect_status_operate operate = protocol_connect_status_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_connect_status_inquire_reply reply = e as protocol_connect_status_inquire_reply;
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

  //   CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
  //     ///解析数据
  //     if (rawData != null) {
  //       rawData(BlueTool.list10Tolist16(e).toString());
  //     }
  //     parsingData(e, callBack: (head, e) {
  //       if (head.codeType == CodeType.code0) {
  //         protocol_connect_status_inquire_reply reply = e as protocol_connect_status_inquire_reply;
  //         if (callBack != null) {
  //           callBack(reply);
  //         }
  //       } else {
  //         if (errCallBack != null) {
  //           errCallBack(CreeKError.error(head.codeType));
  //         }
  //       }
  //     });
  //   }, errorCallBack: () {
  //     ///超时
  //     if (errCallBack != null) {
  //       errCallBack("超时");
  //     }
  //   });
  //   request.requestDevice(listData);
  }

  ///*****************************************
  ///设置蓝牙状态
  ///reconnectOperate 重连操作
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void setMtuSize(bool reconnectOperate ,{Function()? callBack, Function(String p1)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("设置蓝牙状态");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.mtu;
    protocol_connect_status_operate operate = protocol_connect_status_operate();
    operate.operate = operate_type.SET;
    operate.reconnectOperate = reconnectOperate;
    CreekTransport request = CreekTransport();
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
    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///时间获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getTime({Function(TimeModel)? callBack, Function(String)? errCallBack}) async {
    CreekLog.info("获取时间");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.time;
    protocol_device_time_operate data = protocol_device_time_operate();
    data.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, data);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          TimeModel deviceModel = e as TimeModel;
          if (callBack != null) {
            callBack(deviceModel);
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
  ///时间获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getNewTime({Function(protocol_device_time_inquire_reply)? callBack, Function(String)? errCallBack}) async {
    CreekLog.info("获取时间");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.time;
    protocol_device_time_operate data = protocol_device_time_operate();
    data.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, data);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if(e is List<int>){
        List<int> head = e.sublist(0,11);
        HeadModel? headModel =  HeadModel().uint8ListToModel(head);
        ///buf数据
        List<int> buf = e.sublist(11,e.length-2);
        protocol_device_time_inquire_reply amodel = protocol_device_time_inquire_reply.fromBuffer(buf);
        if (headModel!.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack(amodel);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(headModel.codeType));
          }
        }
      }
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///时间设置
  @override
  void setTime({Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("时间设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.time;
    protocol_device_time_operate data = protocol_device_time_operate();
    data.operate = operate_type.SET;
    protocol_time timedata = protocol_time();
    DateTime dateTime = DateTime.now();
    timedata.year = dateTime.year;
    timedata.month = dateTime.month;
    timedata.day = dateTime.day;
    timedata.hour = dateTime.hour;
    timedata.minute = dateTime.minute;
    timedata.second = dateTime.second;
    timedata.week = dateTime.weekday - 1;
    timedata.utcTime = dateTime.toUtc().millisecondsSinceEpoch ~/ 1000;
    int timeZoneMinutes = dateTime.timeZoneOffset.inMinutes;
    if (timeZoneMinutes < 0) {
      timeZoneMinutes = 12 * 60 - timeZoneMinutes;
    }
    timedata.timeZone = timeZoneMinutes;
    CreekLog.info(
        "year:${timedata.year},month:${timedata.month},day:${timedata.day},hour:${timedata.hour},minute:${timedata.minute},second:${timedata.second},week:${timedata.week},utcTime:${timedata.utcTime},timeZone:$timeZoneMinutes");
    data.time = timedata;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, data,seedCmd: seedCmd);
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
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
    }, errorCallBack: () {
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    request.requestDevice(listData);
  }


  ///时间设置
  @override
  void setNewTime({required protocol_device_time_operate operate,Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("时间设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.time;
    operate.operate = operate_type.SET;
    CreekLog.info(
        "year:${operate.time.year},month:${operate.time.month},day:${operate.time.day},hour:${operate.time.hour},minute:${operate.time.minute},second:${operate.time.second},week:${operate.time.week},utcTime:${operate.time.utcTime},timeZone:${operate.time.timeZone}");

    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
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
    }, errorCallBack: () {
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    request.requestDevice(listData);
  }

  ///*****************************************
  ///查询支持语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getLanguage({Function(LanguageModel)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("查询支持语言");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.language;
    LanguageModel languageModel = LanguageModel();
    languageModel.type = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, languageModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          LanguageModel languageModel = e as LanguageModel;
          if (callBack != null) {
            callBack(languageModel);
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
    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       LanguageModel languageModel = e as LanguageModel;
    //       if (callBack != null) {
    //         callBack(languageModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设置语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setLanguage(LanguageType languageType, {Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("设置语言");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.language;
    LanguageModel languageModel = LanguageModel();
    languageModel.type = OperationType.set;
    languageModel.languageType = languageType;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, languageModel.fromModel(),seedCmd: seedCmd);
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///查询支持语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getNewLanguage({Function(protocol_language_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("查询支持语言");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.language;
    LanguageModel languageModel = LanguageModel();
    languageModel.type = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, languageModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      if(e is List<int>){
        List<int> head = e.sublist(0,11);
        HeadModel? headModel =  HeadModel().uint8ListToModel(head);
        ///buf数据
        List<int> buf = e.sublist(11,e.length-2);
        protocol_language_inquire_reply amodel = protocol_language_inquire_reply.fromBuffer(buf);
        if (headModel!.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack(amodel);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(headModel.codeType));
          }
        }
      }
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);
  }

  ///*****************************************
  ///设置语言
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setNewLanguage(protocol_language_operate operate, {Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("设置语言");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.language;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///绑定设备
  ///authCode 授权码
  ///bindMethod  0 授权绑定 1直接绑定 2解除绑定 3配对码绑定
  ///pairCode 配对码
  ///callBack 授权码
  @override
  void bindingDevice({int bindMethod = 1, String macAddress = "",List<int>? pairCode, Function()? callBack, Function()? errorCallBack,Function()? authorizationFailure,Function(List<int>)? pairCodeCallBack}) async {
    HeadModel model = HeadModel();
    model.cmdId = CmdId.binding;
    protocol_bind_operate data = protocol_bind_operate();
    data.bindMethod = bindMethod == 0 ? bind_method.BIND_ENCRYPTED : bindMethod == 1 ? bind_method.BIND_NORMAL : bindMethod == 2 ? bind_method.BIND_REMOVE : bind_method.BIND_PAIRING_CODE;
    if (io.Platform.isAndroid) {
      data.bindPhone = bind_phone_type.ANDROID;
    }else{
      data.bindPhone = bind_phone_type.IOS;
    }
    data.bindFlag = bind_flag.BIND_FLAG_REQUEST;
    if (bindMethod == 2) {
      CreekLog.info("解除绑定");
      if ((CreekDeviceManger.instance.bluetoothDeviceState != BluetoothDeviceState.connected) || (CreekDeviceManger.instance.bluetoothDeviceState == BluetoothDeviceState.connected && macAddress != CreekDeviceManger.instance.bluetoothDevice?.id.id) ) {
        CreekLog.info("离线解除绑定");
        try {
          // await CreekDeviceManger.instance.bluetoothDevice?.dissPar();
          await interfaceProtocol.delBindDevice(address: macAddress);
          CreekDeviceManger.instance?.updateBindDeviceName();
          if (callBack != null) {
            callBack();
          }
        } catch (e) {
          if (errorCallBack != null) {
            errorCallBack();
          }
        }

        return;
      }
    } else {
      CreekLog.info("绑定设备");
    }

    // if (authCode != null) {
    //   CreekLog.info("aes加密${BlueTool.list10Tolist16(BlueTool.encryptAes(authCode))}");
    //   data.competentData = BlueTool.encryptAes(authCode);
    // }
    if(pairCode != null){

      var a = await CreekSharedPref.get("pairingCode");
      CreekLog.info("输入的配对码${BlueTool.list10Tolist16(pairCode!)}");
      CreekLog.info("固件返回的配对码$a");
      if(jsonEncode(pairCode) == a){
        data.bindFlag = bind_flag.BIND_FLAG_SUCCESS;
      }else{
        if(authorizationFailure != null){
          authorizationFailure!();
        }
        return;
      }
    }
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, data);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      parsingData(e, callBack: (head, e) async {
        if (head.codeType == CodeType.code0) {
          if (e != null) {
            protocol_bind_reply amodel = e as protocol_bind_reply;
            if (bindMethod == 0) {
              CreekLog.info("${amodel.pairingCode}");
              CreekLog.info("${amodel.competentData}");
              var a = await CreekSharedPref.get(CreekDeviceManger.instance.bluetoothDevice?.id.id ?? "");
              CreekLog.info("本地存的授权码：$a");
              if(jsonEncode(amodel.competentData) == a){
                CreekLog.info("授权码匹配成功");
                if (callBack != null) {
                  callBack();
                }
              }else{
                CreekLog.info("授权码匹配失败");
                if (authorizationFailure != null) {
                  authorizationFailure();
                }
              }
              //   try {
              //     print(amodel.competentData);
              //     CreekLog.info("授权码=${BlueTool.list10Tolist16(amodel.competentData)}");
              //     bindingDevice(bindMethod: bindMethod, authCode: amodel.competentData, callBack: callBack);
              //   } catch (e) {
              //     CreekLog.info(e.toString());
              //   }
              // } else {
              //   CreekLog.info("授权码为空");
              //   if (errorCallBack != null) {
              //     errorCallBack();
              //   }
              // }
            }else if(pairCode == null && bindMethod == 3){
              if(amodel.pairingCode.isNotEmpty) {
                CreekLog.info("固件返回配对码：${amodel.pairingCode}");
                CreekLog.info("固件返回授权码：${amodel.competentData}");
                await CreekSharedPref.save( jsonEncode(amodel.competentData) , CreekDeviceManger.instance.bluetoothDevice?.id.id ?? "");
                await CreekSharedPref.save( jsonEncode(amodel.pairingCode) , "pairingCode");
                if(pairCodeCallBack != null){
                  pairCodeCallBack!(amodel.pairingCode);
                }
                // Future.delayed(const Duration(seconds: 2),(){
                //   bindingDevice(bindMethod: bindMethod, pairCode: amodel.pairingCode, callBack: callBack);
                // });

              }else {
                if (amodel.bindFlag == bind_flag.BIND_FLAG_SUCCESS) {
                  if (CreekDeviceManger.instance?._pairType == PairType.pair) {
                    if (io.Platform.isAndroid) {
                      CreekLog.info("创建bt配对");
                      CreekDeviceManger.instance.bluetoothDevice?.createSocket();
                    }
                  }
                  BlueTool().saveBluetoothDevice();
                  getDeviceInfo(callBack: (e) {
                    getWatchDial(callBack: (e) {});
                  });
                  CreekLog.info("成功${amodel.bindFlag}");
                  if (callBack != null) {
                    callBack();
                  }
                }else{
                  CreekLog.info("配对码为空");
                  if (errorCallBack != null) {
                    errorCallBack();
                  }
                }
              }
            } else {
              if (amodel.bindFlag == bind_flag.BIND_FLAG_SUCCESS) {
                if (bindMethod == 2) {
                  CreekLog.info("解绑成功");
                  await interfaceProtocol.delBindDevice(address: CreekDeviceManger.instance!.bluetoothDevice!.id.id);
                  if(io.Platform.isAndroid){
                    await CreekDeviceManger.instance.bluetoothDevice?.dissPar();
                  }else{
                    CreekDeviceManger.instance.bluetoothDevice?.disconnect();
                  }
                  CreekDeviceManger.instance?.updateBindDeviceName();
                  if (callBack != null) {
                    callBack();
                  }
                }else{
                  if( CreekDeviceManger.instance?._pairType == PairType.pair){
                    if(io.Platform.isAndroid){
                      CreekLog.info("创建bt配对");
                      CreekDeviceManger.instance.bluetoothDevice?.createSocket();
                    }
                  }
                  if(amodel.competentData.isNotEmpty) {
                    CreekLog.info("固件返回授权码：${amodel.competentData}");
                    await CreekSharedPref.save( jsonEncode(amodel.competentData) , CreekDeviceManger.instance.bluetoothDevice?.id.id ?? "");
                  }
                  BlueTool().saveBluetoothDevice();
                  getDeviceInfo(callBack: (e) {
                    getWatchDial(callBack: (e) {});
                  });
                  CreekLog.info("成功${amodel.bindFlag}");
                  if (callBack != null) {
                    callBack();
                  }
                }
              } else {
                CreekLog.info("失败${amodel.bindFlag}");
                if (errorCallBack != null) {
                  errorCallBack();
                }
              }
            }
          }
        } else {
          if (errorCallBack != null) {
            errorCallBack();
          }
        }
      });
    }, errorCallBack: () async{
      // if (bindMethod == 2) {
      //   CreekLog.info("解绑成功");
      //   await interfaceProtocol.delBindDevice(address: CreekDeviceManger.instance!.bluetoothDevice!.id.id);
      //   if(io.Platform.isAndroid){
      //     await CreekDeviceManger.instance.bluetoothDevice?.dissPar();
      //   }else{
      //      CreekDeviceManger.instance.bluetoothDevice?.disconnect();
      //   }
      //   CreekDeviceManger.instance?.updateBindDeviceName();
      //   if (callBack != null) {
      //     callBack();
      //   }
      // }else{
      //
      // }
      if (errorCallBack != null) {
        errorCallBack();
      }
    });
    request.requestDevice(listData);
    // }
  }

  ///*****************************************
  ///设置用户信息和偏好设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setUserInfo(UserInfoModel userInfoModel, UserUnitModel userUnitModel, UserGoalModel userGoalModel,
      {Function()? callBack, Function(String)? errCallBack,Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("设置用户信息和偏好设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.user;
    UserModel userModel = UserModel();
    userModel.userType = OperationType.set;
    UserInfoModel infoModel = userInfoModel;
    infoModel.height ??= 175;
    infoModel.weight ??= 7500;
    infoModel.year ??= 2000;
    infoModel.month ??= 1;
    infoModel.day ??= 1;
    infoModel.genderType ??= GenderType.other;
    userModel.userInfoModel = infoModel;
    userModel.userUnitModel = userUnitModel;
    userModel.userGoalModel = userGoalModel;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);

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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///查询用户信息和偏好设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getUserInfo({Function(UserModel)? callBack, Function(String)? errCallBack,Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("查询用户信息和偏好设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.user;
    UserModel userModel = UserModel();
    userModel.userType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);

    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据

      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          UserModel userModel = e as UserModel;
          if (rawData != null) {
            rawData(e.toString());
          }
          if (callBack != null) {
            callBack(userModel);
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
        print("1111111111111111111");
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       UserModel userModel = e as UserModel;
    //       if (callBack != null) {
    //         callBack(userModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///本地闹钟获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getAlarm({Function(AlarmReplyModel)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("闹钟获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alarm;
    AlarmOperateModel userModel = AlarmOperateModel();
    userModel.operationType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          AlarmReplyModel operateModel = e as AlarmReplyModel;
          if (callBack != null) {
            callBack(operateModel);
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       AlarmReplyModel operateModel = e as AlarmReplyModel;
    //       if (callBack != null) {
    //         callBack(operateModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设置闹钟
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///list 闹钟数组
  ///*****************************************
  @override
  void setAlarm(List<AlarmItemModel> list, {Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("设置闹钟");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alarm;
    AlarmOperateModel alarmOperateModel = AlarmOperateModel();
    alarmOperateModel.operationType = OperationType.set;
    alarmOperateModel.list = list;
    alarmOperateModel.num = list.length;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, alarmOperateModel.fromModel(),seedCmd: seedCmd);

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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }



  ///*****************************************
  ///本地闹钟获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getNewAlarm({Function(protocol_alarm_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("闹钟获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alarm;
    AlarmOperateModel userModel = AlarmOperateModel();
    userModel.operationType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
        if(e is List<int>){
          List<int> head = e.sublist(0,11);
          HeadModel? headModel =  HeadModel().uint8ListToModel(head);
          ///buf数据
          List<int> buf = e.sublist(11,e.length-2);
          protocol_alarm_inquire_reply amodel = protocol_alarm_inquire_reply.fromBuffer(buf);
          if (headModel!.codeType == CodeType.code0) {
            if (callBack != null) {
              callBack(amodel);
            }
          } else {
            if (errCallBack != null) {
              errCallBack(CreeKError.error(headModel.codeType));
            }
          }
        }

    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);

  }

  ///*****************************************
  ///设置闹钟
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///list 闹钟数组
  ///*****************************************
  @override
  void setNewAlarm(List<protocol_set_alarm_item> list, {Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("设置闹钟");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.alarm;
    protocol_alarm_operate reply  = protocol_alarm_operate();
    reply.operate = operate_type.SET;
    reply.num = list.length;
    reply.alarmItem.addAll(list);
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, reply,seedCmd: seedCmd);

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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///勿扰获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getDisturb({Function(DisturbReplyModel)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("勿扰获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.disturb;
    DisturbOperateModel userModel = DisturbOperateModel();
    userModel.operationType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          DisturbReplyModel disturbReplyModel = e as DisturbReplyModel;
          if (callBack != null) {
            callBack(disturbReplyModel);
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       DisturbReplyModel disturbReplyModel = e as DisturbReplyModel;
    //       if (callBack != null) {
    //         callBack(disturbReplyModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设置勿扰
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///disturbNum 勿扰数量
  ///disturbOnOff 勿扰开关 true 开启,false 关闭
  ///items 子项数据
  ///*****************************************
  @override
  void setDisturb(
      {int disturbNum = 1,
      bool disturbOnOff = false,
      required List<DisturbItem> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    CreekLog.info("设置勿扰");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.disturb;
    DisturbOperateModel disturbOperateModel = DisturbOperateModel();
    disturbOperateModel.operationType = OperationType.set;
    disturbOperateModel.disturbOnOff = disturbOnOff;
    disturbOperateModel.num = disturbNum;
    disturbOperateModel.items = items;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, disturbOperateModel.fromModel(),seedCmd: seedCmd);
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///勿扰获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getNewDisturb({Function(protocol_disturb_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("勿扰获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.disturb;
    DisturbOperateModel userModel = DisturbOperateModel();
    userModel.operationType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if(e is List<int>){
        List<int> head = e.sublist(0,11);
        HeadModel? headModel =  HeadModel().uint8ListToModel(head);
        ///buf数据
        List<int> buf = e.sublist(11,e.length-2);
        protocol_disturb_inquire_reply amodel = protocol_disturb_inquire_reply.fromBuffer(buf);
        if (headModel!.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack(amodel);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(headModel.codeType));
          }
        }
      }
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);

  }

  ///*****************************************
  ///设置勿扰
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///disturbNum 勿扰数量
  ///disturbOnOff 勿扰开关 true 开启,false 关闭
  ///items 子项数据
  ///*****************************************
  @override
  void setNewDisturb(
      {required protocol_disturb_operate disturb,
        Function()? callBack,
        Function(String)? errCallBack,
        Function(String)? seedCmd,
        Function(String)? rawData}) {
    CreekLog.info("设置勿扰");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.disturb;
    disturb.operate = operate_type.SET;
    disturb.num = disturb.disturbItem.length;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, disturb,seedCmd: seedCmd);
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
  ///屏幕亮度获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getScreen({Function(ScreenReplyModel)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("屏幕亮度获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.screen;
    ScreenOperateModel userModel = ScreenOperateModel();
    userModel.operationType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          ScreenReplyModel screenReplyModel = e as ScreenReplyModel;
          if (callBack != null) {
            callBack(screenReplyModel);
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       ScreenReplyModel screenReplyModel = e as ScreenReplyModel;
    //       if (callBack != null) {
    //         callBack(screenReplyModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///屏幕亮度设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///level等级(0-100)
  ///switchFlag 息屏显示开关 true 开启,false 关闭
  ///wristSwitchFlag 抬腕时亮屏开关 true 开启,false 关闭
  ///errCallBack 失败返回信息
  ///screenAutoModel 间自动亮度调整子项数据
  ///*****************************************
  @override
  void setScreen(
      {required int level,
      required int showInterval,
      required ScreenAutoModel screenAutoModel,
      bool switchFlag = false,
      bool wristSwitchFlag = false,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    CreekLog.info("屏幕亮度设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.screen;
    ScreenOperateModel screenOperateModel = ScreenOperateModel();
    screenOperateModel.operationType = OperationType.set;
    screenOperateModel.level = level;
    screenOperateModel.showInterval = showInterval;
    screenOperateModel.autoModel = screenAutoModel;
    screenOperateModel.switchFlag = switchFlag;
    screenOperateModel.wristSwitchFlag = wristSwitchFlag;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, screenOperateModel.fromModel(),seedCmd: seedCmd);
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }


  ///*****************************************
  ///屏幕亮度获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getNewScreen({Function(protocol_screen_brightness_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("屏幕亮度获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.screen;
    ScreenOperateModel userModel = ScreenOperateModel();
    userModel.operationType = OperationType.inquire;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, userModel.fromModel(),seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      if(e is List<int>){
        List<int> head = e.sublist(0,11);
        HeadModel? headModel =  HeadModel().uint8ListToModel(head);
        ///buf数据
        List<int> buf = e.sublist(11,e.length-2);
        protocol_screen_brightness_inquire_reply amodel = protocol_screen_brightness_inquire_reply.fromBuffer(buf);
        if (headModel!.codeType == CodeType.code0) {
          if (callBack != null) {
            callBack(amodel);
          }
        } else {
          if (errCallBack != null) {
            errCallBack(CreeKError.error(headModel.codeType));
          }
        }
      }
    },errorCallBack: (){
      ///超时
      if (errCallBack != null) {
        errCallBack("超时");
      }
    });
    creekRetry.requestDevice(listData);

  }

  ///*****************************************
  ///屏幕亮度设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///level等级(0-100)
  ///switchFlag 息屏显示开关 true 开启,false 关闭
  ///wristSwitchFlag 抬腕时亮屏开关 true 开启,false 关闭
  ///errCallBack 失败返回信息
  ///screenAutoModel 间自动亮度调整子项数据
  ///*****************************************
  @override
  void setNewScreen(
      {required protocol_screen_brightness_operate screenOperate,
        Function()? callBack,
        Function(String)? errCallBack,
        Function(String)? seedCmd,
        Function(String)? rawData}) {
    CreekLog.info("屏幕亮度设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.screen;
    screenOperate.operate = operate_type.SET;

    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, screenOperate,seedCmd: seedCmd);
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
  ///专注模式获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getFocus({Function(protocol_focus_mode_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("专注模式获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.focus;
    protocol_focus_mode_operate operate = protocol_focus_mode_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_focus_mode_inquire_reply reply = e as protocol_focus_mode_inquire_reply;
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
  ///专注模式设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setFocus(
      {required protocol_focus_mode_operate operate,
        Function()? callBack,
        Function(String)? errCallBack,
        Function(String)? seedCmd,
        Function(String)? rawData}) {
    CreekLog.info("专注模式设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.focus;
    operate.operate = operate_type.SET;

    CreekTransport request = CreekTransport();
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
  ///健康监测获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getMonitor(
      {health_type healthType = health_type.HEART_RATE,
      health_monitor_mode mode = health_monitor_mode.AUTO,
      Function(protocol_health_monitor_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    CreekLog.info("健康监测获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.monitor;
    protocol_health_monitor_operate operate = protocol_health_monitor_operate();
    operate.operate = operate_type.INQUIRE;
    operate.healthType = healthType;
    operate.defaultMode = mode;
    CreekTransport request = CreekTransport();
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
          protocol_health_monitor_inquire_reply reply = e as protocol_health_monitor_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_health_monitor_inquire_reply reply = e as protocol_health_monitor_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });

    // request.requestDevice(listData);
  }


  ///*****************************************
  ///健康监测设置
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///monitorOperateModel 数据
  @override
  void setMonitor(
      {health_type healthType = health_type.HEART_RATE,
      health_monitor_mode mode = health_monitor_mode.AUTO,
      int interval = 2,
      required protocol_health_monitor_auto_adjust adjust,
      required protocol_heart_monitor_notify notify,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    CreekLog.info("健康监测设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.monitor;
    CreekTransport request = CreekTransport();
    protocol_health_monitor_operate operate = protocol_health_monitor_operate();
    operate.healthType = healthType;
    operate.operate = operate_type.SET;
    operate.defaultMode = mode;
    operate.measurementInterval = 5;
    operate.modeAutoAdjust = adjust;
    operate.notifySetting = notify;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    //
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///睡眠监测获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getSleepMonitor(
      {Function(protocol_sleep_monitor_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("睡眠监测获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sleepMonitor;
    protocol_sleep_monitor_operate operate = protocol_sleep_monitor_operate();
    operate.operate = operate_type.INQUIRE;

    CreekTransport request = CreekTransport();
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
          protocol_sleep_monitor_inquire_reply reply = e as protocol_sleep_monitor_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_sleep_monitor_inquire_reply reply = e as protocol_sleep_monitor_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///睡眠监测设置
  ///sleepMonitorType 健康监测类型
  ///switchFlag  开关 true 开启,false 关闭
  /// GENERAL = 0;//普通睡眠
  /// SCIENCE = 1;//科学睡眠
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setSleepMonitor(
      {sleep_monitor_type sleepMonitorType = sleep_monitor_type.GENERAL,
      bool switchFlag = false,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    CreekLog.info("睡眠监测获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sleepMonitor;
    protocol_sleep_monitor_operate operate = protocol_sleep_monitor_operate();
    operate.operate = operate_type.SET;
    operate.sleepMode = sleepMonitorType;
    operate.switchFlag = switchFlag;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///喝水提醒获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getWater({Function(protocol_drink_water_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("喝水提醒获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.waterMonitor;
    protocol_drink_water_operate operate = protocol_drink_water_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_drink_water_inquire_reply reply = e as protocol_drink_water_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_drink_water_inquire_reply reply = e as protocol_drink_water_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///喝水提醒设置
  ///switchFlag 喝水提醒开关 true 开启,false 关闭
  /// notifyFlag 通知类型
  /// startHour  startMinute 提醒开始时间
  /// endHour  endMinute 提醒开始时间
  /// interval 提醒间隔,单位分钟
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setWater(
      {required bool switchFlag,
      required notify_type notifyFlag,
      int startHour = 0,
      int startMinute = 0,
      int endHour = 0,
      int endMinute = 0,
      int interval = 10,
      required List<bool> repeat,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("喝水提醒设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.waterMonitor;
    protocol_drink_water_operate operate = protocol_drink_water_operate();
    operate.operate = operate_type.SET;
    operate.switchFlag = switchFlag;
    operate.notifyFlag = notifyFlag;
    operate.startHour = startHour;
    operate.startMinute = startMinute;
    operate.endHour = endHour;
    operate.endMinute = endMinute;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///寻找手机/手表获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getFindPhoneWatch(
      {Function(protocol_find_phone_watch_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("寻找手机/手表获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.findPhone;
    protocol_find_phone_watch_operate operate = protocol_find_phone_watch_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_find_phone_watch_inquire_reply reply = e as protocol_find_phone_watch_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_find_phone_watch_inquire_reply reply = e as protocol_find_phone_watch_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///寻找手机/手表设置
  ///find_watch_flag
  /// watchSwitch 寻找手表开关 true 开启,false 关闭
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setFindPhoneWatch(
      {required bool findWatchFlag,
        required bool watchSwitch,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("寻找手机/手表设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.findPhone;
    protocol_find_phone_watch_operate operate = protocol_find_phone_watch_operate();
    operate.findWatchSwitch = watchSwitch;
    operate.findWatchFlag = findWatchFlag;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///语音助手获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getVoice({Function(protocol_voice_assistant_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("语音助手获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.voice;
    protocol_voice_assistant_operate operate = protocol_voice_assistant_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_voice_assistant_inquire_reply reply = e as protocol_voice_assistant_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_voice_assistant_inquire_reply reply = e as protocol_voice_assistant_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///语音助手设置
  ///awakenSwitchFlag 按住表冠对话开关
  ///wristSwitchFlag 抬腕呼叫语音助手开关
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setVoice({required bool awakenSwitchFlag, required bool wristSwitchFlag,Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("语音助手设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.voice;
    protocol_voice_assistant_operate operate = protocol_voice_assistant_operate();
    operate.buttonAwakenSwitchFlag = awakenSwitchFlag;
    operate.raisingYourWristSwitchFlag = wristSwitchFlag;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///世界时钟获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getWorldTime(
      {Function(protocol_world_time_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("世界时钟获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.worldTime;
    protocol_world_time_operate operate = protocol_world_time_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_world_time_inquire_reply reply = e as protocol_world_time_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_world_time_inquire_reply reply = e as protocol_world_time_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///世界时钟设置
  ///items 世界时间
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setWorldTime(
      {required List<protocol_world_time_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("世界时钟设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.worldTime;
    protocol_world_time_operate operate = protocol_world_time_operate();
    operate.worldTimeItem.addAll(items);
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///站立提醒获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getStanding(
      {Function(protocol_standing_remind_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("站立提醒获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.standing;
    protocol_standing_remind_operate operate = protocol_standing_remind_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_standing_remind_inquire_reply reply = e as protocol_standing_remind_inquire_reply;
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
    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_standing_remind_inquire_reply reply = e as protocol_standing_remind_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);

  }

  ///*****************************************
  ///站立提醒设置
  ///standingRemind 设置参数
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setStanding(
      {required protocol_standing_remind_set standingRemind,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("站立提醒设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.standing;
    protocol_standing_remind_operate operate = protocol_standing_remind_operate();
    operate.standingRemind = standingRemind;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///女性健康获取
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getMenstrual(
      {Function(protocol_menstruation_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("女性健康获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.menstrual;
    protocol_menstruation_operate operate = protocol_menstruation_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_menstruation_inquire_reply reply = e as protocol_menstruation_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_menstruation_inquire_reply reply = e as protocol_menstruation_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///女性健康设置
  ///periodSet 经期设置
  ///notify 经期提醒
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setMenstrual(
      {required protocol_menstrual_period_set periodSet,
        required List<protocol_menstrual_record> records,
        required int utcTime,
        Function()? callBack,
        Function(String)? errCallBack,
        Function(String)? seedCmd,
        Function(String)? rawData}) async {
    CreekLog.info("女性健康设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.menstrual;
    protocol_menstruation_operate operate = protocol_menstruation_operate();
    operate.periodSet = periodSet;
    operate.setUtcTime = utcTime;
    operate.record.addAll(records);
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///获取设备支持的消息类型
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getMessageType(
      {Function(protocol_message_notify_func_support_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("获取设备支持的消息类型");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.messageType;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, null,seedCmd: seedCmd);
    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          protocol_message_notify_func_support_reply reply = e as protocol_message_notify_func_support_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_message_notify_func_support_reply reply = e as protocol_message_notify_func_support_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///app消息提醒查询
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getMessageApp(
      {Function(protocol_message_notify_data_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("app消息提醒查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.messageApp;
    protocol_message_notify_data operate = protocol_message_notify_data();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, operate,seedCmd: seedCmd);
    List<String> str = [];
    for (var element in listData) {
      str.add(BlueTool.list10Tolist16(element).toString());
    }
    CreekLog.info(str.toString());
    if (seedCmd != null) {
      seedCmd(str.toString());
    }

    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          protocol_message_notify_data_inquire_reply reply = e as protocol_message_notify_data_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_message_notify_data_inquire_reply reply = e as protocol_message_notify_data_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///app消息提醒设置
  ///operate
  ///notify 经期提醒
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setMessageApp(
      {required protocol_message_notify_data operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("app消息提醒设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.messageApp;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///消息开关查询
  ///callBack 成功返回设备信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getMessageOnOff(
      {Function(protocol_message_notify_switch_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    CreekLog.info("消息开关查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.messageOnOff;
    protocol_message_notify_switch operate = protocol_message_notify_switch();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_message_notify_switch_inquire_reply reply = e as protocol_message_notify_switch_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_message_notify_switch_inquire_reply reply = e as protocol_message_notify_switch_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    request.requestDevice(listData);
  }

  ///*****************************************
  ///消息开关设置
  ///totalSwitch 消息应用总开关
  ///notifySwitch app消息通知开关
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setMessageOnOff(
      {bool notifySwitch = false,
        bool directSwitch = false,
      required List<protocol_message_notify_switch_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("消息开关设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.messageOnOff;
    protocol_message_notify_switch operate = protocol_message_notify_switch();
    operate.operate = operate_type.SET;
    operate.notifySwitch = notifySwitch;
    operate.accessDetailsDirectSwitch = directSwitch;
    operate.items.addAll(items);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///音乐控制
  ///totalSwitch 消息应用总开关
  ///notifySwitch app消息通知开关
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setMusic(
      {required protocol_music_control_operate operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("音乐控制");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.music;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设置天气
  ///callBack 成功返回
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setWeather(
      {required List<protocol_weather_detail_data_item> items,
      bool switchFlag = false,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("设置天气");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.weather;
    protocol_weather_operate operate = protocol_weather_operate();
    operate.operate = operate_type.SET;
    operate.switchFlag = switchFlag;
    operate.detailDataItem.addAll(items);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///来电配置查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getCall({Function(protocol_call_switch_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("来电配置查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.call;
    protocol_call_switch operate = protocol_call_switch();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_call_switch_inquire_reply reply = e as protocol_call_switch_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_call_switch_inquire_reply reply = e as protocol_call_switch_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///来电配置设置
  ///callSwitch 来电开关 true 开启 false 关闭
  ///callDelay 来电延时 单位秒
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setCall(
      {required bool callSwitch,
      required int callDelay,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("来电配置设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.call;
    protocol_call_switch operate = protocol_call_switch();
    operate.operate = operate_type.SET;
    operate.callSwitch = callSwitch;
    operate.callDelay = callDelay;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///来电提醒设置
  ///operate
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setCallReminder(
      {required protocol_call_remind operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("来电提醒设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.callReminder;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }
  ///*****************************************
  ///来电状态
  ///state 0 来电已接 1 来电已拒
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setCallState({int state = 0, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("来电状态");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.callState;
    protocol_call_remind_status operate = protocol_call_remind_status();
    operate.status = state == 0 ? call_status.RECEIVED_CALL : call_status.REJECT_CALL;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///常用联系人 查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getContacts(
      {Function(protocol_frequent_contacts_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("常用联系人查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.contacts;
    protocol_frequent_contacts_operate operate = protocol_frequent_contacts_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_frequent_contacts_inquire_reply reply = e as protocol_frequent_contacts_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_frequent_contacts_inquire_reply reply = e as protocol_frequent_contacts_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///联系人设置
  ///items 常用联系人信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setContacts(
      {required List<protocol_frequent_contacts_item> items,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("常用联系人设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.contacts;
    protocol_frequent_contacts_operate operate = protocol_frequent_contacts_operate();
    operate.operate = operate_type.SET;
    operate.contactsItem.addAll(items);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///紧急联系人 查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getContactsSOS(
      {Function(protocol_emergency_contacts_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("紧急联系人查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.contactsSOS;
    protocol_emergency_contacts_operate operate = protocol_emergency_contacts_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_emergency_contacts_inquire_reply reply = e as protocol_emergency_contacts_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_frequent_contacts_inquire_reply reply = e as protocol_frequent_contacts_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///紧急联系人设置
  ///items 紧急联系人信息
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setContactsSOS(
      {required List<protocol_emergency_contacts_item> items,
        Function()? callBack,
        Function(String)? errCallBack,
        Function(String)? seedCmd,
        Function(String)? rawData}) async {
    CreekLog.info("紧急联系人设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.contactsSOS;
    protocol_emergency_contacts_operate operate = protocol_emergency_contacts_operate();
    operate.operate = operate_type.SET;
    operate.contactsItem.addAll(items);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///快捷卡片查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getCard({Function(protocol_quick_card_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("快捷卡片查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.card;
    protocol_quick_card_operate operate = protocol_quick_card_operate();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_quick_card_inquire_reply reply = e as protocol_quick_card_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_quick_card_inquire_reply reply = e as protocol_quick_card_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///快捷卡片设置
  ///type 卡片类型
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setCard(
      {required List<quick_card_type> types, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("快捷卡片设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.card;
    protocol_quick_card_operate operate = protocol_quick_card_operate();
    operate.operate = operate_type.SET;
    operate.cardType.addAll(types);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }
  ///*****************************************
  ///获取设备支持运动类型
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getSportType(
      {Function(protocol_exercise_func_support_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("获取设备支持运动类型");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportType;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, null,seedCmd: seedCmd);

    ///需要监听返回值
    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag, (e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) {
        if (head.codeType == CodeType.code0) {
          protocol_exercise_func_support_reply reply = e as protocol_exercise_func_support_reply;

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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_exercise_sporting_param_sort_inquire_reply reply = e as protocol_exercise_sporting_param_sort_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设备运动排列顺序查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getSportSort(
      {Function(protocol_exercise_sport_mode_sort_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("设备运动排列顺序查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportSort;
    protocol_exercise_sport_mode_sort operate = protocol_exercise_sport_mode_sort();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_exercise_sport_mode_sort_inquire_reply reply = e as protocol_exercise_sport_mode_sort_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_exercise_sport_mode_sort_inquire_reply reply = e as protocol_exercise_sport_mode_sort_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设备运动排列顺序设置
  ///sportTypes 运动类型
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setSportSort(
      {required List<sport_type> sportTypes, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("快捷卡片设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportSort;
    protocol_exercise_sport_mode_sort operate = protocol_exercise_sport_mode_sort();
    operate.operate = operate_type.SET;
    operate.itemsLen = sportTypes.length;
    operate.sportItems.addAll(sportTypes);
    CreekTransport request = CreekTransport();
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
    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///运动中子项数据查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getSportSub(
      {Function(protocol_exercise_sporting_param_sort_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("运动中子项数据查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportSub;
    protocol_exercise_sporting_param_sort operate = protocol_exercise_sporting_param_sort();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_exercise_sporting_param_sort_inquire_reply reply = e as protocol_exercise_sporting_param_sort_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_exercise_sporting_param_sort_inquire_reply reply = e as protocol_exercise_sporting_param_sort_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///运动中子项数据设置
  ///sportTypes 运动类型
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setSportSub(
      {required List<int> items,
      required sport_type sportType,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("运动中子项数据设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportSub;
    protocol_exercise_sporting_param_sort operate = protocol_exercise_sporting_param_sort();
    operate.operate = operate_type.SET;
    operate.sportType = sportType.value;
    operate.itemsLen = items.length;
    operate.items.addAll(items);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///运动自识别查询
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getSportIdentification(
      {Function(protocol_exercise_intelligent_recognition_inquire_reply)? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("运动自识别查询");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportIdentification;
    protocol_exercise_intelligent_recognition operate = protocol_exercise_intelligent_recognition();
    operate.operate = operate_type.INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_exercise_intelligent_recognition_inquire_reply reply = e as protocol_exercise_intelligent_recognition_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_exercise_intelligent_recognition_inquire_reply reply = e as protocol_exercise_intelligent_recognition_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///运动自识别设置
  ///operate 运动自识别配置
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setSportIdentification(
      {required protocol_exercise_intelligent_recognition operate,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("运动自识别设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportIdentification;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }


  ///*****************************************
  ///心率区间设置
  ///zone1 心率区间1
  ///zone2 心率区间2
  ///zone3 心率区间3
  ///zone4 心率区间4
  ///zone5 心率区间5
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setSportHeartRate(
      {required int zone1,
        required int zone2,
        required int zone3,
        required int zone4,
        required int zone5,
        required int zone6,
        Function()? callBack,
        Function(String)? errCallBack,
        Function(String)? seedCmd,
        Function(String)? rawData}) async {
    CreekLog.info("心率区间设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sportHeartRate;
    protocol_exercise_heart_rate_zone operate = protocol_exercise_heart_rate_zone();
    operate.operate = operate_type.SET;
    operate.zone1 = zone1;
    operate.zone2 = zone2;
    operate.zone3 = zone3;
    operate.zone4 = zone4;
    operate.zone5 = zone5;
    operate.zone6 = zone6;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }





  ///*****************************************
  ///增加事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void addSchedule(
      {required protocol_schedule_item item,
      notify_type notifyFlag = notify_type.ALLOW,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("增加事项/日程提醒");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.schedule;
    protocol_schedule_operate operate = protocol_schedule_operate();
    operate.operate = operate_II_type.INSERT;
    operate.notifyFlag = notifyFlag;
    operate.itemNum = 1;
    operate.scheduleItem = item;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///删除事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void delSchedule(
      {required protocol_schedule_item item,
      notify_type notifyFlag = notify_type.ALLOW,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("删除事项/日程提醒");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.schedule;
    protocol_schedule_operate operate = protocol_schedule_operate();
    operate.operate = operate_II_type.DELETE;
    operate.notifyFlag = notifyFlag;
    operate.itemNum = 1;
    operate.scheduleItem = item;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///改事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void updateSchedule(
      {required protocol_schedule_item item,
      notify_type notifyFlag = notify_type.ALLOW,
      Function()? callBack,
      Function(String)? errCallBack,
      Function(String)? seedCmd,
      Function(String)? rawData}) async {
    CreekLog.info("删除事项/日程提醒");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.schedule;
    protocol_schedule_operate operate = protocol_schedule_operate();
    operate.operate = operate_II_type.UPDATE;
    operate.notifyFlag = notifyFlag;
    operate.itemNum = 1;
    operate.scheduleItem = item;
    CreekTransport request = CreekTransport();
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


    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///查事项/日程提醒
  ///item
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void getSchedule(
      {Function(protocol_schedule_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("查事项/日程提醒");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.schedule;
    protocol_schedule_operate operate = protocol_schedule_operate();
    operate.operate = operate_II_type.READ;
    operate.itemNum = 0;

    CreekTransport request = CreekTransport();
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
          protocol_schedule_inquire_reply reply = e as protocol_schedule_inquire_reply;
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_schedule_inquire_reply reply = e as protocol_schedule_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///查询表盘
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getWatchDial(
      {Function(protocol_watch_dial_plate_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("查询正在使用的表盘");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.watchDial;
    protocol_watch_dial_plate_operate operate = protocol_watch_dial_plate_operate();
    operate.operate = dial_operate_type.DIAL_OPERATE_TYPE_INQUIRE;
    CreekTransport request = CreekTransport();
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
          protocol_watch_dial_plate_inquire_reply reply = e as protocol_watch_dial_plate_inquire_reply;

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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       protocol_watch_dial_plate_inquire_reply reply = e as protocol_watch_dial_plate_inquire_reply;
    //       if (callBack != null) {
    //         callBack(reply);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///设置表盘
  ///dialName 表盘名称
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setWatchDial(
      {required List<String> dialNames, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("表盘设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.watchDial;
    protocol_watch_dial_plate_operate operate = protocol_watch_dial_plate_operate();
    operate.operate = dial_operate_type.DIAL_OPERATE_TYPE_SET;
    List<List<int>> a = [];
    for (var element in dialNames) {
      a.add(utf8.encode(element));
    }
    operate.dialName.addAll(a);
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///删除表盘
  ///dialName 表盘名称
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void delWatchDial(
      {required List<String> dialNames, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("表盘删除");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.watchDial;
    protocol_watch_dial_plate_operate operate = protocol_watch_dial_plate_operate();
    operate.operate = dial_operate_type.DIAL_OPERATE_TYPE_DELETE;
    List<List<int>> a = [];
    for (var element in dialNames) {
      a.add(utf8.encode(element));
    }
    operate.dialName.addAll(a);

    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///系统操作
  ///type  1 重启操作 2关机操作
  ///errCallBack 失败返回信息
  ///*****************************************
  @override
  void setSystem(
      {required int type, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}){
    HeadModel model = HeadModel();
    model.cmdId = CmdId.system;
    protocol_system_operate operate = protocol_system_operate();
    if(type == 1){
      CreekLog.info("系统操作:重启");
      operate.restart = true;
    }else if(type == 2){
      CreekLog.info("系统操作:关机");
      operate.powerOff = true;
    }
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }


  ///*****************************************
  ///功能表
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getTable({Function(protocol_function_table)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("功能表");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.table;
    CreekTransport request = CreekTransport();
    List<List<int>> listData = request.seedData(model, null,seedCmd: seedCmd);

    CreekRetry creekRetry = CreekRetry();
    creekRetry.setCallBack(model.cmdId, model.req_flag,(e, code) {
      ///解析数据
      if (rawData != null) {
        rawData(BlueTool.list10Tolist16(e).toString());
      }
      parsingData(e, callBack: (head, e) async{
        if (head.codeType == CodeType.code0) {
          protocol_function_table reply = e as protocol_function_table;
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
    ///需要监听返回值
    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) async{
    //     if (head.codeType == CodeType.code0) {
    //       DeviceModel deviceModel = e as DeviceModel;
    //       await CreekProcedure.insertDeviceInfo(deviceModel: deviceModel);
    //       if (callBack != null) {
    //         callBack(deviceModel);
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }


  ///*****************************************
  ///按键快捷获取
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getHotKey({Function(protocol_button_crown_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("按键快捷获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.hotKey;
    CreekTransport request = CreekTransport();
    protocol_button_crown_operate operate = protocol_button_crown_operate();
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
          protocol_button_crown_inquire_reply reply = e as protocol_button_crown_inquire_reply;
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
  ///按键快捷设置
  ///*****************************************
  @override
  void setHotKey(
      {required protocol_button_crown_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("按键快捷设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.hotKey;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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

    // CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag, (e, code) {
    //   ///解析数据
    //   if (rawData != null) {
    //     rawData(BlueTool.list10Tolist16(e).toString());
    //   }
    //   parsingData(e, callBack: (head, e) {
    //     if (head.codeType == CodeType.code0) {
    //       if (callBack != null) {
    //         callBack();
    //       }
    //     } else {
    //       if (errCallBack != null) {
    //         errCallBack(CreeKError.error(head.codeType));
    //       }
    //     }
    //   });
    // }, errorCallBack: () {
    //   ///超时
    //   if (errCallBack != null) {
    //     errCallBack("超时");
    //   }
    // });
    // request.requestDevice(listData);
  }

  ///*****************************************
  ///知存固件传输
  ///*****************************************
  @override
  void setWtm(
      {required wtm_operate_type type, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("知存固件传输");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.wtm;
    protocol_wtm_download_operate operate = protocol_wtm_download_operate();
    operate.operate = type;
    CreekTransport request = CreekTransport();
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
  ///应用列表获取
  ///*****************************************
  @override
  void getAppList({Function(protocol_app_list_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("按键快捷获取");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.app;
    CreekTransport request = CreekTransport();
    protocol_app_list_operate operate = protocol_app_list_operate();
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
          protocol_app_list_inquire_reply reply = e as protocol_app_list_inquire_reply;
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
  ///应用列表设置
  ///*****************************************
  @override
  void setAppList(
      {required protocol_app_list_operate operate, Function()? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) async {
    CreekLog.info("按键快捷设置");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.app;
    operate.operate = operate_type.SET;
    CreekTransport request = CreekTransport();
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
  ///查询埋点
  ///errCallBack 失败返回信息
  ///seedCmd 返回发送的命令
  ///rawData 返回原始数据
  ///*****************************************
  @override
  void getTrack({Function(protocol_event_tracking_inquire_reply)? callBack, Function(String)? errCallBack, Function(String)? seedCmd, Function(String)? rawData}) {
    // TODO: implement getDeviceInfo
    CreekLog.info("查询埋点");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.track;
    CreekTransport request = CreekTransport();
    protocol_event_tracking_operate operate = protocol_event_tracking_operate();
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
          protocol_event_tracking_inquire_reply reply = e as protocol_event_tracking_inquire_reply;
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






}
