import 'package:core/core.dart';
import 'package:ui_kit/ui_kit.dart';

import '../golden_runner.dart';

void main() {
  final scenarios = [
    Scenario(
      description: 'TopNavigation with back button',
      widget: TopNavigation(
        model: TopNavigationModel(
          leftAccessory: TopNavigationBackLeftAccessoryModel(),
          backgroundColor: ColorPointer.background1,
        ),
      ),
    ),
    Scenario(
      description: 'TopNavigation with empty left accessory',
      widget: TopNavigation(
        model: TopNavigationModel(
          leftAccessory: TopNavigationEmptyLeftAccessoryModel(),
        ),
      ),
    ),
    Scenario(
      description: 'TopNavigation with back button and custom background color',
      widget: TopNavigation(
        model: TopNavigationModel(
          leftAccessory: TopNavigationBackLeftAccessoryModel(),
          backgroundColor: ColorPointer.primary1,
        ),
      ),
    ),
  ];

  startGoldenRunner(
    description: 'TopNavigation',
    widths: [400],
    scenarios: scenarios,
  );
}
