import 'package:basha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommentlistItemWidget extends StatelessWidget {
  const CommentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse21,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 9.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_rizal_reynaldhi".tr,
                    style: CustomTextStyles.titleMediumGray600,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_35_minutes_ago".tr,
                    style: CustomTextStyles.labelMediumGray500,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 382.h,
          child: Text(
            "msg_most_people_never".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeBluegray700.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 17.v),
        Text(
          "lbl_reply".tr,
          style: CustomTextStyles.titleMediumDeeppurpleA200SemiBold_1,
        ),
      ],
    );
  }
}
