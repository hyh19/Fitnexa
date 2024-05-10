import 'package:fitnexa/presentation/search_device_screen/controller/search_device_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/custom_elevated_button.dart';

class SearchResultScreen extends GetWidget<SearchDeviceController> {
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

  Widget _buildPageView() {
    return GetBuilder<SearchDeviceController>(builder: (_) {
      return PageView.builder(
        itemCount: controller.dataList.length,
        itemBuilder: (_, index) {
          final deviceInfo = controller.dataList[index];
          return _buildDeviceInfo(
              deviceInfo.device!.name, deviceInfo.device!.id.toString());
        },
        onPageChanged: (index) {},
      );
    });
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
            ImageConstant.imgRefresh,
            width: 28,
            height: 28,
          ),
          onPressed: () {
            // TODO: 重新扫描
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            ImageConstant.imgHelp,
            width: 28,
            height: 28,
          ),
          onPressed: () {
            // TODO: 跳到帮助
          },
        ),
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
