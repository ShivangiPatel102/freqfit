import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/airconductscreen_screen/models/airconductscreen_model.dart';

/// A provider class for the AirconductscreenScreen.
///
/// This provider manages the state of the AirconductscreenScreen, including the
/// current airconductscreenModelObj

// ignore_for_file: must_be_immutable
class AirconductscreenProvider extends ChangeNotifier {
  AirconductscreenModel airconductscreenModelObj = AirconductscreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
