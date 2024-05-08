import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creekbase/generated/l10n.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../../../data/models/listUser/post_list_user_req.dart';
import '../../../data/models/listUser/post_list_user_resp.dart';
import '../models/search_device_model.dart';
import 'device_manager_logic.dart';

/// A controller class for the SearchDeviceScreen.
///
/// This class manages the state of the SearchDeviceScreen, including the
/// current searchDeviceModelObj
class SearchDeviceController extends GetxController {
  Rx<SearchDeviceModel> searchDeviceModelObj = SearchDeviceModel().obs;

  PostListUserResp postListUserResp = PostListUserResp();

  late List<BlueDeviceInfo> dataList;
  late List<BlueDeviceInfo> dataBindList;
  bool isShowRetry = false;
  String searchTitle = "";
  BlueDeviceInfo? currentBluetoothDevice;
  BlueDeviceInfo? connectBluetoothDevice;
  bool connectLoading = false;
  bool showPairingWatch = false;
  Function(bool)? connectStateListen;
  CreekCommandProtocol? foundationCommands;
  Map<String, dynamic> map = <String, dynamic>{};
  List<dynamic> listDialItem = [];

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/list API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callListUser(Map req) async {
    try {
      postListUserResp = await Get.find<ApiClient>().listUser(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM'
        },
        requestData: req,
      );
      _handleListUserSuccess();
    } on PostListUserResp catch (e) {
      postListUserResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  /// handles the success response for the API
  void _handleListUserSuccess() {}

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/list] API
  ///
  /// It has [PostListUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onListUserSuccess()` function.
  /// If the call fails, the function calls the `_onListUserError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    PostListUserReq postListUserReq = PostListUserReq(
      options: Options(
        page: Constants1.kEY1,
        limit: Constants1.kEY1,
      ),
    );
    try {
      await callListUser(
        postListUserReq.toJson(),
      );
      _onListUserSuccess();
    } on PostListUserResp {
      _onListUserError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {}
  }

  @override
  void onInit() {
    super.onInit();
    dataList = [];
    dataBindList = [];
    // BaseInfoModel.instance.previousRoute =
    //     Get.parameters["backPreviousRoute"] ?? Routes.cwMainHomePage;
    // CreekLog.info(
    //     "${Get.parameters["backPreviousRoute"]}--instance.previousRoute=${BaseInfoModel.instance.previousRoute}");
    startScan();
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onListUserSuccess() {
    Fluttertoast.showToast(msg: postListUserResp.message.toString() ?? '');
  }

  /// Displays a snackBar message when the action is triggered.
  /// The message is obtained from the `PostListUserResp` object.
  void _onListUserError() {
    Get.rawSnackbar(message: postListUserResp.message.toString() ?? '');
  }

  void startScan() async {
    CreekLog.info("SearchWatchDeviceLogic__startScan_setIsAuto(false)");
    CreekDeviceManger.instance.setIsAuto(false);
    isShowRetry = false;
    connectBluetoothDevice = null;
    dataList.clear();
    searchTitle = "";
    List<BlueDeviceInfo> bindDevices = await CreekDeviceManger.instance.devices;
    print("bindDevices==${bindDevices.toString()}");
    update();
    DeviceModel? deviceModel = await Get.find<DeviceManagerLogic>().getInfo();
    CreekDeviceManger.instance.startScan(
        (e) async {
          if (e != null && e.isNotEmpty) {
            //  dataBindList.clear();
            listDialItem.clear();
            e.sort((a, b) => (b.rssi ?? 0).compareTo(a.rssi ?? 0));
            List<BlueDeviceInfo> list = List.from(e);
            for (var element in list) {
              if (CreekDeviceManger.instance
                  .queryBlueDeviceState(element.device!)) {
                element.connectionStatus = true;
                element.blueName = await getBlueName(element.device!.id.id);
              }
              if (bindDevices.isNotEmpty) {
                if (deviceModel != null &&
                    (deviceModel.blueDeviceInfo?.device?.id.id ?? "-1") ==
                        (element.device?.id.id ?? "-2")) {
                  currentBluetoothDevice = element;
                }
              }
              // for (var model in bindDevices) {
              //   if ((element.device?.id.id??"-1") ==(model.device?. id.id??"-2")) {
              //     dataBindList.add(element);
              //   }
              // }
            }
            dataList = List.from(list);
            // if(dataBindList.isNotEmpty){
            //   for (var element in dataBindList) {
            //     dataList.remove(element);
            //   }
            // }
            if (currentBluetoothDevice != null) {
              dataList?.remove(currentBluetoothDevice);
            }
            if (connectBluetoothDevice != null) {
              dataList.remove(connectBluetoothDevice);
            }
          }
          update();
        },
        timeOut: 15,
        endScan: () async {
          if (dataList != null && dataList.isNotEmpty) {
            listDialItem.clear();
            //  dataBindList.clear();
            dataList.sort((a, b) => (b.rssi ?? 0).compareTo(a.rssi ?? 0));
            List<BlueDeviceInfo> list = List.from(dataList);
            for (var element in list) {
              if (CreekDeviceManger.instance
                  .queryBlueDeviceState(element.device!)) {
                element.connectionStatus = true;
                element.blueName = await getBlueName(element.device!.id.id);
              }
              if (bindDevices.isNotEmpty) {
                if (deviceModel != null &&
                    (deviceModel.blueDeviceInfo?.device?.id.id ?? "-1") ==
                        (element.device?.id.id ?? "-2")) {
                  currentBluetoothDevice = element;
                }
              }
              // for (var model in bindDevices) {
              //   if ((element.device?.id.id??"-1") ==(model.device?. id.id??"-2")) {
              //     dataBindList.add(element);
              //   }
              // }
            }
            dataList = List.from(list);
            // if(dataBindList.isNotEmpty){
            //   for (var element in dataBindList) {
            //     dataList.remove(element);
            //   }
            // }
            if (currentBluetoothDevice != null) {
              dataList?.remove(currentBluetoothDevice);
            }
            if (connectBluetoothDevice != null) {
              dataList.remove(connectBluetoothDevice);
            }
          }
          CreekLog.info("设备扫描结束");
          searchTitle = S.current.Search_finished;
          isShowRetry = true;
          update();
        });
  }

  getBlueName(String address) async {
    String? name = await CreekDeviceManger.instance.getDeviceName(address);
    return name;
  }

  Future<void> connect(BlueDeviceInfo blueDeviceInfo) async {
    // stopScan();
    connectBluetoothDevice = blueDeviceInfo;
    connectLoading = true;
    dataList.remove(blueDeviceInfo);
    update();
    connectStateListen ??= (e) async {
      connectLoading = false;
      removeMyListener();
      CreekLog.info('SearchWatchDeviceLogic_connectStateListen-返回状态-$e');
      if (e) {
        DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo(
            address: blueDeviceInfo.device?.id.id);
        CreekLog.info(
            "SearchWatchDeviceLogic_deviceModel___${deviceModel == null ? "" : deviceModel?.toString()}");
        if (deviceModel?.isRecoveryMode ?? false) {
          CreekLog.info("SearchWatchDeviceLogic_处于恢复模式，直接跳到ota界面升级");
          // Get.offNamed(Routes.watchUpdatePage,
          //     arguments: 1,
          //     parameters: {"address": blueDeviceInfo.device?.id.id ?? ""});
        } else {
          // Get.toNamed(Routes.paringWatchPage,
          //     arguments: blueDeviceInfo,
          //     parameters: {'state': '7', "page": "0"});
        }
      } else {
        // Get.toNamed(Routes.paringWatchPage,
        //     arguments: blueDeviceInfo, parameters: {'state': '4', "page": "0"});
      }
      update();
    };
    CreekLog.info("SearchWatchDeviceLogic_开始连接设备connectionDevice");
    CreekDeviceManger.instance.connectionDevice(
      blueDeviceInfo.device!,
      connectStateListen: connectStateListen,
    );
  }

  void removeMyListener() {
    CreekLog.info('---removeConnectStateListen------');
    connectStateListen = null;
    CreekDeviceManger.instance.removeConnectStateListen();
  }
}
