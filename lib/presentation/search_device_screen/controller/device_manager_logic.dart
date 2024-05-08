import 'dart:ui';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:get/get.dart';

class DeviceManagerLogic extends GetxController {
  DeviceModel? deviceModel;

  /// 获取设备信息
  Future<DeviceModel?> getInfo() async {
    deviceModel = await interfaceProtocol.getDeviceInfo();
    update();
    return deviceModel;
  }

  /// 更新设备信息
  void updateInfo({VoidCallback? callback,}) {
    foundationCommand.getDeviceInfo(callBack: (_) async {
      await getInfo();
      callback?.call();
    },errCallBack: (msg){
      callback?.call();
    });
  }
}
