
part of creek_blue;

class CreekUploadNotice extends CreekFileListen{
  /// code == 0 成功  其他是错误
  Map<String,Function(dynamic,int code)?> callBackMap = {};

  ///任务队列
  List<List<int>?> queueTask = [];

  ///默认是开始状态
  TaskState taskState = TaskState.start;

  ///接收数据
  List<int> receiveData = [];


  CountdownTime? countdownTime;


  factory CreekUploadNotice() => _getInstance();
  static CreekUploadNotice get instance => _getInstance();
  static CreekUploadNotice? _instance;

  CreekUploadNotice._internal(){
    ///注册通知

    CreekDeviceManger.instance.setFileNotify(this);
  }

  static CreekUploadNotice _getInstance(){
    _instance ??= CreekUploadNotice._internal();
    return _instance!;
  }

  void setCallBack(FileProtocol fileProtocol,Function(dynamic,int code) func,{Function()? errorCallBack,int outTime = 20}){
    if(countdownTime != null){
      countdownTime!.cancelTimer();
    }
    countdownTime = CountdownTime(count: outTime);
    CreekLog.info("上传回调函数 ${callBackMap.length}");
    callBackMap["$fileProtocol"] = func;
    countdownTime!.start(() {
      ///倒计时完之后没有返回值 超时
      ///数据为空 或者数据不完整都为超时
      CreekLog.info("上传超时回调函数 ${callBackMap.length}");
      callBackMap.remove("$fileProtocol");
      if(errorCallBack != null){
        errorCallBack!();
      }
    });
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
    CreekLog.info("上传添加任务队列：${taskState.toString()}");
    if(taskState == TaskState.start ){
      taskState = TaskState.inProcess;
      doTask();
    }
  }

  ///执行队列任务
  doTask() async{
    CreekLog.info("上传回调数据");
    await CompleterExt.awaitFor<bool>((run) async{
      ///解析数据
      ///停止定时器
      countdownTime?.cancelTimer();
      List<int>? data = queueTask.first;
      if((data ?? []).isNotEmpty){
        int cmd = data![0];
        ///判断帧命令
        FileProtocol fileProtocol = BlueTool.fileProtocolToDecoding(cmd);
        ///如果需要返回数据做操作这个地方写回掉
        if( callBackMap["$fileProtocol"] != null){
          CreekLog.info("上传执行回调：${fileProtocol.toString()}");
          try{
            callBackMap["$fileProtocol"]!(data,0);
            callBackMap.remove("$fileProtocol");
          }catch(e){
            CreekLog.info("上传回调异常");
          }
          CreekLog.info("上传执行回调结束：${fileProtocol.toString()}");
        }else{
          CreekLog.info("上传回调为空 : $fileProtocol");
        }
      }
      run(true);
    });
    queueTask.remove(queueTask.first);
    if(queueTask.isEmpty){
      CreekLog.info("任务执行完毕");
      taskState = TaskState.start;
    }else{
      ///还有任务进行递归操作
      CreekLog.info("还有任务继续执行");
      doTask();
    }
  }
}