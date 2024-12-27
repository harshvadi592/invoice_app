import 'package:core/core.dart';
import 'package:home/feature_home.dart';
import 'package:invoices/src/constants/global_key.dart';

abstract class AppDependencyResolver {
  static void registerDependencies() {
    // Register dependencies here

    DependencyProvider.registerFactory<NavigationProvider>(
        () => NavigationProviderImpl(navigatorKey: navigatorKey));

    registerFeatures();
  }

  static void registerFeatures() {
    HomeFeatureDependencyResolver.register();
  }
}
