import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/data_controller.dart';
import '../models/hrvcardthree_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HrvcardthreeItemWidget extends StatelessWidget {
  HrvcardthreeItemWidget(this.hrvcardthreeItemModelObj, {Key? key})
      : super(
          key: key,
        );

  HrvcardthreeItemModel hrvcardthreeItemModelObj;

  var controller = Get.find<DataController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onErrorContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder38,
      ),
      child: Container(
        height: 273.v,
        width: 358.h,
        decoration: AppDecoration.fillOnErrorContainer3.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder38,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCardChart,
              height: 273.v,
              width: 358.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15.h, 17.v, 23.h, 189.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.v),
                      child: CustomIconButton(
                        height: 56.v,
                        width: 57.h,
                        padding: EdgeInsets.all(20.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCursor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Obx(
                              () => Text(
                                hrvcardthreeItemModelObj.fiftyText!.value,
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 17.v,
                                bottom: 2.v,
                              ),
                              child: Obx(
                                () => Text(
                                  hrvcardthreeItemModelObj.msText!.value,
                                  style: CustomTextStyles.titleLargeMILanPro,
                                ),
                              ),
                            )
                          ],
                        ),
                        Opacity(
                          opacity: 0.4,
                          child: Obx(
                            () => Text(
                              hrvcardthreeItemModelObj.titleText!.value,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
