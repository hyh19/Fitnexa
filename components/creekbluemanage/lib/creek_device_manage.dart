part of creek_blue;

class CreekDeviceManger with WidgetsBindingObserver {
  ///写入特征值
  BluetoothCharacteristic? writeCharacteristic;

  ///监听特征值
  BluetoothCharacteristic? readCharacteristic;

  ///写入特征值2
  BluetoothCharacteristic? writeCharacteristic2;

  ///监听特征值2
  BluetoothCharacteristic? readCharacteristic2;

  ///扫描的设备
  List<BlueDeviceInfo>? deviceNameList = [];

  ///连接的设备
  List<BlueDeviceInfo>? deviceConnectList = [];

  ///普通数据全局监听
  CreekListen? _creekListen;

  ///文件数据全局监听
  CreekFileListen? _creekFileListen;

  ///文件数据全局监听
  CreekDownListen? _creekDownListen;

  ///蓝牙状态监听
  List<CreekBlueConnectionStatusListen> connectionStatusListen = [];

  BluetoothDevice? bluetoothDevice;

  BluetoothDevice? bluetoothDevice2;

  StreamSubscription<List<int>>? notifySubscription;

  StreamSubscription<List<int>>? notifySubscription2;

  ///记录当前扫描的设备，注明一下并不是总扫描设备
  List<ScanResult> scanResults = [];

  ///设备连接状态
  BluetoothDeviceState? bluetoothDeviceState = BluetoothDeviceState.disconnected;

  ///设备连接状态
  BluetoothDeviceState? bluetoothDeviceState2;

  ///蓝牙是否开启  默认是未开启
  bool isBlueON = true;

  // Function(BluetoothDeviceState, BluetoothDevice)? bluetoothDeviceStateListen;
  Function(bool)? blueOnStateListen;

 // bool isCancel = false;

  ///是否手动断开连接
  bool isAuto = true;

  ///是否开始自动连接
  bool isAutoStart = false;

  Function(List<BlueDeviceInfo>?)? listDeviceListen;
  Function(List<BlueDeviceInfo>?)? listDeviceListen2;

  FlutterBluePlus? flutterBlue;

  ///记录当前的设备状态
  ConnectionStatus connectionStatus = ConnectionStatus.none;

  ///获取已经绑定的设备
  Future<List<BlueDeviceInfo>> get devices => getBindDevices();

  ///扫描定时器
  CountdownTime? scanDownTime;

  ///连接设备的时候成功回掉
  Function(bool)? _connectStateListen;

  ///监听状态对象
  StreamSubscription? bluetoothStream;
  StreamSubscription? bluetoothStream2;
  // StreamSubscription? bluetoothStream3;

  ///蓝牙名称
  String blueName ="";

  ///程序状态
  AppLifecycleState appLifecycleState = AppLifecycleState.resumed;

  PairType _pairType = PairType.pair;

  bool isFindDevice = false;

  ///连接失败计算次数
  int failCount = 0;

  Authorization authorization = Authorization.verify;

  ///用来做限制
  int findSever = 0;

  String sdkVersion = "0.0.1";

  ///监听全局蓝牙连接异常下需要用户去做处理的事件
  ///*************************************
  ///1、Peer removed pairing information  需要用户去蓝牙管理页面手动取消配对
  ///
  ///这个错误通常在连接iOS设备时出现，它表明iOS设备无法加密与蓝牙设备之间的连接，从而导致了连接超时
  ///2、didFailToConnectPeripheral:Failed to encrypt the connection, the connection has timed out unexpectedly
  ///这个错误安卓手机消息通信出现错误的时候，需要用户手动去重启app和开关系统蓝牙
  ///3、android.permission.BLUETOOTH_PRIVILEGED
  ///*************************************
  Function(String)? _connectExceptionListen;
  setConnectExceptionListen({Function(String)? connectExceptionListen}){
    _connectExceptionListen = connectExceptionListen;
  }


 ///主动连接回调置为空
  removeConnectStateListen() {
    _connectStateListen = null;
  }

  factory CreekDeviceManger() => _getInstance();
  static CreekDeviceManger get instance => _getInstance();
  static CreekDeviceManger? _instance;

  CreekDeviceManger._internal() {

    flutterBlue = FlutterBluePlus.instance;
    platformVersion();
    deviceStateErrorListen();
    blueStateON((){
      // startTimesScan();
    });
    scanResultsListen();
    WidgetsBinding.instance.addObserver(this);
    updateBindDeviceName();
    CreekLog.info("SDK版本：$sdkVersion");
  }

