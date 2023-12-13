import 'package:basha_s_application1/core/app_export.dart';
import 'package:basha_s_application1/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LivelistItemWidget extends StatelessWidget {
  const LivelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 64.adaptSize,
              width: 64.adaptSize,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
              child: CustomImageView(
                imagePath: ImageConstant.imgSend,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              "lbl_new_post".tr,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
