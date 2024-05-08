import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../../../data/models/listUser/post_list_user_resp.dart';
import '../models/scan_code_model.dart';

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
    });
  }

  @override
  void onClose() {
    controller?.dispose();
    super.onClose();
  }
}
