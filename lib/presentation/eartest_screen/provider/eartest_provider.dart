import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/eartest_screen/models/eartest_model.dart';
import '../models/airconductlist_item_model.dart';

/// A provider class for the EartestScreen.
///
/// This provider manages the state of the EartestScreen, including the
/// current eartestModelObj

// ignore_for_file: must_be_immutable
class EartestProvider extends ChangeNotifier {
  EartestModel eartestModelObj = EartestModel();

  @override
  void dispose() {
    super.dispose();
  }
}
