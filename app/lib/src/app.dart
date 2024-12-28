import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:invoices/src/splash/splash_screen.dart';

import 'constants/global_key.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppThemeProvider(
      appTheme: AppTheme(colorScheme: AppColorScheme.light()),
      child: MaterialApp(
        title: 'E-Invoices',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        onGenerateRoute: (settings) {
          final name = settings.name;
          if (name == '/') {
            return MaterialPageRoute(
                builder: (context) => const SplashScreen());
          }

          final config = settings.arguments as FeatureNavigationConfig;
          final router =
              DependencyProvider.get<AppRouter>(instanceName: config.id);

          return router.handleRoute(settings);
        },
        initialRoute: '/',
        home: const SplashScreen(),
      ),
    );
  }
}
