import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension BuildContextExtension on BuildContext {
  AppColorScheme get colorStyling {
    return Provider.of<AppTheme>(this).colorScheme;
  }

  AppTextStyles get textStyling {
    return Provider.of<AppTheme>(this).textStyles;
  }
}
