import 'package:flutter/material.dart';

abstract class AppRouter {
  Route<dynamic>? toRoute(Widget page, RouteSettings? settings) {
    return MaterialPageRoute(builder: (_) => page, settings: settings);
  }

  Route<dynamic>? handleRoute(RouteSettings settings);
}
