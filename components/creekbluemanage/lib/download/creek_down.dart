
part of creek_blue;


class CreekDown with CreekBlueConnectionStatusListen{

  factory CreekDown() => _getInstance();
  static CreekDown get instance => _getInstance();
  static CreekDown? _instance;
  String fileName = "";
  Function(List<int>)? listenData;
  Function(List<int>)? listenPcmData;
  ///1开始，2中间 ,3结束
  Function(int,List<int>)? listenPcmDataStream;
  Function()? _success;
  Function()? _failure;
  CountdownTime countdownTime = CountdownTime(count: 10);
  List<int> pcmData = [];
  ///默认是开始状态
  TaskState taskState = TaskState.start;



  CreekDown._internal(){
    receivedData();
  }
  static CreekDown _getInstance(){
    _instance ??= CreekDown._internal();
    return _instance!;
  }

  ///开始日志传输
  startLog({Function()? success,Function()? failure}){
    _success = success;
    _failure = failure;
    CreekLog.info("开始日志传输");
    startTime();
    sensorCommand.setLog(type: log_operate_type.LOG_START,callBack: (){
      CreekLog.info("开始日志传输命令成功");

    },errCallBack: (){
      CreekLog.info("开始日志传输命令失败");
      if(_failure != null){
        _failure!();
        _success = null;
        _failure = null;
      }
    });
  }
  ///结束日志传输
  endLog(){
    sensorCommand.setLog(type: log_operate_type.LOG_END,callBack: (){

    });
  }

  ceShiPcm1() async{
   bool isBool = await  CreekDeviceManger.instance.characteristicToWriteValue(CreekDeviceManger.instance.writeCharacteristic!, "AT+NOISE+CON=1\r\n".codeUnits,);
    print(isBool);
  }
  ceShiPcm2() async{
    bool isBool = await  CreekDeviceManger.instance.characteristicToWriteValue(CreekDeviceManger.instance.writeCharacteristic!, "AT+NOISE+MIC=1\r\n".codeUnits,);
    print(isBool);
  }
  ceShiPcmEnd(){
    CreekDeviceManger.instance.writeCharacteristic?.write("AT+NOISE+MIC=0\r\n".codeUnits);
  }

  startTime(){
    countdownTime = CountdownTime(count: 10);
    countdownTime.start(() {
      if(_failure != null){
        _failure!();
        _success = null;
        _failure = null;
      }
    });
  }

  receivedData(){
    CreekDownNotice.instance.setCallBack((e, code){
      countdownTime.cancelTimer();
      startTime();
      if(listenData != null){
        listenData!(e);
      }
      try {
        FileProtocol fileProtocol = BlueTool.fileProtocolToDecoding(e[0]);
        if(fileProtocol == FileProtocol.downStart){
          ///开始
          CreekDownStartReplyModel model =  CreekDownStartReplyModel().uint8ListToModel(e);

          ///生成文件名  时间
          DateTime dateTime = DateTime.now();
          String timeStr;
          if(model.fileName.contains("pcm")){
            pcmInit();
            String year = (dateTime.year) > 9 ? "${dateTime.year}" : "0${dateTime.year}";
            String month = (dateTime.month) > 9 ? "${dateTime.month}" : "0${dateTime.month}";
            String day = (dateTime.day) > 9 ? "${dateTime.day}" : "0${dateTime.day}";
            String hour = (dateTime.hour) > 9 ? "${dateTime.hour}" : "0${dateTime.hour}";
            String minute = (dateTime.minute) > 9 ? "${dateTime.minute}" : "0${dateTime.minute}";
            String second = (dateTime.second) > 9 ? "${dateTime.second}" : "0${dateTime.second}";
            pcmData = [];
            timeStr = "$year$month$day$hour$minute$second";
            if(listenPcmDataStream != null){
              listenPcmDataStream!(1,[]);
            }
          }else{
             timeStr = dateTime.toString().substring(0,10);
          }
          fileName = "$timeStr-${model.fileName}";
          CreekLog.info(fileName);
          if(!fileName.contains("pcm")){
            FileManage3.instance?.writeReceivedData(fileName,"\n");
          }
        }else if(fileProtocol == FileProtocol.downMiddle){
          ///中间
          CreekDownMiddleReplyModel model =  CreekDownMiddleReplyModel().uint8ListToModel(e);
          if(fileName.contains("rawdata")){

          }else if(fileName.contains("log")){
            ///日志文件处理
            ///a.removeWhere((item)=>item == 0);
             // String a = "${BlueTool.list10Tolist16(model.data)}";
             // FileManage3.instance?.writeReceivedData(fileName,"${a.replaceAll("[", "").replaceAll("]", "").replaceAll(",", " ")}\n");

             FileManage3.instance?.writeReceivedData(fileName,utf8.decode(model.data));
          }else if(fileName.contains("pcm")){
            int len =  model.data.length ~/ 57;
            CreekLog.info("解析原始数据:${BlueTool.list10Tolist16(model.data).toString()}");
            for(int i = 0; i < len; i++){
              Uint8List b1 = pcmToSbc(Uint8List.fromList(model.data.sublist(i*57,(i+1)*57)));
              FileManage3.instance?.writeReceivedListData(fileName,b1.toList());
              CreekLog.info("解压缩长度:${b1.length}");
              if(listenPcmDataStream != null){
                listenPcmDataStream!(2,b1.toList());
              }
              pcmData.addAll(b1.toList());
            }

          }
        }else if(fileProtocol == FileProtocol.downEnd){
          ///结束
          countdownTime.cancelTimer();
          if(_success != null){
            _success!();
            _success = null;
            _failure = null;
          }
          if(listenPcmData != null){
            listenPcmData!(pcmData);
          }
          if(listenPcmDataStream != null){
            listenPcmDataStream!(3,[]);
          }

        }
      }catch(e){
        ///其他数据
        CreekLog.info(e.toString());
        countdownTime.cancelTimer();
        if(_failure != null){
          _failure!();
          _success = null;
          _failure = null;
        }
      }
    });
  }

  @override
  void creekBlueConnectionStatusListen(ConnectionStatus status, String? deviceName, int progress) {
    if(status == ConnectionStatus.unconnected){
      countdownTime.cancelTimer();
      if(_failure != null){
        _failure!();
        _success = null;
        _failure = null;
      }
    }
  }

}