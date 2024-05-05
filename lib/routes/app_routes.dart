import 'package:flutter/material.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/detail_screen/detail_screen.dart';
import '../presentation/homepage_container_screen/homepage_container_screen.dart';
import '../presentation/homepage_one_screen/homepage_one_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageOneScreen = '/homepage_one_screen';

  static const String detailScreen = '/detail_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    homepageOneScreen: (context) => HomepageOneScreen(),
    detailScreen: (context) => DetailScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomepageContainerScreen()
  };
}
