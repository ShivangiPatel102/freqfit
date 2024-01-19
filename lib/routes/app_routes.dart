import 'package:flutter/material.dart';
import 'package:shivangi_s_application3/presentation/startscreen_screen/startscreen_screen.dart';
import 'package:shivangi_s_application3/presentation/getstartedscreen_screen/getstartedscreen_screen.dart';
import 'package:shivangi_s_application3/presentation/signup_screen/signup_screen.dart';
import 'package:shivangi_s_application3/presentation/homescreen_screen/homescreen_screen.dart';
import 'package:shivangi_s_application3/presentation/eartest_screen/eartest_screen.dart';
import 'package:shivangi_s_application3/presentation/airconductscreen_screen/airconductscreen_screen.dart';
import 'package:shivangi_s_application3/presentation/signin_screen/signin_screen.dart';
import 'package:shivangi_s_application3/presentation/eartestresults_screen/eartestresults_screen.dart';
import 'package:shivangi_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startscreenScreen = '/startscreen_screen';

  static const String getstartedscreenScreen = '/getstartedscreen_screen';

  static const String signupScreen = '/signup_screen';

  static const String homescreenScreen = '/homescreen_screen';

  static const String eartestScreen = '/eartest_screen';

  static const String airconductscreenScreen = '/airconductscreen_screen';

  static const String signinScreen = '/signin_screen';

  static const String eartestresultsScreen = '/eartestresults_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = startscreenScreen;

  static Map<String, WidgetBuilder> get routes => {
        startscreenScreen: StartscreenScreen.builder,
        getstartedscreenScreen: GetstartedscreenScreen.builder,
        signupScreen: SignupScreen.builder,
        homescreenScreen: HomescreenScreen.builder,
        eartestScreen: EartestScreen.builder,
        airconductscreenScreen: AirconductscreenScreen.builder,
        signinScreen: SigninScreen.builder,
        eartestresultsScreen: EartestresultsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartscreenScreen.builder
      };
}
