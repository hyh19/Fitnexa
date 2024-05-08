
import 'dart:async';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_blue_tool.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/services.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';


class CreekScanBind{

  factory CreekScanBind() => _getInstance();
  static CreekScanBind get instance => _getInstance();
  static CreekScanBind? _instance;

  ///写入特征值
  BluetoothCharacteristic? writeCharacteristic;

  ///监听特征值
  BluetoothCharacteristic? readCharacteristic;

  StreamSubscription<List<int>>? notifySubscription;

  BluetoothDevice? bluetoothDevice;

  List<int> macIds = [];
  ///扫描结束连还没找到设备，会走这个回掉
  Function(BlueDeviceInfo)? _scanBack;

  bool isBool = false;

  ///是否找到设备
  bool isFind = false;

  Function()? _endScan;

  CreekScanBind._internal() {
    // scanResultsListen();
  }

  static CreekScanBind _getInstance() {
    _instance ??= CreekScanBind._internal();
    return _instance!;
  }


  scanBind(String macId,{Function(BlueDeviceInfo)? scanBack,int outTime = 20,Function()? endScan}){
    isFind = false;
    _scanBack =  scanBack;
    _endScan = endScan;
    macIds = [];
    List<String> strs =  macId.split(":");
    strs.forEach((e) {
      macIds.add(BlueTool.radix16from10(e));
    });
    startScan(outTime: outTime);
    getConnectionDevice();

  }
  startScan({int outTime = 20}) async{
    isBool = true;

    CreekDeviceManger.instance.startScan((e){
      if ((e ?? []).isNotEmpty) {
        for (BlueDeviceInfo r in e!) {
          Map<int,List<int>> dic =  r.advertisementData?.manufacturerData ?? {};
          dic.forEach((key, value) {
            if(value.length > 5){
              if(value.sublist(0,6).toList().toString() == macIds.toString()){
                BlueDeviceInfo info = BlueDeviceInfo();
                info.device = r.device;
                info.advertisementData = r.advertisementData;
                if(!isFind){
                  isFind = true;
                  if(_scanBack != null){
                    _scanBack!(info);
                    _scanBack = null;
                  }
                }
                CreekDeviceManger.instance.flutterBlue?.stopScan();
              }
            }
          });
        }
      }
    },endScan: (){
      if(isFind == false){
        if(_endScan != null){
          _endScan!();
        }
      }
    });

    // BleManger.instance.flutterBlue?.stopScan().then((value) {
    //   Future.delayed(const Duration(seconds: 1),(){
    //     BleManger.instance.flutterBlue?.startScan(
    //         scanMode: ScanMode.balanced,
    //         timeout:Duration(seconds: outTime),
    //         withServices: [ Guid('0000180D-0000-1000-8000-00805f9b34fb')]).then((value) {
    //       if(isFind == false){
    //         if(_endScan != null){
    //           _endScan!();
    //         }
    //       }
    //       CreekLog.info(" 扫码绑定扫描结束");
    //       isBool = false;
    //     });
    //   });
    // });

    // await CreekDeviceManger.instance.flutterBlue?.stopScan();
    // CreekDeviceManger.instance.flutterBlue?.startScan(
    //     timeout: Duration(seconds: outTime),
    //     withServices: [Guid('00000FF0-0000-1000-8000-00805f9b34fb')]).then((value) {
    //       print("isFind==$isFind");
    //       if(isFind == false){
    //         if(_endScan != null){
    //           print("isFind==_endScan");
    //           _endScan!();
    //         }
    //       }
    //   CreekLog.info(" 扫码绑定扫描结束");
    //   isBool = false;
    // });
  }
  ///注册扫描监听事件
  // void scanResultsListen() {
  //   BleManger.instance.flutterBlue?.scanResults.listen((List<ScanResult>? results) {
  //     if(!isBool){
  //       return;
  //     }
  //     if (results!.isNotEmpty) {
  //       for (ScanResult r in results) {
  //       Map<int,List<int>> dic =  r.advertisementData.manufacturerData;
  //       dic.forEach((key, value) {
  //         if(value.toList().toString() == macIds.toString()){
  //           BlueDeviceInfo info = BlueDeviceInfo();
  //           info.device = r.device;
  //           info.advertisementData = r.advertisementData;
  //           if(!isFind){
  //             isFind = true;
  //             if(_scanBack != null){
  //               _scanBack!(info);
  //               _scanBack = null;
  //             }
  //           }
  //
  //           CreekDeviceManger.instance.flutterBlue?.stopScan();
  //         }
  //       });
  //       }
  //     } else {
  //
  //     }
  //   });
  // }
  void getConnectionDevice() async{
    CreekDeviceManger.instance.flutterBlue?.connectedDevices.then((value) async{
      for (BluetoothDevice e in value){
        if(!isFind){
          try{
            await e.connect(timeout: const Duration(seconds: 10), autoConnect: false);
            bluetoothDevice = e;
            deviceToDiscoverServices(e,success: () async{
              try{
                await writeCharacteristic?.write([0xa0,0x01]);
              }catch(error){
                e.disconnect();
              }
            });
          }on PlatformException catch (error, e){
            if(error.code == "already_connected"){
              if(!isFind){
                isFind = true;
                if(_scanBack != null){
                  BlueDeviceInfo info = BlueDeviceInfo();
                  info.device = bluetoothDevice;
                  _scanBack!(info);
                  _scanBack = null;
                }
              }
            }
          }
        }
      }});
  }
  /// 发现服务
  deviceToDiscoverServices(BluetoothDevice device,{Function()? success,Function()? failure}) async {
    List<BluetoothService> services = await device.discoverServices();
    services.forEach((service) {
      CreekLog.info("uuid=${service.uuid}  deviceId=${service.deviceId}");
      if (service.uuid.toString().contains('00000ff0')) {
        var characteristics = service.characteristics;
        for (BluetoothCharacteristic c in characteristics) {
          if (c.uuid.toString().contains("0001")) {
            /// 找到需要特征
            writeCharacteristic = c;
          } else if (c.uuid.toString().contains("0002")) {
            /// 找到需要特征
            if (readCharacteristic != null) {
              readCharacteristic = null;
            }
            readCharacteristic = c;
          }
        }
      }
    });
    try {
      if(readCharacteristic != null && writeCharacteristic != null){
        await characteristicToSetNotifyValue(readCharacteristic!); //设置通知，可以接收传递过来的消息
        listenCharacteristicValue(readCharacteristic!);
        if(success != null){
          success!();
        }
      }else{
        if(failure != null){
          failure!();
        }
      }
    } catch (e) {
      CreekLog.info("设置通知失败${e.toString()}");
      if(failure != null){
        failure!();
      }
    }
  }

