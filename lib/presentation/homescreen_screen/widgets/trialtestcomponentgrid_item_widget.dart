import '../models/trialtestcomponentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TrialtestcomponentgridItemWidget extends StatelessWidget {
  TrialtestcomponentgridItemWidget(
    this.trialtestcomponentgridItemModelObj, {
    Key? key,
    this.onTapTrialTestComponent,
  }) : super(
          key: key,
        );

  TrialtestcomponentgridItemModel trialtestcomponentgridItemModelObj;

  VoidCallback? onTapTrialTestComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTrialTestComponent!.call();
      },
      child: Container(
        decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 14.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    trialtestcomponentgridItemModelObj.dynamicText!,
                    style: CustomTextStyles.bodyLarge16,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomIconButton(
                    height: 39.v,
                    width: 33.h,
                    padding: EdgeInsets.all(6.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAngleRight,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 19.v),
            CustomImageView(
              imagePath: trialtestcomponentgridItemModelObj?.dynamicImage,
              height: 114.v,
              width: 139.h,
              radius: BorderRadius.circular(
                20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
