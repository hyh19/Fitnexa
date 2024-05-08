

part of creek_blue;

class CreekSync{

  Function(int)? _progress;
  Function()? _success;
  Function()? _failure;

  CountdownTime countdownTime = CountdownTime(count: 15);

  ///支持的类型
  List<sync_type> listType = [];
  ///总大小
  int totalSize = 0;

  ///记录类型的长度
  int typeSize = 0;
  ///接收的大小
  int receiveSize = 0;

  CreekSyncTypeListen? _syncListen;

  int progressValue = 0;

  SyncStatus syncStatus = SyncStatus.none;


  factory CreekSync() => _getInstance();
  static CreekSync get instance => _getInstance();
  static CreekSync? _instance;

  CreekSync._internal();

  static CreekSync _getInstance(){
    _instance ??= CreekSync._internal();
    return _instance!;
  }

  ///****************************
  ///同步
  ///****************************
  void sync(CreekSyncTypeListen syncListen,{Function()? success, Function()? failure,Function(int)? progress}) async{
    if(CreekDeviceManger.instance.connectionStatus != ConnectionStatus.connect){
      if(failure != null){
        failure!();
      }
      CreekLog.info("蓝牙未连接同步数据失败");
      return;
    }
    if(syncStatus == SyncStatus.syncing){
      CreekLog.info("正在同步中");
      return;
    }
    _syncListen = syncListen;
    _success = success;
    _failure = failure;
    _progress = progress;
    syncStatus = SyncStatus.syncing;
    typeSize = 0;
    receiveSize = 0;
    totalSize = 0;
    progressValue = 0;
    if( CreekDeviceManger.instance?.connectionStatusListen != null){
      CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.sync,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 1);
    }