  ///初始化SDK时IOS系统17以上的上传包改为8
  platformVersion()async{
    if (io.Platform.isIOS) {
      String? version = await MethodChannelCreekBlueManage().getPlatformVersion();
      int result = (version ?? "0").compareTo("17");
      if(result >= 0){
        CreekUpload.instance.size = 8;
      }
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive: // 处于这种状态的应用程序应该假设它们可能在任何时候暂停。
        break;
      case AppLifecycleState.resumed: // 应用程序可见，前台
        appLifecycleState = state;
        CreekLog.info("SDK 应用程序可见，前台");
        break;
      case AppLifecycleState.paused: // 应用程序不可见，后台
        appLifecycleState = state;
        CreekLog.info("sdk 应用程序不可见，后台");
        break;
      case AppLifecycleState.detached: // 申请将暂时暂停
        break;
    }
  }

  static CreekDeviceManger _getInstance() {
    _instance ??= CreekDeviceManger._internal();
    return _instance!;
  }

  ///设置是否需要配对
  setPair(bool isBool){
    _pairType = (isBool == true ? PairType.pair : PairType.noPair);
  }

  ///设置监听对象
  setNotify(CreekListen listen) {
    _creekListen = listen;
  }

  ///设置监听对象
  setFileNotify(CreekFileListen listen) {
    _creekFileListen = listen;
  }

  ///设置监听对象
  setDownNotify(CreekDownListen listen) {
    _creekDownListen = listen;
  }

  setIsAuto(bool isBool) {
    CreekLog.info("设置自动扫描状态: $isBool");
    isAuto = isBool;
    if (isAuto == true) {
      startTimesScan();
    }else{
    }
  }
  ///设置监听对象
  setConnectionStatusNotify(CreekBlueConnectionStatusListen listen) async {
    if(!connectionStatusListen.contains(listen)){
      connectionStatusListen.add(listen);
    }
    // updateBindDeviceName();
  }
  postConnectionStatusNotify(ConnectionStatus status,String? deviceName,int progress){
    CreekLog.info("蓝牙SDK通知蓝牙状态：${status.toString()}  $deviceName  $progress");
    if(status ==  ConnectionStatus.connecting || status ==  ConnectionStatus.inTransition){
      findSever = 0;
    }
    for (var e in connectionStatusListen) {
      e.creekBlueConnectionStatusListen(status, deviceName, progress);
    }
  }
  ///更新蓝牙设备名称
  updateBindDeviceName() async{
    List<BlueDeviceInfo> list = await devices;
    bool isBind = false;
    String name = "";
    for (var info in list) {
      if (info.lastBind) {
        isBind = true;
        name = info.device!.name;
        break;
      }
    }
   blueName = name;

    if (isBind) {
      connectionStatus = connectionStatus == ConnectionStatus.connect ? ConnectionStatus.connect : ConnectionStatus.unconnected;
    } else {
      connectionStatus =  ConnectionStatus.none ;
    }
    postConnectionStatusNotify(connectionStatus, name, 0);

  }

  Future<List<BlueDeviceInfo>> getBindDevices() async {
    return await BlueTool().getBluetoothDevice();
  }
 ///获取当前绑定设备的状态
  Future<bool> getDeviceBindState() async{
    List<BlueDeviceInfo> list = await BlueTool().getBluetoothDevice(address: bluetoothDevice?.id?.id);
    if(list.isNotEmpty){
      BlueDeviceInfo info =  list[0];
       return info.lastBind;
    }
    return false;
  }
  ///获取设备自定义名字
  Future<String?> getDeviceName(String address) async{
    List<BlueDeviceInfo> list = await BlueTool().getBluetoothDevice(address: bluetoothDevice?.id?.id);
    if(list.isNotEmpty){
      BlueDeviceInfo info =  list[0];
      if(info.blueName != null){
        return info.blueName;
      }
    }
    return null;
  }
  ///开始扫描设备
  ///listDevice返回的设备信息
  void startScan(Function(List<BlueDeviceInfo>?) listDevice, {int timeOut = 15,Function()? timeOutFunc,Function()? endScan}){
    CreekLog.info("开始扫描");
    deviceNameList = [];
    ///已经连接的设备
    getConnectedDevices()?.then((value) {

      for (BluetoothDevice r in value) {
        CreekLog.info("获取连接设备${r.name}");
        BlueDeviceInfo info = BlueDeviceInfo();
        info.device = r;
        bool add = true;
        deviceNameList?.forEach((element) {
          if (element.device?.id == r.id) {
            add = false;
          }
        });
        if (add == true) {
          deviceNameList?.add(info);
        }
        if (listDeviceListen != null) {
          listDeviceListen!(deviceNameList);
        }
      }
    });
    if (scanDownTime != null) {
      scanDownTime?.cancelTimer();
    }
    listDeviceListen = listDevice;
    ///[[Guid('00000FF0-0000-1000-8000-00805f9b34fb')]]
    ///[Guid('00002a37-0000-1000-8000-00805f9b34fb')]
    ///
    flutterBlue!.stopScan().then((value) {
      if(timeOutFunc != null){
        CreekLog.info("内部调用");
        scanDownTime = CountdownTime(count: timeOut);
        scanDownTime?.start((){
          CreekLog.info("扫描结束");
          flutterBlue!.stopScan();
          timeOutFunc();
        });
      }else{
        isAutoStart = false;
        CreekLog.info("外部调用");
        // scanDownTime = CountdownTime(count: timeOut);
        // scanDownTime?.start((){
        //   CreekLog.info("外部部调用 :扫描结束");
        //   flutterBlue!.stopScan();
        //
        // });
      }
      Future.delayed(const Duration(seconds: 1),(){
        flutterBlue!.startScan(
            scanMode: ScanMode.balanced,
            timeout:Duration(seconds: timeOut),
            withServices: [Guid('00000FF0-0000-1000-8000-00805f9b34fb'), Guid('0000180D-0000-1000-8000-00805f9b34fb')]).then((value) {
            CreekLog.info("扫描结束");
             if(endScan != null){
               endScan();
             }

        });
      });

    });

  }

