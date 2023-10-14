import 'package:flutter/material.dart';
import 'package:kids_app/src/pages/home_screen.dart';

class Routes {
  static const String home = '/home';
}

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    Routes.home: (context) => const HomeScreen(),
 
  };
}
