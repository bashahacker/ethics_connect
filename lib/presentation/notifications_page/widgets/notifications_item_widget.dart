import 'package:basha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  const NotificationsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse22,
          height: 54.v,
          width: 52.h,
          radius: BorderRadius.circular(
            27.h,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_kevin_has_followed".tr,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_1_hour_ago".tr,
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
