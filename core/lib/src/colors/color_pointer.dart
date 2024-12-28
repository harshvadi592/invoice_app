import 'package:core/src/extensions/context_extension.dart';
import 'package:flutter/material.dart';

enum ColorPointer {
  primary1,
  primary2,
  secondary1,
  secondary2,
  background1,
  background2,
  surface1,
  surface2,
  transparent,
}

extension ColorPointerExtension on ColorPointer {
  Color colorOf(BuildContext context) {
    switch (this) {
      case ColorPointer.primary1:
        return context.colorStyling.primary1;
      case ColorPointer.primary2:
        return context.colorStyling.primary2;
      case ColorPointer.secondary1:
        return context.colorStyling.secondary1;
      case ColorPointer.secondary2:
        return context.colorStyling.secondary2;
      case ColorPointer.background1:
        return context.colorStyling.background1;
      case ColorPointer.background2:
        return context.colorStyling.background2;
      case ColorPointer.surface1:
        return context.colorStyling.surface1;
      case ColorPointer.surface2:
        return context.colorStyling.surface2;
      case ColorPointer.transparent:
        return context.colorStyling.transparent;
    }
  }
}
