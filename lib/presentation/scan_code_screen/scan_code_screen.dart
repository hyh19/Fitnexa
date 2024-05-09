import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import 'controller/scan_code_controller.dart'; // ignore_for_file: must_be_immutable

class ScanCodeScreen extends GetWidget<ScanCodeController> {
  const ScanCodeScreen({Key? key})
      : super(
          key: key,
        );

  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
  //       body: Container(
  //         width: double.maxFinite,
  //         padding: EdgeInsets.symmetric(horizontal: 25.h),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [SizedBox(height: 43.v), _buildScanCodeScreenGeneral()],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                QRView(
                  key: controller.qrKey,
                  onQRViewCreated: controller.onQRViewCreated,
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 72.v),
                      Container(
                        height: 328.v,
                        width: 267.h,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(height: 38.v),
                      Opacity(
                        opacity: 0.9,
                        child: Text(
                          "msg_scan_the_qr_code".tr,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      SizedBox(height: 87.v),
                      _buildFlashlight()
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: GetBuilder<ScanCodeController>(
                builder: (_) {
                  if (controller.result != null) {
                    return Text('Scan Result: ${controller.result!.code}');
                  } else {
                    return Text('Scan a code');
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFlashlight() {
    return IconButton(
      icon: SvgPicture.asset(
        ImageConstant.imgFlashlight,
        width: 80,
        height: 80,
      ),
      onPressed: () {
        // TODO: 打开闪光灯
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          ImageConstant.imgArrowBackWhite,
          width: 28,
          height: 28,
        ),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }

  /// Navigates to the pairingWatchScreen when the action is triggered.
  navigateToPairing() {
    Get.toNamed(
      AppRoutes.pairingWatchScreen,
    );
  }

  /// Navigates to the previous screen.
  onBackPressed() {
    Get.back();
  }

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/list] API
  ///
  /// It has [PostListUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onCallApiSuccess()` function.
  /// If the call fails, the function calls the `_onCallApiError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> callApi() async {
    PostListUserReq postListUserReq = PostListUserReq(
      options: Options(
        page: Constants1.kEY1,
        limit: Constants1.kEY1,
      ),
    );
    try {
      await controller.callListUser(
        postListUserReq.toJson(),
      );
      _onCallApiSuccess();
    } on PostListUserResp {
      _onCallApiError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {}
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onCallApiSuccess() {
    Fluttertoast.showToast(
        msg: controller.postListUserResp.message.toString() ?? '');
  }

  /// Displays a snackBar message when the action is triggered.
  /// The message is obtained from the `PostListUserResp` object
  ///in the `controller` instance.
  void _onCallApiError() {
    Get.rawSnackbar(
        message: controller.postListUserResp.message.toString() ?? '');
  }

  /// Displays an alert dialog when the action is triggered.
  /// The dialog box contains a title and a message with the `Message`
  showDialog() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "Title", middleText: "Message");
  }

  /// Displays a toast message using the Fluttertoast library.
  showToast() {
    Fluttertoast.showToast(
      msg: "Message",
    );
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Message` using the Get package.
  showSnackbar() {
    Get.rawSnackbar(message: "Message");
  }
}
