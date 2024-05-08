part of creek_blue;

///**************************
///后台任务
///**************************
///
enum TaskLevel{
  ///后台
  background,
  ///前台
  front,
}
class CreekBackGroundTask with CreekBlueConnectionStatusListen{

  factory CreekBackGroundTask() => _getInstance();
  static CreekBackGroundTask get instance => _getInstance();
  static CreekBackGroundTask? _instance;

  ///执行的任务
  List<TaskModel> executeTasks = [];

  ///当前运行的任务  为null的时候没有任务进行
  TaskModel? currentTask;

  ///临时的前端上传任务
  TaskModel? temporarilyTask;

  TaskState taskState = TaskState.start;

  CreekBackGroundTask._internal(){
    CreekDeviceManger.instance?.setConnectionStatusNotify(this);
  }

  static CreekBackGroundTask _getInstance() {
    _instance ??= CreekBackGroundTask._internal();

    return _instance!;
  }
  ///添加任务
  addTask(TaskModel taskModel){
    if(taskModel.type == TaskType.upload){
      CreekLog.info("The current incoming task:${taskModel.type.toString()} ,文件名字：${taskModel.model.fileName}");
      if(taskModel.level == TaskLevel.front){
        if(currentTask != null){
          if(currentTask!.type == TaskType.upload){
            CreekUpload.instance.cancelUp();
            currentTask = null;
          }else if(currentTask!.type == TaskType.alexa){
            AlexaUpload.instance.cancelUp();
            currentTask = null;
          }
        }
      }
    }else if(taskModel.type == TaskType.sync){
      CreekLog.info("The current incoming task:${taskModel.type.toString()}");
    }


    if(taskModel.level == TaskLevel.front){
      if(currentTask != null){
        CreekLog.info("The task being performed:${taskModel.type.toString()}");
        ///有正在在进行的任务
        ///首先判断执行的任务时前台任务还是后台任务
        CreekLog.info("有正在在进行的任务,首先判断执行的任务时前台任务还是后台任务");
        if(currentTask?.level == TaskLevel.front){
          ///正在运行的前台任务
          if(currentTask?.type == TaskType.upload){
            ///取消正在运行任务上传
            ///有未完成的上传任务 请稍后再试
            CreekLog.info("取消正在运行任务上传,有未完成的上传任务 请稍后再试");
            CreekLog.info("There are unfinished upload tasks, please try later");
            if(taskModel.model is UploadModel){
              if((taskModel.model as UploadModel).failure != null){
                (taskModel.model as UploadModel).failure!(16,"There are unfinished upload tasks, please try later");
              }
              return;
            }else if(taskModel.model is SyncModel){
              if((taskModel.model as SyncModel).failure != null){
                (taskModel.model as SyncModel).failure!();
              }
              return;
            }else if(taskModel.model is AlexaModel){
              if((taskModel.model as AlexaModel).failure != null){
                (taskModel.model as AlexaModel).failure!(16,"There are unfinished upload tasks, please try later");
              }
            }
          }else if(currentTask?.type == TaskType.sync){
            CreekLog.info("Synchronization task, please try later");
            if(taskModel.model is UploadModel){
              // if((taskModel.model as UploadModel).failure != null){
              //   (taskModel.model as UploadModel).failure!(16,"Synchronization task, please try later");
              // }
              temporarilyTask = taskModel;
              return;
            }else if(taskModel.model is SyncModel){
              if((taskModel.model as SyncModel).failure != null){
                (taskModel.model as SyncModel).failure!();
              }
              return;
            }else if(taskModel.model is AlexaModel){
              if((taskModel.model as AlexaModel).failure != null){
                (taskModel.model as AlexaModel).failure!(16,"Synchronization task, please try later");
              }
            }
          }else if(currentTask?.type == TaskType.down){

          }
        }
        if(currentTask?.level == TaskLevel.background){
          ///正在运行的后台任务
          CreekLog.info("正在运行的后台任务");
          if(currentTask?.type == TaskType.upload){
            ///取消正在运行任务上传
            CreekLog.info("取消正在运行任务上传");
            CreekUpload.instance.cancelUp();

          }else if(currentTask?.type == TaskType.down){

          }
          ///执行子任务
          CreekLog.info("有执行的前台任务，取消之后再执行");
          doSubTask(taskModel,isSuccess: (isBool){
            currentTask = null;
            if(temporarilyTask != null){
              TaskModel task = temporarilyTask!;
              temporarilyTask = null;
              addTask(task);
            }else{
              if(executeTasks.isNotEmpty){
                doTask();
              }
            }
          });
          return;
        }
      }else{
        ///执行子任务
        CreekLog.info("没有运行的任务，直接执行前台任务");
        if(taskModel.type == TaskType.upload){
          ///保证前台执行的上传任务通道正常
          CreekUpload.instance.cancelUp();
        }
        if(taskModel.type == TaskType.alexa){
          ///保证前台执行的上传任务通道正常
          AlexaUpload.instance.cancelUp();
        }
        doSubTask(taskModel,isSuccess: (isBool){
          currentTask = null;
          if(temporarilyTask != null){
            TaskModel task = temporarilyTask!;
            temporarilyTask = null;
            addTask(task);
          }else{
            if(executeTasks.isNotEmpty){
              doTask();
            }
          }
        });
        return;
      }
    }else if(taskModel.level == TaskLevel.background){
      bool isAdd = true;
      if(taskModel.model is UploadModel){
        for (var element in executeTasks) {
          if(taskModel.model.fileName == element.model.fileName){
            isAdd = false;
            break;
          }
        }
      }
       if(isAdd){
         executeTasks.add(taskModel);
         CreekLog.info("后台任务：${executeTasks.length}个");
         doTask();
       }
    }

  }
  ///执行任务
  doTask() async{
    CreekLog.info("执行任务....");
    if(currentTask != null) return;
   bool isBool = await CompleterExt.awaitFor<bool>((run) async{
      TaskModel model = executeTasks.first;
      doSubTask(model,isSuccess: (isBool){
        if(currentTask?.level == TaskLevel.background){
          currentTask = null;
        }
        run(isBool);
      });
    });
   if(currentTask != null) return;
   executeTasks.remove(executeTasks.first);
   if(executeTasks.isEmpty){
     taskState = TaskState.start;
   }else{
     ///还有任务进行递归操作
     doTask();
   }

  }

