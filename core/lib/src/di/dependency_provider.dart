import 'package:get_it/get_it.dart';

typedef Factory<T> = T Function();
typedef FactoryWithParams<T, P1, P2> = T Function(P1 param1, P2 param2);

class DependencyProvider {
  static final GetIt _getIt = GetIt.instance;

  static T get<T extends Object>({String? instanceName}) {
    return _getIt<T>(instanceName: instanceName);
  }

  static void registerFactory<T extends Object>(Factory<T> factory,
      {String? instanceName}) {
    _getIt.registerFactory<T>(factory, instanceName: instanceName);
  }

  static void registerLazySingleton<T extends Object>(Factory<T> factory,
      {String? instanceName}) {
    _getIt.registerLazySingleton<T>(factory, instanceName: instanceName);
  }

  static void registerFactoryWithParams<T extends Object, P1, P2>(
      FactoryWithParams<T, P1, P2> factory,
      {String? instanceName}) {
    _getIt.registerFactoryParam<T, P1, P2>(factory, instanceName: instanceName);
  }
}
