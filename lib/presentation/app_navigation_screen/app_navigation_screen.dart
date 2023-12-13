import 'package:basha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Log In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.logInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Invite Friends".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.inviteFriendsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Daily New - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dailyNewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trending - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trendingContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Stories".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.storiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Trending posts - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.trendingPostsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Stories and Tweets".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.storiesAndTweetsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.liveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "For You".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.forYouScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Page View".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pageViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Comments".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.commentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account View".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountViewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account Details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Friends".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.friendsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detailed Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailedProfileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
