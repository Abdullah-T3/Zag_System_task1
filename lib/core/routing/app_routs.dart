import 'package:flutter/material.dart';
import 'package:zag_system_task1/core/routing/routs.dart';
import 'package:zag_system_task1/features/Authentication/Screens/SignUp.dart';
import '../../features/onBoarding/screens/onBording_screen.dart';
import '../../features/home/screens/home_page_screen.dart';

class AppRouts {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute(builder: (context) => const HomePageScreen());
      case Routes.onBordingScreen:
        return MaterialPageRoute(builder: (context) => OnbordingScreen());
      case Routes.SignUpScreen:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      default:
        return null;
    }
  }
}
