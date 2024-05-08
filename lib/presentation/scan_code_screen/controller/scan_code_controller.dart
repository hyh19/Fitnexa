import 'package:creek_blue_manage/creek_blue.dart';
import 'package:creek_blue_manage/scanBind/creek_scan_bind.dart';
import 'package:creekbase/creek_base.dart';
import 'package:creektool/creek_tool.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../../../data/models/listUser/post_list_user_resp.dart';
import '../models/scan_code_model.dart';
import 'connect_logic.dart';

/// A controller class for the ScanCodeScreen.
///
/// This class manages the state of the ScanCodeScreen, including the
/// current scanCodeModelObj
class ScanCodeController extends GetxController {
  Rx<ScanCodeModel> scanCodeModelObj = ScanCodeModel().obs;

  PostListUserResp postListUserResp = PostListUserResp();

  final qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

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
  void _handleListUserSuccess() {}

  void onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      result = scanData;
      update();
      searchNewDevice(scanData.code);
    });
  }

  @override
  void onClose() {
    controller?.dispose();
    super.onClose();
  }

  searchNewDevice(String? code) {
    CreekLog.info("code =---$code");

    // if (scan) {
    //   return;
    // }
    // pauseCamera();
    // scan = true;
    // LoadingWidget loadingWidget=  LoadingWidget();
    // loadingWidget.title=S.current.Search;
    // //  ProgressDialog.showProgress(context,child: loadingWidget);
    //
    // showLoadings(title: S.current.connect);
    if (code == null) {
      CreekLog.info("code =---为空");
      // hideLoading();
      // // ProgressDialog.dismiss(context);
      // BluListenUtils.instance.showUnrecognizedQrCode(context, () {
      //   scan = false;
      //   resumeCamera();
      // });
      return;
    }

    ///https://app.cheyfit.com/#/code/caB8?mac=F4:4E:FD:34:56:D9&device_id=3021
    CreekLog.info("lxk---------scanData.code==$code");
    try {
      var uri = Uri.dataFromString(code);
      var qp = uri.queryParameters;
      var macId = qp['mac'];
      CreekLog.info("mac----$macId");
      if (macId == null) {
        CreekLog.info("mac----为空");
        // hideLoading();
        // // ProgressDialog.dismiss(context);
        // BluListenUtils.instance.showUnrecognizedQrCode(context,() {
        //   scan = false;
        //   resumeCamera();
        // },content: S.current.camera_identify_qrcode_error);
        return;
      }

      List<String> split = macId.split(":");
      String s = '';
      for (int i = split.length - 1; i >= 0; i--) {
        s = s == "" ? split[i] : "$s:${split[i]}";
      }
      CreekLog.info("mac----倒序过来的mac---111111-$s");
      CreekScanBind.instance.scanBind(s, scanBack: (blueDeviceInfo) {
        if (blueDeviceInfo == null || blueDeviceInfo.device == null) {
          // hideLoading();
          // ProgressDialog.dismiss(context);
          print('扫描到的结果------lxk---：为空');
          // BluListenUtils.instance.showUnrecognizedQrCode(context, () {
          //   resumeCamera();
          //   scan = false;
          // }, content: S.current.camera_find_error);
          return;
        }
        // loadingWidget.title=S.current.connect;
        // hideLoading();
        // showLoadings(title: S.current.connect);
        print(
            '扫描到的结果------lxk---：${blueDeviceInfo.toString()}__${blueDeviceInfo.device?.name}');

        var deviceLogic = Get.find<ConnectDeviceLogic>();

        deviceLogic.connectDevice(blueDeviceInfo, callback: (e) async {
          // hideLoading();
          // ProgressDialog.dismiss(context);
          if (e) {
            DeviceModel? deviceModel = await interfaceProtocol.getDeviceInfo(
                address: blueDeviceInfo.device?.id.id);
            CreekLog.info(
                "ScanWatchNewPageState_deviceModel___${deviceModel == null ? "" : deviceModel?.toString()}");
            if (deviceModel!.isRecoveryMode ?? false) {
              CreekLog.info("ParingWatchLogic_处于恢复模式，直接跳到ota界面升级");
              // Get.offNamed(Routes.watchUpdatePage, arguments: 1,parameters:{"address":blueDeviceInfo.device?.id.id??""} )?.then((value){
              //   resumeCamera();
              //   scan = false;
              // });
            } else {
              CreekLog.info("ScanWatchNewPageState_开始发请求配对码");
              // Get.toNamed(Routes.paringWatchPage,arguments:blueDeviceInfo,parameters: {'state':'7',"page":"1"} )?.then((value){
              //   resumeCamera();
              //   scan = false;
              // });

              Get.toNamed(AppRoutes.pairingWatchScreen,
                  arguments: blueDeviceInfo,
                  parameters: {'state': '7', "page": "1"});
            }
          } else {
            CreekLog.info("ScanWatchNewPageState_连接失败");
            // Get.toNamed(Routes.paringWatchPage,arguments:blueDeviceInfo,parameters: {'state':'4',"page":"1"} )?.then((value){
            //   resumeCamera();
            //   scan = false;
            // });
          }
        });
      }, endScan: () {
        // hideLoading();
        //  ProgressDialog.dismiss(context);
        CreekLog.info('endScan------lxk---没有扫描到设备---');
        // BluListenUtils.instance.showUnrecognizedQrCode(context, () {
        //   resumeCamera();
        //   scan = false;
        // }, content: S.current.camera_find_error);
      });
    } catch (e) {
      CreekLog.info('扫码解析异常---$e');
      // hideLoading();
      // // ProgressDialog.dismiss(context);
      // BluListenUtils.instance.showUnrecognizedQrCode(context,content: S.current.camera_identify_qrcode_error, () {
      //   scan = false;
      //   resumeCamera();
      // },);
    }
  }
}
