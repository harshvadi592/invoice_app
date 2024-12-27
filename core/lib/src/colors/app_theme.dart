import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppThemeProvider extends StatelessWidget {
  final AppColorScheme colorScheme;
  final Widget child;

  const AppThemeProvider({
    required this.colorScheme,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Provider<AppColorScheme>(
      create: (context) => colorScheme,
      child: child,
    );
  }
}

class AppColorScheme {
  static const _defaultColor = Colors.white;

  final Color primary1;
  final Color primary2;
  final Color secondary1;
  final Color secondary2;
  final Color background1;
  final Color background2;
  final Color surface1;
  final Color surface2;
  final Color transparent = Colors.transparent;

  AppColorScheme({
    this.primary1 = _defaultColor,
    this.primary2 = _defaultColor,
    this.secondary1 = _defaultColor,
    this.secondary2 = _defaultColor,
    this.background1 = _defaultColor,
    this.background2 = _defaultColor,
    this.surface1 = _defaultColor,
    this.surface2 = _defaultColor,
  });

  factory AppColorScheme.light() {
    return AppColorScheme(
      primary1: Colors.blue,
      primary2: Colors.blue[200]!,
      secondary1: Colors.green,
      secondary2: Colors.green[200]!,
      background1: Colors.white,
      background2: Colors.grey[200]!,
      surface1: Colors.white,
      surface2: Colors.grey[200]!,
    );
  }

  /// Dark theme is not implemented yet
  factory AppColorScheme.dark() {
    return AppColorScheme.light();
  }
}
