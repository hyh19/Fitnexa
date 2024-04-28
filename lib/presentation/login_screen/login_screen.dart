import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/login_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: SizeUtils.height,
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_sign_in".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_sign_in_to_continue".tr,
                        style:
                            CustomTextStyles.bodyLargeMiSansVFPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 61.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: CustomTextFormField(
                        controller: controller.emailController,
                        hintText: "lbl_email".tr,
                        textInputType: TextInputType.emailAddress,
                        suffix: Container(
                          margin: EdgeInsets.only(
                            left: 30.h,
                            top: 3.v,
                            bottom: 13.v,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEye,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 37.v,
                        ),
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 51.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Obx(
                        () => CustomTextFormField(
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                            onTap: () {
                              controller.isShowPassword.value =
                                  !controller.isShowPassword.value;
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 30.h,
                                top: 3.v,
                                bottom: 13.v,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEye,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 36.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidPassword(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_password".tr;
                            }
                            return null;
                          },
                          obscureText: controller.isShowPassword.value,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_forget_password".tr,
                        style:
                            CustomTextStyles.bodyLargeMiSansVFGray500.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 58.h,
                      ),
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
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 52.h,
                      ),
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
                          padding: EdgeInsets.only(right: 23.h),
                          child: Text(
                            "lbl_snackbar".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 33.v),
                    CustomElevatedButton(
                      text: "lbl_log_in".tr,
                      onPressed: () {
                        onTapLogin();
                      },
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "msg_don_t_have_an_account".tr,
                              style: CustomTextStyles
                                  .bodyMediumMiSansVFOnPrimaryContainer,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_create_one".tr,
                              style: theme.textTheme.titleSmall!.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 37.v)
                  ],
                ),
              ),
            ),
          ),
        ),
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
        Container(
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 38.h,
            vertical: 20.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 15.adaptSize,
                width: 15.adaptSize,
                radius: BorderRadius.circular(
                  1.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle206770,
                height: 15.adaptSize,
                width: 15.adaptSize,
                radius: BorderRadius.circular(
                  1.h,
                ),
                alignment: Alignment.center,
              )
            ],
          ),
        )
      ],
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  navigateToNext() {
    Get.toNamed(
      AppRoutes.homeScreen,
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

  /// Navigates to the homeScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
