import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/core/utils/validation_functions.dart';
import 'package:shivangi_s_application3/widgets/custom_drop_down.dart';
import 'package:shivangi_s_application3/widgets/custom_elevated_button.dart';
import 'package:shivangi_s_application3/widgets/custom_text_form_field.dart';
import 'provider/signup_provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  SignupScreenState createState() => SignupScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignupProvider(), child: SignupScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignupScreenState extends State<SignupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.v),
                                  Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 41.h, vertical: 20.v),
                                      decoration: AppDecoration.fillOnPrimary,
                                      child: Column(children: [
                                        SizedBox(height: 32.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 11.h),
                                                child: Text("lbl_details".tr,
                                                    style: theme.textTheme
                                                        .displayMedium))),
                                        SizedBox(height: 28.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 11.h),
                                            child: Selector<SignupProvider,
                                                    SignupModel?>(
                                                selector: (context, provider) =>
                                                    provider.signupModelObj,
                                                builder: (context,
                                                    signupModelObj, child) {
                                                  return CustomDropDown(
                                                      icon: Container(
                                                          margin:
                                                              EdgeInsets.fromLTRB(
                                                                  30.h,
                                                                  16.v,
                                                                  30.h,
                                                                  25.v),
                                                          child: CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgSortdown,
                                                              height: 23.v,
                                                              width: 25.h)),
                                                      hintText: "lbl_doctor".tr,
                                                      items: signupModelObj
                                                              ?.dropdownItemList ??
                                                          [],
                                                      prefix: Container(
                                                          margin:
                                                              EdgeInsets.fromLTRB(
                                                                  9.h,
                                                                  6.v,
                                                                  30.h,
                                                                  5.v),
                                                          child: CustomImageView(
                                                              imagePath: ImageConstant
                                                                  .imgDoctoricontransparent1,
                                                              height: 54.v,
                                                              width: 57.h)),
                                                      prefixConstraints:
                                                          BoxConstraints(maxHeight: 65.v),
                                                      onChanged: (value) {
                                                        context
                                                            .read<
                                                                SignupProvider>()
                                                            .onSelected(value);
                                                      });
                                                })),
                                        SizedBox(height: 27.v),
                                        _buildNameEditText(context),
                                        SizedBox(height: 27.v),
                                        _buildHospitalClinicNameButton(context),
                                        SizedBox(height: 27.v),
                                        _buildEmailButton(context),
                                        SizedBox(height: 21.v),
                                        _buildRegisterButton(context),
                                        SizedBox(height: 30.v),
                                        Text("msg_sign_up_with_google".tr,
                                            style: CustomTextStyles
                                                .bodyLargePrimary)
                                      ]))
                                ])))))));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child: Selector<SignupProvider, TextEditingController?>(
            selector: (context, provider) => provider.nameEditTextController,
            builder: (context, nameEditTextController, child) {
              return CustomTextFormField(
                  controller: nameEditTextController,
                  hintText: "lbl_name".tr,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildHospitalClinicNameButton(BuildContext context) {
    return CustomElevatedButton(
        text: "msg_hospital_clinic".tr, margin: EdgeInsets.only(left: 11.h));
  }

  /// Section Widget
  Widget _buildEmailButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_email".tr, margin: EdgeInsets.only(left: 11.h));
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        margin: EdgeInsets.only(left: 10.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgAngledoubleright,
                height: 23.v,
                width: 25.h)),
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Navigates to the homescreenScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homescreenScreen,
    );
  }
}
