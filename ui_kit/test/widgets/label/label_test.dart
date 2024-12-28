import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/src/widgets/label.dart';

import '../../golden_runner.dart';

Widget _buildLabel({
  ColorPointer? color,
  TextStylePointer? textStyle,
}) {
  return SizedBox(
    width: 400,
    child: Label(
      model: LabelModel(
        text: 'Label',
        color: color ?? ColorPointer.primary1,
        textStyle: textStyle ?? TextStylePointer.primary1,
      ),
    ),
  );
}

void main() {
  final defaultScenario = Scenario(
    description: 'Label with default styles',
    widget: _buildLabel(),
  );

  final colorScenarios = [
    Scenario(
      description: 'Label with primary1 color',
      widget: _buildLabel(color: ColorPointer.primary1),
    ),
    Scenario(
      description: 'Label with secondary1 color',
      widget: _buildLabel(color: ColorPointer.secondary1),
    ),
  ];

  final textStyleScenarios = [
    Scenario(
      description: 'Label with h1 text style',
      widget: _buildLabel(textStyle: TextStylePointer.h1),
    ),
    Scenario(
      description: 'Label with primary1 text style',
      widget: _buildLabel(textStyle: TextStylePointer.primary1),
    ),
    Scenario(
      description: 'Label with secondary1 text style',
      widget: _buildLabel(textStyle: TextStylePointer.secondary1),
    ),
    Scenario(
      description: 'Label with underline text style',
      widget: _buildLabel(textStyle: TextStylePointer.underline),
    ),
    Scenario(
      description: 'Label with b1 text style',
      widget: _buildLabel(textStyle: TextStylePointer.b1),
    ),
  ];

  startGoldenRunner(
    description: 'Label - default',
    widths: [400],
    scenarios: [defaultScenario],
  );
  startGoldenRunner(
    description: 'Label - colors',
    widths: [400],
    scenarios: colorScenarios,
  );
  startGoldenRunner(
    description: 'Label - text styles',
    widths: [400],
    scenarios: textStyleScenarios,
  );
}
