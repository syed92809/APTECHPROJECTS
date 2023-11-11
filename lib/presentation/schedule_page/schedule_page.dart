import '../schedule_page/widgets/schedulelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:syed_s_application2/core/app_export.dart';
import 'package:syed_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key})
      : super(
          key: key,
        );

  @override
  SchedulePageState createState() => SchedulePageState();
}

class SchedulePageState extends State<SchedulePage>
    with AutomaticKeepAliveClientMixin<SchedulePage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 191.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder24,
                            ),
                            child: Text(
                              "Completed schedule",
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 26.v),
                        _buildScheduleList(context),
                        SizedBox(height: 24.v),
                        Padding(
                          padding: EdgeInsets.only(right: 24.h),
                          child: CustomSearchView(
                            controller: searchController,
                            hintText: "Search doctor or health issue",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScheduleList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24.h),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.v),
            child: SizedBox(
              width: 295.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.gray100,
              ),
            ),
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return SchedulelistItemWidget();
        },
      ),
    );
  }
}
