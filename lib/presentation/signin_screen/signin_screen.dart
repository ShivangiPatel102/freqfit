import 'models/signin_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/custom_elevated_button.dart';
import 'provider/signin_provider.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  SigninScreenState createState() => SigninScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SigninProvider(), child: SigninScreen());
  }
}

class SigninScreenState extends State<SigninScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 45.h, vertical: 33.v),
                              child: Column(children: [
                                SizedBox(height: 26.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text("lbl_details".tr,
                                            style: theme
                                                .textTheme.displayMedium))),
                                SizedBox(height: 86.v),
                                CustomElevatedButton(text: "lbl_name".tr),
                                SizedBox(height: 29.v),
                                CustomElevatedButton(text: "lbl_email".tr),
                                SizedBox(height: 39.v),
                                CustomElevatedButton(
                                    text: "lbl_login".tr,
                                    rightIcon: Container(
                                        margin: EdgeInsets.only(left: 30.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgAngledoubleright,
                                            height: 23.v,
                                            width: 25.h)),
                                    onPressed: () {
                                      onTapLogin(context);
                                    }),
                                SizedBox(height: 122.v),
                                Text("msg_sign_in_with_google".tr,
                                    style: CustomTextStyles.bodyLargePrimary)
                              ]))))
                ]))));
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homescreenScreen,
    );
  }
}