  ///注册扫描监听事件
  void scanResultsListen() {
    flutterBlue?.scanResults.listen((List<ScanResult>? results) {
      scanResults = results ?? [];
      if (results!.isNotEmpty) {
        for (ScanResult r in results) {
          if (r.device.name.isNotEmpty) {
            BlueDeviceInfo info = BlueDeviceInfo();
            info.device = r.device;
            info.rssi = r.rssi;
            info.advertisementData = r.advertisementData;
            if(r.advertisementData.manufacturerData.isNotEmpty){
              r.advertisementData.manufacturerData.forEach((key, value) {
                info.firmwareId = key;
                if(value.length > 5){
                  List mac = value.sublist(0,6);
                  info.macAddress = mac.reversed.toList().map((byte) => byte.toRadixString(16).toUpperCase().padLeft(2, '0')).join(':');
                }
                if(value.length > 6){
                  info.deviceColor =  value[6];
                }

              });
            }
            bool add = true;
            deviceNameList?.forEach((element) {
              if (element.device?.id == r.device.id) {
                add = false;
              }
            });
            if (add == true) {
              deviceNameList?.add(info);
            }
            if(add){
              if (listDeviceListen != null) {
                listDeviceListen!(deviceNameList);
              }
            }
          }
        }
      } else {
        if (listDeviceListen != null) {
          listDeviceListen!(deviceNameList);
        }
      }
    });
  }
  ///停止扫描设备
  void stopScan() {
    flutterBlue!.stopScan();
  }

  ///切换设备 重连用这个方法来连接
  inTransitionDevice(BluetoothDevice device,{Function(bool)? connectStateListen}) async{
    ///手动
    isAuto = false;
    // ///先把上一个设备保存下来
    // BluetoothDevice? upDevice = bluetoothDevice;

    bool isBool = await CompleterExt.awaitFor<bool>((run) {
      startScan((e){
        e?.forEach((element) {
          if(element.device?.id.id == device.id.id){
            try{
              run(true);
            }catch(e){}
          }
        });
      },endScan: (){
        try{
          run(false);
        }catch(e){}
      });
    });
    if(isBool){
      List<BlueDeviceInfo> list = await BlueTool().getBluetoothDevice(address: device.id?.id);
      bool inTransition  = false;
      if(list.isNotEmpty){
        BlueDeviceInfo info =  list[0];
        inTransition = info.lastBind;
      }
      if(!inTransition){
        connectionStatus = ConnectionStatus.inTransition;
        postConnectionStatusNotify(ConnectionStatus.inTransition, device.name, 0);
      }
      connectionDevice(device,connectStateListen: (e) async{
        isAuto = true;
        if(e ){
          if(!inTransition){
           await CreekProcedure.insertBindDevice(name: device.name, address: device.id.id);
          }
        }
        if(connectStateListen != null){
          connectStateListen(e);
        }
      });
    }else{
      isAuto = true;
      if(connectStateListen != null){
        connectStateListen(false);
      }
    }
  }

