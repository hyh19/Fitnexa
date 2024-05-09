import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'controller/pairing_watch_controller.dart'; // ignore_for_file: must_be_immutable

class PairingWatchScreen extends GetWidget<PairingWatchController> {
  const PairingWatchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  right: 49.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 248.h,
                      margin: EdgeInsets.only(right: 35.h),
                      child: Text(
                        "msg_pairing_with_your".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    SizedBox(
                      width: 283.h,
                      child: Text(
                        "msg_please_enter_the".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodyLargeMiSansVFPrimaryContainer,
                      ),
                    )
                  ],
                ),
              ),
              Spacer(
                flex: 25,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  right: 8.h,
                ),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              Spacer(
                flex: 44,
              ),
              _buildFooter(),
              Spacer(
                flex: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          ImageConstant.imgArrowBack,
          width: 28,
          height: 28,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            ImageConstant.imgHelp,
            width: 28,
            height: 28,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFooter() {
    return Padding(
      padding: EdgeInsets.only(right: 22.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 35.v),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapTxtNext();
                  },
                  child: Text(
                    "lbl_next".tr,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
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
              controller.bindDevice();
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 71.v),
              child: Text(
                "绑定",
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

  /// Navigates to the pairingSuccessScreen when the action is triggered.
  onTapTxtNext() {
    Get.toNamed(
      AppRoutes.pairingSuccessScreen,
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
