import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/eartestresults_screen/models/eartestresults_model.dart';

/// A provider class for the EartestresultsScreen.
///
/// This provider manages the state of the EartestresultsScreen, including the
/// current eartestresultsModelObj

// ignore_for_file: must_be_immutable
class EartestresultsProvider extends ChangeNotifier {
  EartestresultsModel eartestresultsModelObj = EartestresultsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
