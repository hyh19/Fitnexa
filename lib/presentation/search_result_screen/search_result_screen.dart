import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'controller/search_result_controller.dart'; // ignore_for_file: must_be_immutable

class SearchResultScreen extends GetWidget<SearchResultController> {
  const SearchResultScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      appBar: _buildAppBar(),
      body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: _buildPageView()),
      bottomNavigationBar: _buildScanQRCode(),
    );
  }

  PageView _buildPageView() {
    return PageView.builder(
      itemCount: 5,
      itemBuilder: (_, index) =>
          _buildDeviceInfo("CW Watch S1", "CF:8B:3C:0C:18:BF"),
      onPageChanged: (index) {},
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
        AppbarTrailingImage(
          imagePath: ImageConstant.imgQrcode,
          margin: EdgeInsets.only(
            left: 36.h,
            top: 17.v,
            right: 17.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgProfile,
          margin: EdgeInsets.only(
            left: 19.h,
            top: 17.v,
            right: 53.h,
          ),
        )
      ],
    );
  }

  /// 手表信息
  Widget _buildDeviceInfo(String name, String mac) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCw06g,
            height: 262.v,
            width: 234.h,
          ),
          SizedBox(height: 34.v),
          Text(
            name,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 24.v),
          Text(
            mac,
            style: CustomTextStyles.bodyLargeMiSansVFPrimaryContainer,
          ),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScanQRCode() {
    return CustomElevatedButton(
      text: "lbl_scan_qr_code".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 34.v,
      ),
      onPressed: () {
        onTapScanQRCode();
      },
    );
  }

  /// Navigates to the pairingWatchScreen when the action is triggered.
  onTapTxtNext() {
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

  /// Navigates to the scanCodeScreen when the action is triggered.
  onTapScanQRCode() {
    Get.toNamed(
      AppRoutes.scanCodeScreen,
    );
  }
}
