import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/region_controller.dart'; // ignore_for_file: must_be_immutable

class RegionScreen extends GetWidget<RegionController> {
  const RegionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 8.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_region".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 21.v),
                  CustomTextFormField(
                    controller: controller.countryController,
                    hintText: "lbl_china".tr,
                    hintStyle: CustomTextStyles.bodyLargeMiSansVFPrimary,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(18.h, 22.v, 12.h, 22.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 64.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 20.v, 14.h, 20.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkIcon,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 64.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    filled: true,
                    fillColor: appTheme.gray50,
                  ),
                  SizedBox(height: 12.v),
                  CustomSearchView(
                    controller: controller.searchController,
                    hintText: "msg_search_for_your".tr,
                  ),
                  SizedBox(height: 45.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_abkhazia".tr,
                  ),
                  SizedBox(height: 23.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_afghanistan".tr,
                  ),
                  SizedBox(height: 21.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_albania".tr,
                  ),
                  SizedBox(height: 23.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_algeria".tr,
                  ),
                  SizedBox(height: 21.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_andorra".tr,
                  ),
                  SizedBox(height: 21.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_bahamas".tr,
                  ),
                  SizedBox(height: 21.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_bahrain".tr,
                  ),
                  SizedBox(height: 21.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_albania".tr,
                  ),
                  SizedBox(height: 23.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_algeria".tr,
                  ),
                  SizedBox(height: 21.v),
                  _buildCountryListOne(
                    countrynameOne: "lbl_andorra".tr,
                  )
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
          text: "lbl_confirm".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 17.v,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildCountryListOne({required String countrynameOne}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          countrynameOne,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        SizedBox(height: 17.v),
        Divider()
      ],
    );
  }
}