    foundationCommand.setTime(callBack: () {
      ///获取支持的类型
      syncCommand.getHealthType(callBack: (e){
        listType = [];
        // listType.add(sync_type.SYNC_HEART_RATE);
        // listType.add(sync_type.SYNC_WORKOUT);
        // listType.add(sync_type.SYNC_SPO2);
        // listType.add(sync_type.SYNC_SLEEP);
        // listType.add(sync_type.SYNC_ACTIVITY);
        // listType.add(sync_type.SYNC_NOISE);
        listType.addAll(SyncTool.getSyncType(e));
        ///成功后请求总大小
        syncCommand.getHealthSize(listType: listType,callBack: (e){
          ///拿到总数据大小之后开始取同步数据
          totalSize = e;
          CreekLog.info("需要接收同步数据的总大小：$e");
          syncData();

        },errCallBack: (e){
          if( CreekDeviceManger.instance?.connectionStatusListen != null){
            CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.sync,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 100);
          }
          syncStatus = SyncStatus.none;
          if(failure != null){
            failure!();
          }
        });
        ///前面流程没通暂时跳过，直接去同步

      },errCallBack: (e){
        if( CreekDeviceManger.instance?.connectionStatusListen != null){
          CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.syncComplete,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 100);
        }
        syncStatus = SyncStatus.none;
        if(failure != null){
          failure!();
        }
      });
    },errCallBack: (e){
      if( CreekDeviceManger.instance?.connectionStatusListen != null){
        CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.syncComplete,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 100);
      }
      syncStatus = SyncStatus.none;
      if(failure != null){
        failure!();
      }
    });


  }

  ///****************************
  ///开始同步
  //              if(type == sync_type.SYNC_HEART_RATE){
  //               HeartRateDataModel dataModel = e as HeartRateDataModel;
  //               }else if(type == sync_type.SYNC_STRESS){
  //
  //               }else if(type == sync_type.SYNC_SPO2){
  //
  //               }else if(type == sync_type.SYNC_SLEEP){
  //
  //               }else if(type == health_type.BODY_ENERGY){
  //
  //               }else if(type == sync_type.SYNC_WORKOUT){
  //
  //               }else if(type == sync_type.SYNC_ACTIVITY){
  //
  //               }else if(type == sync_type.SYNC_SWIMMING){
  //
  //               }else if(type == sync_type.SYNC_GPS){
  //
  //               }else if(type == sync_type.SYNC_NOISE){
  //
  //               }else if(type == sync_type.SYNC_BODY_ENERGY){
  //
  //               }else if(type == sync_type.SYNC_RESPIRATORY_RATE){
  //
  //               }else if(type == sync_type.SYNC_SKIN_TEMPERATURE){
  //
  //               }
  ///****************************
  void syncData() async{
    // _connectionStatusListen!.creekBlueConnectionStatusListen(connectionStatus,name,0);

    CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.sync,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 1);
    CreekGlobalNotice.instance.setListenLen(listenLen: (e){
      if(syncStatus == SyncStatus.none) return;
      receiveSize = receiveSize + e;
      int value = ((receiveSize / totalSize) * 100).toInt();
      if(progressValue != 100){
        if(value >= 100){
          progressValue = 99;
        }else{
          progressValue = value;
        }
      }
      if(_progress != null && progressValue != 100){
        CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.sync,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , progressValue);
        _progress!(progressValue);
      }

      CreekLog.info("进度:$progressValue");
      startTime();
    });

   bool isRequest = await CompleterExt.awaitFor<bool>((run) async{
      int i = 0;
      for(var type in listType){
        startTime();
        // receiveSize = receiveSize + typeSize;
        // typeSize = 0;
        await CompleterExt.awaitFor<bool>((fun1){
          syncCommand.syncHealth(syncOperate: sync_operate.START_SYNC, syncType: type,callBack: (data) async{
            countdownTime.cancelTimer();
            ///需要在外层继承协议
            if(data != null){
              if (type == sync_type.SYNC_HEART_RATE) {
                HeartRateDataModel dataModel = data as HeartRateDataModel;
                CreekLog.info("**************心率数据***************");
                CreekLog.info(dataModel.toString());
                ///写入数据库
                try{
                  await CreekProcedure.insertHeartRateData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.hearRate);
                }catch(e){
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                  run(false);
                }
              } else if (type == sync_type.SYNC_STRESS) {
                StressDataModel dataModel = data as StressDataModel;
                CreekLog.info("**************压力数据***************");
                CreekLog.info(dataModel.toString());
                try{
                  await CreekProcedure.insertStressData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.pressure);
                }catch(e){
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                  run(false);
                }

              } else if (type == sync_type.SYNC_SPO2) {
                SpoDataModel dataModel = data as SpoDataModel;
                CreekLog.info("**************血氧数据***************");
                CreekLog.info(dataModel.toString());
                try{
                  await CreekProcedure.insertSpoData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.spo);

                }catch(e){
                  run(false);
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                }
              } else if (type == sync_type.SYNC_SLEEP) {

                SleepDataModel dataModel = data as SleepDataModel;
                CreekLog.info("**************睡眠数据***************");
                CreekLog.info(dataModel.toString());
                try{
                  await CreekProcedure.insertSleepData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.sleep);
                }catch(e){
                  run(false);
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                }
              } else if (type == sync_type.SYNC_WORKOUT) {
                SportDataModel dataModel = data as SportDataModel;
                CreekLog.info("**************运动数据***************");
                CreekLog.info(dataModel.toString());
                try{
                  await CreekProcedure.insertSportData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.sport);
                }catch(e){
                  run(false);
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                }

              } else if (type == sync_type.SYNC_ACTIVITY) {
                ActivityDataModel dataModel = data as ActivityDataModel;
                CreekLog.info("**************活动数据***************");
                CreekLog.info(dataModel.toString());
                try{
                  await CreekProcedure.insertActivityData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.activity);
                }catch(e){
                  run(false);
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                }
              } else if (type == sync_type.SYNC_SWIMMING) {
              } else if (type == sync_type.SYNC_HRV) {
                HrvDataModel dataModel =  data as HrvDataModel;
                CreekLog.info("**************hrv数据***************");
                CreekLog.info(dataModel.toString());
                try{
                  await CreekProcedure.insertHrvData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.hrv);
                }catch(e){
                  run(false);
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                }
              } else if (type == sync_type.SYNC_NOISE) {
                NoiseDataModel dataModel =  data as NoiseDataModel;
                try{
                  await CreekProcedure.insertNoiseData(dataModel.data);
                  CreekSyncData.instance.upData(SyncServerType.noise);
                }catch(e){
                  run(false);
                  CreekLog.info("${type.toString()}插入数据库出错");
                  CreekLog.info(e.toString());
                }
              } else if (type == sync_type.SYNC_BODY_ENERGY) {
              } else if (type == sync_type.SYNC_RESPIRATORY_RATE) {
              } else if (type == sync_type.SYNC_SKIN_TEMPERATURE) {}

              startTime();
              syncCommand.syncHealth(syncOperate: sync_operate.END_SYNC, syncType: type,callBack: (data){
                countdownTime.cancelTimer();
                fun1(true);
              },errCallBack: (e){
                countdownTime.cancelTimer();
                run(false);
                CreekLog.info("${type.toString()}结束命令出错");
              });
              if(_syncListen != null){
                _syncListen!.creekSyncTypeListen(type);
              }
            }else{
              fun1(true);
              CreekLog.info("同步数据为空");
            }

          },errCallBack: (e){
            CreekLog.info("同步出错${e.toString()}");
            run(false);
          });
        });

        i ++ ;
        if(i == listType.length){
          try{
            run(true);
          }catch(e){
            CreekLog.info("多次返回，通道删除");
          }

        }
      }

    });

   if(isRequest == true){
     CreekLog.info("进度:100");
     CreekLog.info("同步完成");
     if(_progress != null){
       progressValue = 100;
       CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.syncComplete,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , progressValue);
       _progress!(progressValue);
     }
     if( _success != null){
       _success!();
     }
     countdownTime.cancelTimer();
     syncStatus = SyncStatus.none;
   }else{
     CreekLog.info("syncCommand.syncHealth ： 同步健康数据超时");
     CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.sync,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 100);
     if(syncStatus != SyncStatus.failure){
       syncStatus = SyncStatus.failure;
       if(_failure != null){
         _failure!();
       }
     }
   }
  }
  void startTime(){
    CreekLog.info("数据同步开始倒计时");
    countdownTime.cancelTimer();
    countdownTime = CountdownTime(count: 15);
    countdownTime.start(() {
      if(syncStatus != SyncStatus.failure){
        syncStatus = SyncStatus.failure;
        CreekLog.info("同步健康数据超时");
        CreekDeviceManger.instance?.postConnectionStatusNotify(ConnectionStatus.syncComplete,CreekDeviceManger.instance?.bluetoothDevice?.name ?? "" , 100);
        if(_failure != null){
          _failure!();
        }
      }
    });
 }
 ///取消同步
 void cancelSync(){
   syncStatus = SyncStatus.failure;
 }



}