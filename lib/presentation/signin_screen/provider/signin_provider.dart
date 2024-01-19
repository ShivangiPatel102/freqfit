import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/signin_screen/models/signin_model.dart';

/// A provider class for the SigninScreen.
///
/// This provider manages the state of the SigninScreen, including the
/// current signinModelObj

// ignore_for_file: must_be_immutable
class SigninProvider extends ChangeNotifier {
  SigninModel signinModelObj = SigninModel();

  @override
  void dispose() {
    super.dispose();
  }
}
