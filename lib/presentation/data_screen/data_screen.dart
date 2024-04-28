import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'controller/data_controller.dart';
import 'models/hrvcardthree_item_model.dart';
import 'widgets/hrvcardthree_item_widget.dart'; // ignore_for_file: must_be_immutable

class DataScreen extends GetWidget<DataController> {
  const DataScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA100,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 59.v,
          ),
          child: Column(
            children: [
              _buildLittleCards(),
              SizedBox(height: 10.v),
              _buildHrvCardThree()
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLittleCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: _buildHeartRateCardOne(
              numberText: "lbl_98".tr,
              textText: "lbl_ms".tr,
              titleText: "lbl_heart_rate".tr,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: _buildHeartRateCardOne(
              numberText: "lbl_98".tr,
              textText: "lbl_ms".tr,
              titleText: "lbl_heart_rate".tr,
            ),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildHrvCardThree() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.v,
            );
          },
          itemCount:
              controller.dataModelObj.value.hrvcardthreeItemList.value.length,
          itemBuilder: (context, index) {
            HrvcardthreeItemModel model =
                controller.dataModelObj.value.hrvcardthreeItemList.value[index];
            return HrvcardthreeItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildHeartRateCardOne({
    required String numberText,
    required String textText,
    required String titleText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder38,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomIconButton(
            height: 58.adaptSize,
            width: 58.adaptSize,
            padding: EdgeInsets.all(20.h),
            alignment: Alignment.centerLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgFavorite,
            ),
          ),
          SizedBox(height: 22.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                numberText,
                style: theme.textTheme.displaySmall!.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 17.v,
                  bottom: 2.v,
                ),
                child: Text(
                  textText,
                  style: CustomTextStyles.titleLargeMILanPro.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              )
            ],
          ),
          Opacity(
            opacity: 0.4,
            child: Text(
              titleText,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.black900.withOpacity(0.49),
              ),
            ),
          )
        ],
      ),
    );
  }
}
