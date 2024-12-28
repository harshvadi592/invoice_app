import 'package:core/core.dart';
import 'package:flutter/material.dart';

enum TextStylePointer {
  h1,
  h2,
  h3,
  b1,
  b2,
  b3,
  underline,
  primary1,
  primary2,
  primary3,
  secondary1,
  secondary2,
  secondary3,
}

extension TextStylePointerExtension on TextStylePointer {
  TextStyle styleOf(BuildContext context) {
    switch (this) {
      case TextStylePointer.h1:
        return context.textStyling.h1;
      case TextStylePointer.h2:
        return context.textStyling.h2;
      case TextStylePointer.h3:
        return context.textStyling.h3;
      case TextStylePointer.b1:
        return context.textStyling.b1;
      case TextStylePointer.b2:
        return context.textStyling.b2;
      case TextStylePointer.b3:
        return context.textStyling.b3;
      case TextStylePointer.underline:
        return context.textStyling.underline;
      case TextStylePointer.primary1:
        return context.textStyling.primary1;
      case TextStylePointer.primary2:
        return context.textStyling.primary2;
      case TextStylePointer.primary3:
        return context.textStyling.primary3;
      case TextStylePointer.secondary1:
        return context.textStyling.secondary1;
      case TextStylePointer.secondary2:
        return context.textStyling.secondary2;
      case TextStylePointer.secondary3:
        return context.textStyling.secondary3;
    }
  }
}
