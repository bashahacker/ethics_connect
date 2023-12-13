import 'package:basha_s_application1/core/app_export.dart';
import 'package:basha_s_application1/widgets/custom_elevated_button.dart';
import 'package:basha_s_application1/widgets/custom_icon_button.dart';
import 'package:basha_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                      SizedBox(height: 79.v),
                      _buildPageTitle(context),
                      SizedBox(height: 33.v),
                      CustomTextFormField(
                          controller: emailController,
                          hintText: "lbl_email_id".tr,
                          textInputType: TextInputType.emailAddress),
                      SizedBox(height: 24.v),
                      CustomTextFormField(
                          controller: passwordController,
                          hintText: "lbl_password".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgAntdesigneyeinvisiblefilled,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          suffixConstraints: BoxConstraints(maxHeight: 50.v),
                          obscureText: true,
                          contentPadding: EdgeInsets.only(
                              left: 16.h, top: 15.v, bottom: 15.v)),
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Text("msg_forgot_password".tr,
                                  style: CustomTextStyles.bodyLargePrimary))),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                          text: "lbl_log_in".tr,
                          buttonStyle: CustomButtonStyles.fillPrimary),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_welcome_to_social".tr,
          style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 12.v),
      Text("msg_please_enter_your".tr, style: CustomTextStyles.bodyLargePrimary)
    ]);
  }
}
