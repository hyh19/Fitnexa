import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../../../data/models/listUser/post_list_user_req.dart';
import '../../../data/models/listUser/post_list_user_resp.dart';
import '../models/profile_model.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController genderValueOneController = TextEditingController();

  TextEditingController weightValueOneController = TextEditingController();

  TextEditingController weightValueController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  PostListUserResp postListUserResp = PostListUserResp();

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    genderValueOneController.dispose();
    weightValueOneController.dispose();
    weightValueController.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/list API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callListUser(Map req) async {
    try {
      postListUserResp = await Get.find<ApiClient>().listUser(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzYTNmOTI0NTNjODViYzEyNjU4ZjNiZSIsInVzZXJuYW1lIjoiSnVkZ2VfQ3JvbmluIiwiaWF0IjoxNjcxNjk3MTcxfQ.hbZLKSsS6Mdj1ndhAf4rm_5we4iWYvKY1VPSo51sQRM'
        },
        requestData: req,
      );
      _handleListUserSuccess();
    } on PostListUserResp catch (e) {
      postListUserResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleListUserSuccess() {
    // TODO 解决报错，临时注释，稍后删除
    // Get.find<PrefUtils>().setData(postListUserResp.data!.data!);
  }

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/list] API
  ///
  /// It has [PostListUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onListUserSuccess()` function.
  /// If the call fails, the function calls the `_onListUserError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    PostListUserReq postListUserReq = PostListUserReq(
      options: Options(
        page: Constants1.kEY1,
        limit: Constants1.kEY1,
      ),
    );
    try {
      await callListUser(
        postListUserReq.toJson(),
      );
      _onListUserSuccess();
    } on PostListUserResp {
      _onListUserError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {}
  }

  /// Displays a toast message using the Fluttertoast library.
  void _onListUserSuccess() {
    Fluttertoast.showToast(msg: postListUserResp.message.toString() ?? '');
  }

  /// Displays a snackBar message when the action is triggered.
  /// The message is obtained from the `PostListUserResp` object.
  void _onListUserError() {
    Get.rawSnackbar(message: postListUserResp.message.toString() ?? '');
  }
}
