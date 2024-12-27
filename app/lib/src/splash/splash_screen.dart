import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invoices/src/splash/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, void>(
        bloc: SplashCubit(
            navigationProvider: DependencyProvider.get<NavigationProvider>())
          ..init(),
        builder: (_, __) => Scaffold(
              body: Center(
                  child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                    Image.asset('assets/splash.png'),
                    const CircularProgressIndicator.adaptive()
                  ])),
            ));
  }
}
