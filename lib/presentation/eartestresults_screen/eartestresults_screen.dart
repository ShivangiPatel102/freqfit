import 'models/eartestresults_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivangi_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:shivangi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:shivangi_s_application3/widgets/custom_elevated_button.dart';
import 'provider/eartestresults_provider.dart';

class EartestresultsScreen extends StatefulWidget {
  const EartestresultsScreen({Key? key}) : super(key: key);

  @override
  EartestresultsScreenState createState() => EartestresultsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EartestresultsProvider(),
        child: EartestresultsScreen());
  }
}

class EartestresultsScreenState extends State<EartestresultsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 35.v),
                    child: GestureDetector(
                        onTap: () {
                          onTapOne(context);
                        },
                        child: Container(
                            margin: EdgeInsets.only(bottom: 5.v),
                            padding: EdgeInsets.symmetric(horizontal: 40.h),
                            child: Column(children: [
                              CustomElevatedButton(
                                  text: "lbl_patient_name".tr,
                                  margin: EdgeInsets.only(left: 6.h)),
                              SizedBox(height: 42.v),
                              SizedBox(
                                  height: 337.v,
                                  width: 273.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        _buildAirConduct(context),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgDownload1,
                                            height: 244.v,
                                            width: 273.h,
                                            radius: BorderRadius.circular(20.h),
                                            alignment: Alignment.bottomCenter)
                                      ]))
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 36.h, top: 13.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_pta_results".tr));
  }

  /// Section Widget
  Widget _buildAirConduct(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 27.v),
            decoration: AppDecoration.outlineOnPrimaryContainer1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Text("lbl_audiogram".tr, style: theme.textTheme.bodyLarge)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homescreenScreen,
    );
  }
}
