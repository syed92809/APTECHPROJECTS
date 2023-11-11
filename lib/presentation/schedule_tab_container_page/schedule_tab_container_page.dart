import 'package:flutter/material.dart';
import 'package:syed_s_application2/core/app_export.dart';
import 'package:syed_s_application2/presentation/schedule_page/schedule_page.dart';

// ignore_for_file: must_be_immutable
class ScheduleTabContainerPage extends StatefulWidget {
  const ScheduleTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleTabContainerPageState createState() =>
      ScheduleTabContainerPageState();
}

class ScheduleTabContainerPageState extends State<ScheduleTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildScheduleRow(context),
              Expanded(
                child: SizedBox(
                  height: 618.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SchedulePage(),
                    ],
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
  Widget _buildScheduleRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 182.h,
            margin: EdgeInsets.symmetric(vertical: 2.v),
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder24,
            ),
            child: Text(
              "Canceled Schedule",
              style: theme.textTheme.labelLarge,
            ),
          ),
          Container(
            height: 50.v,
            width: 226.h,
            margin: EdgeInsets.only(left: 12.h),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              tabs: [
                Tab(
                  child: Container(
                    width: 226.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Text(
                      "Upcoming schedule",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
