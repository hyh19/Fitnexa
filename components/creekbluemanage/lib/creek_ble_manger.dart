import 'dart:async';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

typedef ScanResultHandler = void Function(List<ScanResult>? datas);
typedef CharacteristicHandler = void Function(List<int>? datas);

class BleManger {

  FlutterBluePlus? flutterBlue;
  BluetoothDevice? bluetoothDevice;

  factory BleManger() => _getInstance();
  static BleManger get instance => _getInstance();
  static BleManger? _instance;

  BleManger._internal(){
    flutterBlue = FlutterBluePlus.instance;
  }

  static BleManger _getInstance(){
    _instance ??= BleManger._internal();
    return _instance!;
  }

  ///开始扫描设备
  void startScan(ScanResultHandler dataHandler,{int timeOut = 60,List<Guid> withServices = const []})
  {
    flutterBlue?.startScan(
        timeout: Duration(seconds: timeOut),
        withServices:withServices
    );
    flutterBlue?.scanResults.listen(dataHandler);

  }
  ///停止扫描设备
  void stopScan(){
    flutterBlue?.stopScan();
  }
  /// 连接设备 支持自动连接
  Future<void> connectionDevice(BluetoothDevice device,{Duration? timeout,bool autoConnect = false}) async {
    bluetoothDevice = device;
    await BleManger.instance.disconnectDevice(device!);
    await device.connect(timeout:timeout,autoConnect: autoConnect);
  }
  /// 发现服务
  Future<List<BluetoothService>> deviceToDiscoverServices(BluetoothDevice device) async {
    return await device.discoverServices();
  }
  /// 设置通知，可以接收传递过来的消息
  Future<bool> characteristicToSetNotifyValue(BluetoothCharacteristic characteristic) async {
    return await characteristic.setNotifyValue(true);
  }
  /// 监听外设主动发过来的消息
  void listenCharacteristicValue(
      BluetoothCharacteristic characteristic,
      CharacteristicHandler characteristicHandler
      ) {
    characteristic.value.listen(characteristicHandler);
  }
  /// 写入特征值数据
  Future<void> characteristicToWriteValue(
      BluetoothCharacteristic characteristic,
      List<int> list,
      {
        bool withoutResponse = false
      }
      )async {
    print("1111111");
    return await characteristic.write(list,withoutResponse: withoutResponse);
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
    return await device.disconnect();
  }
  ///查看当前设备的连接状态
  deviceState(){
    bluetoothDevice!.state.listen((event) {
      print(event);
    });
  }



}