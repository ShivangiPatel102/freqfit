import '../../../core/app_export.dart';
import 'airconductlist_item_model.dart';

class EartestModel {
  List<AirconductlistItemModel> airconductlistItemList = [
    AirconductlistItemModel(
        dynamicText: "Air\nConduct",
        dynamicImage: ImageConstant.imgAudimetryTest2),
    AirconductlistItemModel(
        dynamicText: "Speech\nScreening",
        dynamicImage: ImageConstant.imgHearingTest1024x683)
  ];
}
