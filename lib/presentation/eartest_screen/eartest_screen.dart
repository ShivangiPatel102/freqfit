import '../eartest_screen/widgets/airconductlist_item_widget.dart';
import 'models/airconductlist_item_model.dart';
import 'models/eartest_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:shivangi_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:shivangi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:shivangi_s_application3/widgets/custom_elevated_button.dart';
import 'provider/eartest_provider.dart';

class EartestScreen extends StatefulWidget {
  const EartestScreen({Key? key}) : super(key: key);

  @override
  EartestScreenState createState() => EartestScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EartestProvider(), child: EartestScreen());
  }
}

class EartestScreenState extends State<EartestScreen> {
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 46.v),
                          decoration: AppDecoration.fillOnPrimary,
                          child: Column(children: [
                            _buildAppBar(context),
                            SizedBox(height: 44.v),
                            CustomElevatedButton(
                                text: "msg_enter_patient_name".tr,
                                margin:
                                    EdgeInsets.only(left: 46.h, right: 40.h)),
                            SizedBox(height: 28.v),
                            CustomElevatedButton(
                                text: "lbl_patient_email".tr,
                                margin:
                                    EdgeInsets.only(left: 46.h, right: 40.h),
                                rightIcon: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(1.h, 1.v, 4.h, 4.v),
                                    margin: EdgeInsets.only(left: 30.h),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgCheckmark,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize))),
                            SizedBox(height: 70.v),
                            _buildAirConductList(context),
                            SizedBox(height: 33.v)
                          ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 49.v,
        leadingWidth: 59.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 39.h, top: 9.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_pta".tr, margin: EdgeInsets.only(left: 71.h)));
  }

  /// Section Widget
  Widget _buildAirConductList(BuildContext context) {
    return SizedBox(
        height: 188.v,
        child: Consumer<EartestProvider>(builder: (context, provider, child) {
          return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 31.h);
              },
              itemCount: provider.eartestModelObj.airconductlistItemList.length,
              itemBuilder: (context, index) {
                AirconductlistItemModel model =
                    provider.eartestModelObj.airconductlistItemList[index];
                return AirconductlistItemWidget(model, onTapAirConduct: () {
                  onTapAirConduct(context);
                });
              });
        }));
  }

  /// Navigates to the airconductscreenScreen when the action is triggered.
  onTapAirConduct(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.airconductscreenScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
