abstract class FeatureNavigationConfig {
  /// The name of the feature
  final String id;

  final ScreenNavigationConfig? destination;

  const FeatureNavigationConfig({
    required this.id,
    this.destination,
  });

  @override
  String toString();
}

/// The configuration for a screen navigation
abstract class ScreenNavigationConfig<T> {
  /// The name of the screen
  final String name;

  /// The name of the feature the screen belongs to
  final String id;

  const ScreenNavigationConfig({
    required this.name,
    required this.id,
  });

  @override
  String toString();
}
