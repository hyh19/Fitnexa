import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/search_device_controller.dart'; // ignore_for_file: must_be_immutable

class SearchDeviceScreen extends GetWidget<SearchDeviceController> {
  const SearchDeviceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            children: [
              Text(
                "lbl_search_device".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_searching_nearby".tr,
                style: CustomTextStyles.bodyLargeMiSansVFSecondaryContainer,
              ),
              SizedBox(height: 28.v),
              _buildGeneral(),
              SizedBox(height: 5.v)
            ],
          ),
        ),
        bottomNavigationBar: _buildScanQrCode(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 55.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 36.h,
          top: 19.v,
          bottom: 20.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgProfile,
          margin: EdgeInsets.fromLTRB(36.h, 17.v, 36.h, 18.v),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildGeneral() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 148.v,
      ),
      decoration: AppDecoration.fillBlueGray,
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
          Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: Column(
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
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScanQrCode() {
    return CustomElevatedButton(
      text: "lbl_scan_qr_code".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 34.v,
      ),
      onPressed: () {
        onTapScanQrCode();
      },
    );
  }

  /// Navigates to the searchResultScreen when the action is triggered.
  onTapTxtNext() {
    Get.toNamed(
      AppRoutes.searchResultScreen,
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

  /// Navigates to the scanCodeScreen when the action is triggered.
  onTapScanQrCode() {
    Get.toNamed(
      AppRoutes.scanCodeScreen,
    );
  }
}
