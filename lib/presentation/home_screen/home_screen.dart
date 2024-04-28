import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import 'controller/home_controller.dart'; // ignore_for_file: must_be_immutable

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.tealA200,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 122.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  onTapTxtNavtogoals();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 80.h),
                  child: Text(
                    "msg_nav_to_goals_screen".tr,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              GestureDetector(
                onTap: () {
                  onTapTxtNavtodata();
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 79.h),
                  child: Text(
                    "msg_nav_to_data_screen".tr,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 62.v),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    onTapTxtNavtosettings();
                  },
                  child: Text(
                    "msg_nav_to_settings".tr,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
              Spacer(
                flex: 59,
              ),
              Padding(
                padding: EdgeInsets.only(right: 57.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateToNext();
                      },
                      child: Text(
                        "lbl_next".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Spacer(
                      flex: 48,
                    ),
                    GestureDetector(
                      onTap: () {
                        callApi();
                      },
                      child: Text(
                        "lbl_network".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Spacer(
                      flex: 51,
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog();
                      },
                      child: Text(
                        "lbl_alert".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(right: 51.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_back".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    GestureDetector(
                      onTap: () {
                        showToast();
                      },
                      child: Text(
                        "lbl_toast".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    showSnackbar();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 22.h),
                    child: Text(
                      "lbl_snackbar".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the goalsScreen when the action is triggered.
  onTapTxtNavtogoals() {
    Get.toNamed(
      AppRoutes.goalsScreen,
    );
  }

  /// Navigates to the dataScreen when the action is triggered.
  onTapTxtNavtodata() {
    Get.toNamed(
      AppRoutes.dataScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapTxtNavtosettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the goalsScreen when the action is triggered.
  navigateToNext() {
    Get.toNamed(
      AppRoutes.goalsScreen,
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
