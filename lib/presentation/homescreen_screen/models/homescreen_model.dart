import '../../../core/app_export.dart';
import 'trialtestcomponentgrid_item_model.dart';

class HomescreenModel {
  List<TrialtestcomponentgridItemModel> trialtestcomponentgridItemList = [
    TrialtestcomponentgridItemModel(
        dynamicText: "Trial Test", dynamicImage: ImageConstant.imgTrialtest1),
    TrialtestcomponentgridItemModel(
        dynamicText: "PTA", dynamicImage: ImageConstant.imgHearingTest1),
    TrialtestcomponentgridItemModel(dynamicText: "Tutorials"),
    TrialtestcomponentgridItemModel(
        dynamicText: "History", dynamicImage: ImageConstant.imgHistory1)
  ];
}
