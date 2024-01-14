import 'package:flutter/material.dart';
import 'package:nasir_s_doctorplant_app/presentation/get_started_screen/get_started_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/login_screen/login_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/scanner_screen/scanner_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/register_screen/register_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/home_tab_container_screen/home_tab_container_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/account_container_screen/account_container_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/detail_plant_screen/detail_plant_screen.dart';
import 'package:nasir_s_doctorplant_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String getStartedScreen = '/get_started_screen';

  static const String loginScreen = '/login_screen';

  static const String scannerScreen = '/scanner_screen';

  static const String registerScreen = '/register_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerScreen = '/home_tab_container_screen';

  static const String accountPage = '/account_page';

  static const String accountContainerScreen = '/account_container_screen';

  static const String detailPlantScreen = '/detail_plant_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    getStartedScreen: (context) => GetStartedScreen(),
    loginScreen: (context) => LoginScreen(),
    scannerScreen: (context) => ScannerScreen(),
    registerScreen: (context) => RegisterScreen(),
    homeTabContainerScreen: (context) => HomeTabContainerScreen(),
    accountContainerScreen: (context) => AccountContainerScreen(),
    detailPlantScreen: (context) => DetailPlantScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