  /// 连接设备 支持自动连接
   connectionDevice(BluetoothDevice device,
      {Duration? timeout = const Duration(seconds: 30), bool autoConnect = false, Function(bool)? connectStateListen}) async {
    CreekLog.info("连接设备id:${device.id.id} name:${device.name}");
    // isCancel = false;
    if(connectStateListen != null){
      ///手动
      isAuto = false;
    }

    if(!device.name.contains("Polar") && !device.name.contains("HRM") && !device.name.contains("HR70")){
      if (connectionStatus == ConnectionStatus.connecting) {
        CreekLog.info("连接失败,正在连接中");
        if(connectStateListen != null){
          isAuto = true;
          connectStateListen(false);
        }
        return false;
      }
      if (connectionStatus == ConnectionStatus.connect) {
        if(bluetoothDevice != null){
          if(bluetoothDevice?.id.id == device.id.id){
            CreekLog.info("连接失败,设备已经连接");
            if(connectStateListen != null){
              isAuto = true;
              connectStateListen(true);
            }
            return false;
          }
        }
      }
    }
    ///连接的时候停止扫描
    flutterBlue!.stopScan();
    if (connectStateListen != null) {
      _connectStateListen = connectStateListen;
    }
    try {
      CreekLog.info("状态：$connectionStatus");
      CreekLog.info("开始连接");
      if(device.name.contains("Polar") || device.name.contains("HRM") || device.name.contains("HR70")){
        if (bluetoothDevice2 != null) {
          await bluetoothDevice2!.disconnect();
          if (bluetoothStream2 != null) {
            bluetoothStream2!.cancel();
          }
          bluetoothDevice2 = null;
        }
        await device.connect(timeout: timeout, autoConnect: false);
        bluetoothDevice2 = device;
        if(bluetoothDevice2 != null){
          queryBlueState2();
        }
      }else{
        if(connectionStatus != ConnectionStatus.inTransition){
          connectionStatus = ConnectionStatus.connecting;
          postConnectionStatusNotify(ConnectionStatus.connecting, device.name, 0);
        }
        if (bluetoothDevice != null) {
          CreekLog.info("${bluetoothDevice?.id.id} : start disconnect");
          // await bluetoothDevice!.clearGattCache();
          await bluetoothDevice!.disconnect();
          CreekLog.info("${bluetoothDevice?.id.id} : end disconnect");
          if (bluetoothStream != null) {
            bluetoothStream!.cancel();
            bluetoothStream = null;
          }
          bluetoothDevice = null;
        }
        bluetoothDevice = device;

        // deviceStateErrorListen();
        DateTime dateTime = DateTime.now();

       await device.connect(timeout: timeout, autoConnect: false).then((value) => null,onError: (e){
         DateTime dateTime2 = DateTime.now();
         if(dateTime2.difference(dateTime).inSeconds < 3){
           if(failCount > 10){
             if(appLifecycleState == AppLifecycleState.resumed){
               if(_connectExceptionListen != null){
                 _connectExceptionListen!("The connection is abnormal, please restart the app");
               }
             }
             failCount = 0;
           }
           if(!e.toString().contains("Peripheral not found")){
             failCount++;
           }
         }
         CreekLog.info("连接错误:${e. toString()}");
         throw TimeoutException("连接错误${e.toString()}", timeout);
       });
        failCount = 0;
        if(connectionStatus != ConnectionStatus.connect){
          connectionStatus = ConnectionStatus.connect;
          queryBlueState();
        }
        ///设置完监听之后做一个初始化一个全局监听对象
        CreekGlobalNotice.instance;
      }
      return true;
    } catch (error) {
      if(connectionStatus != ConnectionStatus.connect){
        CreekLog.info("连接失败${error.toString()}");
        if(!device.name.contains("Polar") && !device.name.contains("HRM") && !device.name.contains("HR70")){
          connectionStatus = ConnectionStatus.unconnected;
          Future.delayed(const Duration(seconds: 5), () {
            startTimesScan();
          });
          postConnectionStatusNotify(ConnectionStatus.unconnected, device.name, 0);
        }
        _connectStateListenCallBack(false);
      }

      return false;
    }
  }

  ///外部调用连接回调连接状态
  _connectStateListenCallBack(bool isBool){
    if(_connectStateListen != null){
      _connectStateListen!(isBool);
      ///成功返回后回调置空
      _connectStateListen = null;
      isAuto = true;
    }
  }

  deviceStateErrorListen() {
    flutterBlue!.blueLog.listen((event) {
      if(event != null || event != ""){
        CreekLog.info( "蓝牙原生日志：${event ?? ""}");
      }
      if((event ?? "").contains("Peer removed pairing information")){
        failCount = 0;
      }
      ///在前台运行的时候去通知
     if(appLifecycleState == AppLifecycleState.resumed){
       if(_connectExceptionListen != null){
         _connectExceptionListen!(event ?? "");
       }
     }

    });
  }


