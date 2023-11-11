import 'package:flutter/material.dart';
import 'package:syed_s_application2/presentation/home_container_screen/home_container_screen.dart';
import 'package:syed_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String schedulePage = '/schedule_page';

  static const String scheduleTabContainerPage = '/schedule_tab_container_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
