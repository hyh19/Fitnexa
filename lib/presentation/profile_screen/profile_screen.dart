import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/profile_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key})
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
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 18.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_create_your_profile".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(height: 12.v),
                        SizedBox(
                          width: 307.h,
                          child: Text(
                            "msg_this_information".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .bodyLargeMiSansVFPrimaryContainer,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 63.v),
                  _buildPassword(),
                  SizedBox(height: 51.v),
                  _buildLastName(),
                  SizedBox(height: 50.v),
                  _buildDateOfBirth(),
                  SizedBox(height: 51.v),
                  _buildGenderValueOne(),
                  SizedBox(height: 52.v),
                  _buildWeightValueOne(),
                  SizedBox(height: 52.v),
                  _buildWeightValue(),
                  SizedBox(height: 5.v)
                ],
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
        AppbarTitle(
          text: "lbl_next".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 17.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl_password".tr,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
      controller: controller.lastNameController,
      hintText: "lbl_last_name".tr,
      validator: (value) {
        if (!isText(value)) {
          return "err_msg_please_enter_valid_text".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth() {
    return CustomTextFormField(
      controller: controller.dateOfBirthController,
      hintText: "lbl_date_of_birth".tr,
    );
  }

  /// Section Widget
  Widget _buildGenderValueOne() {
    return CustomTextFormField(
      controller: controller.genderValueOneController,
      hintText: "lbl_gender".tr,
    );
  }

  /// Section Widget
  Widget _buildWeightValueOne() {
    return CustomTextFormField(
      controller: controller.weightValueOneController,
      hintText: "lbl_height".tr,
    );
  }

  /// Section Widget
  Widget _buildWeightValue() {
    return CustomTextFormField(
      controller: controller.weightValueController,
      hintText: "lbl_weight".tr,
      textInputAction: TextInputAction.done,
    );
  }
}