  /// 发现服务
   deviceToDiscoverServices(BluetoothDevice device) async {
    // return await device.discoverServices();
    List<BluetoothService> services = [];
   bool isbool = await CompleterExt.awaitFor<bool>((run) async{
     CountdownTime countdownTime = CountdownTime();
     countdownTime.start((){
       run(false);
     });
     try{
       services = await device.discoverServices();
     }catch(e){
       CreekLog.info("发现服务catch:${e.toString()},主动掉用disconnect");
       await device.disconnect();
       _connectStateListenCallBack(false);
       return;
     }

     countdownTime.cancelTimer();
     if(services.isEmpty){
       CreekLog.info("发现服务失败");
       run(false);
     }else{
       run(true);
     }
   });

   if(isbool == false){
     CreekLog.info("发现服务失败,主动掉用disconnect");
     device.disconnect();
     _connectStateListenCallBack(false);
     return;
   }
    print("+++++++$services");
    for (var service in services){
      // do something with service
      CreekLog.info("uuid=${service.uuid}  deviceId=${service.deviceId}");
      if (service.uuid.toString().contains('00000ff0')) {
        var characteristics = service.characteristics;
        for (BluetoothCharacteristic c in characteristics) {
          // log("----BluetoothCharacteristic-->$c");
          print("----BluetoothCharacteristicUUID-->${c.uuid}");
          if (c.uuid.toString().contains("0001")) {
            /// 找到需要特征
            writeCharacteristic = c;
            CreekLog.info("找到写特征");
          } else if (c.uuid.toString().contains("0002")) {
            CreekLog.info("找到读特征");
            /// 找到需要特征
            if (readCharacteristic != null) {
              readCharacteristic = null;
            }
            readCharacteristic = c;
            bool isbool2 = await CompleterExt.awaitFor<bool>((run) async{
              CountdownTime countdownTime = CountdownTime();
              countdownTime.start((){
                try{
                  run(false);
                }catch(e){
                  CreekLog.info("设置通知错误${e.toString()}");
                }
              });
              try{
                await characteristicToSetNotifyValue(c!);
              }catch(e){
                CreekLog.info("设置通知失败${e.toString()}，主动调用disconnect");
                if(e.toString().contains("android.permission.BLUETOOTH_PRIVILEGED")){
                  if(appLifecycleState == AppLifecycleState.resumed){
                    if(_connectExceptionListen != null){
                      _connectExceptionListen!("android.permission.BLUETOOTH_PRIVILEGED");
                    }
                  }
                }
                _connectStateListenCallBack(false);
                countdownTime.cancelTimer();
                Future.delayed(const Duration(seconds: 1),(){
                  scanDownTime?.cancelTimer();
                  device.disconnect();
                });
                return;
              }
              //设置通知，可以接收传递过来的消息
              countdownTime.cancelTimer();
              try{
                run(true);
              }catch(e){CreekLog.info("回调异常${e.toString()}");}
            });
            if(!isbool2){
              device.disconnect();
              _connectStateListenCallBack(false);
              return;
            }
            CreekLog.info("设置通知成功");
            listenCharacteristicValue(c!);
            CreekLog.info("Authorization:$authorization");
            if(_connectStateListen == null && authorization == Authorization.verify){
              foundationCommand.bindingDevice(bindMethod: 0,callBack: (){
                foundationCommand.getDeviceInfo(callBack: (e){
                  _connectStateListenCallBack(true);
                  connectionStatus = ConnectionStatus.connect;
                  postConnectionStatusNotify(ConnectionStatus.connect, bluetoothDevice?.name, 0);
                  flutterBlue!.stopScan();
                  if(e.heartRatePush ?? false){
                    setIsAuto(false);
                    Future.delayed(const Duration(minutes: 1),(){
                      setIsAuto(true);
                    });
                    disconnectDevice(device);
                  }
                  foundationCommand.getMtuSize(callBack: (e) async {
                    CreekLog.info("板子最大的mtu:${e.getTranMtuSize}");
                    if(e.getTranMtuSize > 450){
                      mtu = 440;
                    }else if(e.getTranMtuSize > 180){
                      mtu = e.getTranMtuSize - 10;
                    }else{
                      mtu = e.getTranMtuSize - 2;
                    }
                    final mtu1 = await device.mtu.first;
                    CreekLog.info("手机板子最大的mtu:$mtu1");
                    // bluetoothDevice!.requestMtu(e);
                  });
                },errCallBack: (e){
                  _connectStateListenCallBack(false);
                  CreekLog.info("getDeviceInfo disconnect");
                  device.disconnect();
                });
              },authorizationFailure: () async{
                await interfaceProtocol.delBindDevice(address: CreekDeviceManger.instance!.bluetoothDevice!.id.id);

                if(io.Platform.isAndroid){
                  await device.dissPar();
                }else{
                  await device.disconnect();
                }
                await updateBindDeviceName();

              });
            }else{
              foundationCommand.getDeviceInfo(callBack: (e){
                _connectStateListenCallBack(true);
                connectionStatus = ConnectionStatus.connect;
                postConnectionStatusNotify(ConnectionStatus.connect, bluetoothDevice?.name, 0);
                flutterBlue!.stopScan();
                if(e.heartRatePush ?? false){
                  setIsAuto(false);
                  disconnectDevice(device);
                  if(_connectExceptionListen != null){
                    _connectExceptionListen!("The watch turned on heart rate push, forcing disconnection");
                  }
                }
                foundationCommand.getMtuSize(callBack: (e) async {
                  CreekLog.info("板子最大的mtu:${e.getTranMtuSize}");
                  if(e.getTranMtuSize > 450){
                    mtu = 440;
                  }else if(e.getTranMtuSize > 180){
                    mtu = e.getTranMtuSize - 10;
                  }
                  final mtu1 = await device.mtu.first;
                  CreekLog.info("手机板子最大的mtu:$mtu1");
                  // bluetoothDevice!.requestMtu(e);
                });
              },errCallBack: (e){
                _connectStateListenCallBack(false);
                CreekLog.info("getDeviceInfo disconnect");
                device.disconnect();
              });
            }

            // _connectStateListenCallBack(true);
            // connectionStatus = ConnectionStatus.connect;
            // postConnectionStatusNotify(ConnectionStatus.connect, bluetoothDevice?.name, 0);
            // listenCharacteristicValue(c!);
            // flutterBlue!.stopScan();
            // foundationCommand.getMtuSize(callBack: (e) async {
            //   CreekLog.info("板子最大的mtu:${e.getTranMtuSize}");
            //   if(e.getTranMtuSize > 450){
            //     mtu = 440;
            //   }else if(e.getTranMtuSize > 180){
            //     mtu = e.getTranMtuSize - 10;
            //   }
            //   final mtu1 = await device.mtu.first;
            //   CreekLog.info("手机板子最大的mtu:$mtu1");
            //   // bluetoothDevice!.requestMtu(e);
            // });

            // listenCharacteristicValue(c!);
            // foundationCommand.getDeviceInfo(callBack: (e){
            //   _connectStateListenCallBack(true);
            //   connectionStatus = ConnectionStatus.connect;
            //   postConnectionStatusNotify(ConnectionStatus.connect, bluetoothDevice?.name, 0);
            //   flutterBlue!.stopScan();
            //   foundationCommand.getMtuSize(callBack: (e) async {
            //     CreekLog.info("板子最大的mtu:${e.getTranMtuSize}");
            //     if(e.getTranMtuSize > 450){
            //       mtu = 440;
            //     }else if(e.getTranMtuSize > 180){
            //       mtu = e.getTranMtuSize - 10;
            //     }
            //     final mtu1 = await device.mtu.first;
            //     CreekLog.info("手机板子最大的mtu:$mtu1");
            //     // bluetoothDevice!.requestMtu(e);
            //   });
            // },errCallBack: (e){
            //   _connectStateListenCallBack(false);
            //   CreekLog.info("getDeviceInfo disconnect");
            //   device.disconnect();
            // });

          }
        }
      }
      if(device.name.contains("Polar") || device.name.contains("HRM") || device.name.contains("HR70")){
        if (service.uuid.toString().contains('180d')) {
          CreekLog.info("---service is 180d---");
          var characteristics = service.characteristics;
          for (BluetoothCharacteristic c in characteristics) {
            // log("----BluetoothCharacteristic-->$c");
            print("----BluetoothCharacteristicUUID-->${c.uuid}");
            if (c.uuid.toString().contains("2902")) {
              /// 找到需要特征
              writeCharacteristic2 = c;
              print("is 2902");
            } else if (c.uuid.toString().contains("2a37")) {
              /// 找到需要特征
              _connectStateListenCallBack(true);
              readCharacteristic2 = c;
              await characteristicToSetNotifyValue(c!); //设置通知，可以接收传递过来的消息
              listenCharacteristicValue(c!);
              print("is 2a37");
            }
          }
        }
      }
    }

    if(writeCharacteristic == null || readCharacteristic == null){
      device.disconnect();
      _connectStateListenCallBack(false);
      return;
    }
  }

