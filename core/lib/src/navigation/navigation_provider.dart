import 'package:core/core.dart';
import 'package:flutter/material.dart';

abstract interface class NavigationProvider {
  /// Navigates to a feature
  Future<T?> navigateTo<T>(FeatureNavigationConfig feature);

  /// Pushes a screen to the navigation stack
  Future<T?> push<T>(ScreenNavigationConfig config);

  /// Pops the current screen from the navigation stack
  T? goBack<T>(T? result);

  /// Pops the navigation stack until a specific screen
  void goBackUntil(ScreenNavigationConfig config);

  /// Pops the navigation stack until the first screen
  void popUntilFirst();

  /// Pops the navigation stack until the feature init screen
  void goBackUntilFeatureInitScreen(FeatureNavigationConfig feature);

  /// Clear navigation stack and push feature
  void clearStackAndReplace(FeatureNavigationConfig config);
}

class NavigationProviderImpl implements NavigationProvider {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationProviderImpl({required this.navigatorKey});

  @override
  Future<T?> navigateTo<T>(FeatureNavigationConfig feature) {
    return navigatorKey.currentState!
        .pushNamed<T?>(feature.id, arguments: feature);
  }

  @override
  Future<T?> push<T>(ScreenNavigationConfig config) {
    return navigatorKey.currentState!
        .pushNamed<T?>(config.name, arguments: config);
  }

  @override
  T? goBack<T>(T? result) {
    navigatorKey.currentState!.pop(result);

    return result;
  }

  @override
  void goBackUntil(ScreenNavigationConfig config) {
    navigatorKey.currentState!.popUntil(ModalRoute.withName(config.name));
  }

  @override
  void popUntilFirst() {
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  @override
  void goBackUntilFeatureInitScreen(FeatureNavigationConfig feature) {
    navigatorKey.currentState!.popUntil((route) {
      return route.settings.name == feature.id;
    });
  }

  @override
  void clearStackAndReplace(FeatureNavigationConfig feature) {
    popUntilFirst();
    navigatorKey.currentState!
        .pushReplacementNamed(feature.id, arguments: feature);
  }
}
