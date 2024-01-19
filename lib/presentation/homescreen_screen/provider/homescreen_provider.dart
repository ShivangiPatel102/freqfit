import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/homescreen_screen/models/homescreen_model.dart';
import '../models/trialtestcomponentgrid_item_model.dart';

/// A provider class for the HomescreenScreen.
///
/// This provider manages the state of the HomescreenScreen, including the
/// current homescreenModelObj

// ignore_for_file: must_be_immutable
class HomescreenProvider extends ChangeNotifier {
  HomescreenModel homescreenModelObj = HomescreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
