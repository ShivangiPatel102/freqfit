import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/core/app_export.dart';
import 'package:shivangi_s_application3/presentation/startscreen_screen/models/startscreen_model.dart';

/// A provider class for the StartscreenScreen.
///
/// This provider manages the state of the StartscreenScreen, including the
/// current startscreenModelObj

// ignore_for_file: must_be_immutable
class StartscreenProvider extends ChangeNotifier {
  StartscreenModel startscreenModelObj = StartscreenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
