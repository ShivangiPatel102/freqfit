import 'models/airconductscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivangi_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:shivangi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:shivangi_s_application3/widgets/custom_elevated_button.dart';
import 'provider/airconductscreen_provider.dart';

class AirconductscreenScreen extends StatefulWidget {
  const AirconductscreenScreen({Key? key}) : super(key: key);

  @override
  AirconductscreenScreenState createState() => AirconductscreenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AirconductscreenProvider(),
        child: AirconductscreenScreen());
  }
}

class AirconductscreenScreenState extends State<AirconductscreenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 34.h, vertical: 4.v),
                child: Column(children: [
                  SizedBox(height: 30.v),
                  _buildColumnFourteen(context),
                  SizedBox(height: 34.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [
                              Container(
                                  height: 60.v,
                                  width: 67.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 10.v),
                                  decoration: AppDecoration
                                      .outlineOnPrimaryContainer1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgCaretSquareUp,
                                      height: 35.v,
                                      width: 40.h,
                                      alignment: Alignment.bottomLeft)),
                              SizedBox(height: 10.v),
                              Container(
                                  height: 60.v,
                                  width: 67.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 12.v),
                                  decoration: AppDecoration
                                      .outlineOnPrimaryContainer1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgCaretSquareUpOnprimarycontainer,
                                      height: 35.v,
                                      width: 40.h,
                                      alignment: Alignment.center))
                            ]),
                            Container(
                                margin:
                                    EdgeInsets.only(top: 17.v, bottom: 27.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24.h, vertical: 20.v),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 5.v),
                                      Text("lbl_stop".tr,
                                          style: theme.textTheme.displaySmall)
                                    ])),
                            Column(children: [
                              Container(
                                  height: 60.v,
                                  width: 67.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.h, vertical: 13.v),
                                  decoration: AppDecoration
                                      .outlineOnPrimaryContainer1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgUser,
                                      height: 30.adaptSize,
                                      width: 30.adaptSize,
                                      alignment: Alignment.bottomCenter)),
                              SizedBox(height: 10.v),
                              Container(
                                  height: 60.v,
                                  width: 67.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 21.h, vertical: 16.v),
                                  decoration: AppDecoration
                                      .outlineOnPrimaryContainer1
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder20),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgUserOnprimarycontainer,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      alignment: Alignment.bottomCenter))
                            ])
                          ]))
                ])),
            bottomNavigationBar: _buildButtonFinish(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_air_conduct2".tr));
  }

  /// Section Widget
  Widget _buildColumnFourteen(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 34.v),
        decoration: AppDecoration.outlineOnPrimaryContainer1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildRowSix(context,
                  dynamicText1: "lbl_100".tr, dynamicText2: "lbl_hz".tr)),
          SizedBox(height: 23.v),
          Padding(
              padding: EdgeInsets.only(right: 2.h),
              child: _buildRowSix(context,
                  dynamicText1: "lbl_10".tr, dynamicText2: "lbl_db".tr)),
          SizedBox(height: 6.v)
        ]));
  }

  /// Section Widget
  Widget _buildButtonFinish(BuildContext context) {
    return CustomElevatedButton(
        height: 59.v,
        width: 123.h,
        text: "lbl_finish".tr,
        margin: EdgeInsets.only(left: 117.h, right: 120.h, bottom: 18.v),
        buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.headlineSmall!,
        onPressed: () {
          onTapButtonFinish(context);
        });
  }

  /// Common widget
  Widget _buildRowSix(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 6.v),
                  child: Text(dynamicText1,
                      style: theme.textTheme.displaySmall!
                          .copyWith(color: appTheme.whiteA700))),
              Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(dynamicText2,
                      style: theme.textTheme.displaySmall!
                          .copyWith(color: appTheme.whiteA700)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the eartestresultsScreen when the action is triggered.
  onTapButtonFinish(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.eartestresultsScreen,
    );
  }
}
