import '../models/airconductlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AirconductlistItemWidget extends StatelessWidget {
  AirconductlistItemWidget(
    this.airconductlistItemModelObj, {
    Key? key,
    this.onTapAirConduct,
  }) : super(
          key: key,
        );

  AirconductlistItemModel airconductlistItemModelObj;

  VoidCallback? onTapAirConduct;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 139.h,
      child: GestureDetector(
        onTap: () {
          onTapAirConduct!.call();
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
                children: [
                  Container(
                    width: 64.h,
                    margin: EdgeInsets.only(top: 3.v),
                    child: Text(
                      airconductlistItemModelObj.dynamicText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLarge16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
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
              SizedBox(height: 18.v),
              CustomImageView(
                imagePath: airconductlistItemModelObj?.dynamicImage,
                height: 114.v,
                width: 139.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
