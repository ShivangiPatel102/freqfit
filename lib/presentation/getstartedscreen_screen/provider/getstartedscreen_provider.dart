import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/getstartedscreen_screen/models/getstartedscreen_model.dart';

/// A provider class for the GetstartedscreenScreen.
///
/// This provider manages the state of the GetstartedscreenScreen, including the
/// current getstartedscreenModelObj

// ignore_for_file: must_be_immutable
class GetstartedscreenProvider extends ChangeNotifier {
  GetstartedscreenModel getstartedscreenModelObj = GetstartedscreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
