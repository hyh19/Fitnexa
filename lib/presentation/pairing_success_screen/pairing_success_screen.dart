import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/pairing_success_controller.dart'; // ignore_for_file: must_be_immutable

class PairingSuccessScreen extends GetWidget<PairingSuccessController> {
  const PairingSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 75.v,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 66.v),
            Container(
              height: 196.adaptSize,
              width: 196.adaptSize,
              child: Image.asset(ImageConstant.imgCw06g),
            ),
            SizedBox(height: 33.v),
            Text(
              "lbl_success2".tr,
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: 8.v),
            Text(
              "msg_the_watch_has_been".tr,
              style: CustomTextStyles.bodyLargeMiSansVFPrimaryContainer,
            ),
            SizedBox(height: 96.v),
          ],
        ),
      ),
      bottomNavigationBar: _buildGetStartedButton(),
    );
  }

  /// Section Widget
  Widget _buildPairingSuccessGeneral() {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 35.v),
            child: Column(
              children: [
                Text(
                  "lbl_next".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
                SizedBox(height: 16.v),
                GestureDetector(
                  onTap: () {
                    onBackPressed();
                  },
                  child: Text(
                    "lbl_back".tr,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 47,
          ),
          GestureDetector(
            onTap: () {
              callApi();
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 71.v),
              child: Text(
                "lbl_network".tr,
                style: CustomTextStyles.bodyLargeBlack900,
              ),
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  showDialog();
                },
                child: Text(
                  "lbl_alert".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ),
              SizedBox(height: 16.v),
              GestureDetector(
                onTap: () {
                  showToast();
                },
                child: Text(
                  "lbl_toast".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ),
              SizedBox(height: 15.v),
              GestureDetector(
                onTap: () {
                  showSnackbar();
                },
                child: Text(
                  "lbl_snackbar".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton() {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 34.v,
      ),
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
