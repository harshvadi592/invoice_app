import 'package:core/src/colors/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppTheme {
  final AppColorScheme colorScheme;

  AppTheme({
    required this.colorScheme,
  });
}

class AppThemeProvider extends StatelessWidget {
  final AppTheme appTheme;
  final Widget child;

  const AppThemeProvider({
    required this.appTheme,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<AppTheme>(
      create: (context) => appTheme,
      child: child,
    );
  }
}
