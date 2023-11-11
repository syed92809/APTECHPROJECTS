import 'package:flutter/material.dart';
import 'package:syed_s_application2/core/app_export.dart';
import 'package:syed_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 72.adaptSize,
              width: 72.adaptSize,
              padding: EdgeInsets.all(24.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "Covid 19",
              style: CustomTextStyles.bodyMedium15,
            ),
          ],
        ),
      ),
    );
  }
}
