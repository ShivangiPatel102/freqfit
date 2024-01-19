import '../../../core/app_export.dart';

/// This class is used in the [trialtestcomponentgrid_item_widget] screen.
class TrialtestcomponentgridItemModel {
  TrialtestcomponentgridItemModel({
    this.dynamicText,
    this.dynamicImage,
    this.id,
  }) {
    dynamicText = dynamicText ?? "Trial Test";
    dynamicImage = dynamicImage ?? ImageConstant.imgTrialtest1;
    id = id ?? "";
  }

  String? dynamicText;

  String? dynamicImage;

  String? id;
}
