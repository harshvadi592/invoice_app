import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// A single test scenario for a widget.
class Scenario {
  final String description; // Description for the scenario
  final Widget widget; // The widget to test

  Scenario({
    required this.description,
    required this.widget,
  });
}

/// Runs golden tests for multiple scenarios across different screen widths.
Future<void> startGoldenRunner({
  required String description, // General description for the test
  required List<double> widths, // List of widths to test
  required Iterable<Scenario> scenarios, // Iterable of scenarios
  AppTheme? appTheme, // Optional app theme
}) async {
  for (final width in widths) {
    testGoldens(
      description,
      (tester) async {
        await loadAppFonts();

        final builder =
            GoldenBuilder.column(bgColor: appTheme?.colorScheme.background1);

        for (final scenario in scenarios) {
          builder.addScenario(
            scenario.description,
            AppThemeProvider(
              appTheme:
                  appTheme ?? AppTheme(colorScheme: AppColorScheme.light()),
              child: scenario.widget,
            ),
          );
        }

        await tester.pumpWidgetBuilder(builder.build(),
            wrapper: materialAppWrapper(), surfaceSize: Size(width, 800));
        await screenMatchesGolden(
            tester, '''${description}_${width.toStringAsFixed(0)}''');
      },
    );
  }
}
