import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/feature_home.dart';

class SplashCubit extends Cubit<void> {
  final NavigationProvider _navigationProvider;
  SplashCubit({required NavigationProvider navigationProvider})
      : _navigationProvider = navigationProvider,
        super(null);

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));

    _navigationProvider
        .clearStackAndReplace(const HomeFeatureNavigationConfig());
  }
}
