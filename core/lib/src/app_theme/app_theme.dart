import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppTheme {
  final AppColorScheme colorScheme;
  final AppTextStyles textStyles;

  AppTheme({
    required this.colorScheme,
    required this.textStyles,
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
