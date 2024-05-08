import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creektool/creek_tool.dart';
import 'package:get/get.dart';

class ConnectDeviceLogic extends GetxController {
  Function(bool)? _connectStateListen;
  BlueDeviceInfo? blueDeviceInfo;
  @override
  void onInit() {
    super.onInit();
    print("ConnectDevice___onInit");
  }

  @override
  void onClose() {
    super.onClose();
    print("ConnectDevice___onClose");
    removeMyListener();
    removeBlueOn();
  }

  void removeBlueOn() {
    CreekLog.info('ConnectDeviceLogic_removeBlueOn_setIsAuto(true)');
    print('ConnectDeviceLogic_removeBlueOn');
    CreekDeviceManger.instance?.setIsAuto(true);
    // FIXME: 暂不引入
    // BluListenUtils.instance.removeBlueOnStateListen('ConnectDeviceLogic');
  }

  void removeMyListener() {
    CreekLog.info('---removeConnectStateListen------');
    _connectStateListen = null;
    CreekDeviceManger.instance.removeConnectStateListen();
  }

  ///连接
  void connectDevice(BlueDeviceInfo blueDeviceInfo,
      {required Function(bool isSuccess) callback}) async {
    CreekDeviceManger.instance?.setIsAuto(false);
    // FIXME: 暂不引入
    // BluListenUtils.instance.addBlueOnStateListen('ConnectDeviceLogic', this);
    this.blueDeviceInfo = blueDeviceInfo;
    _connectStateListen ??= (e) async {
      CreekLog.info('ConnectDeviceLogic_connectStateListen-返回状态-$e');
      removeMyListener();
      removeBlueOn();
      callback.call(e);
    };
    CreekLog.info("ConnectDeviceLogic_开始连接设备connectionDevice");
    CreekDeviceManger.instance.connectionDevice(
      blueDeviceInfo.device!,
      connectStateListen: _connectStateListen,
    );
  }

  // @override
  // void callBackBlueOnStatusListen(bool state) {
  //   ///连接失败
  //   Get.toNamed(Routes.paringWatchPage,
  //       arguments: blueDeviceInfo, parameters: {'state': '4', "page": "0"});
  // }
}
