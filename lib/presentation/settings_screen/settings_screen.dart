import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import 'controller/settings_controller.dart'; // ignore_for_file: must_be_immutable

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.yellow900,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 504.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildGeneralSection(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 47.h,
        bottom: 547.v,
      ),
      child: Row(
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
                Text(
                  "lbl_back".tr,
                  style: CustomTextStyles.bodyLargeBlack900,
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
