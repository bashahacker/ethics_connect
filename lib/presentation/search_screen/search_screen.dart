import '../search_screen/widgets/search_item_widget.dart';
import 'package:basha_s_application1/core/app_export.dart';
import 'package:basha_s_application1/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClose,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 16.h),
                          onTap: () {
                            onTapImgClose(context);
                          }),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_search".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "lbl_search".tr,
                                  alignment: Alignment.center))),
                      SizedBox(height: 28.v),
                      _buildSearchClearAll(context),
                      SizedBox(height: 24.v),
                      _buildSearch(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildSearchClearAll(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("lbl_recently".tr,
                      style: CustomTextStyles.titleLargeDeeppurpleA200Bold),
                  Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Text("lbl_clear_all".tr,
                          style: CustomTextStyles.titleMediumDeeppurpleA200))
                ])));
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0.v),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                          height: 2.v,
                          thickness: 2.v,
                          color: theme.colorScheme.secondaryContainer)));
            },
            itemCount: 7,
            itemBuilder: (context, index) {
              return SearchItemWidget();
            }));
  }
}
