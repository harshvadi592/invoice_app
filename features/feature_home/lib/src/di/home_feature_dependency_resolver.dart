import 'package:core/core.dart';
import 'package:home/src/navigation/home_feature_navigation_config.dart';
import 'package:home/src/navigation/home_router.dart';

abstract class HomeFeatureDependencyResolver {
  static void register() {
    _registerNavigation();
  }

  static void _registerNavigation() {
    DependencyProvider.registerFactory<AppRouter>(() => HomeRouter(),
        instanceName: HomeFeatureNavigationConfig.name);
  }
}