  /// 设置通知，可以接收传递过来的消息
  Future<bool> characteristicToSetNotifyValue(BluetoothCharacteristic characteristic) async {
    return await characteristic.setNotifyValue(true);
  }

  /// 监听外设主动发过来的消息
  void listenCharacteristicValue(
    BluetoothCharacteristic characteristic,
  ) async {
    if (characteristic == readCharacteristic) {
      if (notifySubscription != null) {
       await notifySubscription!.cancel();
      }
      notifySubscription = characteristic.value.listen((data) {
        CreekLog.info("读取的设备信息是>>>>>>${BlueTool.list10Tolist16(data)}");
        if (data.isNotEmpty) {
          int cmd = data![0];
          ///判断帧命令
          if ([193, 194, 195, 204, 205].contains(cmd) && _creekListen != null) {
            _creekListen!.blueWriteListener(data);
          } else if ([209, 210, 211, 212, 213,214,215,216].contains(cmd) && _creekFileListen != null) {
            _creekFileListen!.blueWriteListener(data);
          } else if ([218, 219, 220].contains(cmd) && _creekDownListen != null) {
            ///固件请求上传
            CreekLog.info("固件请求上传");
            _creekDownListen!.blueWriteListener(data);
          } else {}
        }
      });
    }
    if (characteristic == readCharacteristic2) {
      notifySubscription2 = characteristic.value.listen((data) {
        CreekLog.info("读取的心率信息是>>>>>>${BlueTool.list10Tolist16(data)}");
        if (data.isNotEmpty) {
          if (_creekDownListen != null) {
            _creekDownListen!.blueWriteListener(data);
          }
        }
      });
    }
  }

