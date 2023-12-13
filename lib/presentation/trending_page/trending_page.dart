import '../trending_page/widgets/trendingposts_item_widget.dart';
import 'package:basha_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrendingPageState createState() => TrendingPageState();
}

class TrendingPageState extends State<TrendingPage>
    with AutomaticKeepAliveClientMixin<TrendingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildTrendingPosts(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrendingPosts(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return TrendingpostsItemWidget();
          },
        ),
      ),
    );
  }
}
