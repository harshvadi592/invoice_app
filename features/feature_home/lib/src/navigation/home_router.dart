import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/src/navigation/home_feature_navigation_config.dart';
import 'package:home/src/screens/home_screen.dart';

class HomeRouter extends AppRouter {
  @override
  Route? handleRoute(RouteSettings settings) {
    final config = settings.arguments;

    if (config is HomeFeatureNavigationConfig) {
      return toRoute(HomeScreen(), settings);
    }

    throw Exception('$settings not supported by ${this.runtimeType}');
  }
}