  /// 写入特征值数据
  Future<bool> characteristicToWriteValue(
    BluetoothCharacteristic characteristic,
    List<int> list, {
    bool withoutResponse = true,
  }) async {
    try {
      await characteristic.write(list, withoutResponse: withoutResponse);
      CreekLog.info("写入成功");
      return true;
    } catch (e) {
      CreekLog.info(e.toString());
      if(e.toString().contains("have you connected first") || e.toString().contains("service could not be located on the device") || e.toString().contains("Attempt to read from field")){
        // if(appLifecycleState == AppLifecycleState.resumed){
        //   if(_connectExceptionListen != null){
        //     _connectExceptionListen!("have you connected first");
        //   }
        // }

        if(CreekDeviceManger.instance?.bluetoothDeviceState == BluetoothDeviceState.connected){
          if( CreekDeviceManger.instance.bluetoothDevice != null){
            CreekLog.info("写入异常，进行断线操作");
            CreekDeviceManger.instance.bluetoothDevice!.disconnect();
            bluetoothDeviceState = BluetoothDeviceState.disconnected;
            connectionStatus = ConnectionStatus.unconnected;
            postConnectionStatusNotify(ConnectionStatus.unconnected, bluetoothDevice?.name, 0);
            if (notifySubscription != null) {
              notifySubscription!.cancel();
            }
            isAutoStart = false;
            Future.delayed(const Duration(seconds: 2),(){
              startTimesScan();
            });

          }
        }
      }

      return false;
    }
  }





  /// 读取特征值数据
  Future<List<int>> characteristicToReadValue(BluetoothCharacteristic characteristic) async {
    return await characteristic.read();
  }

  /// 获取连接的设备
  Future<List<BluetoothDevice>>? getConnectedDevices() {
    return flutterBlue?.connectedDevices;
  }

  /// 取消设备连接
  Future<dynamic> disconnectDevice(BluetoothDevice device) async {
    if(device.name.contains("Polar") || device.name.contains("HRM") || device.name.contains("HR70")){
      return await bluetoothDevice2!.disconnect();
    }else{
      // isCancel = true;
      if(bluetoothDevice != null){
        return await bluetoothDevice!.disconnect();
      }
    }

  }

  ///**********************************
  ///根据设备查状态
  ///**********************************
  bool queryBlueDeviceState(BluetoothDevice device) {
    if (device == bluetoothDevice) {
      return (bluetoothDeviceState == BluetoothDeviceState.connected) ? true : false;
    } else if (device == bluetoothDevice2) {
      return (bluetoothDeviceState2 == BluetoothDeviceState.connected) ? true : false;
    }
    return false;
  }

  ///**********************************
  ///查询设备连接状态
  ///**********************************
  queryBlueState() async {
    CreekLog.info("queryBlueState");
    if (bluetoothDevice == null) return;
    if(bluetoothStream != null){
      bluetoothStream!.cancel();
      bluetoothStream = null;
    }
    bluetoothStream = bluetoothDevice!.state.listen((event) async {
      CreekLog.info("设备1连接状态$event");
      bluetoothDeviceState = event;
      ///disconnected 尝试连接
      if (event == BluetoothDeviceState.disconnected) {
        findSever = 0;
        _connectStateListenCallBack(false);
        connectionStatus = ConnectionStatus.unconnected;
          postConnectionStatusNotify(ConnectionStatus.unconnected, bluetoothDevice?.name, 0);
        if (notifySubscription != null) {
          notifySubscription!.cancel();
        }
        isAutoStart = false;
        Future.delayed(const Duration(seconds: 1),(){
          startTimesScan();
        });

      } else if (event == BluetoothDeviceState.connected && findSever == 0) {
        findSever+=1;
        flutterBlue!.stopScan();
        CreekLog.info("发现服务");
        deviceToDiscoverServices(bluetoothDevice!);
        connectionStatus = ConnectionStatus.connect;
        // isCancel = false;
      }

    });
  }
  queryBlueState2() async {
    bluetoothStream2 = bluetoothDevice2!.state.listen((event) async{
      CreekLog.info("设备2连接状态$event");
      postConnectionStatusNotify(ConnectionStatus.unconnected, bluetoothDevice2?.name ?? "", 0);
      bluetoothDeviceState2 = event;
      ///disconnected 尝试连接
      if (event == BluetoothDeviceState.disconnected) {
        if (notifySubscription2 != null) {
          notifySubscription2!.cancel();
        }
        if (isBlueON == true) {
          if (bluetoothDevice2 != null) {
            connectionDevice(bluetoothDevice2!);
          }
        }
      }else{
        await deviceToDiscoverServices(bluetoothDevice2!);
      }

    });
  }

