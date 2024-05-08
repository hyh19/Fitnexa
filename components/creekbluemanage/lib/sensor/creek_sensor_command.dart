part of creek_blue;



class SensorCommand extends CreekSensorProtocol{


  ///**************************
  ///查询传感器版本
  ///**************************
  @override
  void getSensor({Function(protocol_sensor_rawdata_tran_inquire_reply)? callBack}){
    // TODO: implement getDeviceInfo
    CreekLog.info("查询传感器版本");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sensor;
    CreekTransport request = CreekTransport();
    protocol_sensor_rawdata_tran_operate buf = protocol_sensor_rawdata_tran_operate();
    buf.operate = operate_type.INQUIRE;
    List<List<int>> listData = request.seedData(model, null);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag,(e, code) {
      protocol_sensor_rawdata_tran_inquire_reply reply = protocol_sensor_rawdata_tran_inquire_reply.fromBuffer(e);
      if(callBack != null){
        callBack(reply);
      }
    },errorCallBack: (){

    } );
    request.requestDevice(listData);
  }

  ///**************************
  ///采集数据
  ///**************************
  @override
  setSensor(sensor_operate_type sensorType,{required List<String> dataType,Function()? callBack,Function()? errCallBack}){
    // TODO: implement getDeviceInfo
    CreekLog.info("采集数据");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.sensor;
    CreekTransport request = CreekTransport();
    protocol_sensor_rawdata_tran_operate buf = protocol_sensor_rawdata_tran_operate();
    buf.operate = operate_type.SET;
    buf.sensorOperate = sensorType;
    for (var element in dataType) {
      if(element == "ppg_g"){
        buf.ppgGData = true;
      }else if(element == "ppg_r"){
        buf.ppgRData = true;
      }else if(element == "ppg_ir"){
        buf.ppgIrData = true;
      }else if(element == "acc"){
        buf.accData = true;
      }else if(element == "gyro"){
        buf.gyroData = true;
      }else if(element == "geomagnetic"){
        buf.geomagneticData = true;
      }else if(element == "gnss"){
        buf.gnssData = true;
      }else if(element == "infrared"){
        buf.infraredData = true;
      }else if(element == "audio"){
        buf.audioData = true;
      }else if(element == "sar"){
        buf.sarData = true;
      }else if(element == "hrv"){
        buf.hrvData = true;
        buf.accData = true;
        buf.ppgGData = true;
        buf.ppgIrData = true;
        buf.sarData = true;
      }else if(element == "100hz"){
        buf.threeLights100hzData = true;
        buf.accData = true;
        buf.ppgGData = true;
        buf.ppgIrData = true;
        buf.ppgRData = true;
        buf.sarData = true;
      }
    }
    List<List<int>> listData = request.seedData(model, buf);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag,(e, code) {
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
    request.requestDevice(listData);
  }

  ///**************************
  ///日志传输控制
  ///**************************
  @override
  setLog({log_operate_type type = log_operate_type.LOG_START,Function()? callBack,Function()? errCallBack}){
    CreekLog.info("日志传输");
    HeadModel model = HeadModel();
    model.cmdId = CmdId.log;
    CreekTransport request = CreekTransport();
    protocol_log_tran_operate buf = protocol_log_tran_operate();
    buf.logOperate = type;
    List<List<int>> listData = request.seedData(model, buf);
    ///需要监听返回值
    CreekGlobalNotice.instance.setCallBack(model.cmdId, model.req_flag,(e, code) {
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
    request.requestDevice(listData);
  }





}





