import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creek_blue_manage/creek_listen.dart';
import 'package:creektool/creek_tool.dart';
import 'package:get/get.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class DeviceLogic extends GetxController  with CreekBlueConnectionStatusListen{

  List<BlueDeviceInfo>? listDevice;
  List<BlueDeviceInfo>? bindDevice;
  List<BlueDeviceInfo> searchDevice = [];
  Map<String,bool> bluetoothDeviceStateMap = {};
  int a = 0;
  String input = "";
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // CreekPermission.isBlue();
    CreekDeviceManger.instance.setIsAuto(false);
    CreekDeviceManger.instance.setConnectionStatusNotify(this);
    getBindDevices();
    gerCon();

  }


 //测试
  gerCon() async{
   dynamic a = await CreekDeviceManger.instance.getConnectedDevices();
   print("object");
  }

  getBindDevices() async{
    bindDevice = await CreekDeviceManger.instance.devices;
    startScan();
  }
  ///扫描蓝牙
  void startScan(){
    CreekDeviceManger.instance.startScan((e) {
      a++;
      print(a);
      listDevice = e;
      listDevice?.sort((a,b) => (b.rssi ?? 0).compareTo(a.rssi ?? 0));
      searchDevice = [];
      for (var element in listDevice!) {
        if((element.macAddress ?? "").contains(input) || (element.device?.name ?? "").contains(input)){
          searchDevice.add(element);
        }
      }

      update();
    },endScan: (){
      update();
    });
  }
  ///搜索
  search(String e){
    input = e;
    searchDevice = [];
    if(e == ""){
      searchDevice.addAll(listDevice ?? []);
    }else{
      for (var element in listDevice!) {
        if((element.macAddress ?? "").contains(input) || (element.device?.name ?? "").contains(input)){
          searchDevice.add(element);
        }
      }
    }
    update();
  }

  @override
  void onClose() {
    // TODO: implement dispose
    CreekDeviceManger.instance.stopScan();
    CreekDeviceManger.instance.setIsAuto(true);
    Get.back(result: "");
  }

  @override
  void creekBlueConnectionStatusListen(ConnectionStatus status, String? deviceName, int progress) {
    // TODO: implement creekBlueConnectionStatusListen
    update();
  }




}
