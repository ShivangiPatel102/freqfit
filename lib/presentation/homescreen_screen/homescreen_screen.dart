import '../homescreen_screen/widgets/trialtestcomponentgrid_item_widget.dart';
import 'models/homescreen_model.dart';
import 'models/trialtestcomponentgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'provider/homescreen_provider.dart';

class HomescreenScreen extends StatefulWidget {
  const HomescreenScreen({Key? key}) : super(key: key);

  @override
  HomescreenScreenState createState() => HomescreenScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomescreenProvider(), child: HomescreenScreen());
  }
}

class HomescreenScreenState extends State<HomescreenScreen> {
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 52.v),
                          decoration: AppDecoration.fillOnPrimary,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 17.h),
                                    child: Text("lbl_hello_user".tr,
                                        style: theme.textTheme.displayMedium)),
                                SizedBox(height: 45.v),
                                _buildTrialTestComponentGrid(context),
                                SizedBox(height: 27.v)
                              ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildTrialTestComponentGrid(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child:
            Consumer<HomescreenProvider>(builder: (context, provider, child) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 189.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 34.h,
                  crossAxisSpacing: 34.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: provider
                  .homescreenModelObj.trialtestcomponentgridItemList.length,
              itemBuilder: (context, index) {
                TrialtestcomponentgridItemModel model = provider
                    .homescreenModelObj.trialtestcomponentgridItemList[index];
                return TrialtestcomponentgridItemWidget(model,
                    onTapTrialTestComponent: () {
                  onTapTrialTestComponent(context);
                });
              });
        }));
  }

  /// Navigates to the airconductscreenScreen when the action is triggered.
  onTapTrialTestComponent(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.airconductscreenScreen,
    );
  }
}