  /// 设置通知，可以接收传递过来的消息
  Future<bool> characteristicToSetNotifyValue(BluetoothCharacteristic characteristic) async {
    return await characteristic.setNotifyValue(true);
  }

  /// 监听外设主动发过来的消息
  void listenCharacteristicValue(
      BluetoothCharacteristic characteristic,
      ) {
    if (characteristic == readCharacteristic) {
      if (notifySubscription != null) {
        notifySubscription!.cancel();
      }
      notifySubscription = characteristic.value.listen((data) {
        CreekLog.info("扫码读取设备信息>>>>>>${BlueTool.list10Tolist16(data)}");
        if(data.length > 7){
          if(data[0] ==  0xa0 && data[1] == 0x01){
           if(macIds.toString() == data.sublist(2,8).toString()){
             try{
               CreekLog.info("扫码绑定断开连接");
               bluetoothDevice?.disconnect();
               notifySubscription!.cancel();
               if(!isFind){
                 isFind = true;
                 if(_scanBack != null){
                   BlueDeviceInfo info = BlueDeviceInfo();
                   info.device = bluetoothDevice;
                   _scanBack!(info);
                   _scanBack = null;
                 }
               }
             }catch(e){
               CreekLog.info("扫码绑定断连异常");
             }
           }
          }
        }

      });
    }
  }
  
  /// 读取特征值数据
  Future<List<int>> characteristicToReadValue(BluetoothCharacteristic characteristic) async {
    return await characteristic.read();
  }




}

