import 'models/getstartedscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/custom_elevated_button.dart';
import 'provider/getstartedscreen_provider.dart';

class GetstartedscreenScreen extends StatefulWidget {
  const GetstartedscreenScreen({Key? key}) : super(key: key);

  @override
  GetstartedscreenScreenState createState() => GetstartedscreenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GetstartedscreenProvider(),
        child: GetstartedscreenScreen());
  }
}

class GetstartedscreenScreenState extends State<GetstartedscreenScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                child: Column(children: [
                  SizedBox(
                      height: 315.v,
                      width: 264.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("lbl_welcome".tr,
                                style: CustomTextStyles.displayMedium50)),
                        CustomImageView(
                            imagePath: ImageConstant.imgSoundBeat,
                            height: 258.v,
                            width: 264.h,
                            alignment: Alignment.topCenter)
                      ])),
                  Spacer(),
                  CustomElevatedButton(
                      height: 69.v,
                      text: "lbl_get_started".tr,
                      margin: EdgeInsets.only(left: 22.h, right: 9.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgAngledoubleright,
                              height: 25.adaptSize,
                              width: 25.adaptSize)),
                      onPressed: () {
                        onTapGetStarted(context);
                      }),
                  SizedBox(height: 21.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtConfirmation(context);
                      },
                      child: Text("msg_already_have_an".tr,
                          style: CustomTextStyles.bodyLargePrimary)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapGetStarted(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the signinScreen when the action is triggered.
  onTapTxtConfirmation(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signinScreen,
    );
  }
}
