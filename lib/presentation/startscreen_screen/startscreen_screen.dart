import 'models/startscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'provider/startscreen_provider.dart';

class StartscreenScreen extends StatefulWidget {
  const StartscreenScreen({Key? key}) : super(key: key);

  @override
  StartscreenScreenState createState() => StartscreenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => StartscreenProvider(), child: StartscreenScreen());
  }
}

class StartscreenScreenState extends State<StartscreenScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.homescreenScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    height: SizeUtils.height,
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 49.h, vertical: 128.v),
                    decoration: AppDecoration.fillOnPrimary,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgAppicontransparent,
                          height: 302.v,
                          width: 260.h,
                          alignment: Alignment.topCenter),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtFreqfit(context);
                              },
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 30.v),
                                  decoration:
                                      AppDecoration.outlineOnPrimaryContainer,
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_freq".tr,
                                            style: CustomTextStyles
                                                .displayMediumffffffff),
                                        TextSpan(
                                            text: "lbl_fit".tr,
                                            style: CustomTextStyles
                                                .displayMediumffdc5049)
                                      ]),
                                      textAlign: TextAlign.center))))
                    ])))));
  }

  /// Navigates to the getstartedscreenScreen when the action is triggered.
  onTapTxtFreqfit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getstartedscreenScreen,
    );
  }
}
