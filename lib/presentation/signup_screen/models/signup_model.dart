import 'package:shivangi_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';

class SignupModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];
}
