
part of creek_blue;

class CreekDownNotice extends CreekDownListen{
  /// code == 0 成功  其他是错误
  Function(List<int>,int code)? callBack;
  ///任务队列
  List<List<int>?> queueTask = [];
  ///默认是开始状态
  TaskState taskState = TaskState.start;

  factory CreekDownNotice() => _getInstance();
  static CreekDownNotice get instance => _getInstance();
  static CreekDownNotice? _instance;

  CreekDownNotice._internal(){
    ///注册通知
    CreekDeviceManger.instance.setDownNotify(this);
  }

  static CreekDownNotice _getInstance(){
    _instance ??= CreekDownNotice._internal();
    return _instance!;
  }

  void setCallBack(Function(List<int>,int code) func,{Function()? errorCallBack}){
    callBack = func;
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
    CreekLog.info("添加上行任务");
    queueTask.add(list);
    if(taskState == TaskState.start){
      taskState = TaskState.inProcess;
      doTask();
    }
    CreekLog.info("上行状态$taskState");
  }
  ///执行队列任务
  doTask() async{
    await CompleterExt.awaitFor<bool>((run) async{
      ///解析数据
      List<int>? data = queueTask.first;
      if((data ?? []).isNotEmpty){
        ///如果需要返回数据做操作这个地方写回掉
        if( callBack != null){
          CreekLog.info("回调上行数据");
          callBack!(data!,0);
        }else{
          CreekLog.info("上行回调对象为空，回调失败");
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
    CreekLog.info("上行状态2$taskState");
  }
}