import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:fluttertoast/fluttertoast.dart';
import '../../core/app_export.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/goals_controller.dart'; // ignore_for_file: must_be_immutable

class GoalsScreen extends GetWidget<GoalsController> {
  const GoalsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigoA100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 44.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(15.h),
                decoration: AppDecoration.fillOnErrorContainer1.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildWeekHeader(),
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 11.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_mo".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl_tu".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl_wed".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl_th".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl_fr".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          Text(
                            "lbl_sa".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                          Text(
                            "lbl_su".tr,
                            style: theme.textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildEvents(),
                    SizedBox(height: 20.v),
                    _buildGoalContainer(),
                    SizedBox(height: 6.v)
                  ],
                ),
              ),
              Spacer(),
              SizedBox(height: 54.v),
              _buildGeneral()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWeekHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 44.adaptSize,
          width: 44.adaptSize,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.outlineBlack,
          child: CustomImageView(
            imagePath: ImageConstant.imgTicket,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 14.v,
            bottom: 10.v,
          ),
          child: Text(
            "msg_weekly_challenge".tr,
            style: CustomTextStyles.bodyMediumMiSansVFBlack900,
          ),
        ),
        Spacer(),
        CustomIconButton(
          height: 44.adaptSize,
          width: 44.adaptSize,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.fillOnErrorContainer,
          child: CustomImageView(
            imagePath: ImageConstant.imgQrcode,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildEvents() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBarcode,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBarcode,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBarcode,
            height: 32.adaptSize,
            width: 32.adaptSize,
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkIconOnerrorcontainer,
            ),
          ),
          Container(
            width: 32.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder16,
            ),
            child: Text(
              "lbl_16".tr,
              style: CustomTextStyles.titleSmallBluegray900,
            ),
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkIconOnerrorcontainer,
            ),
          ),
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillOnPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkIconOnerrorcontainer,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGoalContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 41.v),
      decoration: AppDecoration.fillOnErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGoalIcon,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 6.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "lbl_0".tr,
                                style:
                                    CustomTextStyles.titleMediumMiSansVFPrimary,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 5.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "lbl".tr,
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 5.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "lbl_5".tr,
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 1.v),
                          Opacity(
                            opacity: 0.4,
                            child: Text(
                              "lbl_exercises".tr,
                              style: CustomTextStyles.bodyMediumMiSansVFPrimary,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 27.v),
                SizedBox(
                  width: 119.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGoalIconDeepOrange200,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "lbl_7".tr,
                                style:
                                    CustomTextStyles.titleMediumMiSansVFPrimary,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 5.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "lbl".tr,
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 5.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  "lbl_7".tr,
                                  style: CustomTextStyles.bodySmallPrimary,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 2.v),
                          Opacity(
                            opacity: 0.4,
                            child: Text(
                              "lbl_sleep_record".tr,
                              style: CustomTextStyles.bodyMediumMiSansVFPrimary,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 26.v),
                Container(
                  width: 117.h,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGoalIconIndigo500,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 8.v,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 73.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "lbl_4100".tr,
                                  style: CustomTextStyles
                                      .titleMediumMiSansVFPrimary,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(
                                    "lbl".tr,
                                    style: CustomTextStyles.bodySmallPrimary,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5.v),
                                  child: Text(
                                    "lbl_5000".tr,
                                    style: CustomTextStyles.bodySmallPrimary,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Opacity(
                            opacity: 0.4,
                            child: Text(
                              "lbl_steps".tr,
                              style: CustomTextStyles.bodyMediumMiSansVFPrimary,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 146.adaptSize,
            width: 146.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 18.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(25.h),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup299,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Opacity(
                      opacity: 0.2,
                      child: Container(
                        height: 92.adaptSize,
                        width: 92.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray1006c,
                          borderRadius: BorderRadius.circular(
                            46.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 146.adaptSize,
                    width: 146.adaptSize,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup297,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame1171276415,
                      height: 146.adaptSize,
                      width: 146.adaptSize,
                      alignment: Alignment.center,
                    ),
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
  Widget _buildGeneral() {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 31.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 35.v),
            child: Column(
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
                SizedBox(height: 16.v),
                Text(
                  "lbl_back".tr,
                  style: theme.textTheme.bodyLarge,
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
                style: theme.textTheme.bodyLarge,
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
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 16.v),
              GestureDetector(
                onTap: () {
                  showToast();
                },
                child: Text(
                  "lbl_toast".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              SizedBox(height: 15.v),
              GestureDetector(
                onTap: () {
                  showSnackbar();
                },
                child: Text(
                  "lbl_snackbar".tr,
                  style: theme.textTheme.bodyLarge,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Navigates to the dataScreen when the action is triggered.
  navigateToNext() {
    Get.toNamed(
      AppRoutes.dataScreen,
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
