import 'package:basha_s_application1/core/app_export.dart';
import 'package:basha_s_application1/widgets/custom_elevated_button.dart';
import 'package:basha_s_application1/widgets/custom_icon_button.dart';
import 'package:basha_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v),
                    child: Column(children: [
                      CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.fillDeepPurpleA,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnArrowLeft(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowLeft)),
                      SizedBox(height: 83.v),
                      _buildPageTitle(context),
                      SizedBox(height: 39.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_email_id".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          text: "lbl_log_in".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          onPressed: () {
                            onTapLogIn(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_forgot_password".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 5.v),
      Container(
          width: 352.h,
          margin: EdgeInsets.only(right: 29.h),
          child: Text("msg_please_enter_your2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary.copyWith(height: 1.50)))
    ]);
  }
}
