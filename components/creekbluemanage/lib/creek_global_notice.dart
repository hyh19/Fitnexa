
part of creek_blue;

class CreekGlobalNotice extends CreekListen{
  /// code == 0 成功  其他是错误
  Map<String,Function(dynamic,int code)?> callBackMap = {};

  ///任务队列
  List<List<int>?> queueTask = [];

  ///默认是开始状态
  TaskState taskState = TaskState.start;

  ///接收数据
   Map<int,List<int>> receiveData = {};


  ///定时器
  Map<String,CountdownTime> countdownTimeMap = {};

  Function(int)? _listenLen;


  factory CreekGlobalNotice() => _getInstance();
  static CreekGlobalNotice get instance => _getInstance();
  static CreekGlobalNotice? _instance;

  CreekGlobalNotice._internal(){
    ///注册通知
    CreekDeviceManger.instance.setNotify(this);
  }
  static CreekGlobalNotice _getInstance(){
    _instance ??= CreekGlobalNotice._internal();
    return _instance!;
  }
  ///监听接收长度的值
  void setListenLen({Function(int)? listenLen}){
    _listenLen = listenLen;
  }

  void setCallBack(CmdId cmdId,int reqId,Function(dynamic,int code) func,{int outTime = 20,Function()? errorCallBack}){
    if(outTime != 0){
      CountdownTime countdownTime = CountdownTime(name: "${cmdId.toString()}$reqId");
      countdownTime.count = outTime;
      if(cmdId == CmdId.binding || cmdId == CmdId.healthSync || cmdId == CmdId.log || cmdId == CmdId.sensor){
        countdownTimeMap["$cmdId"] = countdownTime;
        callBackMap["$cmdId"] = func;
      }else{
        countdownTimeMap["$reqId"] = countdownTime;
        callBackMap["$reqId"] = func;
      }
      countdownTime.start(() {
        ///倒计时完之后没有返回值 超时
        ///数据为空 或者数据不完整都为超时
        countdownTime.cancelTimer();
        if(errorCallBack != null){
          errorCallBack!();
        }
      });
    }
    if(cmdId == CmdId.binding || cmdId == CmdId.healthSync || cmdId == CmdId.log || cmdId == CmdId.sensor){
      callBackMap["$cmdId"] = func;
    }else{
      callBackMap["$reqId"] = func;
    }
  }

  ///全局监听
  @override
  void blueWriteListener(List<int> list) {
    // TODO: implement blueWriteListener
    ///蓝牙返回数据假如到任务队列中
    addTask(list);
  }

  ///添加任务
  void addTask(List<int> list) async{
    queueTask.add(list);
    if(taskState == TaskState.start){
      taskState = TaskState.inProcess;
      doTask();
    }
  }

  ///执行队列任务
  doTask() async{
    await CompleterExt.awaitFor<bool>((run) async{
      ///解析数据
      List<int>? data = queueTask.first;
      if((data ?? []).isNotEmpty){
        try{
          int cmd = data![0];
          int reqId = data![1] & 0x7f;

          ///判断帧命令
          CmdType cmdType = BlueTool.cmdTypeTodecoding(cmd);
          ///假如第一帧是开始帧，清空数据
          if(cmdType == CmdType.start){
            receiveData[reqId] = [];
          }
          ///数据包为空的时候这个一定是第一包数据
          if(receiveData[reqId]!.isEmpty){
            receiveData[reqId]!.addAll(data);
          }else{
            ///数据包不为空的情况下，一定是不完整的数据包
            ///去掉前面两个字节
            receiveData[reqId]!.addAll(data!.sublist(2,data.length));
          }
          ///得到头部数据
          List<int> head = receiveData[reqId]!.sublist(0,11);
          HeadModel? headModel =  HeadModel().uint8ListToModel(head);
          CreekLog.info("需要接收的长度${headModel?.length}");
          CreekLog.info("收到数据的长度${receiveData[reqId]!.length}");
          if(_listenLen != null && (
              headModel?.cmdId == CmdId.healthSync
          )){
            _listenLen!(receiveData[reqId]!.length ?? 0);
          }
          int receiveDataLength = 0;
          ///假如长度相同说明包完整
          if(headModel?.cmdId == CmdId.healthSync){
            ///暂时没加校验码
            if((receiveData[reqId]?.length ?? 0) - (headModel?.length ?? 0) == 2){
              receiveDataLength = receiveData[reqId]!.length - 2;
            }else{
              receiveDataLength = receiveData[reqId]!.length;
            }
          }else{
            receiveDataLength = receiveData[reqId]!.length - 2;
          }
          CreekLog.info("receiveDataLength = $receiveDataLength");
          if(headModel?.length == receiveDataLength){
            ///数据完整开始对包处理
            dynamic dataValue = receiveData[reqId];
            ///处理完成之后receiveData至为空
            receiveData[reqId] = [];
            ///通知的数据
            if(headModel?.cmdId == CmdId.update || headModel?.cmdId == CmdId.event || headModel?.cmdId == CmdId.sportGps || (headModel?.cmdId == CmdId.alexa1 && (headModel?.req_flag ?? 0) <= 127) || (headModel?.cmdId == CmdId.alexa2 && (headModel?.req_flag ?? 0) <= 127)){
              UpdateNotice.instance?.getNotice(dataValue);
            }else{
              CreekLog.info("开始回掉${headModel?.cmdId}$reqId数据:${dataValue.toString()}");
              ///停止定时器
              if(headModel?.cmdId == CmdId.binding || headModel?.cmdId == CmdId.healthSync || headModel?.cmdId == CmdId.log || headModel?.cmdId == CmdId.sensor){
                if( countdownTimeMap["${headModel?.cmdId}"] != null){
                  if( countdownTimeMap["${headModel?.cmdId}"] != null){
                    countdownTimeMap["${headModel?.cmdId}"]!.cancelTimer();
                  }
                  countdownTimeMap.remove("${headModel?.cmdId}");
                }
                if( callBackMap["${headModel?.cmdId}"] != null){
                  try{
                    callBackMap["${headModel?.cmdId}"]!(dataValue,0);
                  }catch(e){
                    CreekLog.info(e.toString());
                  }
                }else{
                  CreekLog.info("监听不到返回");
                }
              }else{
                if( countdownTimeMap["$reqId"] != null){
                  if( countdownTimeMap["$reqId"] != null){
                    countdownTimeMap["$reqId"]!.cancelTimer();
                  }
                  countdownTimeMap.remove("$reqId");
                }
                if( callBackMap["$reqId"] != null){
                  try{
                    callBackMap["$reqId"]!(dataValue,0);
                  }catch(e){
                    CreekLog.info(e.toString());
                  }
                  callBackMap.remove("$reqId");
                }else{
                  CreekLog.info("监听不到返回");
                }
              }

            }
            ///这里把数据写入到数据库
            ///然后异步做上传云端的操作
          }else{
            CreekLog.info("长度匹配不正确");
          }
        }catch(e){
          CreekLog.info("基础命令错误${e.toString()}");
          taskState == TaskState.start;
        }

      }
      run(true);
    });
    queueTask.remove(queueTask.first);
    if(queueTask.isEmpty){
      taskState = TaskState.start;
    }else{
      ///还有任务进行递归操作
      doTask();
    }
  }
}