  ///**********************************
  ///查询蓝牙是否开启  true 开启 false 关闭
  ///**********************************
  blueStateON(Function()? callBack) async {
    isBlueON = await BleManger.instance?.flutterBlue?.isOn ?? false;
    if(callBack != null){
      callBack!();
    }
    CreekLog.info("isBlueON = $isBlueON");
    BleManger.instance?.flutterBlue?.state.listen((state) {
      if (state == BluetoothState.on) {
        CreekLog.info("蓝牙状态开启");
        isFindDevice = false;
        isAutoStart = false;
        Future.delayed(const Duration(seconds: 1), () {
          startTimesScan();
        });
      } else if (state == BluetoothState.off || state == BluetoothState.unavailable) {

        isFindDevice = false;
        if (notifySubscription != null) {
          notifySubscription!.cancel();
        }
        if (notifySubscription2 != null) {
          notifySubscription2!.cancel();
        }
        connectionStatus = ConnectionStatus.unconnected;
        postConnectionStatusNotify(ConnectionStatus.unconnected, bluetoothDevice?.name, 0);
        bluetoothDeviceState = BluetoothDeviceState.disconnected;
        if(bluetoothDevice != null){
          bluetoothDevice!.disconnect();
        }
        CreekLog.info("蓝牙状态关闭");
        findSever = 0;
        scanDownTime?.cancelTimer();
      }
      if(state == BluetoothState.on || state == BluetoothState.off){
        isBlueON = state == BluetoothState.on ? true : false;
        if (blueOnStateListen != null) {
          blueOnStateListen!(isBlueON);
        }
      }

    });
  }

  ///开始定时扫描
  startTimesScan() async {

    if(isBlueON == false) return;
    if(isAuto == false)return;
    if(appLifecycleState == AppLifecycleState.resumed){
      autoConnect();
    }else{
      List<BlueDeviceInfo> list = await devices;
      if (list.isEmpty) {
        CreekLog.info("没有绑定设备，自连取消");
        return;
      }
      for (var info in list) {
        if (info.lastBind) {
          CreekLog.info("后台运行直接连接绑定的设备");
          isAutoStart = false;
          connectionDevice(info.device!);
        }
      }
    }
  }

  ///自动连接
  autoConnect() async {
    if(isBlueON == false) return;
    if (isAuto == false) {
      CreekLog.info("手动扫描中，取消自动扫描");
      return;
    }
    if (connectionStatus == ConnectionStatus.connecting || connectionStatus == ConnectionStatus.connect) return;
    CreekLog.info("开始自连");
    CreekLog.info("${isBlueON == false}");
    // CreekLog.info(StackTrace.current.toString());
    CreekLog.info("是否自连状态${isAutoStart}");
    if (isAutoStart) return;
    List<BlueDeviceInfo> list = await devices;
    if (list.isEmpty) {
      CreekLog.info("没有绑定设备，自连取消");
      return;
    }
    isAutoStart = true;
    bool isFind = false;
    startScan((e) {
      if (isFind || connectionStatus == ConnectionStatus.inTransition || connectionStatus == ConnectionStatus.connecting || connectionStatus == ConnectionStatus.connect) return;
      for (var info in list) {
        if (info.lastBind) {
          if (e != null) {
            for (var info2 in e) {
              if (info.device?.id.id == info2.device?.id.id) {
                isFind = true;
                CreekLog.info("扫描到绑定的设备");
                CreekLog.info("开始自动连接绑定的设备");
                isAutoStart = false;
                flutterBlue?.stopScan();
                scanDownTime?.cancelTimer();
                connectionDevice(info.device!);
                break;
              }
            }
          }
          break;
        }
      }
    }, timeOutFunc: () async{
      CreekLog.info("扫描超时尝试直接连接");
      List<BlueDeviceInfo> list = await devices;
      isAutoStart = false;
      for (var info in list) {
        if (info.lastBind) {
          CreekLog.info("发现绑定设备准备连接");
          if (connectionStatus == ConnectionStatus.inTransition || connectionStatus == ConnectionStatus.connecting  || connectionStatus == ConnectionStatus.connect) return;
          connectionDevice(info.device!);
        }
      }
    });
  }




}
