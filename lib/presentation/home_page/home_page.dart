import '../home_page/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:syed_s_application2/core/app_export.dart';
import 'package:syed_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:syed_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:syed_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:syed_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:syed_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 32.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  _buildFrameEleven(context),
                  SizedBox(height: 20.v),
                  CustomSearchView(
                    controller: searchController,
                    hintText: "Search doctor or health issue",
                  ),
                  SizedBox(height: 24.v),
                  _buildHome(context),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Near Doctor",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildFrameTwelve(context),
                  SizedBox(height: 12.v),
                  _buildFrameThirteen(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "Hello,",
              margin: EdgeInsets.only(right: 52.h),
            ),
            AppbarTitle(
              text: "Hi James",
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameEleven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                decoration: AppDecoration.fillPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser48x48,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: _buildFrameTwentyEight(
                  context,
                  userName: "Dr. Imran Syahir",
                  userRole: "General Doctor",
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 12.v),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Divider(
            color: theme.colorScheme.primaryContainer,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 25.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVuesaxLinearCalendar2,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "Sunday, 12 June",
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgInfo,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "11:00 - 12:00 AM",
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return SizedBox(
      height: 104.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 13.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return HomeItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwelve(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser48x48,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Joseph Brostito",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Dental Specialist",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  left: 18.h,
                  top: 17.v,
                  bottom: 16.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 14.v,
                  bottom: 14.v,
                ),
                child: Text(
                  "1.2 KM",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 35.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "4,8 (120 Reviews)",
                      style: CustomTextStyles.bodySmallOrange300,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClockBlueA200,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 26.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "Open at 17.00",
                      style: CustomTextStyles.bodySmallBlueA200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameThirteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 48.adaptSize,
                width: 48.adaptSize,
                margin: EdgeInsets.only(top: 1.v),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder24,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser48x48,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: _buildFrameTwentyEight(
                  context,
                  userName: "Dr. Imran Syahir",
                  userRole: "General Doctor",
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  top: 17.v,
                  bottom: 16.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 14.v,
                  bottom: 14.v,
                ),
                child: Text(
                  "1.2 KM",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Divider(),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(right: 13.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClockBlueA200,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Open at 17.00",
                      style: CustomTextStyles.bodySmallBlueA200,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "4,8 (120 Reviews)",
                      style: CustomTextStyles.bodySmallOrange300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTwentyEight(
    BuildContext context, {
    required String userName,
    required String userRole,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          userRole,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.blueGray300,
          ),
        ),
      ],
    );
  }
}
