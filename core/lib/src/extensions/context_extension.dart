import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension BuildContextExtension on BuildContext {
  AppColorScheme get colorStyling {
    return Provider.of<AppColorScheme>(this);
  }
}
