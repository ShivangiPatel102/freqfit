import '../../../core/app_export.dart';

/// This class is used in the [airconductlist_item_widget] screen.
class AirconductlistItemModel {
  AirconductlistItemModel({
    this.dynamicText,
    this.dynamicImage,
    this.id,
  }) {
    dynamicText = dynamicText ?? "Air\nConduct";
    dynamicImage = dynamicImage ?? ImageConstant.imgAudimetryTest2;
    id = id ?? "";
  }

  String? dynamicText;

  String? dynamicImage;

  String? id;
}
