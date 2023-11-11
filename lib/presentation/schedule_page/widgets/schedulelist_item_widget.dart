import 'package:flutter/material.dart';
import 'package:syed_s_application2/core/app_export.dart';
import 'package:syed_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class SchedulelistItemWidget extends StatelessWidget {
  const SchedulelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 82.h),
            child: Row(
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
              ],
            ),
          ),
          SizedBox(height: 40.v),
          Padding(
            padding: EdgeInsets.only(right: 30.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "Sunday, 12 June",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClockBlueGray300,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "11:00 - 12:00 AM",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          CustomElevatedButton(
            text: "Detail",
          ),
        ],
      ),
    );
  }
}
