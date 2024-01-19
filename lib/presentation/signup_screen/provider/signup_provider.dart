import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/signup_screen/models/signup_model.dart';

/// A provider class for the SignupScreen.
///
/// This provider manages the state of the SignupScreen, including the
/// current signupModelObj

// ignore_for_file: must_be_immutable
class SignupProvider extends ChangeNotifier {
  TextEditingController nameEditTextController = TextEditingController();

  SignupModel signupModelObj = SignupModel();

  @override
  void dispose() {
    super.dispose();
    nameEditTextController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in signupModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
