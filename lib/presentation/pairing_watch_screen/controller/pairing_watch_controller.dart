import 'dart:async';

import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/creek_enum.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../../../data/models/listUser/post_list_user_req.dart';
import '../../../data/models/listUser/post_list_user_resp.dart';
import '../models/pairing_watch_model.dart';

/// A controller class for the PairingWatchScreen.
///
/// This class manages the state of the PairingWatchScreen, including the
/// current pairingWatchModelObj
class PairingWatchController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<PairingWatchModel> pairingWatchModelObj = PairingWatchModel().obs;

  PostListUserResp postListUserResp = PostListUserResp();

  int state = 0;
  int page = 0;
  BlueDeviceInfo? blueDeviceInfo;
  String title = '';
  String stateIcon = "P.iconParingConnecting";
  CreekCommandProtocol? foundationCommands;
  Function(bool)? connectStateListen;
  bool isParingSuccess = false;

  Function(List<int>)? pairCodeCallBack;
  Function()? authorizationFailure;
  Function()? errorCallBack;

  Timer? timer;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
    isParingSuccess = false;
    // controller1 = TextEditingController();
    // controller2 = TextEditingController();
    // controller3 = TextEditingController();
    // controller4 = TextEditingController();
    //
    // focusNode1 = FocusNode();
    // focusNode2 = FocusNode();
    // focusNode3 = FocusNode();
    // focusNode4 = FocusNode();
    // focusNode = focusNode1;
    CreekLog.info('ParingWatchLogic_onInit_setIsAuto(false)');
    CreekDeviceManger.instance.setIsAuto(false);
    // FIXME: 暂不引入
    // BluListenUtils.instance.addBlueOnStateListen('ParingWatchLogic', this);
    // BluListenUtils.instance.addDeviceStateListen('ParingWatchLogic', this);
    blueDeviceInfo = Get.arguments;
    state = int.parse(Get.parameters['state'] ?? '6');
    page = int.parse(Get.parameters['page'] ?? '0');

    CreekLog.info(
        "page===$page--上一个路由previous_${Get.routing.previous}_state:$state");
    if (blueDeviceInfo == null) {
      CreekLog.info("page===$page---blueDeviceInfo==null返回");
      Get.back();
      return;
    }
    setState(state);
    update();
  }

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

  /// Displays a toast message using the Fluttertoast library.
  void _onListUserSuccess() {
    Fluttertoast.showToast(msg: postListUserResp.message.toString() ?? '');
  }

  /// Displays a snackBar message when the action is triggered.
  /// The message is obtained from the `PostListUserResp` object.
  void _onListUserError() {
    Get.rawSnackbar(message: postListUserResp.message.toString() ?? '');
  }

  void bindDevice(String pinCode) {
    var pairCode = List.of(pinCode.codeUnits);
    pairCode.add(0);
    commonBindingDevice(blueDeviceInfo!, pairCode);
  }

  Future<void> commonBindingDevice(
    BlueDeviceInfo blueDeviceInfo,
    List<int>? pairCode,
  ) async {
    CreekLog.info(
        "commonBindingDevice${pairCode == null ? [] : pairCode.toString()}---${blueDeviceInfo.toString()}");
    int bindMethod = 3;
    // if (Get.previousRoute.startsWith(Routes.qrScanNewWatchPage)) {
    //   CreekLog.info("commonBindingDevice 扫码直接绑定");
    //   bindMethod = 1;
    // } else {
    //   bindMethod = 3;
    //   CreekLog.info("commonBindingDevice 配对绑定");
    // }
    pairCodeCallBack ??= (ls) {
      setState(0);
      CreekLog.info("显示配对码页面");
      update();
    };
    authorizationFailure ??= () {
      CreekLog.info("commonBindingDevice_发请求配对码失败");
      setState(3);
      update();
    };
    errorCallBack ??= () {
      if (CreekDeviceManger.instance.connectionStatus ==
          ConnectionStatus.unconnected) {
        CreekLog.info(
            "ParingWatchLogic_绑定失败时候，如果是蓝牙断开连接则显示No connection between watch and phone");
        setState(4);
      } else {
        setState(5);
      }
      if (pairCode == null) {
        CreekLog.info("commonBindingDevice_请求配对返回失败");
      } else {
        CreekLog.info("commonBindingDevice_绑定失败");
      }
      update();
    };
    bindingDevice(bindMethod, blueDeviceInfo, pairCode, callBack: () {
      CreekLog.info("commonBindingDevice_绑定成功");
      removeBlueOn();
      removeMyListener();
      isParingSuccess = true;
      setState(2);
      update();
      Get.offNamed(AppRoutes.pairingSuccessScreen);
    },
        pairCodeCallBack: pairCodeCallBack,
        errorCallBack: errorCallBack,
        authorizationFailure: authorizationFailure);
  }

  Future<void> bindingDevice(
      int bindMethod, BlueDeviceInfo blueDeviceInfo, List<int>? pairCode,
      {Function()? callBack,
      Function()? errorCallBack,
      Function()? authorizationFailure,
      Function(List<int>)? pairCodeCallBack}) async {
    foundationCommands ??= foundationCommand;
    foundationCommands?.bindingDevice(
        bindMethod: bindMethod,
        pairCode: pairCode,
        callBack: () async {
          CreekLog.info('ParingWatchLogic_bindingDevice_successCallBack');
          removeMyListener();
          DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo(
              address: blueDeviceInfo?.device?.id.id);
          // FIXME: 暂不引入
          // DeviceUpdate.instance.uploadBindData(deviceModel);
          callBack?.call();
        },
        pairCodeCallBack: pairCodeCallBack,
        errorCallBack: () {
          print('errorCallBack');
          errorCallBack?.call();
        },
        authorizationFailure: authorizationFailure);
  }

  void removeBlueOn() {
    CreekLog.info('ParingWatchLogic_removeBlueOn_setIsAuto(true)');
    print('ParingWatchLogic_removeBlueOn');
    CreekDeviceManger.instance?.setIsAuto(true);
    // FIXME: 暂不引入
    // BluListenUtils.instance.removeBlueOnStateListen('ParingWatchLogic');
    // BluListenUtils.instance.removeDeviceStateListen('ParingWatchLogic');
  }

  void removeMyListener() {
    CreekLog.info('---removeMyListener------');
    foundationCommands = null;
    connectStateListen = null;
    pairCodeCallBack = null;
    authorizationFailure = null;
    errorCallBack = null;
    CreekDeviceManger.instance.removeConnectStateListen();
  }

  void setState(int state) {
    this.state = state;
    switch (state) {
      case 0:
        // controller1?.text = "";
        // controller2?.text = "";
        // controller3?.text = "";
        // controller4?.text = "";
        // focusNode = focusNode1;
        break;
      case 1:
        // title = S.current.Pairing; //'Paring...';
        // stateIcon = P.iconParingConnecting;
        break;
      case 2:
        // title = S.current.your_watch_is_paired;
        // stateIcon = P.iconParingSuccess;
        break;
      case 3:
        timer?.cancel();
        timer = Timer(2.seconds, () {
          print("timer___到时间执行");
          commonBindingDevice(blueDeviceInfo!, null);
          setState(0);
          update();
        });
        // title = S.current.paring_code_you_entered_doesn_match;
        // stateIcon = P.iconParingError;
        break;
      case 4:
        // title = S.current.Pairing_connection_failed;
        // stateIcon = P.iconBluDisconnected;
        break;
      case 5:
        // title = S.current.oops_something_went_wrong;
        // stateIcon = P.iconParingError;
        break;
      case 6:
        // title = S.current.Pairing_connecting;
        // stateIcon = P.iconParingConnecting;
        connectDevice(blueDeviceInfo!);
        break;
      case 7:
        // title = S.current.Pairing;
        // stateIcon = P.iconParingConnecting;
        commonBindingDevice(blueDeviceInfo!, null);
        break;
    }
  }

  ///连接
  Future<void> connectDevice(BlueDeviceInfo blueDeviceInfo) async {
    connectStateListen ??= (e) async {
      CreekLog.info('ParingWatchLogic_connectStateListen-返回状态-$e');
      if (e) {
        DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo(
            address: blueDeviceInfo.device?.id.id);
        CreekLog.info(
            "ParingWatchLogic_deviceModel___${deviceModel == null ? "" : deviceModel?.toString()}");
        if (deviceModel!.isRecoveryMode ?? false) {
          CreekLog.info("ParingWatchLogic_处于恢复模式，直接跳到ota界面升级");
          // Get.offNamed(Routes.watchUpdatePage,
          //     arguments: 1,
          //     parameters: {"address": blueDeviceInfo.device?.id.id ?? ""});
        } else {
          CreekLog.info("开始发请求配对码");
          commonBindingDevice(blueDeviceInfo, null);
        }
      } else {
        setState(4);
        update();
      }
    };
    CreekLog.info("ParingWatchLogic_开始连接设备connectionDevice");
    CreekDeviceManger.instance.connectionDevice(
      blueDeviceInfo.device!,
      connectStateListen: connectStateListen,
    );
  }
}