  ///运行子任务
  ///isSuccess 任务是否成功 true 成功 false 失败
  doSubTask(TaskModel taskModel,{required Function(bool) isSuccess}){

    currentTask = taskModel;
    if(taskModel.model is UploadModel){
      CreekLog.info("执行任务：${taskModel.model.fileName}");
      upLoad(taskModel.model,isSuccess: isSuccess);
    }else if(taskModel.model is SyncModel){
      sync(taskModel.model,isSuccess: isSuccess);
    }else if(taskModel.model is AlexaModel){
      alexaUpLoad(taskModel.model,isSuccess: isSuccess);
    }
  }
  ///上传
  upLoad(UploadModel model,{required Function(bool) isSuccess}){
    CreekUpload.instance.upLoadFile(fileName: model.fileName ?? "", fileData: model.fileData ?? [],success: (){
      if(model.success != null){
        model.success!();
      }
      isSuccess(true);
    },failure: (code,msg){
      if(model.failure != null){
        model.failure!(code,msg);
      }
      isSuccess(false);
    },progress: model.progress);
  }

  ///alexa上传
  alexaUpLoad(AlexaModel model,{required Function(bool) isSuccess}){
    AlexaUpload.instance.upLoadFile(fileName: model.fileName ?? "", fileData: model.fileData ?? [],success: (){
      if(model.success != null){
        model.success!();
      }
      isSuccess(true);
    },failure: (code,msg){
      if(model.failure != null){
        model.failure!(code,msg);
      }
      isSuccess(false);
    },progress: model.progress);
  }

  ///同步
  sync(SyncModel model,{required Function(bool) isSuccess}){
    CreekSync.instance.sync(model.syncListen,success: (){
      isSuccess(true);
      if(model.success != null){
        model.success!();
      }
    },failure: (){
      isSuccess(false);
      if(model.failure != null){
        model.failure!();
      }
    },progress: model.progress);
  }

  @override
  void creekBlueConnectionStatusListen(ConnectionStatus status, String? deviceName, int progress) {
    // TODO: implement creekBlueConnectionStatusListen
    if(status == ConnectionStatus.unconnected){
      ///蓝牙断线，当前的任务取消掉，不在执行
      CreekLog.info("Bluetooth disconnected, current task cancelled");

      if(currentTask?.type == TaskType.upload){
        CreekLog.info("task:${currentTask?.type.toString()} ,文件名字：${currentTask?.model.fileName}");
      }else if(currentTask?.type == TaskType.sync){
        CreekLog.info("task:${currentTask?.type.toString()}");
      }else{
        CreekLog.info("没有进行的任务");
      }
      if(currentTask != null){
        if(currentTask?.type == TaskType.upload){
          ///蓝牙断线，取消当前的上传任务
          CreekLog.info("The Bluetooth connection is disconnected, and the current upload task is cancelled");
          CreekUpload.instance.cancelUp();
          if(currentTask?.model.failure != null){
            if(currentTask?.model.failure != null){
              currentTask?.model.failure(18,"The Bluetooth connection is disconnected, and the current upload task is cancelled");
            }
          }
        }else if (currentTask?.type == TaskType.sync){
          CreekSync.instance.cancelSync();
          if(currentTask?.model.failure != null){
            if(currentTask?.model.failure != null){
              currentTask?.model.failure();
            }
          }
        }
      }
      if(executeTasks.isNotEmpty) {
        executeTasks.removeWhere((element) => element.model.fileName.contains(".bin"));
      }
      currentTask = null;
    }else if(status == ConnectionStatus.connect){
      if(executeTasks.isNotEmpty){
        ///执行未完成的后台任务
        CreekLog.info("Execute unfinished background tasks");
        doTask();
      }
    }
  }
}
class TaskModel{

  TaskLevel level;
  TaskType? type;
  dynamic model;
  TaskModel({this.level = TaskLevel.front,this.type,this.model = ""}):
        ///当类型为上传的时候 dataType 为UploadModel；同步 SyncModel
        assert((type == TaskType.alexa && model is AlexaModel ) || (type == TaskType.upload && model is UploadModel ) || (type == TaskType.sync && model is SyncModel && level == TaskLevel.front));

}

class UploadModel{
  String? fileName;
  List<int>? fileData;

  Function? success;
  Function(int, String)? failure;
  Function(int)? progress;
  UploadModel({this.fileName,this.fileData,this.success,this.failure,this.progress});
}

class AlexaModel{
  String? fileName;
  List<int>? fileData;

  Function? success;
  Function(int, String)? failure;
  Function(int)? progress;
  AlexaModel({this.fileName,this.fileData,this.success,this.failure,this.progress});
}

class SyncModel{
  CreekSyncTypeListen syncListen;
  Function()? success;
  Function()? failure;
  Function(int)? progress;
  SyncModel(this.syncListen,{this.success, this.failure,this.progress});
}







