import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../core/app_export.dart';
import '../../core/utils/file_upload_helper.dart';
import '../../core/utils/permission_manager.dart';
import '../../data/models/listUser/post_list_user_req.dart';
import '../../data/models/listUser/post_list_user_resp.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/welcome_controller.dart'; // ignore_for_file: must_be_immutable

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 38.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 37.v),
              SizedBox(
                height: 370.v,
                width: 294.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 88.h,
                          right: 83.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              onTap: () {
                                onTapTxtCameragallery();
                              },
                              child: Text(
                                "lbl_camera_gallery".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtContact();
                              },
                              child: Text(
                                "lbl_contact".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            SizedBox(height: 15.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtLocation();
                              },
                              child: Text(
                                "lbl_location".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 289.v,
                        width: 294.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBackground,
                              height: 289.v,
                              width: 290.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "lbl_welcome".tr,
                                    style:
                                        CustomTextStyles.headlineLargeBlack900,
                                  ),
                                  SizedBox(height: 15.v),
                                  SizedBox(
                                    width: 293.h,
                                    child: Text(
                                      "msg_the_copilot_of_your".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleLargeErrorContainer
                                          .copyWith(
                                        height: 1.40,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 71.v),
              _buildGeneral(),
              SizedBox(height: 21.v),
              CustomElevatedButton(
                text: "lbl_log_in".tr,
                onPressed: () {
                  onTapLogin();
                },
              ),
              SizedBox(height: 10.v),
              CustomOutlinedButton(
                text: "lbl_create_account".tr,
                onPressed: () {
                  onTapCreateaccount();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneral() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 3.h,
          right: 21.h,
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
                onTapTxtNetwork();
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
                    onTapTxtAlert();
                  },
                  child: Text(
                    "lbl_alert".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 16.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtToast();
                  },
                  child: Text(
                    "lbl_toast".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 15.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtSnakbar();
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
      ),
    );
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapTxtCameragallery() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  /// Requests the user's permission to access the device's contacts and retrieves
  /// the list of contacts, if permission is granted.
  ///
  /// Returns a [Future] that completes with a list of [Contact] objects if
  /// permission is granted and contacts are available, otherwise an empty list.
  onTapTxtContact() async {
    await PermissionManager.askForPermission(Permission.contacts);
    List<Contact> contactList = [];
    if (await PermissionManager.isPermissionGranted(Permission.contacts)) {
      contactList = await FlutterContacts.getContacts();
    }
  }

  /// Asks the user for permission to access their device's location using the
  /// [PermissionManager] plugin.
  ///
  /// Throws an error if the permission is permanently denied or the user has
  /// selected "don't ask again".
  onTapTxtLocation() async {
    await PermissionManager.askForPermission(Permission.location);
  }

  /// Navigates to the loginScreen when the action is triggered.
  navigateToNext() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/list] API
  ///
  /// It has [PostListUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onCallApiSuccess()` function.
  /// If the call fails, the function calls the `_onCallApiError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapTxtNetwork() async {
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
  onTapTxtAlert() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "Title", middleText: "Message");
  }

  /// Displays a toast message using the Fluttertoast library.
  onTapTxtToast() {
    Fluttertoast.showToast(
      msg: "Message",
    );
  }

  /// Displays a snackBar message when the action is triggered.
  /// The raw snackbar display the specified message `Message` using the Get package.
  onTapTxtSnakbar() {
    Get.rawSnackbar(message: "Message");
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the createAccountScreen when the action is triggered.
  onTapCreateaccount() {
    Get.toNamed(
      AppRoutes.createAccountScreen,
    );
  }
}
